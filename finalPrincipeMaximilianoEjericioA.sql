-- a. Listado: Listar id, nombre, apellido y precio de la consulta de cada médico y los
-- consultorios alquilados indicando: periodo de fechas en que lo alquiló, nombre
-- comercial, teléfono y dirección del consultorio.

SELECT 
    id_medico as ID, 
    nombre as Nombre,
    apellido as Apellido,
    precioConsulta as 'Precio Consulta',
    fechaDesde as 'Fecha Desde', 
    fechaHasta as 'Fecha Hasta',
    nombre_comercial as 'Nombre Comercial',
    c.telefono as Telefono,
    direccion as Direccion
FROM medicos m
INNER JOIN alquiler_consultorios ac
ON m.id_medico = ac.idMedico
INNER JOIN consultorios c
ON c.id_consultorio = ac.idConsultorio;