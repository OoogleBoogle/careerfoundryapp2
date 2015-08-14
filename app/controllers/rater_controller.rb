class RaterController < ApplicationController

  def create
    if user_signed_in?
      obj = params[:klass].classify.safe_constantize.find(params[:id])
      obj.rate params[:score].to_f, current_user, params[:dimension]
      render :json => true
    else
      render :json => false
    end
  end
end
