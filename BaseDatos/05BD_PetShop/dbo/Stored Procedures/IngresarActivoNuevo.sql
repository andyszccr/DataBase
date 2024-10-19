



CREATE PROCEDURE [dbo].[IngresarActivoNuevo]
@IdActivo INT ,
@NumeroActivo varchar(60) ,
@Placa varchar(60) ,
@Estado varchar(150) ,
@Categoria varchar(150) ,
@UbicacionD INT ,
@DescripcionCorta varchar(200) ,
@DescripcionLarga varchar(400) ,
@Modelo varchar(150) ,
@Marca varchar(150) ,
@NumeroSerie varchar(150) ,
@ObservacionesAdicionales varchar(450) ,
@EstadoLevantamiento INT ,
@UsuarioLevanta INT,
--@IdLogicaB INT ,
--@IdEmpleado INT,
@Respuesta VARCHAR(200) OUTPUT
AS
BEGIN TRAN
BEGIN TRY
	SET @Respuesta = 'Error General'
	--INSERT INTO [dbo].[ActivosLevantadosTemporal]([NumeroActivo],[Placa],[Estado],[Categoria],[UbicacionD],[DescripcionCorta],[DescripcionLarga],[Modelo],[Marca],[NumeroSerie],[ObservacionesAdicionales],[EstadoLevantamiento],[UsuarioLevanta], FechaLevanta, IdLogicaB, IdEmpleado)
	--VALUES(@NumeroActivo,@Placa,@Estado,@Categoria,@UbicacionD,@DescripcionCorta,@DescripcionLarga,@Modelo,@Marca,@NumeroSerie,@ObservacionesAdicionales,1,@UsuarioLevanta, GETDATE(), @IdLogicaB, @IdEmpleado)
	-- VALIDAMOS CON EL NÚMERO DE PLACA SÍ EL ACTIVO YA SE INGRESÓ
	IF EXISTS(SELECT A.IdActivo FROM Activos A WHERE  A.NumeroActivo = @NumeroActivo) 
	BEGIN 
	SET @Respuesta = 'MSJ: El Activo ya se levantó'
	COMMIT;
	return;
	END
	--  Sí El activó no se ha levantado entonces se crea 
	INSERT INTO [dbo].[Activos]
	(
		[NumeroActivo]				,
		[Placa]						,
		[Estado]					,
		[Categoria]					,
		[UbicacionD]				,
		[DescripcionCorta]			,
		[DescripcionLarga]			,
		[Modelo],[Marca]			,
		[NumeroSerie]				,
		[ObservacionesAdicionales]	,
		[EstadoLevantamiento]		,
		[UsuarioLevanta]			, 
		FechaLevanta				,
		IdLogicaB					,
		IdEmpleado
	)
	VALUES
	(
		@NumeroActivo				,
		@Placa						,
		@Estado						,
		@Categoria					,
		@UbicacionD					,
		@DescripcionCorta			,
		@DescripcionLarga			,
		@Modelo						,
		@Marca						,
		@NumeroSerie				,
		@ObservacionesAdicionales	,
		1							,
		@UsuarioLevanta				,
		GETDATE()					,
		0							,
		0
	)
	--****************************************************************************
	-- SE INGRESA EL ACTIVO A LA TABLA ACTIVOS USUARIO 
	INSERT INTO ActivosUsuario 
	(
		IdUsuario		,
		Placa			,
		FechaRegistro
	)
	VALUES 
	(	
		@UsuarioLevanta	,
		@Placa			,
		GETDATE()
	)
	SET @Respuesta = 'El Activo se levantó Correctamente'
	COMMIT transaction;
END TRY
BEGIN CATCH
	ROLLBACK;
	SET @Respuesta = ERROR_MESSAGE()
	INSERT INTO Errores (Error) VALUES (@Respuesta)
END CATCH