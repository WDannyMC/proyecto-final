CREAR  BASE DE DATOS HOSPITAL ;

USO HOSPITALARIO;

CREAR  TABLA ` médicos ` (
  ` cedula` int  CLAVE PRIMARIA , 
  ` nombres `  varchar ( 100 ),
  ` apellidos `  varchar ( 50 ),
  ` especialidad `  varchar ( 150 ),
  ` consultorio `  char ( 3 ),
  ` correo `  varchar ( 100 )
);

CREAR  TABLA ` pacientes` (
  ` cedula_paciente`  int  CLAVE PRINCIPAL ,
  ` nombre `  varchar ( 50 ),
  ` edad `  int ,
  ` telefono_paciente `  int
);

CREAR  TABLA ` cita_medica` (
  ` id_paciente` int  , _
  ` id_medico `  int ,
  ` fecha` fecha  _
);

ALTER  TABLE  ` cita_medica ` AÑADIR CLAVE EXTRANJERA ( ` id_paciente ` ) REFERENCIAS  ` paciente ` ( ` cedula_paciente ` );

ALTER  TABLE  ` cita_medica ` AGREGAR CLAVE EXTRANJERA ( ` id_medico ` ) REFERENCIAS  ` medicos ` ( ` cedula ` );

ALTER  TABLE  ` veterinario` . _ ` cita_medica` _ 
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (`id`);