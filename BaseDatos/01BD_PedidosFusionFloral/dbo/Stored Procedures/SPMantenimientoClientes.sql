CREATE PROCEDURE [dbo].[SPMantenimientoClientes] 
(
@CodigoCliente varchar(5),
@Nombre varchar(200),
@PrimerApellido varchar(100),
@SegundoApellido varchar(100),
@Telefono int,
@Direccion varchar(400),
@Lugar varchar(200),
@Email varchar(150),
@IdTipoCliente int,
@accion varchar(50) output
)
AS
begin
	if (@accion='1')
	begin

		select * from Articulos
		declare @codnuevo varchar(5), @codmax varchar(5)
		set @codmax = (select max(CodigoProducto) from Articulos)
		set @codmax = isnull(@codmax,'C0000')
		set @codnuevo = 'C'+RIGHT(RIGHT(@codmax,4)+10001,4)
		insert into Clientes(CodigoCliente,Nombre,PrimerApellido,SegundoApellido,
		Telefono,Direccion,Lugar,Email,IdTipocliente)
		values(@codnuevo,@Nombre,@PrimerApellido,@SegundoApellido,@Telefono,@Direccion,
		@Lugar,@Email,@IdTipoCliente)
		set @accion='Se genero el código de producto: ' +@CodigoCliente
	end
	else if (@accion='2')
	begin
		update Clientes
		set Nombre=@Nombre,
		PrimerApellido=@PrimerApellido,
		SegundoApellido=@SegundoApellido,
		Telefono=@Telefono,
		Direccion=@Direccion,
		Email=@Email,
		IdTipocliente=@IdTipoCliente
		where CodigoCliente=@CodigoCliente
		set @accion='Se modifico el código: ' +@CodigoCliente
	end
	else if (@accion='3')
	begin
		delete 
		from Clientes
		where CodigoCliente=@CodigoCliente
	end
end