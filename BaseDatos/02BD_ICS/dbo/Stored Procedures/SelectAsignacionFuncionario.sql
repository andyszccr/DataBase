CREATE PROCEDURE [dbo].[SelectAsignacionFuncionario]
AS
BEGIN
	select * from Usuarios
	where IdArea is not null
	order by NombreFuncionario asc
END