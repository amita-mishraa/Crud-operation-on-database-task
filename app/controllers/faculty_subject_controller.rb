class FacultySubjectController < ApplicationController

    def index
        @faculty =FacultySubject.all()
        render json: @faculty
    end
    def show
         @faculty = Faculty.find(params[:id])
         @faculty_subjects = @faculty.subjects
         if @faculty_subjects 
           render json:@faculty_subjects
         else
           render json: {error: "Unavailable"}
         end
    end
   
    def create
         @faculty = FacultySubject.new(attribute_params)
         if @faculty.save
           render json: @faculty
         else
           render json: { error: @faculty.errors.full_messages}
         end
        end
        
    def attribute_params
        params.permit(:subject_id)
    end
     
    def update
        @faculty = Faculty.find(params[:id])
         if @faculty_subjects=@faculty.subjects
         @faculty.faculty_subjects.update(attribute_params)
         render json: {message: "user successfully updated"}
        else
         render json: {error: "Unable to update user"}
        end
     end

     def destroy
        @faculty = Faculty.find(params[:id])
        if @faculty_subjects = @faculty.subjects
         @faculty_subjects.destroy()
         render json: {message: "deleted successfully"}
        else
         render json: {error: "unable to delete data"}
        end
     end
end
