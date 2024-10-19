


CREATE PROCEDURE [dbo].[IngresarActivo]
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
@Respuesta VARCHAR(200) OUTPUT
AS
	BEGIN TRAN
	BEGIN TRY
		SET @Respuesta = 'Error General'
		-- VALIDAMOS CON EL NÚMERO DE PLACA SÍ EL ACTIVO YA SE INGRESÓ
		IF EXISTS(SELECT A.IdActivo FROM Activos A WHERE  A.NumeroActivo = @NumeroActivo) 
		BEGIN 
			SET @Respuesta = 'Error: El Activo ya se levantó'
		return;
		END
		-- Sí El activó no se ha levantado entonces se crea 
		INSERT INTO [dbo].[Activos]
		(
			[NumeroActivo]				,
			[Placa]						,
			[Estado]					,
			[Categoria]					,
			[UbicacionD]				,
			[DescripcionCorta]			,
			[DescripcionLarga]			,
			[Modelo]					,
			[Marca]						,
			[NumeroSerie]				,
			[ObservacionesAdicionales]	,	
			[EstadoLevantamiento]		,
			[UsuarioLevanta]			,
			FechaLevanta
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
			GETDATE()
		)
		--******************************************************************
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
		COMMIT Transaction;
	END TRY
	BEGIN CATCH
		ROLLBACK;
		SET @Respuesta = ERROR_MESSAGE()
	END CATCH