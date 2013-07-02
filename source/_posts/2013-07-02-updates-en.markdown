---
layout: post
title: Updates (May., Jun. 2013)
date: 2013-07-02 14:40
comments: true
categories: [en, updates]
---

During the last two months, [Team POPONG](http://popong.com) has experienced something very fascinating. We've beta launched our main service <a href="http://pokr.kr">Pokr</a>, and people are getting more and more interested in it. We're getting lots of feedback, and a whole bunch of 'first-time' experiences.<!-- more -->

### [Pokr](http://pokr.kr)

1. Renamed main service!
    * We've renamed our main service from 'Korean Politician Dictionary(polidic)' to ['Pokr'](http://pokr.kr) -- which shares the pronounciation with the card game 'Poker'. Pokr represents 'Politics in Korea'.
1. Linked more attributes
    * Schools, region names, bill statuses are now aggregated by their values.
    * Ex: [Seoul](http://en.pokr.kr/region/11)
1. Added some functions for better navigation
    * Added permalinks to all headers
    * Pagination (rather than showing whole lists)
    * 'Show more' buttons (rather than showing whole lists)
    * Breadcrumbs
    * Mobile compatibility
    * Added [404](http://pokr.kr/404), 500 page
1. Temporarily removed favorites function (will be back in the future!)
1. Moved Korean feedback machine from [Barometer](http://getbarometer.com/) to [Uservoice](http://teampopong.uservoice.com) (The English page still uses Barometer)
1. Launched [Pokrbot](http://twitter.com/pokrbot)!
    * Which Tweets new bills in realtime
    <center>
    <blockquote class="twitter-tweet"><p>농림축산식품해양수산위원장이 &quot;어장관리법 일부개정법률안(대안)&quot;을 새로 발의하였습니다. <a href="http://t.co/8GptFCV2ms">http://t.co/8GptFCV2ms</a></p>&mdash; 포커봇 (@pokrbot) <a href="https://twitter.com/pokrbot/statuses/351937420788371456">July 2, 2013</a></blockquote>
    <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
    </center>
1. Improved search
    * Search people (by both English, Korean names), bills, regions, and schools.
1. Added Tweet, Facebook like buttons for all pages
1. Created a Korean map widget
    * Added to [region submain page](http://pokr.kr/region)
    * Displayed residential regions for politicians

#### Design
1. Major redesign in main page & submain pages
1. Changed to one-column structure
1. Displayed most data fields in tables
1. Changed logo

#### Page upgrades
1. Person pages
    * Added election pledges for the 19th National Assembly Election.
    * Added more profile images from [ROKPS](http://rokps.or.kr)
    * Displayed party affiliation history for each person
        * Ex: [Lee, In-Je](http://en.pokr.kr/person/19481130#profile)<br>
            {% img center /images/2013-07-02-lee-en.png 400 %}
1. Bill pages
    * Added tooltips to bill status descriptions
        {% img center /images/2013-07-02-bill-status-desc-en.png 600 %}
        * Because Team POPONG believes in *easier* politics.
        * This feature is currently only served in Korean, however, we're planning to extend tooltips to English.
        * [POPONG glossary](http://popong.com/glossary) is being built for such purposes.
    * Linked original PDF documents
    * Displayed party distribution of cosponsors
    * Ex: [Amendment on the Anti-discrimination Law](http://en.pokr.kr/bill/1901176)
1. Party pages
    * Added party logos
        {% img center /images/2013-07-02-parties-en.png 600 %}

### Data
* Implemented a bill online crawler
    * Parsed bill PDFs to raw text using [PDFminer](http://www.unixuser.org/~euske/python/pdfminer/)
    * Extracted keywords using [KoNLP](https://github.com/haven-jeon/KoNLP)'s noun extractor
* Separated the parties w/ same name
    * Hannara party ([1](http://pokr.kr/party/61), [2](http://pokr.kr/party/195))
* Started logging queries
* Inserted the most recent by-election data
* Updated party and people [codebooks](github.com/teampopong/codebooks)

### Others
* Added donations [Gittip](https://www.gittip.com/teampopong/), [Paypal](https://www.paypal.com/kr/cgi-bin/webscr?cmd=_flow&SESSION=rJ-od7Disgs4qf2n18TXe6BPX0vh0lFcQIsZ0nsDaFF_uJV_W9iKGHMBOQC&dispatch=5885d80a13c0db1f8e263663d3faee8d4e181b3aff599f99a338772351021e7d) widgets to [popong.com](http://popong.com)
