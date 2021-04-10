class MovieItem {
  String name;
  String releaseDate;
  String description;
  String rating;
  String duration;
  String imageAsset;
  String languange;
  List<String> genre;

  MovieItem(
      {this.name,
      this.releaseDate,
      this.description,
      this.rating,
      this.duration,
      this.imageAsset,
      this.languange,
      this.genre});
}
