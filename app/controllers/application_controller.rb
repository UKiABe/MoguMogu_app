class ApplicationController < ActionController::Base
  def access_denied(exception)
    redirect_to root_path, notice: "only users which have a admin role can access the page you've accessed."
  end
end
