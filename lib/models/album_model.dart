class Album {
  int id;
  String title;
  String upc;
  String md5images;
  List genres;
  String label;
  int nbtracks;
  int duration;
  int fans;
  int releasedate;
  String recordtype;
  bool available;
  bool explicitlyrics;
  int explicitcontentlyrics;
  int explicitcontentcover;
  List contributors;
  List tracks;
  //tracks
  String titletrack;
  int idtrack;
  String titleshorttrack;
  bool readable;

  Album(
      {required this.available,
      required this.id,
      required this.idtrack,
      required this.title,
      required this.titleshorttrack,
      required this.titletrack,
      required this.tracks,
      required this.fans,
      required this.readable,
      required this.recordtype,
      required this.releasedate,
      required this.explicitcontentcover,
      required this.explicitcontentlyrics,
      required this.contributors,
      required this.duration,
      required this.explicitlyrics,
      required this.genres,
      required this.label,
      required this.md5images,
      required this.nbtracks,
      required this.upc});

  factory Album.albumsfromJson(Map<String, dynamic> json) {
    return Album(
        available: json['available'] ?? false,
        id: json['id'],
        idtrack: json['idtrack'],
        title: json['title'],
        titleshorttrack: json['titleshorttrack'],
        titletrack: 'titletrack',
        tracks: json['tracks'],
        fans: json['fans'],
        readable: json['readable'],
        recordtype: 'recordtype',
        releasedate: json['releasedate'],
        explicitcontentcover: json['explicitcontentcover'],
        explicitcontentlyrics: json['explicitcontentlyrics'],
        contributors: json['contributors'],
        duration: json['duration'],
        explicitlyrics: json['explicitlyrics'],
        genres: json['genres'],
        label: json['label'],
        md5images: json['md5images'],
        nbtracks: json['nbtracks'],
        upc: json['upc']);
  }
}
