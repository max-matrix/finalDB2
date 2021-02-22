-- c. Médicos: Listado de médicos y detalle de alquileres por médico realizada:
-- Listar todos los médicos (id, nombre y apellido) y la cantidad de consultorios
-- alquilados. Indicar en el mismo listado ( select ) cuando alquiló el primer consultorio
-- (revisar las fechas de los alquileres y mostrar cuándo alquiló por primera vez). Si un
-- médico no ha alquilado consultorios la cantidad de alquileres debe aparecer en 0 o
-- NULL. ordenar por apellido y nombre de los médicos el listado.

SELECT 
medicos.id_medico, medicos.nombre, medicos.apellido, COUNT(idMedico) AS 'Cantidad de alquileres'
FROM alquiler_consultorios 
RIGHT JOIN medicos
ON alquiler_consultorios.idMedico = medicos.id_medico
GROUP BY id_medico 
ORDER BY 
medicos.apellido ASC,
medicos.nombre ASC;