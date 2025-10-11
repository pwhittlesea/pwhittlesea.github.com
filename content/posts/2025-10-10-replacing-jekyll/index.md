---
title: Replacing Jekyll
date: 2025-10-10 11:14:28 +0100
categories: ["update"]
tags: ["jekyll", "hugo"]
summary: "I have been enjoying Jekyll, but it's time to toy with another static site generator."
---

## Background

It finally happened.

Like all engineers writing a blog, I have completed the rite of passage that is switching Static Site Generators ({{< term "SSG" >}}).

Since my last post ([Bye-Bye GitHub Pages Gem]({{< ref "2025-04-27-bye-bye-github-pages-gem" >}})), I have been reading up on all the various SSGs out there.
[11ty](https://www.11ty.dev/) and [Astro](https://astro.build/) looked interesting, but quite involved.
I have done web development in the past, but I wanted a strong theme to base my site off of; I didn't want to create everything from scratch.

[Blowfish](https://blowfish.page/) caught my eye as a professional looking, and well-supported theme.
I particularly liked the timeline feature (which can be seen on my [CV]({{< ref "cv" >}})).
It uses [Tailwind CSS](https://tailwindcss.com/), which means any customization should be straightforward for someone that finds CSS a bit of a mystery (like me).

I had to do quite a bit of work to get the theme working with my content.

## Extending Blowfish

### Admonitions

Hugo and Blowfish lacked support for Admonitions, which I use a lot in my posts.

I had to implement the `render-blockquote-alert.html` Hugo template to convert markdown admonitions to HTML:

```markdown
> [!NOTE]
> Isn't this note cool?
```

Becomes:

> [!NOTE]
> Isn't this note cool?

You can see the source code [here](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/layouts/_markup/render-blockquote-alert.html).

### Galleries

The out-of-the-box gallery support in Blowfish lacks the ability to define a caption for the images.
Additionally, I liked the way that my previous theme allowed me to define the images, and their hover text, in the front matter of the post.

```markdown
---
title: "My first post"
gallery-name:
  - image_path: my-first-picture.jpeg
    title: "This is the first picture"
  - image_path: my-second-picture.jpeg
    title: "This is the second picture"
---
{{</* mm-gallery id="gallery" caption="This is a gallery" */>}}
```

Because of this I defined my own gallery '[shortcode](https://gohugo.io/content-management/shortcodes/)', which you can see [here](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/layouts/_shortcodes/mm-gallery.html).

### Maps

I had to convert my Jekyll map rendering code to a Hugo shortcode.
It's very similar to the gallery shortcode, but there is some complex caption generation code, depending on the number of points on the map.

You can see the source code [here](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/layouts/_shortcodes/map.html) which works in tandem with a [Python pre-commit hook](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/.hooks/generate_maps.py) to generate the maps themselves.

```markdown
---
maps:
  - name: great_circle
    line: true
    points:
      - name: London
        lat: 51.5074
        lon: -0.1278
      - name: New York
        lat: 40.7128
        lon: -74.0060
---
{{</* map name="great_circle" caption="Insightful caption" */>}}
```

### Abbreviations

Blowfish and Hugo also lack support for Abbreviations, which I use a lot in my posts; anything technical tends to come with a lot of acronyms.

[kramdown](https://kramdown.gettalong.org/syntax.html#abbreviation) supported abbreviations, but Hugo [chooses not to](https://github.com/gohugoio/hugo/issues/7360), because it's not a common markdown feature.

Because of this I had to implement my own shortcode to support abbreviations, which you can see [here](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/layouts/_shortcodes/term.html).

For example:

```markdown
{{</* term "SSG" */>}}
```

Becomes: {{< term "SSG" >}}

This sources its definitions from the [terms.yaml](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/data/terms.yaml) data file.

It's not as nice as the kramdown syntax &mdash; which post-processes the content to add a hover-over to all instances of the abbreviation &mdash; but it works.

### Image Width

This final one will hopefully be fixed in the future when I raise a PR with the Blowfish theme, but I had to add support for setting the width of an image which was defined using markdown.

For example:

```markdown
![My Image](/path/to/image.jpg)
{style="width:50%;"}
```

Hugo refers to that second line as ['markdown attributes'](https://gohugo.io/content-management/markdown-attributes/), which are passed to the markdown image processor.

The built-in ['default' processor](https://github.com/gohugoio/hugo/blob/v0.151.0/tpl/tplimpl/embedded/templates/_markup/render-image.html#L17-L21) supports this, but the override that [Blowfish](https://github.com/nunocoracao/blowfish/blob/v2.90.0/layouts/_default/_markup/render-image.html) defines, does not.

It is useful to be able to reduce the size of an image in a post, as it can be quite jarring to have a huge image in the middle of some text.
Because of this I had to override the image shortcode in my own theme, which you can see [here](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/layouts/_markup/render-image.html).

## The Migration

Most of my time was spent rebuilding the shortcodes above, however Jekyll and Hugo have different ways of doing things, so I had to rearrange my content a bit.

There are _so many_ existing blog posts about migrating from Jekyll to Hugo, so I won't go into too much detail here.

What I do want to do is to call out the thing that I found particularly challenging; backwards compatibility.

There are some of my blogs which have tens (yes TENS) of visitors a month (e.g. [Multiple Domains with GitHub Pages]({{< ref "2024-11-17-multiple-domains-with-github-pages" >}})), and I didn't want to break the links to these posts.

Additionally, I have a few friends that subscribe to my RSS feed, and I didn't want to break that for them.

To maintain the links, Hugo has a feature called 'aliases', which allows you to define a list of URLs in the front matter that redirect to a page.

```yaml
aliases:
  - /code/rule-one/
```

For example, if you go to [/code/rule-one/](https://thega.me.uk/code/rule-one/), you will be redirected to [/2024/05/one-rule-to-build-them-all/](https://thega.me.uk/2024/05/one-rule-to-build-them-all/).

These aliases become a problem in the RSS feed, where I want the alias to be used in the `<link>` tag.

Because of this I wrote my own [`home.rss.xml`](https://github.com/pwhittlesea/pwhittlesea.github.com/blob/90ad2e8c48fc6cef10da2e887b92804d7001c534/layouts/home.rss.xml) template which is used to render an RSS feed as close to the Jekyll one as I could manage.

Hugo also serves the RSS feed from `/index.xml`, rather than `/feed.xml`, so I had to add the following to my `hugo.yaml` config file:

```yaml
outputFormats:
  RSS:
    mediatype: "application/rss"
    baseName: "feed"
```

I _wanted_ to be able to push the site out and not have all of my old posts flag up as changed in peoples RSS readers, however, I didn't manage to do that.
Sorry to anyone that had a load of notifications from my site.

Finally, I created an 'unlisted' [demo page]({{< ref "demo" >}}) which uses the features above to make sure that everything is working as expected.

## Conclusion

I'm happy with the new site, especially my [CV]({{< ref "cv" >}}).

Blowfish has some nice features, like the 'series' taxonomy, which I have used in my [New Zealand]({{< ref "2025-03-15-new-zealand-9" >}}) blog posts, and my [recent collection of short stories]({{< ref "2024-12-24-12-days-of-short-stories-wrap-up" >}}).

As the site serves as a bit of a pet project, I'm thinking of trying my hand at creating my own theme, at some point in the future.

Maybe I'll pick a different SSG to do that with...
