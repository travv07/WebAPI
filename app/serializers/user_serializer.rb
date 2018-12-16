class UserSerializer < ActiveModel::Serializer
  attributes :id , :name, :address, :numberphone,:email, :image, :created_at, :updated_at
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
