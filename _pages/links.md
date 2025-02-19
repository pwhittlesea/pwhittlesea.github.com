---
title: Links
permalink: /links/
toc: false
classes: wide

rss:
  - name: Blogs
    sites:
      - name: This one
        link: https://thega.me.uk/
        rss: https://thega.me.uk/feed.xml
        author: Phillip Whittlesea-Clark
      - name: Mendhak / Code
        link: https://code.mendhak.com/
        rss: https://code.mendhak.com/feed.xml
        author: mendhak
      - name: OnlyRSS
        link: https://onlyrss.org
        rss: https://onlyrss.org/feed.xml
        author: Mark Evans
      - name: Jack Vanlightly
        link: https://jack-vanlightly.com
        rss: https://jack-vanlightly.com/?format=rss
        author: Jack Vanlightly
  - name: News
    sites:
      - name: Hacker News
        link: https://news.ycombinator.com
        rss: https://news.ycombinator.com/rss
  - name: Space
    sites:
      - name: Everyday Astronaut
        link: https://everydayastronaut.com
        rss: https://everydayastronaut.com/rss
        author: Tim Dodd
  - name: Comics
    sites:
      - name: Questionable Content
        link: https://www.questionablecontent.net
        rss: https://www.questionablecontent.net/QCRSS.xml
        author: Jeph Jacques
      - name: The Pos'Thal Chronicles
        link: https://www.webtoons.com/en/canvas/the-posthal-chronicles/list?title_no=936886
        rss: https://www.webtoons.com/en/challenge/the-posthal-chronicles/rss?title_no=936886
        author: CME_T

links:
  - category: Flights
    link: https://matrix.itasoftware.com/search
    description: Comprehensive flight search
  - category: AWS
    link: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    description: List of IAM permissions
  - category: Books
    link: https://infodump.thefifthimperium.com/images/Safehold_MTnT.jpg
    description: Map of Safehold as of Midst Toil and Tribulation
---

Random links that I use regularly:

<!-- markdownlint-disable MD033 -->
<table style="display: inline-table">
  <thead>
    <tr>
      <th>Category</th>
      <th>Description</th>
      <th>Link</th>
    </tr>
  </thead>
  <tbody>
{% for link in page.links %}
    <tr>
      <td>{{ link.category }}</td>
      <td>{{ link.description }}</td>
      <!-- markdown-link-check-disable-next-line -->
      <td><a href="{{ link.link }}">link</a></td>
    </tr>
{% endfor %}
  </tbody>
</table>
<!-- markdownlint-enable MD033 -->

## RSS

Here are a collection of RSS feeds that I subscribe to:

<!-- markdownlint-disable MD033 -->
<table style="display: inline-table">
  <thead>
    <tr>
      <th>Category</th>
      <th>Name</th>
      <th>RSS</th>
      <th>Author</th>
    </tr>
  </thead>
  <tbody>
{% for rss in page.rss %}
{% for blog in rss.sites %}
    <tr>
      <td>{{ rss.name }}</td>
      <!-- markdown-link-check-disable-next-line -->
      <td><a href="{{ blog.link }}">{{ blog.name }}</a></td>
      <!-- markdown-link-check-disable-next-line -->
      <td><a href="{{ blog.rss }}">link</a></td>
      <td>{{ blog.author }}</td>
    </tr>
{% endfor %}
{% endfor %}
  </tbody>
</table>
<!-- markdownlint-enable MD033 -->
