CREATE PROCEDURE [dbo].[SPLogin]
(
@identificacion int,
@Contrasena char(50),
@Idrol int
)
AS
BEGIN
	select COUNT(*)
	from Usuarios u,UsuarioXRol r,InicioSesion e,Roles ro
	where u.Identificacion=e.Identificacion
	and u.Identificacion=r.Identificacion
	and r.IdRol=ro.IdRol
	and u.Identificacion=305500775
	and e.Contrasena=@Contrasena
	and ro.IdRol=@Idrol
END