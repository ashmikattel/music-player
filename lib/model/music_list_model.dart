class MusicModel {
  final String musicName;
  final String band;
  bool isFevourite;
  MusicModel({
    this.band, 
    this.musicName,
    this.isFevourite = false
  });
  void tooglefavouriteStatus (){
    isFevourite = !isFevourite;
  }
}
