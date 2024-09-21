CREATE proc [dbo].[ExistenciaClientes] 
(
@Nombre varchar(200),
@PrimerApellido varchar(100),
@SegundoApellido varchar(100)
)
AS
BEGIN
	select Nombre+' '+PrimerApellido+' '+SegundoApellido as 'Nombre Completo'
	from Clientes
	where Nombre=@Nombre and  @PrimerApellido=@PrimerApellido and @SegundoApellido=@SegundoApellido
END