class Admin::ExplogsController < AdminController
    def new

    end

    def edit
        @explog = Explog.find_by(id: params[:id])
        @character = Character.find_by(id: params[:character_id])
        @user = User.find_by(id: params[:user_id])
        respond_to do |format|
            format.js
        end
      end

    def create
        @explog = Explog.new(exp_params)
        @explog.character_id = params[:character_id]

        if @explog.save
            redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
        else
            redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
        end
    end

    def update
        @explog = Explog.find_by(id:params[:id])
 
        if @explog.update(exp_params)
            redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
        else
          render 'edit'
        end
    end

    def destroy
        @explog = Explog.find(params[:id])
        @explog.destroy
    
        redirect_to admin_user_character_path(user_id: params[:user_id], id: params[:character_id])
      end

    private
    def exp_params
        params.require(:explog).permit(:character_id, :name, :aquiredate, :description, :amount)
    end
end