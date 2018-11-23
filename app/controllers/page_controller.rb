class PageController < ApplicationController
  def TopPage
    @blogs = Blog.where(category_id: 1).order(created_at: :asc).limit(5)
    @dishes = Blog.where(category_id: 2).order(created_at: :asc).limit(5)
  end
end
