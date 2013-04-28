---
layout: post
title: Updates (Mar., Apr. 2013)
date: 2013-04-27 18:24
comments: true
categories: [en, updates]
---

In the last two months, Team POPONG did the followings.
<!-- more -->

### Politician Dictionary

* Layout renewal (in progress): Attempted to change from a 2-column to 3-column layout, but decided to go back to 2 columns

    {% img /images/2013-04-27-before.png 350 %} {% img /images/2013-04-27-after.png 350 %}
* Autocomplete([typeahead](http://twitter.github.io/typeahead.js/)) in search box
* Add feature to save favorite politicians to cart
* Display more personal information of politicians
    * district, job, education, experience, address
    * Separate timeline and trends into new tabs
* Test GIN(Generalized Inverted Index) index + trigram module: sequential search was faster because the dataset is too small
* Search by political party affiliation
* Improve transliteration using [Unidecode](https://pypi.python.org/pypi/Unidecode)


### Data

* Database history management through [Alembic](http://pypi.python.org/pypi/alembic)
* Refine politician address and district data
    - ex: `경기 부천시원미구을` -> `경기도<Province> 부천시<Municipality> 원미구<Municipality> 을`
* Collect more minutes (Updated crawler)

### Misc
* [popong.com](http://popong.com)
    * Embed [Twitter](http://dev.twitter.com/docs/follow-button), [Facebook](http://developers.facebook.com/docs/reference/plugins/like/) buttons
    * Test [Travis CI](https://travis-ci.org/teampopong/popong.com)
* Migrate internal repositories to [GitHub](http://github.com/teampopong): Gradually turning to open-source :)
    * Websites: [popong.com](https://github.com/teampopong/popong.com), [blog.popong.com](https://github.com/teampopong/teampopong.github.com), [popong.com/iamseoulmayor](https://github.com/teampopong/iamseoulmayor), [labs.popong.com/codenamu](https://github.com/teampopong/nanow)
    * Data: [South Korean maps](https://github.com/teampopong/southkorea-maps), [South Korean population](https://github.com/teampopong/southkorea-population)
    * Codes: [Crawlers](https://github.com/teampopong/crawlers), [NLP](https://github.com/teampopong/nlp)
* Participated in [Open Data Day](http://onoffmix.com/event/12520) hosted by [OKFN Korea](http://www.facebook.com/groups/OKFNKorea/)
    * Released [property data of Korean National Assembly officials](https://github.com/teampopong/korea-assembly-officials-property)
