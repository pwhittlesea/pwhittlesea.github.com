---
title: "A Year in Review - 2025 - Books"
date: 2025-12-28 13:48:00 +0000
tags: [books, reviews]
---

This year, I set myself a goal to try and double(ish) the amount of books I read, aiming for a total of 24 books which is 10 more than last year.
I thought it would be nice to share with you what books stood out, and which books might be worth skipping.

<!--more-->

Now, 24 books is not a massive amount &mdash; my other half has read 65 books this year &mdash; but when I read that [the median Briton has read just three books in the past year](https://yougov.co.uk/entertainment/articles/51730-40-of-britons-havent-read-a-single-book-in-the-last-12-months), I felt vindicated in my modest goal.

Since giving up on reading physical books (more on that later), I've found it much easier to read.
I am especially productive when travelling to/from London on the train, for work, where I can read uninterrupted for a solid hour and a half each way.

Let's get stuck in!

## The Data

The statistics below are all pulled from my profile on 'The StoryGraph', which I use instead of supporting the [Amazon monopoly that is Goodreads](https://www.huffingtonpost.co.uk/entry/storygraph-amazon-goodreads-jeff-bezos_l_673e2013e4b0f17b35e0a123).

### Exploring new genres

This year I set out with a goal to read things that were not Science Fiction.
The last decade or so, I got stuck in a serious Military Science Fiction rut, reading book series after book series of similar themes.

How did I manage to do this?
Well, I just read whatever my other half suggested to me, like my own personal book recommendation system.
They read so many books, from so many authors, that the paltry amount I read was easy to accommodate.

{{< chart >}}
  type: 'bar',
  data: {
    labels: ['Fantasy', 'Science Fiction', 'Romance', 'LGBTQIA+', 'Classics', 'Contemporary', 'Young Adult', 'Mystery', 'Crime', 'Middle Grade', 'Speculative Fiction', 'Dystopian', 'Childrens', 'Literary', 'Horror'],
    datasets: [{
      label: '2024',
      data: [5, 13, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0],
      borderColor: 'rgba(255, 99, 132, 0.7)',
      backgroundColor: 'rgba(255, 99, 132, 0.7)'
    },{
      label: '2025',
      data: [13, 8, 7, 5, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1],
    }]
  },
  options: {
    aspectRatio: 1,
    indexAxis: 'y',
    scales: {
      'y': {
        ticks: {
          autoSkip: false
        }
      },
      'x': {
        title: {
          text: '# of books',
          display: true
        }
      }
    }
  }
{{< /chart >}}

As you can see from the chart above, although Science Fiction is still well represented, Fantasy has taken the crown this year.

Before 2025, I had never read a Romance novel (unless it was packaged inside a story where aliens were also shooting at people), so to see it as my third most read genre this year is quite surprising.
I'll do a breakdown of my best and worst books, but Romance featured heavily in the books that most affected me this year.

I will note that some books are on the category list multiple times if it has multiple overlapping genres, e.g. _Winter's Orbit_ is both LGBTQIA+ and Romance.
The Lion, the Witch and the Wardrobe is a 'childrens', 'classics', 'fantasy', and 'middle grade', which seems a bit silly, so it's over-represented in the chart.

### Monthly reading habits

One of the things I wanted to improve this year was my consistency in reading.
In previous years, I would read a lot in bursts, then go months without picking up a book.

This can be seen in the chart below, where in 2024 I read a lot in January and November, but very little in between.
This could probably be overlaid with a graph of my work stress levels, as I tend to read more when I'm less stressed.

{{< chart >}}
  type: 'line',
  data: {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    datasets: [{
      label: '2024',
      data: [2, 0, 1, 0, 0, 0, 0, 1, 0, 2, 6, 3],
      tension: 0.4,
      borderColor: 'rgba(255, 99, 132, 0.7)',
      backgroundColor: 'rgba(255, 99, 132, 0.7)'
    },{
      label: '2025',
      data: [6, 2, 2, 2, 0, 2, 1, 1, 2, 2, 4],
      tension: 0.4
    }]
  },
  options: {
    scales: {
      y: {
        title: {
          text: '# of books',
          display: true
        }
      }
    }
  }
{{< /chart >}}

But this year, I managed to read far more consistently, with at least one book read in every month except May.
But when we take into account the number of pages read, we can still see that I was reading, just not finishing books, in May.

{{< chart >}}
  data: {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    datasets: [{
      type: 'line',
      yAxisID: 'first',
      label: '# of books',
      data: [6, 2, 2, 2, 0, 2, 1, 1, 2, 2, 4],
      tension: 0.4,
      borderDash: [4, 4],
      borderColor: 'rgba(255, 99, 132, 0.7)',
      backgroundColor: 'rgba(255, 99, 132, 0.7)'
    },{
      type: 'bar',
      yAxisID: 'second',
      label: '# of pages',
      data: [2530, 862, 1141, 430, 209, 541, 544, 121, 745, 1033, 1115]
    }]
  },
  options: {
    scales: {
      first: {
        title: {
          text: '# of books',
          display: true
        }
      },
      second: {
        title: {
          text: '# of pages',
          display: true
        },
        position: 'right'
      }
    }
  }
{{< /chart >}}

I'm pretty happy with the improvement.
I think the biggest change we can see is when I bought a [Kobo Clara](https://uk.kobobooks.com/collections/ereaders/products/kobo-clara-bw) eReader in October 2024.
As I mentioned earlier, switching away from physical books has made reading much easier for me.
The Kobo fits into one of my trouser pockets, so I can carry it everywhere (amazing when you get stuck in A&E unexpectedly for 6 hours), and the battery lasts for weeks, so I never have to worry about charging it.
Reading in bed was always a struggle with physical books, as my eyes are not what they used to be, so the adjustable backlight on the Kobo has made a huge difference.

### Ratings breakdown

Finally, let's look at how I rated the books I read this year.

{{< chart >}}
  type: 'bar',
  data: {
    labels: ['3.25 ⭐', '3.5 ⭐', '3.75 ⭐', '4.0 ⭐', '4.25 ⭐', '4.5 ⭐', '4.75 ⭐', '5.0 ⭐'],
    datasets: [{
      data: [2, 1, 5, 3, 6, 2, 3, 2]
    }]
  },
  options: {
    plugins: {
      legend: {
        display: false
      }
    },
    scales: {
      'y': {
        title: {
          text: '# of books',
          display: true
        }
      }
    }
  }
{{< /chart >}}

Not much to learn here, apart from that I don't read books that have less than a 3.25 star rating.
These sorts of books would be ones I would DNF (Did Not Finish) part way through, and I don't count those in my reading stats.

2025 was very odd in that I didn't have any books that I did not finish, which is quite unusual for me.
This is probably because I pre-filtered books through my other half's recommendation algorithm, so I was less likely to pick up something I wouldn't enjoy.

## The books of 2025

So let's go through the books I read this year, grouped by how they made me feel.
I think I have been quite harsh to some of these books, but I wanted to try and be objective about a book's impact on me, rather than just my enjoyment of them.
A book might get a high rating, and be well written and enjoyed by the wider public, but if it was just a generic throwaway read for me, then I might forget about it quickly.

So we have four categories:

1. The ones that changed me &mdash; books that really stuck with me, made me think, or emotionally affected me
   I will not stop talking about these books unprompted.
2. The ones that stood out &mdash; books that were enjoyable and memorable.
   I will recommend them to others.
3. The ones I forgot about &mdash; books that were fine, but I can't really remember much about them now.
   I probably wouldn't recommend them to others because they were forgettable.
4. The others &mdash; books that were just okay.
   A bit of a mixed bag, but nothing really special.

If by some tiny, infinitesimal, microscopic chance, one of the authors of these books is reading this, please don't be offended by my categorization.
Your book might just not have resonated with me personally, or I might have been in a different head space when I read it.

> [!WARNING] Spoilers Ahead
>
> It goes without saying, there are mild spoilers ahead for some of these books.
> I'm not going to tell you plot points, but if there is a twist, I'm probably going to mention it.

### The ones that changed me

Every one of these books was incredible.\
Every one of them made me cry.\
Every one of them made me feel deeply about the characters in them.

| Title | Author | Rating |
|-------|--------|--------|
| {{< book "The Night Circus" "8726284c-0f7d-467e-bc40-11451cafa96f" >}} | Erin Morgenstern | 5.0 |
| {{< book "The Last Tale of the Flower Bride" "a1a9c8b1-42b1-40f4-91fe-378f1cd68fcf" >}} | Roshani Chokshi | 5.0 |
| {{< book "The Undertaking of Hart and Mercy" "dbe65ae4-acbe-430e-9e54-5f595986464f" >}} | Megan Bannen | 4.5 |
| {{< book "The Very Secret Society of Irregular Witches" "7d122924-9f42-4cbd-8d2c-dfb715a8bea7" >}} | Sangu Mandanna | 4.25 |

#### The Night Circus

Starting with my absolute favourite book of maybe all time, _The Night Circus_ by Erin Morgenstern.
Although the way the book is written felt a bit disjointed with all the converging timelines, the atmosphere, the characters, the build up to the final act, more than made up for it.
Erin Morgenstern nails the world building and the magic of each of the circus tents, making each of them feel unique and special.

In some ways I wish I could read it again without knowing the ending, just to experience the wonder of it all again.
Five out of five stars somehow felt too low for this book.

But its main reason for being in this category is how it made me feel like I was part of a multi-level marketing scheme.
I _had_ to tell everyone I knew about this book.
They _had_ to read it.
We _needed_ to talk about it.
I could not stop thinking about it.

I mourned this book for months after I finished it and I wish it hadn't ended.

#### The Last Tale of the Flower Bride

Next up is _The Last Tale of the Flower Bride_ by Roshani Chokshi.
A book that made me so, so angry.
I am not going to spoil it, but the twist at the end made me feel so betrayed by my own detective skills.
To say I didn't see it coming is an understatement.

To quote my review of the book:

> This was a haunting and beautiful read.
> Like watching a bus crash in slow motion.
> Unable to turn away.

I think that is the best way of describing this book, like watching a bus crash.
My screaming at the characters to turn away and run did nothing to change the outcome, but I was personally invested to the extent where I tried.

The writing style took a bit of time to get used to, but the story was so compelling at every turn I was glued to it until I finished it.
I even hung around at the tube station just to finish the chapter I was on.

The book made me feel sad, angry, betrayed, and ultimately heartbroken at the outcome.
That's why it is in this category.

#### The Undertaking of Hart and Mercy

Now, this one surprised me.
I was not expecting to be so emotionally affected by _The Undertaking of Hart and Mercy_ by Megan Bannen.

Maybe because this was the first 'real' Romance novel I read this year, maybe because I saw something of myself in Hart and something of my other half in Mercy, but hot damn, this book hit me hard.

The big 'all is lost' moment towards the end was probably the hardest I have ugly cried since watching [Bicentennial Man](https://www.imdb.com/title/tt0182789/) starring Robin Williams.
The level to which Megan Bannen was able to get me personally invested in the characters, their relationship, and their struggles was incredible.

Sure, it was a big miscommunication trope, but it worked for me, and I think it earned it its place in this category.

#### The Very Secret Society of Irregular Witches

Finally, we have _The Very Secret Society of Irregular Witches_ by Sangu Mandanna.

Now, this book has a lower rating than some of those in the next category, but I think its impact on me was much greater.
The themes of found family, of belonging, of being accepted for who you are, really resonated with me.

The thing that stood out most to me is in the way Sangu Mandanna manages to write in a cosy, warm way, which makes me feel like the book is closer to hot chocolate by the fire, than a book.
Magic being something with its own agenda, thoughts, and feelings, rather than just a tool to be used by the characters, was also a refreshing take.

More than anything this book switches between whimsy and serious themes so well, that it left a lasting impression on me.
I look forward to reading more of her work in the future.

### The ones that stood out

Each of these is not as powerful as those in the previous category, but I still appreciated each of them and frequently recommend them to others.

| Title | Author | Rating |
|-------|--------|--------|
| {{< book "A Witch's Guide to Magical Innkeeping" "145f3209-86b0-4694-a6fa-422d9ff486a7" >}} | Sangu Mandanna | 4.75 |
| {{< book "Sorcery and Small Magics" "e4a2324e-7d73-4c49-ae14-360f9a2c2332" >}} | Maiga Doocy | 4.25 |
| {{< book "Lord of the Empty Isles" "5d3ef19d-1991-4728-a46f-6ec79f0023be" >}} | Jules Arbeaux | 4.25 |
| {{< book "Redshirts" "f0421a9f-2aec-4118-a620-59bac120dd1a" >}} | John Scalzi | 4.0 |

#### A Witch's Guide to Magical Innkeeping

_A Witch's Guide to Magical Innkeeping_ by Sangu Mandanna, feels like it is in the same universe as _The Very Secret Society of Irregular Witches_ (which it might be), but it follows a completely different set of characters.
This book has all the same themes; found family, belonging, of being accepted for whom you really are.

Oddly, I actually gave it a higher rating than _The Very Secret Society of Irregular Witches_.
This book has a much more powerful story arc, with higher stakes, and a more satisfying conclusion.
However, because it came after _The Very Secret Society of Irregular Witches_, I was used to the style and themes, meaning it had less of an impact on me.

It is still a very, very enjoyable read, and I would recommend it to anyone who enjoys cosy fantasy/romance novels.

#### Sorcery and Small Magics

_Sorcery and Small Magics_ by Maiga Doocy was an eager recommendation from my other half, and I am so glad they suggested it to me.
I didn't like the idea of a 'forced proximity' romance novel, but Maiga Doocy manages to pull it off in a way that feels natural and believable (and not at all creepy).

The trope of 'guy fails to communicate properly' wound me up for the first half of the book, before it was explained why he was acting that way.
But once I got past that, I really enjoyed the world building; the magic system specifically needs calling out as very creative.
I really enjoyed the theme of stopping, taking a breath, and appreciating the small things in life.

The world building lays a lot of groundwork for future stories, I am keeping an eye out for the next book in the series.
It has a lot of potential.

#### Lord of the Empty Isles

Like _Sorcery and Small Magics_, _Lord of the Empty Isles_ by Jules Arbeaux is a forced proximity romance novel.
Both are about 'cursed' characters who need to work together to break the curse, and in doing so, become closer.

I think I would sing equal praises for both books magic systems, however _Lord of the Empty Isles_ sits firmly as a standalone novel due to less time spent on world building.
It's a much faster paced novel, with far more action, which I really enjoyed.

It does also rely on the 'guy fails to communicate properly' trope, but the story moves quickly enough that I was able to forgive it.

#### Redshirts

Now back to some traditional Science Fiction with _Redshirts_ by John Scalzi.
Right?
If there was an award for 'book most likely to get you to say "Wait, what?"', this book would win hands down.

I have heard it described as a love letter to traditional Star Trek, and I think that undersells its cleverness.
It's a quick read, it is funny, and the ridiculousness of the plot really keeps you on your toes.

_Redshirts_ firmly fits into the category of books where I wish I could read it again for the first time.

### The ones I forgot about

Now this is a category I feel bad about.
These books were all fine, I enjoyed reading all of them, but they just didn't leave a lasting impression.
Is this what 'coffee table books' are supposed to be?
Quick reads that just fill time?

| Title | Author | Rating |
|-------|--------|--------|
| {{< book "The Mysterious Affair at Styles" "6b8594dc-10f3-42b0-b15e-e2cf24a39340" >}} | Agatha Christie | 4.0 |
| {{< book "Bridge of Clay" "f93f91e0-e47c-47fe-8de5-a773bd0bd7c5" >}} | Markus Zusak | 3.75 |
| {{< book "To Be Taught, If Fortunate" "3c35b6ec-6f15-4e46-9914-ea5ea8088973" >}} | Becky Chambers | 3.5 |
| {{< book "The Murder on the Links" "1785df9e-c791-4a6a-a0e5-4823807f6ce9" >}} | Agatha Christie | 3.25 |
| {{< book "Hell Divers #11 - Renegades" "da9af6dc-51ad-45df-878c-cd906eafdfca" >}} | Nicholas Sansbury Smith | 3.25 |

#### The Mysterious Affair at Styles

Everyone can universally agree that Agatha Christie is a great author, but the very first Poirot novel, _The Mysterious Affair at Styles_, doesn't have anything about it that wows me.

Older novels always have a bit of "you can't say that nowadays" about them, and this one is no exception.
It didn't take me out of the story, and overall I found it to be a solid mystery novel.

Again, I would make a terrible detective, because I did not correctly guess who the murderer was.
I don't think now, after four months, I could tell you what happened with any degree of confidence.

#### Bridge of Clay

_Bridge of Clay_ by Markus Zusak took a _lot_ of getting into.
The writing style is very different from anything I had read before, with much more metaphorical language than I was used to.
I'm not the biggest fan of books with multiple timelines, but I managed to push through to the end and the payoff was worth it.

Unfortunately, even though the author does a good job of getting across the emotional weight of the story, I still found that once I was done, I didn't think of it again.

#### To Be Taught, If Fortunate

Now this one I feel bad about.

If you talk to me about Science Fiction, I will inevitably mention that Becky Chambers has to be one of the best authors of my time.
_A Long Way to a Small, Angry Planet_ is a masterclass in character development and world-building.
_The Monk and the Robot_ series is a beautiful exploration of friendship and understanding.

_To Be Taught, If Fortunate_ however, is a book that I just didn't connect with.
I actually forgot about it for most of the year, overall taking me seven months to finish it.

Again, I feel quite bad, it feels like something is wrong with me for not enjoying it.
It hits all the same notes as her other books, but it just didn't come together for me.

#### The Murder on the Links

Another Poirot novel, _The Murder on the Links_ by Agatha Christie, doesn't need much more explanation.

For all the same reasons as _The Mysterious Affair at Styles_, I just didn't find it particularly memorable.
It's possible that the later novels in the series build on the characters and themes more effectively, but the first two books fall a bit flat.

#### Hell Divers #11 - Renegades

_Renegades_ by Nicholas Sansbury Smith is the eleventh installment in the Hell Divers series, and it continues to deliver the action and suspense that we have all come to enjoy.

I just think that after eleven books, it is starting to lose my interest a bit.
The characters and plot lines are becoming a bit repetitive, and I'm not sure how much longer I can stay invested in the series.

I think I'm going to wait until he finishes up on the series before I continue with it.

### The others

These are all the other books I read.
Some were good, some were not so good, but they don't fit into the other categories.

| Title | Author | Rating |
|-------|--------|--------|
| {{< book "A Fate Inked in Blood" "6bac89be-314b-4b7f-8be5-38ba7f682bb2" >}} | Danielle L. Jensen | 4.75 |
| {{< book "Mistborn - The Final Empire" "fff4a412-89f6-46ad-b75e-bd21a626e730" >}} | Brandon Sanderson | 4.75 |
| {{< book "Mistborn - The Well of Ascension" "1c4ba213-e1b9-40f3-a9aa-c6a1f07259f8" >}} | Brandon Sanderson | 3.75 |
| {{< book "Mistborn - The Hero of Ages" "43630542-02d2-464a-acf3-a3c7e1e0ddbc" >}} | Brandon Sanderson | 4.5 |
| {{< book "Old Man's War - Old Man's War" "29edbc6e-be95-4fa2-8d5b-5a0d5dda21be" >}} | John Scalzi | 4.0 |
| {{< book "Old Man's War - The Ghost Brigades" "2aced7c8-378f-4467-9c9c-833f0939be96" >}} | John Scalzi | 3.75 |
| {{< book "Old Man's War - The Last Colony" "24856ff5-1ad0-42bb-90d6-74f96caffef2" >}} | John Scalzi | 3.75 |
| {{< book "The Lion, the Witch and the Wardrobe" "4c9c44fc-ecdb-4b60-b86f-474df58d4dff" >}} | C.S. Lewis | 4.25 |
| {{< book "Bookshops & Bonedust" "d161ee53-6559-4c39-a2c5-da4fa422e312" >}} | Travis Baldree | 4.25 |
| {{< book "Strange the Dreamer" "7bfd87f7-d0a7-45ed-a4c0-b0b56d18fff0" >}} | Laini Taylor | 4.25 |
| {{< book "Winter's Orbit" "299618ff-bd9a-4676-8fe2-e769d60fbfca" >}} | Everina Maxwell | 3.75 |

I'm not going to go into detail on all of these, but I do want to call out one book in particular.

_The Well of Ascension_ by Brandon Sanderson is the second book in the Mistborn trilogy and I really wanted to put it in the 'ones I forgot about' category.
The first book, _The Final Empire_, was incredible and stood on its own.
The third book, _The Hero of Ages_, was a satisfying conclusion to the trilogy.
But the second book just felt like filler.
If you asked me what happened in the second one, I would struggle to tell you.

## Final thoughts

It was a good year for reading.
The addition of the Kobo eReader into my life has made a huge difference to my reading habits.
I branched out into new genres, and found that actually, I do enjoy Romance novels.

My goal for 2026 is to read at least 36 books, and to try to read more non-fiction.
I have started reading {{% book "_The Transgender Issue: An Argument for Justice_" "01eb5bfb-aeaf-4c82-a848-7913fc4dce7d" %}} by Shon Faye, and I have a handful of technical books I want to get through.
