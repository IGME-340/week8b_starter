import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Today's data. It's hardcoded, but it's shaped like API data after you clean it up:
  // a List of small Maps, the same shape as the list you built in 7B.
  // The photos are different shapes on purpose. You'll see why.
  List<Map<String, dynamic>> animals = [
    {
      'name': 'Black Lab',
      'image': 'assets/animals/black_lab.jpg',
      'fact':
          'Labs were bred to fetch for fishermen, which is why so many of them love the water.',
      'photographer': 'André Spieker',
    },
    {
      'name': 'Leopard',
      'image': 'assets/animals/leopard.jpg',
      'fact':
          'Leopards often drag their prey up into a tree to keep it away from lions and hyenas.',
      'photographer': 'Martyn Seddon',
    },
    {
      'name': 'Tiger',
      'image': 'assets/animals/tiger.jpg',
      'fact': 'No two tigers have the same stripes.',
      'photographer': 'Paula Borowska',
    },
    {
      'name': 'Walrus',
      'image': 'assets/animals/walrus.jpg',
      'fact':
          'Walruses use their tusks to haul themselves out of the water onto the ice.',
      'photographer': 'Jay Ruzesky',
    },
    {
      'name': 'Cat',
      'image': 'assets/animals/cat.jpg',
      'fact':
          "Every cat's nose has its own bumpy pattern, a bit like a fingerprint.",
      'photographer': 'Ryan Mcguire',
    },
    {
      'name': 'Fawn',
      'image': 'assets/animals/fawn.jpg',
      'fact':
          "A fawn's white spots help it hide in patchy sunlight. They fade after a few months.",
      'photographer': 'E+N Photographies',
    },
    {
      'name': 'Brown Bear',
      'image': 'assets/animals/brown_bear.jpg',
      'fact':
          "A brown bear's sense of smell is many times better than a bloodhound's.",
      'photographer': 'Thomas Lefebvre',
    },
    {
      'name': 'Griffon Vulture',
      'image': 'assets/animals/vulture.jpg',
      'fact':
          'Griffon vultures can soar for hours by riding rising warm air instead of flapping.',
      'photographer': 'Niko Virtanen',
    },
    {
      'name': 'Lioness',
      'image': 'assets/animals/lioness.jpg',
      'fact': 'In a lion pride, the lionesses do most of the hunting.',
      'photographer': 'Samuel Scrimshaw',
    },
    {
      'name': 'Highland Cow',
      'image': 'assets/animals/highland_cow.jpg',
      'fact':
          'Highland cattle grow a long, shaggy double coat to get through Scottish winters.',
      'photographer': 'Elias Carlsson',
    },
    {
      'name': 'Pug',
      'image': 'assets/animals/pug.jpg',
      'fact': 'Pugs were kept as lap dogs by Chinese emperors.',
      'photographer': 'Matthew Wiebe',
    },
    {
      'name': 'Coyote',
      'image': 'assets/animals/coyote.jpg',
      'fact':
          'Coyotes live in every U.S. state except Hawaii, cities included.',
      'photographer': 'Levi Saunders',
    },
  ];

  // TODO Step 9: a showAnimal() function that opens a popup for one animal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animal Grid"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text("${animals.length} animals. Tap one to learn more."),
            SizedBox(height: 8),
            // TODO Step 2: an Expanded with a GridView inside
          ],
        ),
      ),
    );
  }
}
