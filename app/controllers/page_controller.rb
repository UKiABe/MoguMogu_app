class PageController < ApplicationController
  def TopPage
  end

  def blog
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(book_params)

  end

  private
    def book_params
      params.require(:blog).permit(:content)
    end
end
