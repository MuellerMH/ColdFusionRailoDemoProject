/**
*
* @file  /D/dev/TestDevelopment/tv/cranktube/main/News.cfc
* @author  
* @description
*
*/

component output="false" displayname="NewsHandler"  {

	private allNews = {};

	public function init(){

		return this;
	}

	public function getLatest(){
		NewsTable = new tv.cranktube.dal.mongodb().getTable("News");
		for(NewsTable.find().asArray as News){
			tmpNews = new tv.cranktube.model.News();
			tmpNews.setId(News._id.toString());
			tmpNews.setTitle(News.title);
			tmpNews.setTeaser(News.teaser);
			tmpNews.setImage(News.image);
			tmpNews.setDtCreate(News.dtCreate);
			allNews[News._ID] = duplicate(tmpNews);			
		}
	}

	public function getById(string id){
		NewsTable = new tv.cranktube.dal.mongodb().getTable("News");
		return NewsTable.find({'_id': arguments.id}).asArray()[0];
	}

	public function add(tv.cranktube.model.News NewsEntry){

	}

	public function remove(tv.cranktube.model.News NewsEntry){

	}

	public function setExpired(tv.cranktube.model.News NewsEntry){

	}

	public function save(tv.cranktube.model.News NewsEntry){

	}

	public function addTag(tv.cranktube.model.News NewsEntry, tv.cranktube.model.Tag tag){

	}

	public function addCategorie(tv.cranktube.model.News NewsEntry,  tv.cranktube.model.Categorie categorie){

	}

}