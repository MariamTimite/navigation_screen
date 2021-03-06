
import 'package:flutter/material.dart';
import 'package:navigatscreens/screens/categories_screens.dart';
import 'package:navigatscreens/screens/detail_screen.dart';
import './category_meals_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData( 
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
       fontFamily: 'Raleway',
       textTheme: ThemeData.light().textTheme.copyWith(

        bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1) ),
        bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1) ),
        headline1:  TextStyle(
          fontSize: 24,
          fontFamily:'RobotoCondensed',
          fontWeight:FontWeight.bold
        ) 
       )

      ),
      initialRoute: '/',
       routes:{
          '/':(context)=>CategoriesScrenns(),
          CategoryMealsScreen.routeName : (context)=> CategoryMealsScreen()
     },
    );
  }
}



