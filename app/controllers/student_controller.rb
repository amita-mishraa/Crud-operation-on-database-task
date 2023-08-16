class StudentController < ApplicationController

    def list
     @student =Student.all()
     render json: @student
    end

    def show
      @student = Student.find(params[:id])
      if @student 
        render json:@student
      else
        render json: {error: "Unavailable"}
      end
    end

    def create
      @student = Student.new(data_params)
      if @student.save
        render json: @student
      else
        render json: { error: @student.errors.full_messages}
      end
    end

    def data_params
        params.require(:student).permit( :name, :age, :email, :branch_id)
    end

    def update
       @student = Student.find(params[:id])
       if @student
        @student.update(data_params)
        render json: {message: "user successfully updated"}
       else
        render json: {error: "Unable to update user"}
       end
    end

    def destroy
       @student = Student.find(params[:id])
       if @student
        @student.destroy()
        render json: {message: "deleted successfully"}
       else
        render json: {error: "unable to delete data"}
       end
    end
end
