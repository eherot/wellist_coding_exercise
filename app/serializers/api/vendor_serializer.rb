module Api
  class VendorSerializer < ActiveModel::Serializer
    attributes :name, :address, :city, :state, :zip, :price_rating
  end
end
