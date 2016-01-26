class WelcomeController < ApplicationController
  before_filter :set_admin

  def set_admin
    @posts = Blog.where(:published => true).order(created_at: :desc).last(3)
    @blog_categories = Category.all
    # @menus = Menu.all.order(order: :asc)
  end

  def index
    
  end

  def blogs
  	@blogs = Blog.where(:published => true).paginate(:page => params[:page],:per_page => 2 ).order(created_at: :desc)
    # @posts = Blog.where(:published => true).order(created_at: :desc)
    # @posts = Blog.where(:published => true).last(3)
  end

  def blog_item
    @blog = Blog.friendly.find(params[:id])
    # @blog = Blog.find_by_title(params[:blog])
  end

  def news
    @news = News.where(:published => true).paginate(:page => params[:page], :per_page => 2 ).order(created_at: :desc)
  end

  def news_item
    @news = News.friendly.find(params[:id])
  end

  def page
    @page = Page.friendly.find(params[:id])
  end

  def blog_categories
    @category_posts = Category.friendly.find(params[:id])#.paginate(:page => params[:page],:per_page => 2 )
  end

end
