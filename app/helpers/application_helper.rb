module ApplicationHelper
  def full_title(page_title)
    base_title = "Review Site"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def format_all_for_select(model)
    model.all.map { |model_object| [model_object.name, model_object.id] }.sort
  end

  def list(collection)
    collection.map { |item| item.to_s }.sort.join(', ')
  end

  def to_yes_no_string(boolean)
    boolean ? "Yes" : "No"
  end
  
  def feature_list
      if not defined?(@feature_list)
          @feature_list = FeatureList.new("properties/features.yaml")
      end
      
      @feature_list
  end
  
  def seen_latest_feature?(user)
     feature_list.latest['id'] <= user.latest_feature_seen 
  end

end
