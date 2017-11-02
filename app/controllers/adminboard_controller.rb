class AdminboardController < ApplicationController
  def index

  end

  def profilesmanagment
    @profiles = Profile.all
  end
end
