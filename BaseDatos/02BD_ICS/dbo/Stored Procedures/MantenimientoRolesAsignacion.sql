CREATE PROCEDURE [dbo].[MantenimientoRolesAsignacion]
(
@identificacion int, 
@idArea int,
@idCarrera int,
@idRol int,
@accion varchar(50) output
)
AS
BEGIN
	if (@accion='1')
	begin 
		insert into AgnicacionRoles
		(Identificacion,idArea,idCarrera,idRol)
		values(@identificacion,@idArea,@idCarrera,@idRol)
	end
END