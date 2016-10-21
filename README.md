# google_books_api gem

This is a Ruby gem to query the [Google Books API](https://developers.google.com/books/)
for books.

## Installation

From within the project's root directory, issue the following two commands to
build and install the gem:

```
> gem build google_books_api.gemspec
...
> gem install google_books_api-0.0.1.gem
...

```

## Usage

While you can query the API without an API key it is strongly recommended that
you [use a key](https://developers.google.com/books/docs/v1/using#auth).

```
> google_books_api "Catch 22"
Books for '22: Catch'
 1: Catch-22
 2: Reading 'Catch-22'
 3: Catch-22 - Joseph Heller, New Edition
 4: Catch-22: 50th Anniversary Edition
 5: Catch 22
 6: Coping With Depression
 7: CliffsNotes on Heller's Catch-22
 8: Joseph Heller's Catch-22
 9: Catch-22 (Study Guide)
10: Catch-22
11: The True Story of Catch 22
12: Catch 22 - and a Way Out
...

```
