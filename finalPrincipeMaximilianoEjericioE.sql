-- e. Todos los datos de los consultorios, los alquileres y los médicos. Si hay
-- consultorios sin alquileres deben aparecer los datos del consultorio, dejando en
-- blanco los datos de las otras tablas. El listado debe ordenarse por id del consultorio.
-- Debe mostrar todos los datos como nombre comercial del consultorio, apellido y
-- nombre del médico y la fecha_desde del alquiler del consultorio. Se espera que en
-- esta consulta se muestren todos los registros insertados. Verificar que eso suceda.

PARA MOTOR MARIADB

SELECT * FROM medicos m
LEFT JOIN alquiler_consultorios ac
ON m.id_medico = ac.idMedico
LEFT JOIN consultorios c
ON c.id_consultorio = ac.idConsultorio
UNION ALL
SELECT * FROM medicos m
RIGHT JOIN alquiler_consultorios ac
ON m.id_medico = ac.idMedico
RIGHT JOIN consultorios c
ON c.id_consultorio = ac.idConsultorio
UNION ALL
SELECT * FROM medicos m
INNER JOIN alquiler_consultorios ac
ON m.id_medico = ac.idMedico
INNER JOIN consultorios c
ON c.id_consultorio = ac.idConsultorio  
ORDER BY id_consultorio ASC

-- PARA LOS DEMÁS MOTORES

SELECT *
FROM medicos m
FULL OUTER JOIN alquiler_consultorios ac
ON m.id_medico = ac.idMedico
FULL OUTER JOIN consultorios c
ON ac.idConsultorio = c.id_consultorio
ORDER BY id_consultorio ASC