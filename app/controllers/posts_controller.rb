class PostsController < NavelGazer::PostsController
  before_filter :register_partials # if Rails.env.development?
  
  def register_partials
    HandlebarsConfig.register_partials
  end
end