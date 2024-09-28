
CREATE PROCEDURE [dbo].[MantenimientoClientes](
@cedula as int,
@nombre as varchar(100),
@primer_apellido as varchar(100),
@segundo_apellido as varchar(100),
@correo as varchar(100),
@direccion as varchar(300),
@idNacionalidad as int,
@estado as char(10),
@estampaTiempo as bigint,
@accion as int
)
AS
BEGIN
	if @accion = 1 begin

	  INSERT INTO Clientes(IdCliente, Nombre, PrimerApellido, SegundoApellido, Correo, Direccion, IdNacionalidad, Estado)
		VALUES (@cedula, @nombre, @primer_apellido, @segundo_apellido, @correo, @direccion, @idNacionalidad, @estado);

		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al insertar el nuevo registro', 12, 2)
		   rollback tran
		   return -1
		end

	end -- if @accion = 1

	if @accion = 2 begin

	if exists (select 1 from Clientes where IdCliente = @cedula
	                                        and Estampa = CONVERT(timestamp, @estampaTiempo))
	begin

		update Clientes
			set Nombre = @nombre,
				PrimerApellido = @primer_apellido,
				SegundoApellido = @segundo_apellido,
				Correo = @correo,
				Direccion =  @direccion,
				IdNacionalidad = @idNacionalidad,
				Estado = @estado
			Where IdCliente = @cedula

		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al actualizar, o no se encontro el registro', 12, 2)
		   rollback tran
		   return -1
		end

	 end -- if exist select
	 else begin

		 raiserror('Alguien mas actualizo el dato, por favor intentelo de nuevo', 12, 2)
		 rollback tran
		 return -1
	 end
	end -- if @accion = 2

	if @accion = 3 begin
		delete Clientes 
			where IdCliente = @cedula
	if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al eliminar el registro', 12, 2)
		   rollback tran
		   return -1
		end
	end -- if @accion = 3
	commit tran
END