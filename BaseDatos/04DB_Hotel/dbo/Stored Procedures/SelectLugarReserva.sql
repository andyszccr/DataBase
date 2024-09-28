CREATE PROCEDURE [dbo].[SelectLugarReserva]
(
@idLugar int
)
AS
BEGIN
select NombreLugar,CantidadCamas,MontoXNoche
from Lugares 
where IdLugar=@idLugar
END