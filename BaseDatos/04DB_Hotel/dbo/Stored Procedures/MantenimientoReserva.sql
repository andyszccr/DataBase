CREATE PROCEDURE [dbo].[MantenimientoReserva]
(
@Cedula_Cliente as int,
@Id_Lugar as int,
@CostoxNoche as decimal,
@CantidadPersonas as int,
@Id_Sitio as int,
@Fecha_Entrada as datetime,
@Fecha_Salida as datetime, 
@DetalleReserva as int,
@cantidadcamas int,
@estampaTiempo as bigint,
@accion varchar(50)output
)	
AS
BEGIN
	if @accion = '1' begin	
			set @cantidadcamas=(select CantidadCamas from Lugares)
			if @CantidadPersonas<>@cantidadcamas
			begin 
				print 'Error con la reserva'
			end
			else 
			begin 
				INSERT INTO Reserva(IdCliente, idLugar, Costo, CantidadPersonas, IdSitio, FechaEntrada, FechaSalida, DetalleReserva)
				VALUES (@Cedula_Cliente, @Id_Lugar, @CostoxNoche, @CantidadPersonas, @Id_Sitio, @Fecha_Entrada, @Fecha_Salida, @DetalleReserva);
			end
		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al insertar el nuevo registro', 12, 2)
		   rollback tran
		   return -1
		end

	end -- if @accion = 1

	if @accion = '2' begin

	if exists (select 1 from Reserva where IdCliente = @Cedula_Cliente
	                                        and Estampa = CONVERT(timestamp, @estampaTiempo))
	begin

		update Reserva
			set idLugar = @Id_Lugar,
				Costo = @CostoxNoche,
				CantidadPersonas = @CantidadPersonas,
				IdSitio = @Id_Sitio,
				FechaEntrada =  @Fecha_Entrada,
				FechaSalida = @Fecha_Salida,
				DetalleReserva = @DetalleReserva
			Where IdCliente = @Cedula_Cliente

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

		delete Reserva 
			where IdCliente = @Cedula_cliente
		if @@error <> 0 or @@rowcount = 0 begin
			   raiserror('Error al eliminar el registro', 12, 2)
			   rollback tran
			   return -1
		end
	end -- if @accion = 3
	commit tran
END