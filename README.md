== README


1. Installation

Add Draper to your Gemfile:

```
# Gemfile
gem 'draper'
```

Then run below

```
$ bundle install
```

2. Generate Decorator

If target model already exists, you can run...

```
$ rails g decorator Article
```

3. Writing Decorators

You will find decorator files in your app/decorators directory.
Then you can write below

```
# app/decorators/article_decorator.rb
class ArticleDecorator < Draper::Decorator
  delegate_all
 
  def short_title
    object.title[0, 5]
  end

  def emphatic
    h.content_tag(:strong, "Awesome")
  end
end
```
And you have to write a thing to use decorator in your controller.

```
# app/controllers/article_controller.rb
class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id]).decorate
  end
end
```

After you write above, you can use @article.short_title in your view.


```
# app/view/article/show.html.erb
<%= @article.short_title %>
<%= @article.emphatic %>
```

