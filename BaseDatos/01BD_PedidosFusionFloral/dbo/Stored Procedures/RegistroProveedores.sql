CREATE PROCEDURE [dbo].[RegistroProveedores]
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
	insert into Proveedores (NombreProveedor,PrimerApellido,SegundoApellido,NombreEmpresa,Telefono,Direccion,Email)
	values(@NombreProveedor,@PrimerApellido,@SegundoAPellido,@NombreEmpresa,@Telefono,@Direccion,@Email);
END