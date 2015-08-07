class StaticPagesController < ApplicationController
  def index
  end

  def contact
  end

  def thank_you
		@name = params[:name]
	end
end
