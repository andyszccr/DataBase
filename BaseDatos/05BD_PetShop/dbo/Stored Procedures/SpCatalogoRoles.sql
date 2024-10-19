


--EXEC SpCatalogoRoles '','Administrador',null,null,null,1,'1';

--select * from Roles

Create PROCEDURE SpCatalogoRoles
(
@RolesCode		varchar(5)	,
@RolesName		varchar(250),
@RolesCreated	datetime	,
@RolesUpdate	datetime	,
@RolesDelete	datetime	,
@RolesStatus	bit NULL,
@accion			varchar(50) output
)
as
if (@accion='1')
begin
	
	declare @codnuevo varchar(5), @codmax varchar(5)
	set @codmax = (select max(RolesCode) from Roles with(nolock))
	set @codmax = isnull(@codmax,'R0000')
	set @codnuevo = 'R'+RIGHT(RIGHT(@codmax,4)+10001,4)
	
	INSERT INTO Roles
    (	
		RolesCode	,
		RolesName	,
		RolesCreated,
		RolesUpdate	,	
		RolesDelete	,
		RolesStatus

	)
	values
	(
		@codnuevo		,
		@RolesName		,
		@RolesCreated	,
		@RolesUpdate	,
		@RolesDelete	,
		@RolesStatus	
		
	)
	
	set @accion='Se genero el código de Roles: ' +@codnuevo +' Rol:'+@RolesName
	print @accion;


end
else if (@accion='2')
begin
	UPDATE r
   SET 
		r.RolesName		= @RolesName	,
		r.RolesUpdate	= @RolesUpdate	, 
		r.RolesStatus	= @RolesStatus	 
	from Roles r with(nolock)
	where 
		r.RolesCode = @RolesCode		

	set @accion='Se modifico el Rol: ' +@RolesCode+' '+@RolesName
	print @accion;
end
else if (@accion='3')
begin
	UPDATE r
	SET 	
		r.RolesDelete	= @RolesDelete	, 
		r.RolesStatus	= 0	 
	from Roles r with(nolock)
	where 
		r.RolesCode = @RolesCode	

	set @accion='Se modifico el Rol: ' +@RolesCode+' '+@RolesName
	print @accion;
end