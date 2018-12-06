class ProductSerializer < ActiveModel::Serializer
  attributes :id,:name,:description,:category,:image,:price,:quality,:updated_at,:created_at
  def created_at
  	object.created_at.to_i
  end
  def updated_at
  	object.updated_at.to_i
  end

  def image
  	object.try(:image)&.url
  end
end
