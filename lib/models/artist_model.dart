class Artist {
  int id;
  String name;
  Uri link;
  Uri share;
  Uri picture;
  Uri pictureSmall;
  Uri pictureMedium;
  Uri pictureBig;
  Uri pictureXl;
  int nbAlbum;
  int nbFans;
  bool radio;
  Uri trackList;

  Artist(
      {required this.id,
      required this.link,
      required this.name,
      required this.nbAlbum,
      required this.nbFans,
      required this.picture,
      required this.pictureBig,
      required this.pictureMedium,
      required this.pictureSmall,
      required this.pictureXl,
      required this.radio,
      required this.share,
      required this.trackList});

  factory Artist.artistfromJson(Map<String, dynamic> json) {
    return Artist(
        id: json['id'],
        link: json['link'],
        name: json['name'],
        nbAlbum: json['nb_album'],
        nbFans: json['nb_fans'],
        picture: json['picture'],
        pictureBig: json['picture_big'],
        pictureMedium: json['picture_medium'],
        pictureSmall: json['picture_small'],
        pictureXl: json['picture_xl'],
        radio: json['radio'],
        share: json['share'],
        trackList: json['trackList']);
  }
}
