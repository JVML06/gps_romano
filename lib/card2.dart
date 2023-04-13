import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        //1
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.nationsonline.org/gallery/Switzerland/Sunrise-on-the-Matterhorn.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            //2
            child: Column(children: [
              const AuthorCard(
                authorName: 'Martinez',
                title: 'Support Analyst',
                imageProvider: NetworkImage(
                    'https://www.comexdobrasil.com/wp-content/uploads/2020/07/Monte-Carlo_-curiosidades-sobre-o-distrito-mais-famoso-e-charmoso-do-Principado-de-M%C3%B4naco3___.jpg'),
              ),
              IconButton(
                //4
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                //5
                onPressed: () {
                  const snackBar = SnackBar(content: Text('Favorite Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Expanded(
                  //2
                  child: Stack(children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'fayre',
                    style: GpsdoMundoTheme.lightTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 4,
                        child: Text(
                          'Ocean dream',
                          style: GpsdoMundoTheme.lightTextTheme.headline1,
                        ))),
              ]))
            ])));
  }
}
