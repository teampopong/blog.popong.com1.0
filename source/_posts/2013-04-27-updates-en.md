---
layout: post
title: Updates (Mar., Apr. 2013)
date: 2013-04-27 18:24
comments: true
categories: [en, updates]
---


In the last two months, Team popong did followings.

### Politicina Dictionary

* Layout renewal (in progress)
    * Tried to change from 2-column to 3-column, but decided to back to 2-column layout
* Search by party affiliation
    * More search options available soon!
* Autocomplete(typeahead) in search box
* Saving favorite politicians (Cart)
* Display more personal infos of politicians
    * district, job, education, experience, address
* Improve transliteration
* Test GIN(Generalized Inverted Index) index + trigram module: sequential search was faster because the dataset is too small


### Data

* Database history management through [Alembic](http://pypi.python.org/pypi/alembic)
* Build transliteration dictionary for Korean last names
* Collect more minutes (Updated crawler)


### Misc
* [popong.com](http://popong.com)
    * Embed [Twitter](http://dev.twitter.com/docs/follow-button), [Facebook](http://developers.facebook.com/docs/reference/plugins/like/) buttons
    * Test [Travis CI](https://travis-ci.org/teampopong/popong.com)
* Migrate internal repositories to [GitHub](http://github.com/teampopong): to open-source step-by-step
    * Websites: [popong.com](https://github.com/teampopong/popong.com), [blog.popong.com](https://github.com/teampopong/teampopong.github.com), [popong.com/iamseoulmayor](https://github.com/teampopong/iamseoulmayor), [labs.popong.com/codenamu](https://github.com/teampopong/nanow)
    * Data: [South Korean maps](https://github.com/teampopong/southkorea-maps), [South Korean population](https://github.com/teampopong/southkorea-population)
    * [Crawlers](https://github.com/teampopong/crawlers)
* Participated in [Open Data Day](http://onoffmix.com/event/12520) hosted by [OKFN Korea](http://www.facebook.com/groups/OKFNKorea/)
    * Released [Property data of Korean assembly officials](https://github.com/teampopong/korea-assembly-officials-property)
