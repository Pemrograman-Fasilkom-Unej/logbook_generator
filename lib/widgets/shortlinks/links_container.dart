import 'package:flutter/material.dart';

class LinksContainer extends StatelessWidget {
  final nama;
  final shortlink;
  final link_asli;
  
  const LinksContainer({super.key, this.nama, this.shortlink, this.link_asli});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          color: const Color(0xFF373645),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$nama',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '$shortlink',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '$link_asli',
                  style: TextStyle(color: const Color(0xFF9693A6)),
                )
              ],
            ),
          ),
          Expanded(
              child: IconButton(
                  color: const Color(0xFF9693A6),
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.copy)))
        ],
      ),
    );
  }
}
