class MemorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :titile, :description, :date, :image_url, :category_id, :category
end
