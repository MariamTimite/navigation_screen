import 'package:flutter/material.dart';

@immutable
class Categoryphone {
  final String id;
  final String nom;
  final address;
  final Color color;
  const Categoryphone({
    @required this.id,@required this.nom,  this.address = '012345' ,this.color
  });
}
