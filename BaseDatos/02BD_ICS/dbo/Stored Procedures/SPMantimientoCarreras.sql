create proc [dbo].[SPMantimientoCarreras]
(	
@Nombrecarrera varchar(250),
@accion varchar(50) output
)
as 
begin 
	if (@accion='1')
	begin
	insert into Carrera(NombreCarrera)values(@Nombrecarrera)
		set @accion='Se genero el código de producto: '+@Nombrecarrera
	end
	else if (@accion='2')
	begin
		update Carrera
		set NombreCarrera=@Nombrecarrera
		set @accion='Se modifico el código: ' +@Nombrecarrera
	end
	else if (@accion='3')
	begin
		delete 
		from Carrera
		where NombreCarrera=@Nombrecarrera
		set @accion='Se elimino la : '+@Nombrecarrera
	end
end