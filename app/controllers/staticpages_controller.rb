class StaticpagesController < ApplicationController
  def home
    render :home
  end
  
  def contact
    render :contact
  end
  
  def about
    render :about
  end
end
