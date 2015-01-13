require('yaml')

class FeatureList
    def initialize(filepath)
        @features = YAML.load_file(filepath)['features']
    end
    
    def latest
        @features.first
    end
end
