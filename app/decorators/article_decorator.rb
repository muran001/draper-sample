class ArticleDecorator < Draper::Decorator
  delegate_all

  def emphatic
    h.content_tag(:strong, "Awesome")
  end


  def short_title
    object.title[0, 5]
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
