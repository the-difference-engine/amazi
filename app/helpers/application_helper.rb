module ApplicationHelper

  def get_model(model_name)
    camel_case_name = model_name.split("_").map{|s| s.capitalize}.join("")
    Rails.application.eager_load!
    model_index = ActiveRecord::Base.descendants.map(&:name).index(camel_case_name)
    return ActiveRecord::Base.descendants[model_index]
  end
end
