



CREATE PROCEDURE [dbo].[ObtenerActivosCliente]
AS
SELECT 
       [NumeroActivo]
      ,[Placa]
      ,[Estado]
      ,[Categoria]
      ,[UbicacionD]
      ,[DescripcionCorta]
      ,[DescripcionLarga]
      ,[Modelo]
      ,[Marca]
      ,[NumeroSerie]
      ,[ObservacionesAdicionales]
      

  FROM [dbo].[ActivosCliente]