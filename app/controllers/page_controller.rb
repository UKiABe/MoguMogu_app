class PageController < ApplicationController
  def TopPage
    @blogs = Blog.where(category_id: 1).order(created_at: :asc).limit(5)
    @dishes = Blog.where(category_id: 2).order(created_at: :asc).limit(5)
  end

  def blog
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
    @category = Blog.find(params[:id]).category
  end
end
