require "uri"
require "net/http"

class MakeRequestData
  BASE_URL = 'https://newsapi.org/v2/everything'
  SERVER_ENCODING = "ISO-8859-1"

  def initialize(query: 'Apple', sort_by: 'popularity', from: 1.day.ago.strftime('%F'))
    @query = query
    @sort_by = sort_by
    @from = from

    call
  end

  def call
    make_request
  end

  private

  def make_request
    url = URI(build_url)

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["Content-Type"] = "application/x-www-form-urlencoded"
    request.body = params_request

    response = https.request(request)

    JSON.parse(response.body.force_encoding(SERVER_ENCODING).encode("UTF-8"))['articles']
  end

  def build_url
    "#{BASE_URL}?#{params_request}"
  end

  def params_request
    "q=#{@query}&from=#{@from}&sortBy=#{@sort_by}&apiKey=#{Figaro.env.news_api_key}"
  end
end
