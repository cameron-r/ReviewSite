require 'spec_helper'
require 'application_helper'

describe ApplicationHelper do
  # let(:user) { FactoryGirl.build(:user,
  #     name: "Example User",
  #     email: "user@example.com",
  #     okta_name: "testCAS") }

  describe "Feature Banner" do
    before do
      @user = double('User')
      @latest_feature_id = 2

      @feature_list = double('FeatureList')
      @feature_list.stub(:latest).and_return({'id' => @latest_feature_id})

      FeatureList.stub(:new).and_return(feature_list)
    end

    context "when a user has not seen the latest feature" do
      before do
        @user.stub(:latest_feature_seen).and_return(@latest_feature_id-1)
      end
      it "seen_latest_feature? should return false" do
          seen_latest_feature?(@user).should be_false
      end
    end

    context "when a user has seen the latest feature" do
      before do
        @user.stub(:latest_feature_seen).and_return(@latest_feature_id)

      end
      it "seen_latest_feature? should return true" do
        seen_latest_feature?(@user).should be_true
      end
    end
  end
end
