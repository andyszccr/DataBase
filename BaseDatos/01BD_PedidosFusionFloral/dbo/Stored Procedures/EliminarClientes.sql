CREATE PROCEDURE [dbo].[EliminarClientes] 
(
@NombreCompleto varchar(200)
)
AS
BEGIN
	Delete Clientes 
	where Nombre+'  '+PrimerApellido+'  '+SegundoApellido=@NombreCompleto
END