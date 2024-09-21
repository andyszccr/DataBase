CREATE PROCEDURE [dbo].[SelectAsignacionAreaXCarrera]
AS
BEGIN
	select *  from Carrera
	where exists(select *  from CarreraXTabla,Usuarios,AreaAplicacion
				where Carrera.IdCarrera=CarreraXTabla.IdCarrera
				and AreaAplicacion.IdArea=CarreraXTabla.IdArea
				and Usuarios.IdArea=AreaAplicacion.IdArea
				)
END