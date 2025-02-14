import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class Comic {
  final String imageUrl;
  final String title;
  final String chapter;
  final String updateTime;
  final String summary;

  Comic({
    required this.imageUrl,
    required this.title,
    required this.chapter,
    required this.updateTime,
    required this.summary,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();

  final List<Comic> comics = [
    Comic(
      imageUrl: 'https://meo.comick.pictures/zevXM.jpg',
      title: 'Solo Leveling',
      chapter: 'Completed',
      updateTime: 'a year',
      summary: '10 years ago, after “the Gate” that connected the real world with the monster world opened, '
      'some of the ordinary, everyday people received the power to hunt monsters within the Gate. '
      'They are known as “Hunters”. However, not all Hunters are powerful. My name is Sung Jin-Woo, '
      'an E-rank Hunter. I’m someone who has to risk his life in the lowliest of dungeons, the “World’s Weakest”. '
      'Having no skills whatsoever to display, I barely earned the required money by fighting in low-leveled dungeons… '
      'at least until I found a hidden dungeon with the hardest difficulty within the D-rank dungeons! '
      'In the end, as I was accepting death, I suddenly received a strange power, a quest log that only '
      'I could see, a secret to leveling up that only I know about! If I trained in accordance with my quests and '
      'hunted monsters, my level would rise. Changing from the weakest Hunter to the strongest S-rank Hunter!'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/D42NDp.jpg',
      title: 'The Extra’s Academy Survival Guide',
      chapter: 'Chapter 64',
      updateTime: '4 days ago',
      summary: 'Ed Rothstaylor is a third-rate villain in a game, disowned by his family and kicked out of '
      'the dormitory for his misdeeds. One day, our main character wakes up as this very Ed, and realizes '
      'he must earn a scholarship so he can graduate and be set for life. '
      'Now living in the woods, he resolves to keep away from the protagonists, but four of the female leads '
      'just wont leave him alone. Not only that, his presence starts to change the timeline and events of the game!'
      'Can Ed help the story progress while staying out of the limelight?'
   ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/NrqxB6.jpg',
      title: 'Revenge of the Baskerville Bloodhound',
      chapter: 'Chapter 99',
      updateTime: '2 days ago',
      summary: 'Raised to kill like a pack of loyal hounds, the Baskerville children took countless lives as '
      'a band of fearsome assassins. Despite being the shunned illegitimate son of the brood, Vikir served his '
      'family faithfully, only to meet his untimely demise at his father’s hands. But when he is inexplicably '
      'reborn with a second chance at life, Vikir, armed with the memories and knowledge of his past, swears to '
      'rise above the pack and take his revenge. This time, he is ready to bite the hand that feeds.'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/mnWxYo.jpg',
      title: 'The Greatest Estate Developer',
      chapter: 'Chapter 179',
      updateTime: '6 days ago',
      summary: 'When civil engineering student Suho Kim falls asleep reading a fantasy novel, he wakes up as a '
      'character in the book. Suho is now in the body of Lloyd Frontera, a lazy noble who loves to drink, and whose '
      'family is in a mountain of debt. Using his engineering knowledge, Suho designs inventions to avert the '
      'terrible future that lies in wait for him. With the help of a giant hamster, a knight, and the world’s magic, '
      'can Suho dig his new family out of debt and build a better future?'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/BL4kRJ.png',
      title: 'The Apothecary Prince',
      chapter: 'Chapter 66 ',
      updateTime: '7 days ago',
      summary: 'I’m the crown prince? The frail and sickly crown prince in the novel? But I’m a traditional Korean '
      'doctor who specializes in medicine. I guess it can’t be helped. Reforming internal constitution, recovering '
      'of energy, invigorating vital energy, and increasing vitality. I’ll take care of my body from now on.'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/w7p8MX.jpg',
      title: 'The Reborn Young Lord Is an Assassin',
      chapter: 'Chapter 61',
      updateTime: '4 days ago',
      summary: 'Cyan Vert, illegitimate son of the Duke and the empires greatest assassin, is betrayed by the'
      'righteous brother whose shadow he is always lived in. But just before the fatal blow strikes his throat, '
      'Cyan awakes to find he is just a boy again. The young lord has been reborn, and this time, he is not going '
      'to live in anyones shadow!'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/qYGzyp.jpg',
      title: 'The Nebulas Civilization',
      chapter: 'Chapter 76 ',
      updateTime: '4 days ago',
      summary: 'Seong-un Choi is the top-ranked player in the game “Lost World,” being the only player to have '
      'completed all its achievements. However, his triumph is short-lived as a mysterious message transports '
      'him to the real “Lost World,” transforming him from a mere gamer to a contender for godhood. Amidst others '
      'vying for divinity, will Seong-un be able to achieve true godhood and reign supreme in this new realm?'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/5pq1y3.jpg',
      title: 'Surviving the Game as a Barbarian',
      chapter: 'Chapter 91',
      updateTime: '3 days ago',
      summary: 'After spending nine years on Dungeon and Stone, the role-playing game that no player has ever beaten, '
      'Lee Hansoo finally reaches the dungeon of the final boss. As soon as he opens the gate, however, he suddenly '
      'sees a message that says his tutorial has been completed and finds himself in the body of Bjorn Yandel, '
      'a real barbarian within the game. An exciting adventure awaits him as he endeavors to abide by the laws of the '
      'fictional world!'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/jxNjJa.jpg',
      title: 'The Genius Assassin Who Takes It All',
      chapter: 'Chapter 69',
      updateTime: '4 days ago',
      summary: 'Waking up as the main villain of his own novel was not part of the original plan. Now a lowly level 10 '
      'assassin, Ganghu Shin must use all of his prior knowledge as the author to navigate the fantasy world he created '
      'himself, and somehow alter the ending in order to return to the real world. Can he change the outcome and defeat '
      'the "real" villain to prevent his own demise and save this world from impending doom?'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/kRxlzy.jpg',
      title: 'The Player Who Eats Steel',
      chapter: 'Chapter 65',
      updateTime: '20 hours ago',
      summary: 'Lee Hyunwook, the Steel Emperor, was the last savior of mankind, but died. In order to change the future, '
      'the place he regressed to was… The military?!! "Why here of all places?!" The start of Corporal Lee Hyunwook, '
      'who gets stronger in a special way, by doing a steel mukbang!'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/bYJry.png',
      title: 'Necromancer, the Ultimate Scourge!',
      chapter: 'Chapter 155',
      updateTime: '3 hours ago',
      summary: 'In a world where magic and monsters exist, Lin Moyu has hit the age of acquiring his very own profession. '
      'While most would be lucky just to obtain a high-level combat class, Moyu becomes the ultrarare necromancer! '
      'Being the first and only one of his kind, he has no idea of the potential he possesses on his journey to level up '
      'and face great challenges. What new heights will Moyu achieve with his unique army of undead?'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/aagWOY.jpg',
      title: 'Log into the Future',
      chapter: 'Chapter 192',
      updateTime: '14 hours ago',
      summary: 'At the beginning of the martial dao, abnormal beasts invaded the world. Humanity’s martials had to retreat '
      'in defeat time and time again. Lu Sheng transmigrates to that time, but in his dreams he enters a world '
      '10 000 years later. The foundational body refining method from 10k years in the future is several thousand '
      'times more effective than the current one. Then there’s the breathing method, body refining pill formula, and '
      'sacred martial law from 10k years later… Despite developing martial arts for 10k years, humanity was annihilated! '
      'Their martial arts civilization reached the apex, and yet there was no one left to inherit it. '
      'Except Lu Sheng, he’s exactly that last spark of hope!'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/br1pbq.gif',
      title: 'Evolution: Road to Space Monster',
      chapter: 'Chapter 62',
      updateTime: 'a month ago',
      summary: 'The protagonist wakes up to find that they are reborn as an alien creature inside a sci-fi survival '
      'video game. In order to survive in a strange, foreign world, they must use their knowledge of the game and '
      'evolve until the final stage.'
    ),
    Comic(
      imageUrl: 'https://meo.comick.pictures/5nZoR.png',
      title: 'Evolution Begins With a Big Tree',
      chapter: 'Chapter 331',
      updateTime: '3 hours ago',
      summary: 'Reborn as a willow tree!? Resurrection of spiritual energy, rise of all things. The reborn willow has '
      'also embarked on the path of evolution. It can evolve infinitely, is it “divine power” or “curse”?'
    ),
  ];

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _onItemTapped(int index) {
  setState(() {
    if (index == 0) {
      _scrollToTop(); 
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            "Coming soon!",
            style: TextStyle(color: Colors.white), 
          ),
          duration: const Duration(seconds: 1),
          backgroundColor: Color(0xFF1b1b25), 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }
    selectedIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              'https://i.ibb.co/Q3MZ129C/try.png',
              height: 30,
            ),
            const SizedBox(width: 8),
            const Text("ComicVerse"),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ComicSearchDelegate(comics),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hot Comics",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: comics.length,
                itemBuilder: (context, index) {
                  final comic = comics[index];
                  return ComicItem(comic: comic);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 28),
            label: '',
          ),
        ],
      ),
    );
  }
}

class ComicItem extends StatelessWidget {
  final Comic comic;

  const ComicItem({super.key, required this.comic});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ComicDetailScreen(comic: comic),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(comic.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(comic.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(comic.chapter, style: const TextStyle(color: Colors.grey)),
                  Text(comic.updateTime, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComicDetailScreen extends StatelessWidget {
  final Comic comic;

  const ComicDetailScreen({super.key, required this.comic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(comic.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(comic.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(comic.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(comic.chapter, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            Text(comic.updateTime, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 16),
            const Text("Summary:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(comic.summary, style: const TextStyle(fontSize: 16, color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}

class ComicSearchDelegate extends SearchDelegate {
  final List<Comic> comics;

  ComicSearchDelegate(this.comics);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ""),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = comics.where((comic) => comic.title.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final comic = results[index];
        return ListTile(
          leading: Image.network(comic.imageUrl, width: 50, height: 70, fit: BoxFit.cover),
          title: Text(comic.title),
          onTap: () {
            close(context, null);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ComicDetailScreen(comic: comic)),
            );
          },
        );
      },
    );
  }
}