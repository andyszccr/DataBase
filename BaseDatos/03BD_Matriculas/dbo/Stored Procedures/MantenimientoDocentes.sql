-- =============================================
-- Author:		Milena Mata Sojo
-- Create date: nov, 2021
-- Description:	Mantenimiento tabla Docentes
-- =============================================
CREATE PROCEDURE [dbo].[MantenimientoDocentes](@identificacion as char(15), @nacionalidad as char(3), @nombre as varchar(50), 
                                              @primerapellido as varchar(50), @segundoapellido as varchar(50), @telefono as char(8), 
											  @email as varchar(100), 
											  @operacion as int)
AS
BEGIN
	-- insercion de datos
	if @operacion = 1 begin 
	   insert into Docentes (Identificacion, Nacionalidad, Nombre, PrimerApellido, SegundoApellido, Telefono, Email) 
	   values (@Identificacion, @Nacionalidad, @Nombre, @PrimerApellido, @SegundoApellido, @Telefono, @Email) 
	end
	
	-- modificacion
	if @operacion = 2 begin 
	   update Docentes 
	      set nombre = @nombre, 
		      PrimerApellido = @primerapellido, 
			  SegundoApellido = @segundoapellido, 
			  Telefono = @telefono, 
			  Email = @email 
		where Identificacion = @identificacion 
		  and nacionalidad = @nacionalidad 

	end

	-- borrado
	if @operacion = 3 begin 
	   delete docentes
	    where Identificacion = @identificacion 
		  

	end 
END