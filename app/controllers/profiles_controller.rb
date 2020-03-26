class ProfilesController < ApplicationController

  # Set user to be the current user or current editor for accessing values in the view
def index
    @user = current_user || current_editor
  end

end