require 'spec_helper'

describe('FeatureList') do
    context("there is a correctly formatted yaml file") do
        it("should not raise error") do
            lambda { FeatureList.new "spec/examples/features.yaml" }.should_not raise_error
        end
        
        it("should return the latest feature") do
            feature_list = FeatureList.new "spec/examples/features.yaml"
            feature_list.latest['banner_text'].should == "this <div>is</div> a feature"
        end
    end
end
