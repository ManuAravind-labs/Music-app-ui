class NewReleaseModel {
  String image;
  String title;
  String singer;

  NewReleaseModel(title, singer, image) {
    this.title = title;
    this.singer = singer;
    this.image = image;
  }
}

final List<NewReleaseModel> newReleaseList = [
  NewReleaseModel('Devdas', 'Discover', "assets/images/devdas.jpg"),
  NewReleaseModel('Taal', 'Categories', "assets/images/taal.jpg"),
  NewReleaseModel('Dil se', 'Specials', "assets/images/dilse.jpg"),
  NewReleaseModel('Roja', 'New', "assets/images/roja.jpg"),
  NewReleaseModel('Alai Payuthey', 'New', "assets/images/alay.jpg")
];
