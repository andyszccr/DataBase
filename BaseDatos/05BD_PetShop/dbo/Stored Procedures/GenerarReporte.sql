CREATE PROCEDURE [dbo].[GenerarReporte] 
AS 
SELECT A.[NumeroActivo]
,A.[Placa]
,A.[Estado]
,A.[Categoria]
,A.[DescripcionCorta]
,A.[DescripcionLarga]
,UA.Nombre AS UbicacionA
,UB.Nombre AS UbicacionB
,UC.Nombre AS UbicacionC
,UD.Nombre AS UbicacionD
,A.[Modelo]
,A.[Marca]
,A.[NumeroSerie]
,A.[ObservacionesAdicionales]
,U.Nombre + ' ' + U.Apellidos as Usuario
,A.[FechaLevanta] FROM Activos A 
INNER JOIN Usuario U ON A.UsuarioLevanta = U.IdUsuario
INNER JOIN UbicacionD UD ON A.UbicacionD = UD.IdUbicacionD 
INNER JOIN UbicacionC UC ON UD.IdUbicacionC = UC.IdUbicacionC
INNER JOIN UbicacionB UB ON UC.IdUbicacionB = UB.IdUbicacionB 
INNER JOIN UbicacionA UA ON UB.IdUbicacionA = UA.IdUbicacionA
ORDER BY A.FechaLevanta DESC