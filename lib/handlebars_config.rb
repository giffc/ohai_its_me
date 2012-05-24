class HandlebarsConfig

  def self.register_partial(partial_name, file_name)
    #puts "registering partial #{partial_name} #{file_name}"
    #Rails.logger.info "registering partial #{partial_name} #{file_name}"
    Handlebars.handlebars.registerPartial(partial_name, Handlebars.compile(File.open(file_name).read))
  end 

  def self.register_helper name, fn
    register_helper name, fn
  end

  def self.register_partials
    dir = File.expand_path("../../app/assets/templates", __FILE__)
    Dir[File.join(dir, "**/_*.jst.hbs")].each {|t| 
      register_partial(t.split(/[\/\.]/)[-3].gsub(/\A_/, ''), t)
    }
  end

  def self.register_helpers 
    # register_helper "nor", lambda do |a, b, context, options| 
    #   (a || b) ? options.inverse(context) : options.fn(context) 
    # end
    # register_helper "eq",  lambda do |a, b, context, options| 
    #   (a == b) ? options.fn(context) : options.inverse(context)
    # end
  end
end
