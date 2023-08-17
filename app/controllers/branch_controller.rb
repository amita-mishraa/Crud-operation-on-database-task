class BranchController < ApplicationController

    def list
        @branch =Branch.all()
        render json: @branch
       end
   
       def show
         @branch = Branch.find(params[:id])
         if @branch 
           render json: @branch
         else
           render json: {error: "Unavailable"}
         end
       end
    
       def create
         @branch = Branch.new(data_params)
         if @branch.save
           render json: @branch
         else
           render json: { error: @branch.errors.full_messages}
         end
       end
   
       def data_params
           params.require(:branch).permit(:branch_name)
       end
   
       def update
          @branch = Branch.find(params[:id])
          if @branch
           @branch.update(data_params)
           render json: {message: "user successfully updated"}
          else
           render json: {error: "Unable to update user"}
          end
       end
   
       def destroy
          @branch = Branch.find(params[:id])
          if @branch
           @branch.destroy()
           render json: {message: "deleted successfully"}
          else
           render json: {error: "unable to delete data"}
          end
       end
end
