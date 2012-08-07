require 'spec_helper'

describe Article do
  subject { Article.create(:title => "My Article", :author => "Aaron Cruz", :body => "## Hello world")}
  it { should be_valid }
  its(:body_markdown) { should =~ /<h2>Hello world<\/h2>/ }
end
