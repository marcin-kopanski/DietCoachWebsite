module ApplicationHelper
  def nav_items
    [
      {
        url: root_path,
        title: "Główna"
      },
      {
        url: about_me_path,
        title: "O mnie"
      },
      {
        url: pricing_path,
        title: "Cennik"
      },
      {
        url: offer_path,
        title: "Oferta"
      },
      {
        url: recipes_path,
        title: "Przepisy"
      },
      {
        url: contact_path,
        title: "Kontakt"
      }
    ]
  end

  def nav_helper css_class, html_tag, html_tag_class = ""
    nav_links = ""

    if html_tag_class
      html_tag_class = " class='#{html_tag_class}'"
    end

    nav_items.each do |item|
      nav_links << "<#{html_tag}#{html_tag_class}><a href=\"#{item[:url]}\" class=\"#{css_class} #{active? item[:url]}\">#{item[:title]}</a></#{html_tag}>"
    end

    nav_links.html_safe
  end

  def login_helper css_class, html_tag, html_tag_class = ""
    login_links = ""

    if html_tag_class
      html_tag_class = " class='#{html_tag_class}'"
    end

    if current_user.is_a?(GuestUser)
      login_links << "<#{html_tag}#{html_tag_class}><a href=\"#{new_user_registration_path}\" class=\"#{css_class} #{active? new_user_registration_path}\">Register</a></#{html_tag}>"
      login_links << "<#{html_tag}#{html_tag_class}><a href=\"#{new_user_session_path}\" class=\"#{css_class} #{active? new_user_session_path}\">Login</a></#{html_tag}>"
    else
      login_links << "<#{html_tag}#{html_tag_class}><a href=\"#{destroy_user_session_path}\" class=\"#{css_class} #{active? destroy_user_session_path}\" method=\"delete\">Logout</a></#{html_tag}>"
    end

    login_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
       alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Marcin Kopański Portfolio", sticky: false, time: 2000)
  end
end
