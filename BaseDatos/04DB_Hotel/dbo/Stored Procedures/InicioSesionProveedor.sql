CREATE PROCEDURE [dbo].[InicioSesionProveedor]
(
@cedula as int,
@Contrasena varchar(100)
)
AS
BEGIN
	select Count(*)
	from Proveedores e
	where e.IdProveedor=@cedula and 
	e.Contrasena=@Contrasena
END