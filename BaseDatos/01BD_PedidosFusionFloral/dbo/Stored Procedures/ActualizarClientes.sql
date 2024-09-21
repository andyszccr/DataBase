CREATE PROCEDURE [dbo].[ActualizarClientes] 
(
@Nombre varchar(200),
@PrimerApellido varchar(100),
@SegundoApellido varchar(100),
@Telefono int,
@Direccion varchar(400),
@Lugar varchar(200),
@Email varchar(150),
@IdTipoCliente int 
)
AS
BEGIN
	update Clientes
	set Nombre=@Nombre,
	PrimerApellido=@PrimerApellido,
	SegundoApellido=@SegundoApellido,
	Telefono=@Telefono,
	Direccion=@Direccion,
	Lugar=@Lugar,
	Email=@Email,
	IdTipoCliente=@IdTipoCliente
	from Clientes
END