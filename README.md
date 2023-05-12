Simple Test Case Using Robot Framework + Selenium

#### Scenario: Verify user can search for movies released in a specific year on IMDb
● Given that the user is on the IMDb homepage "https://www.imdb.com/" \
● When the user clicks on the "Advanced Search" link in the search bar filter\
● The user would then be redirected to a page containing “Advanced Title Search” link,
which he should click.\
● And selects "Feature Film" as title type\
● And selects the “Action” genre from Genres.\
● And enters a start year and end year in the "Release Date" fields (2010 - 2020).\
● And clicks the "Search" button\
● Then the search results page should display a list of Action movies released between
  2010 and 2020, sorted by User Rating (Higher ratings appear first, i.e. descendingly).
  
