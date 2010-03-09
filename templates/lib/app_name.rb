require 'thor/group'

<%= "module #{options[:namespace].camelize}" if options[:namespace] %>
class <%= "#{app_name.camelize}" %> < Thor::Group
  include Thor::Actions

  # Define arguments and options
  argument :name
  class_option :my_option, :type => :boolean, :default => true

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  def create_root
    self.destination_root = File.expand_path(name, destination_root)
    empty_directory '.'
    FileUtils.cd(destination_root)
  end   
  
  def create_optional       
    return if !options[:my_option]
    empty_directory 'optional'                 
    template('my_template.erb', "#{name}.rb")
    inside 'optional' do
      template('opt_template.erb', "opt_#{name}.rb")
    end
  end
  
end
<%= "end" if options[:namespace] %>                  
