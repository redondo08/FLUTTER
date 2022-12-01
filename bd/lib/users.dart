import 'package:flutter/material.dart';

const String tableusers = 'Users';
class Noteusers{
  static const int id = 1;
  static const String name = '';
  static const int age = 12;
}


class Users {
  final int id;
  final String name;
  final int age;

  const Users({
    required this.id,
    required this.name,
    required this.age,
  });


}