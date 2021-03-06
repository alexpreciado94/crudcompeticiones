<?php
  class OperacionesDB{
    function __construct(){
      include_once 'configdb.php';
      $this->conexion = new mysqli(SERVIDORDB, USUARIO, CONTRASENA, BASEDATOS);
      //$this->conexion = new mysqli('localhost', 'root', '', 'empleadosphp');
    }
    function consultar($consulta){
      return mysqli_query($this->conexion, $consulta);
    }
    function extraerFila($resultado){
      return mysqli_fetch_assoc($resultado);
    }
    function recuperarUltimoId(){
      return $this->conexion->insert_id;
    }
    function codigoError(){
      return $this->conexion->errno;
    }
    function cerrarConexion(){
      $this->conexion->close();
    }
  }
