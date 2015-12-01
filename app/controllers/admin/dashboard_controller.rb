class Admin::DashboardController < ApplicationController
   def home
   		render :home, layout: false
  end
end
