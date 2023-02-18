import 'package:flutter/material.dart';
import 'package:logbook_generator/widgets/shortlinks/links_container.dart';

class Shortlinks extends StatefulWidget {
  const Shortlinks({super.key});

  @override
  State<Shortlinks> createState() => _ShortlinksState();
}

class _ShortlinksState extends State<Shortlinks> {

  final List links = [
      {'nama':'nama1','shortlink':'shortlink1','link':'link1'},
      {'nama':'nama2','shortlink':'shortlink2','link':'link2'},
      {'nama':'nama3','shortlink':'shortlink3','link':'link3'},
      {'nama':'nama4','shortlink':'shortlink4','link':'link4'},
      {'nama':'nama5','shortlink':'shortlink5','link':'link5'},
      {'nama':'nama6','shortlink':'shortlink6','link':'link6'}
    ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF23212C),
        elevation: 0,
        title: const Text('Shortlinks'),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.add),
            color: const Color(0xFF72DDF7),
          )
        ],
      ),
      backgroundColor: const Color(0xFF23212C),
      body: Center(
        child: ListView.builder(
          itemCount: links.length,
          itemBuilder: (context, index) {
            return LinksContainer(
              nama: links[index]['nama'],
              shortlink: links[index]['shortlink'],
              link_asli: links[index]['link']
            );
        }
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1B1A24),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Logbook',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.link),
            label: 'Shortlinks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: const Color(0xFF72DDF7),
        unselectedItemColor: const Color(0xFF373645),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
