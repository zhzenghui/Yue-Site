class Api::V1::PostController < ApplicationController

  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  respond_to :json


  def index
     # current_user.tasks
   render :status => :unprocessable_entity,
          :json => { :success => false,
                     :info =>" @task.errors.full_messages",
                     :data => {} }
  end


  def info
   render :status => :unprocessable_entity,
          :json => { :success => false,
                     :info =>"上传要求：jpg ",
                     :data => {} }
  end

  def upload
    @image = params[:image]


   render :status => :unprocessable_entity,
          :json => { :success => false,
                     :info =>" @task.errors.full_messages",
                     :data => {} }
  end 





end