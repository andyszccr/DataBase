CREATE PROCEDURE [dbo].[Pregunta7]
(
@CodigoCurso char(8),
@Periodo char(4)
)
AS
BEGIN
	select d.Identificacion,d.Nombre,h.CantidadMatriculada,
	c.CodigoCurso,c.NombreCurso,h.Periodo,h.Anno as 'Año'
	from HorarioCursos h,Docentes d,Cursos c
	where h.IdentificacionDocente=d.Identificacion
	and h.NacionalidadDocente=d.Nacionalidad
	and c.CodigoCurso=h.CodigoCurso
	and h.CantidadMatriculada is not null
	and h.CodigoCurso=@CodigoCurso
	and h.Periodo=@Periodo
END