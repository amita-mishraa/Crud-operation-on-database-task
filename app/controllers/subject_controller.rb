class SubjectController < ApplicationController

       def index
        @subject =Subject.all()
        render json: @subject
       end
   
       def show
         @subject = Subject.find(params[:id])
         if @subject 
           render json:@subject
         else
           render json: {error: "Unavailable"}
         end
       end
   
       def create
         @subject = Subject.new(data_params)
         if @subject.save
           render json: @subject
         else
           render json: { error: @subject.errors.full_messages}
         end
       end
   
       def data_params
           params.require(:subject).permit( :sub_name)
       end
   
       def update
          @subject = Subject.find(params[:id])
          if @subject
           @subject.update(data_params)
           render json: {message: "user successfully updated"}
          else
           render json: {error: "Unable to update user"}
          end
       end
   
       def destroy
          @subject = Subject.find(params[:id])
          if @subject
           @subject.destroy()
           render json: {message: "deleted successfully"}
          else
           render json: {error: "unable to delete data"}
          end
       end
end
