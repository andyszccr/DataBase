Create view [dbo].[NotaMinimayNotaMaximaXCurso]
as
select Max(Nota) as 'nota Maxima',
Min(Nota) as 'Nota minima',c.CodigoCurso,
D.Nombre,i.Periodo,i.Anno as 'Año'
from matricula m,Cursos c,HorarioCursos i,Docentes D
where m.IdHorario=i.IdHorario
and c.CodigoCurso=i.CodigoCurso
and i.IdentificacionDocente= D.Identificacion
and i.NacionalidadDocente=D.Nacionalidad
group by c.CodigoCurso,D.Nombre,i.Periodo,i.Anno