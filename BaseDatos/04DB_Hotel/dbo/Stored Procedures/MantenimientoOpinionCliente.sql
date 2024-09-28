
CREATE Procedure [dbo].[MantenimientoOpinionCliente]
(
@IdOpinion int,
@idReserva int,
@IdCliente int,
@idSitio int,
@Comentario varchar(300),
@Calificacion int,
@estampaTiempo as bigint,
@accion varchar(50)output
)
AS
BEGIN

	if @accion = '1' begin	

		Insert OpinionCliente(idReserva,IdCliente,Comentario,Calificacion)
		Values(@idReserva,@IdCliente,@Comentario,@Calificacion)

		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al insertar el nuevo registro', 12, 2)
		   rollback tran
		   return -1
		end

	end -- if @accion = 1

	if @accion = '2'  begin

	if exists (select 1 from OpinionCliente where idReserva = @idReserva
	                                        and Estampa = CONVERT(timestamp, @estampaTiempo))
	begin

			update OpinionCliente
				set idReserva = @idReserva,
					IdCliente = @IdCliente,
					Comentario=@Comentario,
					Calificacion=@Calificacion
				Where idReserva = @idReserva

		if @@error <> 0 or @@rowcount = 0 begin
			 raiserror('Error al actualizar, o no se encontro el registro', 12, 2)
			 rollback tran
			 return -1
		end

    end -- if exits	
	else begin

		 raiserror('Alguien mas actualizo el dato, por favor intentelo de nuevo', 12, 2)
		 rollback tran
		 return -1

	 end
	end -- if @accion = 2

	if @accion = '3' begin
			delete OpinionCliente
				where idReserva = @idReserva

	if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al eliminar el registro', 12, 2)
		   rollback tran
		   return -1
		end
	end -- if @accion = 3
	commit tran
END