require 'yaml'

describe('features yaml file') do
    context("there is a correctly formatted yaml file") do
        it("should load correctly") do
            feature_yaml = YAML.load_file('properties/features.yaml')
        end
        
        it("should have a 'features' key") do
            feature_yaml = YAML.load_file('properties/features.yaml')
            features = feature_yaml['features']
            
            features.should_not be_nil
        end
        
        it("should have a latest feature with a 'shortDesc' key") do
            feature_yaml = YAML.load_file('properties/features.yaml')
            feature = feature_yaml['features'].to_a.last
            
            feature['shortDesc'].should_not be_nil
        end
    end
end
