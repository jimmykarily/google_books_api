require 'net/http'
require 'json'

class GoogleBooksApi
  API_URL = "https://www.googleapis.com/books/v1/volumes"

  def self.search(query)
    if query == nil || query == ""
      log "You must provide a query for searching"

      return
    end

    response = get_json_response(API_URL, { q: query, maxResults: 40 })
    items = response ? response["items"] : []

    log "Books for '#{query}'" if items.any?

    items.each_with_index do |book, index|
      log "#{(index + 1).to_s.rjust(2)}: #{book["volumeInfo"]["title"]}"
    end
  end

  def self.log(message)
    puts message
  end

  private

  def self.get_json_response(url, params)
    if ENV["GOOGLE_BOOKS_API_KEY"] == nil
      log "[WARNING] GOOGLE_BOOKS_API_KEY environment variable is not set." +
        "Consider setting a key in order to play by the Google rules.\n\n"
    else
      params.merge!(key: ENV["GOOGLE_BOOKS_API_KEY"])
    end

    uri = URI(url)
    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get_response(uri)
    if res.is_a?(Net::HTTPSuccess)
      JSON.parse(res.body)
    else
      puts JSON.parse(res.body)["error"]["errors"][0]["message"]
      log "#{res.message} (#{res.code})"
    end
  end
end
