module Api
  class VendorsController < ApiBaseController
    private

    def vendor_params
      params.require(:vendor).permit(:category, :care_type, :care_sub_type, :name, :price_rating)
    end
  end
end
