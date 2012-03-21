class GainsController < ApplicationController

  def index
    @gains = Gain.all(:conditions => {:user_id => current_user.id},
                      :limit => 10,
                      :include => [:task],
                      :order => 'note desc'
    )
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gains }
    end
  end

  def create

    @task = Task.find(params[:task_id])
#    @gain = @task.gains.create(params[:gain], :user_id => '1')
    @gain = @task.gains.create(params[:gain], :user_id => current_user.id.to_i)
    @gain.update_attributes( :user_id => current_user.id.to_i)
    redirect_to tasks_path
  end





def ajax_complete


  if params[:id].to_i==-1 then
    @Gain=Gain.new(status: params[:status], :user_id => current_user.id.to_i)
  else
    @Gain = Gain.find(params[:id])
    @Gain.update_attributes(status: params[:status])
  end

  render :text => "Hello!!"+ params[:status].to_s

end

end