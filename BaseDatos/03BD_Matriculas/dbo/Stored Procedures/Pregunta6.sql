CREATE PROCEDURE [dbo].[Pregunta6]
(
@CodigoCurso char(8)
)
AS
BEGIN
	select COUNT(e.Identificacion) as 'cantidad de estudiantes',c.CodigoCurso,c.NombreCurso,h.Periodo,
	h.Anno as 'Año',D.Nombre as 'Nombre de deocente' 
	from HorarioCursos h,Cursos c,Docentes D,
	matricula m,Estudiantes e
	where h.CodigoCurso=c.CodigoCurso
	and h.IdentificacionDocente=D.Identificacion
	and h.NacionalidadDocente=D.Nacionalidad
	and m.IdHorario=h.IdHorario
	and m.Identificacion=e.Identificacion
	and m.Nota BETWEEN 60 AND 69.99 
	and c.CodigoCurso=@CodigoCurso
	group by c.CodigoCurso,c.NombreCurso,h.Periodo,h.Anno,
	D.Nombre
END