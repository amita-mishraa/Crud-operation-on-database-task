class FacultyController < ApplicationController

    def index
        @faculty =Faculty.all()
        render json: @faculty
    end
   
    def show
         @faculty = Faculty.find(params[:id])
         if @faculty 
           render json:@faculty
         else
           render json: {error: "Unavailable"}
         end
    end
   
    def create
         @faculty = Faculty.new(attribute_params)
         if @faculty.save
           render json: @faculty
         else
           render json: { error: @faculty.errors.full_messages}
         end
    end
   
    def attribute_params
        params.require(:faculty).permit( :name, :email)
    end

    def update
        @faculty = Faculty.find(params[:id])
        if @faculty
         @faculty.update(attribute_params)
         render json: {message: "user successfully updated"}
        else
         render json: {error: "Unable to update user"}
        end
     end

     def destroy
        @faculty = Faculty.find(params[:id])
        if @faculty
         @faculty.destroy()
         render json: {message: "deleted successfully"}
        else
         render json: {error: "unable to delete data"}
        end
     end
end
