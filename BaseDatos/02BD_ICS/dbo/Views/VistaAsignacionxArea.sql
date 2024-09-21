create view [dbo].[VistaAsignacionxArea]
as
select * from AreaAplicacion
where exists(select * 
			 from Usuarios
			 where Usuarios.IdArea=AreaAplicacion.IdArea)