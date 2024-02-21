class Search {
  int id;
  bool readable;
  String title;
  String titleShort;
  String titleVersion;
  String link;
  int duration;
  int rank;
  bool explicitLyrics;
  String preview;
  String aritst;
  String album;

  Search(
      {required this.album,
      required this.aritst,
      required this.duration,
      required this.explicitLyrics,
      required this.id,
      required this.link,
      required this.preview,
      required this.rank,
      required this.readable,
      required this.title,
      required this.titleShort,
      required this.titleVersion});

  factory Search.searchfromJson(Map<String, dynamic> json) {
    return Search(
        album: json['album'],
        aritst: json['aritst'],
        duration: json['duration'],
        explicitLyrics: json['explicit_lyrics'],
        id: json['id'],
        link: json['link'],
        preview: json['preview'],
        rank: json['rank'],
        readable: json['readable'],
        title: json['title'],
        titleShort: json['title_short'],
        titleVersion: json['title_version']);
  }
}
