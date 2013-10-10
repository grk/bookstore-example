$ ->
  $('#book_search').typeahead
    name: "book"
    remote: "/books/autocomplete?query=%QUERY"
