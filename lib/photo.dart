class Photo {
  String ? id ;
  String ? title ;
  String ? url ;
  String ? thumbnailUrl  ;
  Photo({this.id,this.title,this.url,this.thumbnailUrl});
  Photo.formjson(Map map){
    id =map['id'].toString();
    title =map['title'];
    url =map['url'];
    thumbnailUrl = map['thumbnailUrl'];

  }
}
   