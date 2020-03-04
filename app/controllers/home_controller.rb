class HomeController < ApplicationController
  def index
    @max_weight = @user.entries.maximum(:weight)
    @min_weight = @user.entries.minimum(:weight)
    @current_weight = @user.entries.pluck(:weight).last
    @seven_day_average = @user.entries.where("created_at > ?", 7.days.ago).average(:weight)
    @thirty_day_average = @user.entries.where("created_at > ?", 30.days.ago).average(:weight)
    @twelve_month_average = @user.entries.where("created_at > ?", 12.months.ago).average(:weight)
  end
end
