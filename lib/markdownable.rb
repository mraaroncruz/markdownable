require 'redcarpet'
require 'markdownable/version'

module Markdownable
  module ClassMethods
    def markdownable field
      define_method "#{field}_markdown" do
        renderer = Redcarpet::Render::HTML.new(:hard_wrap => true)
        markdown = Redcarpet::Markdown.new(renderer,
                                     :autolink => true,
                                     :lax_html_blocks => true)
        markdown.render(self.send field)
      end
    end
  end

  def self.included(receiver)
    receiver.extend ClassMethods
  end
end

if defined? ActiveRecord::Base
  ActiveRecord::Base.send :include, Markdownable
end
