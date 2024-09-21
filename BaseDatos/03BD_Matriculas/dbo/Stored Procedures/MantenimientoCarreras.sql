CREATE PROCEDURE [dbo].[MantenimientoCarreras]
(
@idcarrera as char(2),
@nombre as varchar(200), 
@gradoaca as varchar(50), 
@operacion as int
)
AS
BEGIN
begin transaction
	-- insercion de datos
	if @operacion = 1 
	begin
			 insert into carreras (idcarrera, nombre, GradoAcademico) 
		     values (@idcarrera, @nombre, @gradoaca) 
			 If @@rowcount = 0 
			 begin
					Print 'No afecto ninguna fila al insertar la carrera '
			 end
				if @@error <> 0 or @@rowcount = 0 begin
					raiserror('Error al insertar la carrera', 12, 2)
					rollback tran
					return -1
				end
	end
	-- modificacion
	if @operacion = 2 
		begin 
		begin try 
			begin transaction
				update carreras 
				set GradoAcademico = @idcarrera,
				nombre = @nombre
				where IdCarrera = @gradoaca
				If @@rowcount = 0 begin
					Print 'No afecto ninguna fila al actualizar '
				end

				if @@error <> 0 or @@rowcount = 0 begin
					raiserror('Error al actualizar el la carrera', 16, 1)
					rollback tran
					return -1
				end
		end try 
		begin catch
			ROLLBACK TRANSACTION
			PRINT 'Ha ocurrido un error al actualziar los datos!'
		end catch
	end
	-- borrado
	if @operacion = 3 
	begin
		begin transaction
			delete Carreras 
			where IdCarrera = @idcarrera
		If @@rowcount = 0 begin
					Print 'No afecto ninguna fila al eliminar la carrera '
				end
				if @@error <> 0 or @@rowcount = 0 begin
					raiserror('Error al actualizar el la carrera', 16, 1)
					rollback tran
					return -1
				end
	end 
	commit tran
	ROLLBACK TRANSACTION
	raiserror('Error al actualizar el la carrera', 16, 1)
END