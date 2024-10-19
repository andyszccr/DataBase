



CREATE PROCEDURE [dbo].[ValidarUsuario]
@correo VARCHAR(200),
@password VARCHAR(200),
@resultado VARCHAR(200) OUTPUT
AS 

IF EXISTS (SELECT IdUsuario FROM Usuario WHERE Correo = @correo AND Password = @password AND Estado = 1)

BEGIN
SET @resultado = 'S'
END