-- =============================================
-- Author:		Milena Mata Sojo
-- Create date: nov, 2021
-- Description:	Mantenimiento tabla Matricula
-- =============================================
CREATE PROCEDURE [dbo].[MantenimientoMatricula](@idhorario as int, @identificacion as char(15), @nacionalidad as char(3), 
                                                @fechahoraReg as datetime, @estado as char(1), @situacioncurso as char(1),
												@montocancelado as char(1),
                                                @operacion as int)
AS
BEGIN
	-- insercion de datos
	if @operacion = 1 begin 
	   insert into Matricula (IdHorario, Identificacion, Nacionalidad, FechaHoraRegistro, Estado, SituacionCurso, MontoCancelado) 
	                  values (@IdHorario, @Identificacion, @Nacionalidad, @FechaHoraReg, @Estado, @SituacionCurso, @MontoCancelado)
	end
	
	-- modificacion
	if @operacion = 2 begin 
	   update matricula
	      set FechaHoraRegistro = @fechahoraReg, 
		      estado = @estado, 
			  SituacionCurso = @situacioncurso, 
			  MontoCancelado = @montocancelado 
	    where idhorario = @idhorario
		  and nacionalidad = @nacionalidad

	end

	-- borrado
	if @operacion = 3 begin 
	   delete matricula 
	    where idhorario = @idhorario
		  and identificacion = @identificacion 
		  and nacionalidad = @nacionalidad

	end 
END