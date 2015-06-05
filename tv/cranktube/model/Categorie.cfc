/**
*
* @file  /D/dev/TestDevelopment/tv/cranktube/model/Categorie.cfc
* @author  
* @description
*
*/

component accessors="true" {

	this.name;
	this.status;
	this.dtCreate;

	public function init(){
		return this;
	}
	
	// accessors="true" all Getter And Setter are Avaible
}