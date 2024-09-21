create view [dbo].[VistaAsignacionRoles]
as
select * from Roles
where exists(select * from UsuarioXRol
			 where Roles.IdRol=UsuarioXRol.IdRol )