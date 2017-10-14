require 'rails_helper'

RSpec.describe Api::VendorsController, type: :controller do
  let(:vendor) { FactoryGirl.create(:vendor) }

  describe 'POST #create' do
    it 'adds a vendor to the DB' do
      post :create, format: :json, vendor: attributes_for(:vendor)
      expect(response).to have_http_status(:success)

      expect(Vendor.count).to eql(1)
    end
  end
end
