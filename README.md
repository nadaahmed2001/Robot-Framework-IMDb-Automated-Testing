# Robot Framework IMDb Automated Testing

This repository contains Robot Framework code for automating the testing of the IMDb website's search feature. The tests aim to verify if the user can search for movies released in a specific year.

## Prerequisites

To run the automated tests, make sure you have the following installed:

- Robot Framework
- SeleniumLibrary

## Test Scenario

The test scenario, `Scenario3`, is designed to perform the following steps:

1. Given that the user is on the IMDb homepage "https://www.imdb.com/"
2. When the user clicks on the "Advanced Search" link in the search bar filter
3. The user would then be redirected to a page containing “Advanced Title Search” link,
which he should click.
4. And selects "Feature Film" as title type.
5. And selects the “Action” genre from Genres.
6. And enters a start year and end year in the "Release Date" fields (2010 - 2020).
7. Enter a start year and end year (2010 - 2020) in the "Release Date" fields.
8.  And clicks the "Search" button
9. Then the search results page should display a list of Action movies released between
2010 and 2020, sorted by User Rating (Higher ratings appear first, i.e. descendingly).

