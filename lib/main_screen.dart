import 'package:flutter/material.dart';
import 'package:dicoding_movie_flutter/detail_screen.dart';
import 'package:dicoding_movie_flutter/about_screen.dart';
import 'package:dicoding_movie_flutter/model/movie_item.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: ListView(
        children: MovieItemList.map((place) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(place.imageAsset),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Release Date: " + place.releaseDate),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Rating : " + place.rating),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Duration : " + place.duration),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AboutScreen();
          }));
        },
        child: const Icon(Icons.person),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

var MovieItemList = [
  MovieItem(
    name: 'Alita: Battle Angel',
    releaseDate: '02/14/2019',
    description:
        'When Alita awakens with no memory of who she is in a future world she does not recognize, she is taken in by Ido, a compassionate doctor who realizes that somewhere in this abandoned cyborg shell is the heart and soul of a young woman with an extraordinary past.',
    rating: '7.5',
    duration: '1h 30min',
    imageAsset: 'images/poster_alita.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Adventure',
    ],
  ),
  MovieItem(
    name: 'Aquaman',
    releaseDate: '12/21/2018',
    description:
        'Once home to the most advanced civilization on Earth, Atlantis is now an underwater kingdom ruled by the power-hungry King Orm. With a vast army at his disposal, Orm plans to conquer the remaining oceanic people and then the surface world. Standing in his way is Arthur Curry, Orms half-human, half-Atlantean brother and true heir to the throne.',
    rating: '8.5',
    duration: '2h 30min',
    imageAsset: 'images/poster_aquaman.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Adventure',
    ],
  ),
  MovieItem(
    name: 'Bohemian Rhapsody',
    releaseDate: '11/02/2018',
    description:
        'Singer Freddie Mercury, guitarist Brian May, drummer Roger Taylor and bass guitarist John Deacon take the music world by storm when they form the rock n roll band Queen in 1970. Hit songs become instant classics. When Mercurys increasingly wild lifestyle starts to spiral out of control, Queen soon faces its greatest challenge yet – finding a way to keep the band together amid the success and excess.',
    rating: '8',
    duration: '1h 45min',
    imageAsset: 'images/poster_bohemian.jpg',
    languange: 'english',
    genre: [
      'Documenter',
      'Musical',
    ],
  ),
  MovieItem(
    name: 'Cold Pursuit',
    releaseDate: '02/08/2019',
    description:
        'The quiet family life of Nels Coxman, a snowplow driver, is upended after his son murder. Nels begins a vengeful hunt for Viking, the drug lord he holds responsible for the killing, eliminating Vikings associates one by one. As Nels draws closer to Viking, his actions bring even more unexpected and violent consequences, as he proves that revenge is all in the execution.',
    rating: '6.5',
    duration: '1h 25min',
    imageAsset: 'images/poster_cold_persuit.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Crime',
    ],
  ),
  MovieItem(
    name: 'Creed II',
    releaseDate: '11/21/2018',
    description:
        'Between personal obligations and training for his next big fight against an opponent with ties to his familys past, Adonis Creed is up against the challenge of his life.',
    rating: '7',
    duration: '1h 50min',
    imageAsset: 'images/poster_creed.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Adventure',
    ],
  ),
  MovieItem(
    name: 'Crimes of Grindelwald',
    releaseDate: '11/16/2018',
    description:
        'Gellert Grindelwald has escaped imprisonment and has begun gathering followers to his cause—elevating wizards above all non-magical beings. The only one capable of putting a stop to him is the wizard he once called his closest friend, Albus Dumbledore. However, Dumbledore will need to seek help from the wizard who had thwarted Grindelwald once before, his former student Newt Scamander, who agrees to help, unaware of the dangers that lie ahead. Lines are drawn as love and loyalty are tested, even among the truest friends and family, in an increasingly divided wizarding world.',
    rating: '7.2',
    duration: '1h 20min',
    imageAsset: 'images/poster_crimes.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Thriller',
    ],
  ),
  MovieItem(
    name: 'Doom Patrol',
    releaseDate: '15/02/2019',
    description:
        'The Doom Patrol’s members each suffered horrible accidents that gave them superhuman abilities — but also left them scarred and disfigured. Traumatized and downtrodden, the team found purpose through The Chief, who brought them together to investigate the weirdest phenomena in existence — and to protect Earth from what they find.',
    rating: '7',
    duration: '50min',
    imageAsset: 'images/poster_doom_patrol.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Adventure',
    ],
  ),
  MovieItem(
    name: 'Dragon Ball',
    releaseDate: '26/02/1986',
    description:
        'Long ago in the mountains, a fighting master known as Gohan discovered a strange boy whom he named Goku. Gohan raised him and trained Goku in martial arts until he died. The young and very strong boy was on his own, but easily managed. Then one day, Goku met a teenage girl named Bulma, whose search for the mystical Dragon Balls brought her to Gokus home. Together, they set off to find all seven and to grant her wish.',
    rating: '7.5',
    duration: '30min',
    imageAsset: 'images/poster_dragon_ball.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Comedy',
    ],
  ),
  MovieItem(
    name: 'Glass',
    releaseDate: '01/18/2019',
    description:
        'In a series of escalating encounters, former security guard David Dunn uses his supernatural abilities to track Kevin Wendell Crumb, a disturbed man who has twenty-four personalities. Meanwhile, the shadowy presence of Elijah Price emerges as an orchestrator who holds secrets critical to both men.',
    rating: '7.3',
    duration: '1h 34min',
    imageAsset: 'images/poster_glass.jpg',
    languange: 'english',
    genre: [
      'Action',
      'Adventure',
    ],
  ),
  MovieItem(
    name: 'How to Train Your Dragon',
    releaseDate: '03/26/2010',
    description:
        'As the son of a Viking leader on the cusp of manhood, shy Hiccup Horrendous Haddock III faces a rite of passage: he must kill a dragon to prove his warrior mettle. But after downing a feared dragon, he realizes that he no longer wants to destroy it, and instead befriends the beast – which he names Toothless – much to the chagrin of his warrior father.',
    rating: '8',
    duration: '1h 55min',
    imageAsset: 'images/poster_how_to_train.jpg',
    languange: 'english',
    genre: ['Adventure', 'Kids'],
  ),
];
