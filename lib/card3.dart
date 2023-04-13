import 'dart:developer';
import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.momondo.com.br/discover/wp-content/uploads/sites/282/2016/10/18aecb69-8b99-3205-88f4-388967dada55.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(children: [
              //TODO: adic um boxdecoration
              //TODO: adic um container. column
              Center(
                  //11
                  child: Wrap(
                //12
                alignment: WrapAlignment.start,
                //13
                spacing: 12,
                //14
                runSpacing: 12,
                //15
                children: [
                  Chip(
                    label: Text('Natureza',
                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                  Chip(
                    label: Text('Animais',
                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                  Chip(
                    label: Text('História',
                        style: GpsdoMundoTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                ],
              ))
            ])));
  }
}
