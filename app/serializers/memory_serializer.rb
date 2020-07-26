class MemorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :date, :image_url, :category_id, :category
end
