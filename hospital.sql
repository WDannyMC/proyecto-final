@@ -1,3 +1,7 @@
CREAR  BASE DE DATOS  hospital ;

USO hospital;

CREAR  TABLA ` médicos `
(
  ` cedula` int  CLAVE PRIMARIA , 
  ` nombres `  varchar ( 50 ),
@@ -24,4 +28,4 @@ CREAR TABLA `cita_medica` )

ALTER  TABLE  ` cita_medica ` AGREGAR CLAVE EXTRANJERA ( ` cedula_paciente ` ) REFERENCIAS  ` pacientes ` ( ` cedula ` );

ALTER  TABLE  ` cita_medica ` AGREGAR CLAVE EXTRANJERA ( ` cedula_medico ` ) REFERENCIAS  ` medicos ` ( ` cedula ` );
ALTER  TABLE  ` cita_medica ` AGREGAR CLAVE EXTRANJERA ( ` cedula_medico ` ) REFERENCIAS  ` medicos ` ( ` cedula ` );