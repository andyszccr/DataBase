CREATE PROCEDURE [dbo].[SLoginRoles] 
AS
BEGIN
select * from Roles
where exists(select *  
			from Usuarios,UsuarioXRol 
			where Usuarios.Identificacion=Usuarios.Identificacion
			and Roles.IdRol=UsuarioXRol.IdRol)
END