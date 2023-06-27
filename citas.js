var  express  =  require ( 'express' ) ;
var  enrutador  =  expreso . Enrutador ( ) ;
const  { conexión }  =  require ( '../database/conexion.js' )
/* Obtener citas medicas*/
enrutador_obtener ( '/' ,  función ( req ,  res ,  siguiente ) {
  conexión_query ('SELECT c.id, c.fecha, pa.nombre, med.nombres, med.consultorio FROM cita_medica c, medicos med WHERE pa.cedula_paciente=id_paciente AND med.cedula=id_medico;') , function ( error ,  resultados )  {
    si  ( error ) 
     {
      consola_log ( "Error en la consulta" ,  error )
      res . estado ( 500 ) . enviar ( "Error en la consulta" ) ;
    } más
     {
    res . render ( 'citas' ,  {  citas : resultados  } ) ;
    }
  }  
} ) ;
//Agregar citas medicas
enrutador_get ( '/agregar-cita' ,  ( req ,  res )  => {
  res . sendFile ( 'registro-cita.html' ,  { root : 'public' } ) ;
} )
enrutador_publicar ( '/agregar' ,  ( req ,  res )  => {
  const  paciente  =  req . cuerpo_cédula ;
  const  fecha  =  req . cuerpo_fecha ;
  const  especialidad  =  req . cuerpo_especialidad ;
  conexión_query ( `SELECT cedula FROM medicos WHERE especialidad=' ${ especialidad } ';` ,  function ( error ,  resultados )  {
    si  ( error ) 
     {
      consola_registro ("Error en la consulta" ,  error )
      res . estado ( 500 ) . enviar( "Error en la consulta" ) ;
    }
      const  cedulaMedico  =  resultados [ 0 ] . cédula ;
      conexión_consulta ( `INSERTAR EN cita_medica (id_mascota, id_medico, fecha) VALORES ( ${ cedulaDuenio } , ${ cedulaMedico } , ' ${ fecha } ')` ,  ( error ,  resultado )  =>  {
        si  ( error )  
        {
          consola_log ( "Ocurrió un error en la ejecución" ,  error )
          res . estado ( 500 ) . enviar ( "Error en la consulta" ) ;
        } más 
        {
          res . redirigir ( '/citas' ) ;
        }
      } ) ;
  } ) ;
} )