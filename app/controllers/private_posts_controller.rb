class PrivatePostsController < ApplicationController
  include JSONAPI::ActsAsResourceController
  before_action :authenticate_user

  def current
    render :json => current_user
  end

end
