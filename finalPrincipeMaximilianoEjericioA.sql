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
    consultorios.telefono as Telefono,
    direccion as Direccion
FROM medicos
INNER JOIN alquiler_consultorios
ON medicos.id_medico = alquiler_consultorios.idMedico
INNER JOIN consultorios
ON consultorios.id_consultorio = alquiler_consultorios.idConsultorio;