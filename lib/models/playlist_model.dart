class PlayList {
  String image, title, date;
  int numOfSongs;

  PlayList(
      {required this.image,
      required this.date,
      required this.numOfSongs,
      required this.title});
}

List<PlayList> demoPlaylist = [
  PlayList(image: '', date: '2024', numOfSongs: 8, title: 'Chilling Music'),
  PlayList(image: '', date: '2024', numOfSongs: 12, title: 'Rock Music'),
  PlayList(image: '', date: '2024', numOfSongs: 4, title: 'Gym Music'),
  PlayList(image: '', date: '2024', numOfSongs: 16, title: 'Night Sleep Music'),
  PlayList(image: '', date: '2024', numOfSongs: 2, title: 'Good Mood Music'),
  PlayList(image: '', date: '2024', numOfSongs: 5, title: 'EDM Music'),
  PlayList(image: '', date: '2024', numOfSongs: 10, title: 'Japanese Music'),
  PlayList(image: '', date: '2024', numOfSongs: 7, title: 'Classical Music'),
];
