CREATE PROCEDURE [dbo].[SeleccionTipocliente]
AS
BEGIN
	select *
	from TipoCliente
	order by TipoCliente asc
END