module ApplicationHelper
  def title(content)
    content_for(:page_title) {content}
  end

  def at_page(page = '')
    render 'shared/menu', page: page
  end

  def nav_item(title, url, current_page = '', opts = {})
    content_tag :li, class: "nav-item #{'active' if current_page == title}" do
      link_to title.titleize, url, opts.merge!({class: 'nav-link'})
    end
  end
end