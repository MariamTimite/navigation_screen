
import 'package:flutter/material.dart';
import 'package:navigatscreens/data/dummy_data.dart';
import 'package:navigatscreens/meal_item.dart';
class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    
    final routeArgs=
    ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle= routeArgs['title'];
     final categoryId= routeArgs['id'];
     final categoryMeals = DUMMY_MEALS.where((meal) {
       return meal.categories.contains(categoryId);
     }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        ),
      body: ListView.builder(itemBuilder: (ctx, index){
        return MealsItem(
        title: categoryMeals[index].title, 
        duration:  categoryMeals[index].duration,
        imageUrl: categoryMeals[index].imageUrl , 
        affordability: categoryMeals[index].affordability,
        complexity: categoryMeals[index].complexity,);
      },
      itemCount: categoryMeals.length, )
      );
    } 
    
}