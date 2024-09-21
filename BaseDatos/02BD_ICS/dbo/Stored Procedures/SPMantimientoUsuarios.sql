CREATE proc [dbo].[SPMantimientoUsuarios]
(	
@Identificacion int,
@NombreFuncionario varchar(300),
@Direccion varchar(300),
@LugarResidencia varchar(50),
@Email varchar(100),
@Telefono int, 
@IdArea int,
@Contrasena char(50),
@IdRol int, 
@accion varchar(50) output
)
as 
begin 
	if (@accion='1')
	begin
	insert into Usuarios(Identificacion,NombreFuncionario,Direccion,LugarResidencia,Email,Telefono,IdArea)
	values(@Identificacion,@NombreFuncionario,@Direccion,@LugarResidencia,@Email,@Telefono,@IdArea)
	insert into UsuarioXRol(Identificacion,IdRol)values(@Identificacion,@IdRol)
	insert into InicioSesion(Identificacion,Contrasena) values(@Identificacion,@Contrasena);
	end
	else if (@accion='2')
	begin
		update Usuarios
		set Identificacion=@Identificacion,
		NombreFuncionario=@NombreFuncionario,
		Direccion=@Direccion,
		LugarResidencia=@LugarResidencia,
		Email=@Email,
		Telefono=@Telefono,
		IdArea=@IdArea
	end
	else if (@accion='3')
	begin
		 delete Usuarios--,Carreras
		 from Usuarios
		 join UsuarioXRol
		 on UsuarioXRol.Identificacion=Usuarios.Identificacion
	end
end