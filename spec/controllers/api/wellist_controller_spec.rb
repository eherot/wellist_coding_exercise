require 'rails_helper'

RSpec.describe Api::WellistController, type: :controller do
  let(:user)   { FactoryGirl.create(:user) }
  let(:vendor) { FactoryGirl.create(:vendor) }
  let(:second_vendor) { FactoryGirl.create(:vendor) }

  describe 'PUT #update' do
    it 'adds a vendor to the wellist' do
      put :update, format: :json, user_id: user.id, wellist: { vendor_ids: [vendor.id] }
      expect(response).to have_http_status(:success)

      expect(user.wellist.vendors.count).to eql(1)
      body = JSON.parse(response.body)
      expect(body['wellist'].count).to eq(1)
    end

    it 'adds multiple vendors to the wellist' do
      put :update, format: :json, user_id: user.id, wellist: { vendor_ids: [vendor.id, second_vendor.id] }
      expect(response).to have_http_status(:success)

      expect(user.wellist.vendors.count).to eql(2)
      body = JSON.parse(response.body)
      expect(body['wellist'].count).to eq(2)
    end

    it 'allows us to hide vendors from the wellistry' do
      put :update, format: :json, user_id: user.id, wellist: { vendor_ids: [vendor.id], hide: true }
      expect(response).to have_http_status(:success)
      body = JSON.parse(response.body)
      expect(body['wellist'].count).to eq(1)
      expect(body['wellist'].first['hidden']).to eq(true)
    end
  end

  describe 'DELETE #destroy' do
    it 'removes a vendor from the wellist when called with user id and vendor id' do
      user.wellist.vendors << vendor

      delete :destroy, format: :json, user_id: user.id, wellist: { vendor_ids: [vendor.id] }

      expect(response).to have_http_status(:success)
      user.reload
      expect(user.wellist.vendors.count).to eql(0)
      body = JSON.parse(response.body)
      expect(body['wellist'].count).to eq(0)
    end

    it 'removes multiple vendors' do
      user.wellist.vendors << [vendor, second_vendor]

      delete :destroy, format: :json, user_id: user.id, wellist: { vendor_ids: [vendor.id, second_vendor.id] }

      expect(response).to have_http_status(:success)
      user.reload
      expect(user.wellist.vendors.count).to eql(0)
      body = JSON.parse(response.body)
      expect(body['wellist'].count).to eq(0)
    end
  end

  describe 'GET #show' do
    it 'shows a users wellist, with vendors inline' do
      user.wellist.vendors << [vendor, second_vendor]

      get :show, format: :json, user_id: user.id
      expect(response).to have_http_status(:success)
      body = JSON.parse(response.body)
      expect(body['wellist'].count).to eq(2)
    end
  end
end
