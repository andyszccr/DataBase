CREATE PROCEDURE [dbo].[selecctionTipoClienteID]
(
@TipoCliente varchar(50)
)
as
BEGIN
	select IdTipoCliente
	from TipoCliente
	where TipoCliente=@TipoCliente
END