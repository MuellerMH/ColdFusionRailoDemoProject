/**
*
* @file  /D/dev/TestDevelopment/tv/cranktube/dal/mongodb.cfc
* @author  
* @description
*
*/

component output="false" displayname="MongoDBWrapper"  {

	this.mongodbClient;
	// static db
	this.db;
	
	public function init(){
		// load JAVA Class
		// TODO: remove hard code LocalHost
		this.mongodbClient = new com.mongodb.MongoClient("localhost");
		this.db = this.mongodbClient.getDB("test");

		// Example DB Cluster 
		/*
		this.mongodbClient = new com.mongodb.MongoClient(
			new com.mongodb.ServerAddress("localhost",27017),
			new com.mongodb.ServerAddress("localhost",27018),
			new com.mongodb.ServerAddress("localhost",27019)
		);
		*/

		return this;
	}

	public function getTable(string TableName){
		retuen this.db.getCollection(arguments.TableName);
	}
}