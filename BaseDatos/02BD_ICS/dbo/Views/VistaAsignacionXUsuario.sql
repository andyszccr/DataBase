create View [dbo].[VistaAsignacionXUsuario]
as
SELECT *
FROM Usuarios u
where exists (Select * 
						from UsuarioXRol e,InicioSesion i
						where e.Identificacion=u.Identificacion
						and i.Identificacion=u.Identificacion
						and u.IdArea is not null)