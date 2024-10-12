class DashboardController < ApplicationController
  before_action :authenticate_user! # Ensure the user is signed in before accessing the dashboard

  def index
    # Logic for the dashboard view can go here
  end
end
