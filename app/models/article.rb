class Article < ApplicationRecord
  has_many_attached :images

  def thumbnail input
    return self.images[input].variant(resize: '300x300!').processed
  end

  include Rails.application.routes.url_helpers

  def image_urls
    images.collect {|img| rails_blob_path(img, only_path: true)}
  end

end
