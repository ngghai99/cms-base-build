class ArticleDecorator < BaseDecorator
  def decorate_status
    "<span class=\"badge badge-#{(object.status == "active") ? "success" : "danger"}\">
      #{(object.status == "active") ? t(".active") : t(".disable")}
    </span>".html_safe
  end

  def decorate_content
    strip_tags(object.content&.gsub(/[\[\]"]/, ''))&.truncate(50, omission: '..', escape: false)
  end
end
