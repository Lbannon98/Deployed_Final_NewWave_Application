class ProfilesController < ApplicationController

  def index
    @user = current_user || current_editor
  end

end