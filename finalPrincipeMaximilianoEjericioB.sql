-- b. Listar sólo los médicos que alquilaron más de un consultorio.

SELECT 
    id_medico AS Medico,
    nombre AS Nombre,
    apellido AS Apellido,
    telefono AS Telefono,
    fecha_nacimiento AS 'Fecha de Nacimiento'
FROM
    alquiler_consultorios ac
INNER JOIN medicos m
ON ac.idMedico = m.id_medico 
GROUP BY idMedico
HAVING COUNT(idConsultorio) > 1;

-- ERROR: Current selection does not contain a unique column. Grid edit, checkbox, Edit, Copy and Delete features are not available.
-- Cumple el enunciado del problema pero me arroja ese error el phpMyAdmin 
-- Entiendo que es porque no hay una columna única, lo que no entiendo es dónde debería colocar esa columna y porqué.