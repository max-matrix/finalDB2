-- d. Consultorios: Listado de Cantidad de médicos por consultorio: Listar nombre
-- comercial y teléfono del consultorio y la cantidad de médicos que han alquilado ese
-- consultorio. Si un consultorio no tiene alquileres debe aparecer en cero la cantidad.

SELECT c.nombre_comercial, c.telefono, COUNT(idMedico) AS 'Cantidad Medicos'
FROM medicos m 
RIGHT JOIN alquiler_consultorios ac
ON m.id_medico = ac.idMedico
RIGHT JOIN consultorios c
ON c.id_consultorio = ac.idConsultorio
GROUP BY id_consultorio;