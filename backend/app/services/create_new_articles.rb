class CreateNewArticles

  def initialize(query, sort_by, from)
    @query = query
    @sort_by = sort_by
    @from = from
  end

  def call
    insert_new_articles
  end

  private

  def insert_new_articles
    new_articles = MakeRequestData.new(
      query: @query,
      sort_by: @sort_by,
      from: @from
    ).call

    puts "*"*50
    puts new_articles

    ::Article.create(new_articles)

  rescue => e
    raise "There was an error to save articles: #{e.message}"
  end
end
