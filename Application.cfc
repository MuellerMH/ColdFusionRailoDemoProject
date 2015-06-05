/**
*
* @file  /D/dev/TestDevelopment/Application.cfc
* @author  
* @description
*
*/

component output="false" displayname="Application"  {

	this.name = "TestDev";
	// Static MongoDB Connection
	this.mongodb;
	
	public function init(){
		this.mongodb = new tv.cranktube.dal.mongodb();
		return this;
	}
}