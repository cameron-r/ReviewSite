require 'spec_helper'
require 'application_helper'

describe ApplicationHelper do
    let(:user) { FactoryGirl.build(:user,
        name: "Example User",
        email: "user@example.com",
        okta_name: "testCAS") }
        
    describe "Feature Banner" do
        before do
            user = FactoryGirl.create(:user)
        end
        
        context "when a user has not seen the latest feature" do
            before do
                #mock out feature_list to be used by application_helper to return feature user hasn't seen yet
            end
            it "seen_latest_feature? should return false" do
                seen_latest_feature?(user).should be_false
            end
        end
        
        context "when a user has seen the latest feature" do
            before do
                #mock out feature_list to return the latest feature user has seen
            end
            it "seen_latest_feature? should return true" do
                seen_latest_feature?(user).should be_true
            end
        end 
    end 
end
