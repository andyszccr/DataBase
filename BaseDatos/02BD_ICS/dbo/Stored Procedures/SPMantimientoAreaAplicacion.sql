create proc [dbo].[SPMantimientoAreaAplicacion]
(	
@NombreArea varchar(250),
@accion varchar(50) output
)
as 
begin 
	if (@accion='1')
	begin
	insert into AreaAplicacion(NombreArea)values(@NombreArea)
		set @accion='Se genero el código de producto: '+@NombreArea
	end
	else if (@accion='2')
	begin
		update AreaAplicacion
		set NombreArea=@NombreArea
		set @accion='Se modifico el código: ' +@NombreArea
	end
	else if (@accion='3')
	begin
		delete 
		from AreaAplicacion
		where NombreArea=@NombreArea
		set @accion='Se elimino la : '+@NombreArea
	end
end