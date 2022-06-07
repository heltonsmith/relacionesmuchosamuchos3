class MatriculaController < ApplicationController
  def index
    @asignaturas = Asignatura.all 
    @alumnos = Alumno.all
  end

  def new 
    @id_al = params[:mat_al]
    @id_as = params[:mat_as]

    @alumno = Alumno.find(@id_al)
    @asignatura = Asignatura.find(@id_as)

    @busqueda = Asignatura.find(@id_as).alumnos.find_by_id(@id_al)

    if @busqueda == nil 
      @asignatura.alumnos << @alumno
      respond_to do |format|
        format.html { redirect_to root_path, notice: "EXITO!: Matriculado exitosamente" }
      end
    else  
      respond_to do |format|
        format.html { redirect_to root_path, notice: "ERROR: Ya está matriculado" }
      end
    end

  end
end
