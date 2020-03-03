class EntriesController < ApplicationController
  before_action :set_entry, only: [:destroy]
  def index
    @entries = @user.entries
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = @user.entries.new(entry_params)
    if @entry.save
      redirect_to entries_path, notice: "Entry added."
    else
      render :new
    end
  end

  def destroy
    @entry.destroy
    redirect_to entries_url, notice: "Entry was successfully destroyed."
  end

  private

  def set_entry
    @entry = @user.entries.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:weight, :date_entered)
  end
end
