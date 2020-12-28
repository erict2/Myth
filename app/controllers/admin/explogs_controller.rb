class Admin::ExplogsController < AdminController
  def new
    @explog = Explog.new
    @user = User.find_by(id: params[:user_id])
    respond_to do |format|
      format.js
    end
  end

  def edit
    @explog = Explog.find_by(id: params[:id])
    @user = User.find_by(id: params[:user_id])
    respond_to do |format|
      format.js
    end
  end

  def create
    @explog = Explog.new(exp_params)
    @explog.user_id = params[:user_id]
    @explog.grantedby_id = current_user.id

    @explog.save!
    redirect_to admin_user_path(id: params[:user_id])
    
  end

  def update
    @explog = Explog.find_by(id:params[:id])

    @explog.update!(exp_params)
    redirect_to admin_user_path(id: params[:user_id])
  end

  def destroy
    @explog = Explog.find(params[:id])
    @explog.destroy

    redirect_to admin_user_path(id: params[:user_id])
  end

  private
  def exp_params
    params.require(:explog).permit(:user_id, :name, :aquiredate, :description, :amount)
  end
end