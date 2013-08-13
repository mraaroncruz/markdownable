# Markdownable
![codeship](https://www.codeship.io/projects/463cfc50-e66b-0130-e1e7-62a1cf2e5116/status)
Adds an attribute to your class that is a markdown representation of another attribute.
Includes auto-include for ActiveRecord

## Installation

Add this line to your application's Gemfile:

    gem 'markdownable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markdownable

## Usage
With a Plain Old Ruby Object®

```ruby
require 'markdownable'

class Article
  include Markdownable
  attr_accessor :title, :author, :body
  markdownable :body
end

article = Article.new
article.body = "## Hello world"
# adds a `_markdown` field to any fields you chose above
puts article.body_markdown #=> "<h2>Hello world</h2>"
```

With ActiveRecord you don't need to include the module

```ruby
class Post < ActiveRecord::Base
  markdownable :text
end

article = Article.new(:body => "## Hello World")
article.save
# adds a `_markdown` field to any fields you chose above
puts article.text_markdown #=> "<h2>Hello world</h2>"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
