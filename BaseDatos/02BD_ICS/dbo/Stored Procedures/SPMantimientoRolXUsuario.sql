CREATE proc [dbo].[SPMantimientoRolXUsuario]
(	
@Identificacion int,
@IdRol int,
@accion varchar(50) output
)
as 
begin 
	if (@accion='1')
	begin
	insert into UsuarioXRol(Identificacion,IdRol)
	values(@Identificacion,@IdRol)
	end
	else if (@accion='2')
	begin
		update UsuarioXRol
		set Identificacion=@Identificacion,
		IdRol=@IdRol
	end
	else if (@accion='3')
	begin
		 delete Usuarios--,Carreras
		 from Usuarios
		 join UsuarioXRol
		 on UsuarioXRol.Identificacion=Usuarios.Identificacion
	end
end