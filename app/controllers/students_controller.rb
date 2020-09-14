class StudentsController < ApplicationController

    def show
        @student = Student.find(params[:id])
      end
    
      def index
        @students = Student.all 
      end
    
      def new
        @student = Student.new
      end
    
      def create
        @student = Student.new(params.require(:student).permit(:student, :address))
        @student.save
        redirect_to students_path(@student)
      end
    
      def edit
        @student = Student.find(params[:id])
      end
    
      def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:student, :address))
        redirect_to students_path(@student)
      end  
      
      def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
      end
end
