CREATE Procedure [dbo].[MantenimientoLugares] 
(@IdLugar int,
@NombreLugar nvarchar(100),
@Foto nvarchar(200),
@Ubicacion nvarchar(300),
@CantidadHabitaciones int,
@CantidadCamas int,
@MontoXNoche decimal(18,1),
@IDTipoLugar int,
@DetalleLugar nvarchar(200),
@IdProveedor int,
@estampaTiempo as bigint,
@accion varchar(50)output
)
As
Begin
	if @accion = '1'  begin

		  insert into Lugares(NombreLugar,Foto,Ubicacion,CantidadCamas,CantidadHabitaciones,MontoXNoche,
						IDTipoLugar,DetalleLugar,IdProveedor)
				 values(@NombreLugar,@Foto,@Ubicacion,@CantidadCamas,@CantidadHabitaciones,@MontoXNoche,
						@IDTipoLugar,@DetalleLugar,@IdProveedor	)

		
			if @@error <> 0 or @@rowcount = 0 begin
			   raiserror('Error al insertar el nuevo registro', 12, 2)
			   rollback tran
			   return -1

			end

	end -- if @accion = 1
	if @accion = '2'  begin

	if exists (select 1 from Lugares where IdLugar = @IdLugar
	                                        and Estampa = CONVERT(timestamp, @estampaTiempo))
	begin

			Update Lugares
				set NombreLugar=@NombreLugar,
				Foto=@Foto,
				Ubicacion=@Ubicacion,
				CantidadCamas=@CantidadCamas,
				CantidadHabitaciones=@CantidadHabitaciones,
				MontoXNoche=@MontoXNoche,
				IDTipoLugar=@IDTipoLugar,
				DetalleLugar=@DetalleLugar,
				IdProveedor=@IdProveedor
				where  IdLugar = @IdLugar

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

		delete Lugares 
			where IdLugar = @IdLugar

		if @@error <> 0 or @@rowcount = 0 begin
		   raiserror('Error al eliminar el dato', 12, 2)
		   rollback tran
		   return -1
		end
	end -- if @accion = 3
	commit tran
End