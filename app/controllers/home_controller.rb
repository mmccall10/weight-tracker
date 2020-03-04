class HomeController < ApplicationController
  def index
    @max_weight = @user.entries.maximum(:weight)
    @min_weight = @user.entries.minimum(:weight)
    @current_weight = @user.entries.pluck(:weight).last
  end
end
