# require 'rails_helper'

# RSpec.describe Admins::EventsController do
#   describe "GET index" do
#     it "shows a page with admin footer" do
#       get :index
#       expect(response).to render_template("admins/events/index")
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end
# end

=begin
describe PostsController do
  describe 'GET #index' do
    context 'when user is logged in' do
      with :user
      before do
        sign_in user
        get :index
      end
      it { is_expected.to respond_with :ok }
      it { is_expected.to respond_with_content_type :html }
      it { is_expected.to render_with_layout :application }
      it { is_expected.to render_template :index }
    end
    context 'when user is logged out' do
      before do
        get :index
      end
      it { is_expected.to redirect_to new_session_path }
      it { is_expected.to set_the_flash(:warning).to('Please log in.') }
      it { is_expected.to set_session(:return_to).to(posts_path) }
    end
  end
end
=end

