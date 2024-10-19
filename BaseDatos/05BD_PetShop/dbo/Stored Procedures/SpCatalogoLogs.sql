
--EXEC SpCatalogoLogs '','Administrador',null,null,null,1,'1';
--select * from Roles
Create PROCEDURE SpCatalogoLogs
(
@LogsCode					varchar(5)	,
@LogsDescripcion			varchar(250),
@LogsCreated				datetime	,
@LogsModulo					varchar(250),
@UsuarioID					int			,
@ActivoID					bit			,
@accion						varchar(50) output
)
as
if (@accion='1')
begin
	
	declare @codnuevo varchar(5), @codmax varchar(5)
	set @codmax = (select max(RolesCode) from Roles with(nolock))
	set @codmax = isnull(@codmax,'L0000')
	set @codnuevo = 'L'+RIGHT(RIGHT(@codmax,4)+10001,4)
	
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
		@LogsDescripcion,
		@LogsCreated	,
		@LogsModulo		,
		@UsuarioID		,
		@ActivoID		
	)
end