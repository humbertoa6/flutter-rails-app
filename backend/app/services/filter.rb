class Filter
  def initialize(resource, query, sort_by, from)
    @resource = resource
    @query = query
    @sort_by = sort_by
    @from = from
  end

  def call
    filter_resource
  end

  private

  def filter_resource
    @resource.filter_title_by_params(@query)
    @resource.sort_by_field(@sort_by)
    @resource.from_get_data(@from)
  end
end
