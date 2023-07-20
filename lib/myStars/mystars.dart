import 'package:flutter/material.dart';

int lasomme = 0;
int starnumber = 0;

class MyStars extends StatelessWidget {
  const MyStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        setState(() {
          print(lasomme);
        });
        return Row(
          children: [
            MouseRegion(
              onEnter: (valeur) {
                setState(() {
                  starnumber = 1;
                });
              },
              onExit: (valeur) {
                setState(() {
                  starnumber = 0;
                });
              },
              child: IconButton(
                onPressed: () {
                  ;
                },
                icon: Icon(Icons.star),
                color: starnumber == 1 ||
                        starnumber == 2 ||
                        starnumber == 3 ||
                        starnumber == 4 ||
                        starnumber == 5
                    ? Colors.amber
                    : Colors.black,
                iconSize: starnumber == 1 ||
                        starnumber == 2 ||
                        starnumber == 3 ||
                        starnumber == 4 ||
                        starnumber == 5
                    ? 35
                    : 25,
              ),
            ),

            ////////////   ////////////////////////////////////////////////////
            MouseRegion(
              onEnter: (valeur) {
                setState(() {
                  starnumber = 2;
                });
              },
              onExit: (valeur) {
                setState(() {
                  starnumber = 0;
                });
              },
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.star),
                color: starnumber == 2 ||
                        starnumber == 3 ||
                        starnumber == 4 ||
                        starnumber == 5
                    ? Colors.amber
                    : Colors.black,
                iconSize: starnumber == 2 ||
                        starnumber == 3 ||
                        starnumber == 4 ||
                        starnumber == 5
                    ? 35
                    : 25,
              ),
            ),

            MouseRegion(
              onEnter: (valeur) {
                setState(() {
                  starnumber = 3;
                });
              },
              onExit: (valeur) {
                setState(() {
                  starnumber = 0;
                });
              },
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.star),
                color: starnumber == 3 || starnumber == 4 || starnumber == 5
                    ? Colors.amber
                    : Colors.black,
                iconSize: starnumber == 3 || starnumber == 4 || starnumber == 5
                    ? 35
                    : 25,
              ),
            ),

            MouseRegion(
              onEnter: (valeur) {
                setState(() {
                  starnumber = 4;
                });
              },
              onExit: (valeur) {
                setState(() {
                  starnumber = 0;
                });
              },
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.star),
                color: starnumber == 4 || starnumber == 5
                    ? Colors.amber
                    : Colors.black,
                iconSize: starnumber == 4 || starnumber == 5 ? 35 : 25,
              ),
            ),

            MouseRegion(
              onEnter: (valeur) {
                setState(() {
                  starnumber = 5;
                });
              },
              onExit: (valeur) {
                setState(() {
                  starnumber = 0;
                });
              },
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.star),
                color: starnumber == 5 ? Colors.amber : Colors.black,
                iconSize: starnumber == 5 ? 30 : 25,
              ),
            ),
          ],
        );
      },
    );
  }
}
