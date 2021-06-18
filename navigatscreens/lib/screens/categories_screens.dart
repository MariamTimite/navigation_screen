

import 'package:flutter/material.dart';
import 'package:navigatscreens/category_meals_screens.dart';
import 'package:navigatscreens/models/phone.dart';

class CategoriesScrenns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Bienvenue chez MyPhoneApp',style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic)),
      ),
     body: GridView(
       children: Pone_name.map((categorie) => InkWell(
         onTap: (){
           print(categorie.nom);
           Navigator.pushNamed(context, CategoryMealsScreen.routeName, arguments: {
             'id' : categorie.id,
             'title' : categorie.nom,
           });
         },
         child: PhoneNameItem(color: categorie.color, name: categorie.nom,))).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2/3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
        ),
    ),
    );
  }
}


class PhoneNameItem extends StatelessWidget {
  final Color color;
  final String name;
  const PhoneNameItem({Key key, this.color, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container( 
       decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: color
       ),
      alignment: Alignment.center, child: Text(name,),);
  }
}
