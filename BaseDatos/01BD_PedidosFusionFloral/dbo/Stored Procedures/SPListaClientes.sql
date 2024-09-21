CREATE PROCEDURE [dbo].[SPListaClientes]
AS
BEGIN
	select CodigoCliente,Nombre,PrimerApellido,SegundoApellido,
	Telefono,Direccion,Lugar,Email,TipoCliente.TipoCliente
	from Clientes,TipoCliente
	where Clientes.IdTipocliente=TipoCliente.IdTipoCliente
END