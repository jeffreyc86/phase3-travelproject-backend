class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :continent, :description, :display_url

  has_many :videos
end
