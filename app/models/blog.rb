class Blog < ApplicationRecord
  has_rich_text :content
  has_one :featured_image
end
