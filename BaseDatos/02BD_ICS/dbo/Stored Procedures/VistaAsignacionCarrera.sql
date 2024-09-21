create proc [dbo].[VistaAsignacionCarrera]
(
@AreaAplicacion varchar(100) 
)
as
begin
select * from Carrera
where exists(select * 
				from CarreraXTabla,AreaAplicacion
			 where Carrera.IdCarrera=CarreraXTabla.IdCarrera
			 and AreaAplicacion.IdArea=CarreraXTabla.IdArea
			 and AreaAplicacion.NombreArea=@AreaAplicacion)
end