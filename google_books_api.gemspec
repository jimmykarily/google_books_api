lib = File.expand_path('../lib/', __FILE__)
require_relative 'lib/google_books_api/version'

Gem::Specification.new do |s|
  s.name             = 'google_books_api'
  s.version          = GoogleBooksApi::VERSION
  s.date             = '2016-10-21'
  s.summary          = 'A search tool for Google Books API'
  s.description      = 'You can use this tool to search for a book on the Google Books API'
  s.authors          = ["Dimitris Karakasilis"]
  s.email            = ["jimmykarily@gmail.com"]
  s.files            = Dir.glob("{bin,lib}/**/*")
  s.homepage         = 'http://www.github.com/jimmykarily/google_books_api'
  s.license          = 'MIT'
  s.require_path     = 'lib'
  s.executables      << 'google_books_api'
end
