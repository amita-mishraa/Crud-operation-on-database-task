class StudentSubjectController < ApplicationController

    def index
        @student =StudentSubject.all()
        render json: @student
    end
    def show
         @student = Student.find(params[:id])
         @student_subjects = @student.subjects
         if @student_subjects 
           render json:@student_subjects
         else
           render json: {error: "Unavailable"}
         end
    end
    def create
         @student = StudentSubject.new(attribute_params)
         if @student.save
           render json: @student
         else
           render json: { error: @student.errors.full_messages}
         end
    end
    def attribute_params
        params.permit(:subject_id)
    end
    def update
        @student = Student.find(params[:id])
         if @student_subjects=@student.subjects
         @student.student_subjects.update(attribute_params)
         render json: {message: "user successfully updated"}
        else
         render json: {error: "Unable to update user"}
        end
    end
    def destroy
        @student = Student.find(params[:id])
        if @student_subjects = @student.subjects
         @student_subjects.destroy()
         render json: {message: "deleted successfully"}
        else
         render json: {error: "unable to delete data"}
        end
    end
end
