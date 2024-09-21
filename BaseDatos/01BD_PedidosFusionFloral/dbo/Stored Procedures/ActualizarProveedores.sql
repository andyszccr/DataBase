CREATE PROCEDURE [dbo].[ActualizarProveedores]
(
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
	update Proveedores
	set NombreProveedor=@NombreProveedor,
	PrimerApellido=@PrimerApellido,
	SegundoApellido=@SegundoAPellido,
	NombreEmpresa=@NombreEmpresa,
	Telefono=@Telefono,
	Direccion=@Direccion,
	Email=@Email
	from Proveedores
END