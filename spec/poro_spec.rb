require 'bundler/setup'
Bundler.require
require 'rspec/autorun'

class Article
  include Markdownable
  attr_accessor :title, :author, :body
  markdownable :body
end

describe "PORO with markdownable" do
  before(:each) do
    @article = Article.new
    @article.title = "My Article"
    @article.author = "Aaron Cruz"
    @article.body = "## Hello world"
  end
  subject { @article }
  its(:body_markdown) { should =~ /<h2>Hello world<\/h2>/ }
end
