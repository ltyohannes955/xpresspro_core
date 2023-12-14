require 'rails_helper'

RSpec.describe Api::NotificationsController, type: :controller do
  describe 'POST #create' do
    let(:user) { FactoryBot.create(:user) }

    it 'sends a notification email' do
      expect {
        post :create, params: { user_id: user.id }
      }.to change { ActionMailer::Base.deliveries.count }.by(1)

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['message']).to eq('Notification email sent')
    end
  end
end
