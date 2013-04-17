Since November 2010, Team POPONG has went through a variety of discussions and experiments.<br />
Inspired by [GovTrack's periodical reports](http://www.govtrack.us/blog/2013/02/09/winter-2013-updates-1/), we now plan to share our day-by-day lessons. We hope they would benefit other toddler teams that are imagining their own services.

### Politician Dictionary

- Dropped usage of MongoDB, and migrated to SQLAlchemy+PostgreSQL.
	- Detailed backgrounds shall be posted in the future.
- Created portable widgets for a politician's **timeline** and **related people**.

		<script src="http://popong.com/widgets/relation.js?person_id=195224" type="text/javascript"></script>
- Exposed politicians' Chinese names along with the Korean names.
- Added birthyear page (ex: [Politicians born in 1953](http://popong.com/polidic/year/1953)).
- Modified the browser title, so that the more importation information came first.
	- `POPONG Politician Dictionary - Chin Seon-mi` <br />-&gt; `Chin Seon-mi (Minjut-Onghap Party) :: POPONG Politician Dictionary`
- Started accumulating visiting logs.

### Data

- Collected all datasets dispersed among the whole filesystem into a single Git repository.
	- Documented known sources for every dataset.
- Imported Twitter, Facebook addresses of politicians 
	- From [SNS addressbook of politicians (unofficial)](https://docs.google.com/spreadsheet/ccc?key=0Ao-novvdf79gdExCbW9FVWg0VlBoanNQSzV1akFJR1E) by [@mazefind](http://maplestory.com).
- Built a glossary of terms containing Korean meanings, English translations, and aliases.
- Built a mapping between Hanja(Chinese)-Hangul(Korean) for transliterations.
	- Both for Korean last names and for general use.
- Wrote a PDF-parsing library in Jython. 
	- However, produces errors and does not yet work perfectly.
	- ex: "대안" →  "눀안"
- Crawled the number of Google search results of each politician in order to digitize the politician's popularity.
	- ex: "*About 24,900,000 results (0.13 seconds)*"
	- However, this approach was deprecated.
	- Alternatives exists: Twitter search index or co-authorships of bills.
- Gathered and preprocessed [South Korean map data](https://github.com/teampopong/southkorea-maps).

### Misc

- Created [Developers Page](developers.popong.com).
- Added link alternates.

		
- Applied i18n so that all pages are also available in English: .
- Switched from Apache2 to Nginx.
- Standardized file naming convention.
	- Only Roman letters.
	- Lower-case everywhere.
	- Underscores(`_`) between words.
- Participated in OKFnKorea's Open Data Day Conference, and organized [19th Assembly members' property data](https://github.com/teampopong/korea-assembly-officials-property).