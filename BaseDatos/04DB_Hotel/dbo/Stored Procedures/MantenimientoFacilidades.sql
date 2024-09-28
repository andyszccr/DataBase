CREATE Procedure [dbo].[MantenimientoFacilidades]
(
@idFacilidad int,
@Facilidad varchar(100),
@estampaTiempo as bigint,
@accion varchar(50) output
)
AS
BEGIN
	if @accion = '1' begin

		insert into Facilidades(Facilidad)values(@Facilidad)

		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al insertar el nuevo registro', 12, 2)
		   rollback tran
		   return -1

		end

	end -- if @accion = 1

	if @accion = '2' begin
	
	if exists (select 1 from Facilidades where IdFacilidad = @idFacilidad
	                                        and Estampa = CONVERT(timestamp, @estampaTiempo))
	begin

		update Facilidades
			set Facilidad = @Facilidad
			Where IdFacilidad = @idFacilidad

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
	if @accion = '3' begin

		delete Facilidades
			where IdFacilidad = @idFacilidad

		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al eliminar el dato', 12, 2)
		   rollback tran
		   return -1
		end
	end -- if @accion = 3
	commit tran
END