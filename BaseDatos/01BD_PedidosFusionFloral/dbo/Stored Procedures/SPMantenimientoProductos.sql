CREATE PROCEDURE [dbo].[SPMantenimientoProductos]
(
@CodigoProducto varchar(5),
@NombreArticulo varchar(150),
@Presentacion varchar(30),
@DetalleProducto varchar(100),
@Precio decimal(18,0),
@accion varchar(50) output
)
as
if (@accion='1')
begin
select * from Articulos
	declare @codnuevo varchar(5), @codmax varchar(5)
	set @codmax = (select max(CodigoProducto) from Articulos)
	set @codmax = isnull(@codmax,'A0000')
	set @codnuevo = 'A'+RIGHT(RIGHT(@codmax,4)+10001,4)
	insert into Articulos(CodigoProducto,NombreArticulo,Presentacion,DetalleProducto,Precio)
	values(@codnuevo,@NombreArticulo,@Presentacion,@DetalleProducto,@Precio)
	set @accion='Se genero el código de producto: ' +@codnuevo
end
else if (@accion='2')
begin
	update Articulos 
	set NombreArticulo=@NombreArticulo,
	Presentacion=@Presentacion,
	DetalleProducto=@DetalleProducto,
	Precio=@Precio
	where CodigoProducto=@CodigoProducto
	set @accion='Se modifico el código: ' +@CodigoProducto
end
else if (@accion='3')
begin
	if (select NombreArticulo from Articulos where CodigoProducto=@CodigoProducto)=@NombreArticulo
	begin 
		delete 
		from Articulos 
		where NombreArticulo=@NombreArticulo
		set @accion='Se borro el producto: ' +@NombreArticulo
	end
	else if (select CodigoProducto from Articulos where NombreArticulo=@NombreArticulo)=@CodigoProducto
	begin 
		delete 
		from Articulos  
		where CodigoProducto=@CodigoProducto
		set @accion='Se borro el código de Producto: ' +@CodigoProducto
	end
end