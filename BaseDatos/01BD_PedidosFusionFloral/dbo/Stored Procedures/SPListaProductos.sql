CREATE proc [dbo].[SPListaProductos]
as
begin
select CodigoProducto,NombreArticulo,Presentacion,DetalleProducto,Precio
from Articulos 
order by NombreArticulo
end