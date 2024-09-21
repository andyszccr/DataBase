-- =============================================
-- Author:		Milena Mata Sojo
-- Create date: nov, 2021
-- Description:	Mantenimiento tabla Cursos
-- =============================================
CREATE PROCEDURE [dbo].[MantenimientoCursos](@codCurso as char(8), @carrera as char(2), @nombrecurso as varchar(150), 
                                            @creditos as int, @horasclases as int, @horassemanales as int, @requierelab as bit, 
                                            @operacion as int)
AS
BEGIN
	-- insercion de datos
	if @operacion = 1 begin 
	   insert into cursos (CodigoCurso, Carrera, NombreCurso, Creditos, HorasClases, HorasSemanales, RequiereLaboratorio) 
	   values (@codCurso, @carrera, @nombrecurso, @creditos, @horasclases, @horassemanales, @requierelab ) 
	end
	
	-- modificacion
	if @operacion = 2 begin 
	   update cursos 
	      set carrera = @carrera, 
		      NombreCurso = @nombrecurso, 
			  Creditos = @codCurso, 
			  HorasClases = @horasclases, 
			  HorasSemanales = @horassemanales, 
			  RequiereLaboratorio = @requierelab 
		  where CodigoCurso = @creditos

	end

	-- borrado
	if @operacion = 3 begin 
	   delete cursos 
	    where CodigoCurso = @codCurso 

	end 
END