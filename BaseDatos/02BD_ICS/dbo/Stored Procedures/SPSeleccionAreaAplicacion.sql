CREATE PROCEDURE [dbo].[SPSeleccionAreaAplicacion]
AS
BEGIN
	select *
	from AreaAplicacion
	where exists(select *  
				 from CarreraXTabla
				 where CarreraXTabla.IdArea=AreaAplicacion.IdArea)
END