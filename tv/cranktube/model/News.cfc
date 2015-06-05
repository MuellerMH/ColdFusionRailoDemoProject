/**
*
* @file  /D/dev/TestDevelopment/tv/cranktube/model/News.cfc
* @author  
* @description
*
*/

component accessors="true" {
	this.id;
	// Title as String
	this.title = "";
	// Teaser as String
	this.teaser = "";
	// Message as String
	this.message = "";
	// Image as String
	this.image = "";
	// Comments as Array
	this.comments = [];
	// CreateDate
	this.dtCreate = now();
	// expiredDate
	this.dtExpired;
	// Status [0|1] activ / inactiv
	this.status = 1;
	// deleted [0|1] 1 = deleted
	this.deleted = 0;

	this.tags = [];
	this.categories = [];

	public function init(){
		return this;
	}

	// accessors="true" all Getter And Setter are Avaible

}