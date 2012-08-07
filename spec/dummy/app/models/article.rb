class Article < ActiveRecord::Base
  attr_accessible :author, :body, :title
  markdownable :body
end
