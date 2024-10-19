



CREATE PROCEDURE [dbo].[ObtenerUsuarios]
AS
SELECT [IdUsuario]
      ,[Nombre]
      ,[Apellidos]
      ,[Correo]
      ,[Estado]
      ,[Password]
  FROM [dbo].[Usuario]