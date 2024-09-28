CREATE proc [dbo].[MantenimientoInicioSesion]
(
@Identificacion int,
@Contrasena varchar(100),
@accion varchar(50) output
)
as
begin 
if @accion = '1' 
	begin
	  insert into IniciaSesion(Identificacion,Contrasena)
	values(@Identificacion,@Contrasena)
	end
	if @accion = '2' 
	begin
		Update IniciaSesion
		set Identificacion=@Identificacion,
		Contrasena=@Contrasena
	end
end