class Article < ApplicationRecord
  scope :filter_title_by_params, ->(query) { where("title LIKE '%?%'", query) }
  scope :sort_by_field, -> (sort_by) { order_by(sort_by.to_sym) }
  scope :from_get_data, -> (from) { where(published_at: DateTime.parse(from)..Datetime.now) }
end
