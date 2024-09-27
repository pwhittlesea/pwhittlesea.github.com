import s2sphere
import staticmaps
import PIL.ImageDraw

MAPS = [
    {
        "name": "london_to_auckland",
        "line": True,
        "points": [
            [51.4775, -0.461389],
            [1.359167, 103.989444],
            [-37.008056, 174.791667],
        ],
        "labels": ["London", "Changi - Singapore", "Auckland"],
    },
    {
        "name": "road_to_rotorua",
        "points": [
            [-36.98423077314447, 174.78368330179273],
            [-37.976802027457616, 175.7559586435218],
            [-38.13828188586393, 176.2558456625266],
        ],
        "labels": ["Auckland", "Tīrau", "Rotorua"],
    },
]


# Patch for https://github.com/flopp/py-staticmaps/issues/39
# BEGIN
def textsize(self: PIL.ImageDraw.ImageDraw, *args, **kwargs):
    x, y, w, h = self.textbbox((0, 0), *args, **kwargs)
    return w, h


PIL.ImageDraw.ImageDraw.textsize = textsize
# END


class TextLabel(staticmaps.Object):
    def __init__(self, latlng: s2sphere.LatLng, text: str) -> None:
        staticmaps.Object.__init__(self)
        self._latlng = latlng
        self._text = text
        self._margin = 4
        self._font_size = 12

    def latlng(self) -> s2sphere.LatLng:
        return self._latlng

    def bounds(self) -> s2sphere.LatLngRect:
        return s2sphere.LatLngRect.from_point(self._latlng)

    def extra_pixel_bounds(self) -> staticmaps.PixelBoundsT:
        w = len(self._text) * self._font_size + 2.0 * self._margin
        h = self._font_size + 2.0 * self._margin
        return (int(-w / 2), int(-h / 2), int(w / 2), int(h / 2))

    def render_svg(self, renderer: staticmaps.SvgRenderer) -> None:
        x, y = renderer.transformer().ll2pixel(self.latlng())
        filter = renderer.drawing().filter(
            id="textbackground",
            start=(0, 0),
            size=(1, 1),
        )
        filter.feFlood(flood_color="white")
        filter.feComposite()
        renderer.group().add(filter)

        renderer.group().add(
            renderer.drawing().text(
                self._text,
                text_anchor="middle",
                dominant_baseline="central",
                insert=(x, y + (self._font_size)),
                font_family="sans-serif",
                font_size=f"{self._font_size}px",
                font_variant="small-caps",
                font_weight="bold",
                fill="#000000",
                filter="url(#textbackground)",
            )
        )


IMAGE_DIR = "./assets/images/maps"
IMAGE_WIDTH = 720
IMAGE_HEIGHT = 360

for geo_map in MAPS:
    name = geo_map["name"]
    points = [staticmaps.create_latlng(lat, lng) for lat, lng in geo_map["points"]]

    context = staticmaps.Context()

    if len(points) > 1:
        context.add_object(
            staticmaps.Marker(points[0], color=staticmaps.GREEN, size=12)
        )
    if len(points) > 2:
        for point in points[1 : len(points) - 1]:
            context.add_object(staticmaps.Marker(point, color=staticmaps.BLUE, size=12))
    if "line" in geo_map and geo_map["line"]:
        context.add_object(staticmaps.Line(points, color=staticmaps.BLUE, width=4))

    end = points[len(points) - 1]
    context.add_object(staticmaps.Marker(end, color=staticmaps.RED, size=12))

    if "labels" in geo_map:
        for idx, label in enumerate(geo_map["labels"]):
            context.add_object(TextLabel(points[idx], label))

    svg_image = context.render_svg(IMAGE_WIDTH, IMAGE_HEIGHT)
    with open(f"{IMAGE_DIR}/{name}.svg", "w", encoding="utf-8") as svg:
        svg_image.write(svg, pretty=True)
