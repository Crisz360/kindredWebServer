<?php
//************************************ */
//Autor         : Jorge Itza
//Descripcion   : Se agrega la clase para conexion de BD
//Fecha         : 21/11/2022
//************************************ */
class Connection {

	private $User;
	private $Password;
	private $Database;
	private $Server;
	private $Conecction;

	//Constructor 
    function __construct() {
		$this->User= "root"; //USUARIO
		$this->Password= ""; // PASSWORD USER
		$this->Database= "kindred_dbd"; // DATABASE
		$this->Server= "localhost"; // SERVER
    }
    //Return connection
	function getConnection(){
		$this->abrirConecction();//Abre la Conecction
		return $this->Conecction;
	}
	//Open conecction
	function openConecction(){
		try{
			$this->Conecction = mysqli_connect($this->Server,
											$this->User,
											$this->Password,
											$this->Database);
											$this->Conecction->set_charset('utf8');
		}
		catch(Exception $e){}						
	}
	//Close connection
	function closeConnection(){
       mysqli_close($this->Conecction);		
	}
	//Mysql Querys
	function Mysql_Exec($comandoSQL){
		$this->abrirConecction();//Abre la Conecction
		$resultado = mysqli_query($this->Conecction,$comandoSQL);//Mandar la consulta
		$this->cerrarConecction();//Cerrar la Conecction
		return $resultado; //Regresar el resultado de la consulta
	}
}


?>