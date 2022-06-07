class CreateJoinTableAsignaturasAlumnos < ActiveRecord::Migration[7.0]
  def change
    create_join_table :asignaturas, :alumnos, column_options: { null: false, foreign_key: true } do |t|
      t.index [:asignatura_id, :alumno_id]
      t.index [:alumno_id, :asignatura_id]
    end
  end
end
