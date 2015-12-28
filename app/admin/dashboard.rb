ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    
    columns do
      column do
        panel "Recent News" do
          ul do
            News.all.map do |news|
              li link_to(news.title, admin_news_path(news))
            end
          end
        end
      end

      column do
        panel "Recent Blogs" do
          ul do
            Blog.all.map do |blog|
              li link_to(blog.title, admin_blog_path(blog))
            end
          end
        end
      end

      column do
        panel "Admin Users" do
          ul do
            AdminUser.all.map do |au|
              li link_to(au.email, admin_admin_user_path(au))
            end
          end
        end
      end
    end
  end # content
end
