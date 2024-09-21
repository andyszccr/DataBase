CREATE PROCEDURE [dbo].[SelectIdFuncionarioXArea]

AS
BEGIN
select * from AreaAplicacion
--where Usuarios.NombreFuncionario='Andrey Mora Mora'
where exists (select *  
			  from Usuarios
			   where AreaAplicacion.IdArea=Usuarios.IdArea)
END