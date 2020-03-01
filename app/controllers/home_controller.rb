class HomeController < ApplicationController
  def index
    @max_weight = @user.entries.maximum(:weight)
    @min_weight = @user.entries.minimum(:weight)
  end
end