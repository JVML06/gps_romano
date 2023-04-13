import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //1
  final String category = 'Travel';
  final String title = 'Switzerland';
  final String description = 'País inexplicavel';
  final String tourist = 'Pérola do leste europeu';
//2
  @override
  Widget build(BuildContext context) {
//3
    return Center(
        child: Container(
            //1
            padding: const EdgeInsets.all(16),
            //2
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            //3
            decoration: const BoxDecoration(
              //4
              image: DecorationImage(
                //5
                image: NetworkImage(
                    'https://paradisoturismo.com.br/wp-content/uploads/2021/09/swiss9-1924x1283.jpg'),
                //6
                fit: BoxFit.cover,
              ),
              //7
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(
              children: [
                //8
                Text(
                  category,
                  style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                ),
                //9
                Positioned(
                  top: 20,
                  child: Text(
                    title,
                    style: GpsdoMundoTheme.darkTextTheme.headline2,
                  ),
                ),
                //10
                Positioned(
                  bottom: 30,
                  right: 0,
                  child: Text(
                    description,
                    style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                  ),
                ),
                //1
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Text(
                    tourist,
                    style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                  ),
                )
              ],
            )));
  }
}
