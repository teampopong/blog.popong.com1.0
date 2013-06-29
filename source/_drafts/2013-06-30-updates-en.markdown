---
layout: post
title: Updates (May., Jun. 2013)
date: 2013-06-30 18:24
comments: true
categories: [en, updates]
---

During the last two months, Team POPONG has experienced something very fascinating. We've beta launched our main service <a href="http://pokr.kr">Pokr</a>, and people are getting more and more interested in it. We're getting lots of feedback, and a whole bunch of 'first-time' experiences.  <!-- more -->

### [Pokr](http://pokr.kr)

* Service renamed!
    * We renamed our main service from 'Korean Politician Dictionary(polidic)' to 'Pokr' -- which shares the pronounciation with the card game 'Poker', with the meaning 'Politics in Korea'.
* Linked more attributes
    * Schools, region names, bill statuses are now aggregated by their values.
    * Ex: [Seoul](http://en.pokr.kr/region/11)
* Added tooltips to bill status descriptions
    * We believe in *easier* politics.
    * Currently only served in Korean.
* Displayed party affiliation history for each person
    * Ex: [Lee, In-Je](http://en.pokr.kr/person/19481130#profile)
* Updated party and people [codebooks](github.com/teampopong/codebooks)
* Enabled pagination
* Implemented 'show more' buttons
* Added breadcrumbs
* Removed cart
* Added 404, 500 page
* Enabled mobile compatibility

#### Design
* Redesigned main page & submain pages
* Changed to one-column structure
* Displayed most data fields in tables
* Changed logo

#### Page upgrades
* Added Tweet, Facebook like buttons for all pages
* Added permalinks to all headers
* Person pages
    * Added election pledges for the 19th National Assembly Election.
    * Added more profile images from [ROKPS](http://rokps.or.kr)
* Bill pages
    * Linked original PDF documents
    * Displayed party distribution of cosponsors
    * Ex: [Amendment on the Anti-discrimination Law](http://en.pokr.kr/bill/1901176)
* Party pages
    * Added party logos

#### Search
* people by school
* people by English name
* show currently applied search options
* Search bills, regions, all others

#### Widgets
* Korean map widget
    * Added to [region submain page](http://pokr.kr/region)
    * Displayed residential regions for politicians

### Data
* Implemented a bill online crawler
    * Parsed bill pdf to raw text
    * Extracted keywords using KoNLP's noun extractor
* Separated the parties w/ same name
    * hannara party
* Started logging queries
* Inserted the most recent by-election data

### Misc
* [popong.com](http://popong.com)
    * donation widgets (gittip, paypal)
* [Pokrbot](http://twitter.com/pokrbot): tweet newly sponsored bills everyday
* Added Uservoice (from barometer feedback; Korea only)
