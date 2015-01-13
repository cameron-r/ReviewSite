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
            
        
        # it("should have a 'features' key") do
        #     skip
        #     feature_yaml = YAML.load_file('properties/features.yaml')
        #     features = feature_yaml['features']
        #     
        #     features.should_not be_nil
        # end
        # 
        # it("should have a latest feature with a 'shortDesc' key") do
        #     skip
        #     feature_yaml = YAML.load_file('properties/features.yaml')
        #     feature = feature_yaml['features'].to_a.first
        #     
        #     feature['shortDesc'].should_not be_nil
        # end
    end
end
