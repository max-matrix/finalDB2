-- b. Listar sólo los médicos que alquilaron más de un consultorio.

SELECT 
    id_medico as Medico,
    nombre as Nombre,
    apellido as Apellido,
    telefono as Telefono,
    fecha_nacimiento as 'Fecha de Nacimiento'
FROM
    alquiler_consultorios
INNER JOIN medicos 
ON alquiler_consultorios.idMedico = medicos.id_medico 
GROUP BY idMedico
HAVING COUNT(idConsultorio) > 1;

-- ERROR: Current selection does not contain a unique column. Grid edit, checkbox, Edit, Copy and Delete features are not available.
-- Cumple el enunciado del problema pero me arroja ese error el phpMyAdmin 
-- Entiendo que es porque no hay una columna única, lo que no entiendo es dónde debería colocar esa columna y porqué.