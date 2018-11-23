class BlogController < ApplicationController
  def index
    @blogs = Blog.all.order(created_at: :asc)
  end

  def blog_category
    @blogs = Blog.where(category_id: 1).order(created_at: :asc)
    render 'blog/category'
  end

  def dish_category
    @blogs = Blog.where(category_id: 2).order(created_at: :asc)
    render 'blog/category'
  end

  def show
    @blog = Blog.find(params[:id])
    @category = Blog.find(params[:id]).category
  end
end
