CREATE PROCEDURE [dbo].[InicioSesioncliente]
(
@cedula as int,
@Contrasena varchar(100)
)
AS
BEGIN
	select Count(*)
	from Clientes e
	where e.IdCliente=@cedula and 
	e.contrasena=@Contrasena
END