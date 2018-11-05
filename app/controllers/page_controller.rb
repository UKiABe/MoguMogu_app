class PageController < ApplicationController
  def TopPage
  end

  def blog
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(blog_params)

  end

  private
    def blog_params
      params.require(:blog).permit(:content)
    end
end
