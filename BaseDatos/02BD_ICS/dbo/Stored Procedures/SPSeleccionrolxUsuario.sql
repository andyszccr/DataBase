create PROCEDURE [dbo].[SPSeleccionrolxUsuario]
(
@NombreFuncionario varchar(300)
)
AS
BEGIN
	select *
	from UsuarioXRol
	where exists(select *  
				 from Usuarios,Roles
				 where Usuarios.Identificacion=UsuarioXRol.Identificacion
				 and UsuarioXRol.IdRol=Roles.IdRol
				 and Usuarios.NombreFuncionario=@NombreFuncionario)
END