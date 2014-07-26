require 'spec_helper'

describe "Plant pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:admin) }
  before { sign_in user }

  describe "plant creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a plant" do
        expect { click_button "Post" }.not_to change(Plant, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'plant_content', with: "Lorem ipsum" }
      it "should create a plant" do
        expect { click_button "Post" }.to change(Plant, :count).by(1)
      end
    end
  end
end