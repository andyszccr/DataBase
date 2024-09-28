CREATE Proc [dbo].[MantenimientoReporteCliente]
(
@IdReporte int,
@idReserva int,
@IdProveedor int,
@idSitio int,
@Comentario varchar(300),
@Calificacion int,
@estampaTiempo bigint,
@accion varchar(50)output
)
AS
BEGIN
	if @accion = '1' begin	
		Insert ReporteCliente(idReserva,IdProveedor,idSitio,Comentario,Calificacion )
		Values(@idReserva,@IdProveedor,@idSitio,@Comentario,@Calificacion)
		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al insertar el nuevo registro', 12, 2)
		   rollback tran
		   return -1
		end
	end -- if @accion = 1

	if @accion = '2' begin

	if exists (select 1 from ReporteCliente where IdProveedor = @IdProveedor
	                                        and Estampa = CONVERT(timestamp, @estampaTiempo))
	begin

		update ReporteCliente
			set idReserva=@idReserva,
				IdProveedor = @IdProveedor,
				idSitio = @idSitio,
				Comentario=@Comentario,
				Calificacion=@Calificacion
			Where IdProveedor = @IdProveedor

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

		delete OpinionCliente
			where idReserva= @idReserva

	if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al eliminar el registro', 12, 2)
		   rollback tran
		   return -1
		end
	end -- if @accion = 3
	commit tran
END