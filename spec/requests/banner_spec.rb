require 'spec_helper'

describe "feature banner" do
    let (:user) { FactoryGirl.create :user }
    
    context "user has not dismissed new feature" do
    subject { page }
        before do
            sign_in user
            visit root_url
        end
        
        it "should have the feature banner container" do
            page.should have_selector ".feature-banner-container"
        end
    end
end
