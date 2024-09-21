CREATE PROCEDURE [dbo].[Pregunta8]
(
@numero money
)
AS
BEGIN
	if ((select MontoCancelado from Matricula)>=@numero)
	begin 
		select e.Identificacion,e.Nombre,e.PrimerApellido,e.SegundoApellido,
		Max(m.MontoCancelado)as 'Monto cancelado',h.Periodo,COUNT(c.CodigoCurso) as 'Cantidad de cursos'
		from Matricula m,Estudiantes e,HorarioCursos h,Cursos c
		where m.Identificacion=e.Identificacion
		and m.Nacionalidad=e.Nacionalidad
		and h.IdHorario=m.IdHorario
		and c.CodigoCurso=h.CodigoCurso
		group by e.Identificacion,e.PrimerApellido,
		e.SegundoApellido,e.Nombre,h.Periodo,c.CodigoCurso
	end
	else 
	begin
		select e.Identificacion,e.Nombre,e.PrimerApellido,e.SegundoApellido,
		Min(m.MontoCancelado)as 'Monto cancelado',h.Periodo,COUNT(c.CodigoCurso) as 'Cantidad de cursos'
		from Matricula m,Estudiantes e,HorarioCursos h,Cursos c
		where m.Identificacion=e.Identificacion
		and m.Nacionalidad=e.Nacionalidad
		and h.IdHorario=m.IdHorario
		and c.CodigoCurso=h.CodigoCurso
		group by e.Identificacion,e.PrimerApellido,
		e.SegundoApellido,e.Nombre,h.Periodo,c.CodigoCurso
	end
END