CREATE PROCEDURE [dbo].[EliminarProveedores]
(
@IdProveedor int, 
@NombreProveedor varchar(100),
@PrimerApellido varchar(100),
@SegundoAPellido varchar(100),
@NombreEmpresa varchar(100),
@Telefono int,
@Direccion varchar(400),
@Email varchar(200)
)
AS
BEGIN
	Delete Proveedores
	where IdProveedor=@IdProveedor
END