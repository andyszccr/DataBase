create PROCEDURE [dbo].[SeleccionClientesOcasionales]
AS
BEGIN
	select IdCliente,Nombre,PrimerApellido,SegundoApellido,
	Telefono,Direccion,Lugar,Email,TipoCliente.TipoCliente
	from Clientes,TipoCliente
	where Clientes.IdTipocliente=TipoCliente.IdTipoCliente
	and TipoCliente='Ocasional'
END