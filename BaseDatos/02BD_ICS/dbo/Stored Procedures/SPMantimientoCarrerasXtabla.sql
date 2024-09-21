CREATE proc [dbo].[SPMantimientoCarrerasXtabla]
(	
@IdArea int,
@IdCarrera int,
@accion varchar(50) output
)
as 
begin 
	if (@accion='1')
	begin
	insert into CarreraXTabla(IdArea,IdCarrera)values(@IdArea,@IdCarrera)
		
	end
	else if (@accion='2')
	begin
		update CarreraXTabla
		set IdArea=@IdArea,
		IdCarrera=@IdCarrera
	end
	else if (@accion='3')
	begin
		 delete CarreraXTabla--,Carreras
		 from CarreraXTabla
		 join AreaAplicacion
		 on CarreraXTabla.IdArea=AreaAplicacion.IdArea
	end
end