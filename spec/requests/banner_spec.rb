require 'spec_helper'

describe "Feature banner: " do
    let (:user) { FactoryGirl.create :user }
    
    context "when user has not dismissed the banner" do
        subject { page }
        before do
            sign_in user
            visit root_url
        end
        
        it "should have the feature banner" do
            page.should have_selector "#feature-banner-container"
        end
        
        context "when user dismisses the banner" do
            subject { page }
            before do
                sign_in user
                
                click_button('feature-banner-close')
            end
            
            it "should remove the banner", js: true do
                page.should_not have_selector "#feature-banner-container"
            end
        end
    end
end
