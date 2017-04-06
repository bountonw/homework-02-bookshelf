class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scoped_search on: [:title, :author, :genre, :classification, :year]
end
