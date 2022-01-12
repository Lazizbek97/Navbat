import 'package:flutter/material.dart';

class Menu {
  String? name;
  Icon? icon;
  Menu(this.name, this.icon);
}

// class User {
//   String? name;
//   String? username;
//   String? number;
//   String? email;
//   String? password;

//   User(this.name, this.username, this.number, this.email, this.password);
// }

Map userData = {
  "name": "",
  "username": "",
  "number": "",
  "email": "",
  "password": ""
};

List dataBase = [];

List users = [];

List menu = [
  [
    "Health",
    Icons.health_and_safety_outlined,
  ],
  [
    "Repair Shops",
    Icons.handyman_outlined,
  ],
  [
    "Car Wash",
    Icons.local_car_wash_outlined,
  ],
  [
    "Beauty",
    Icons.content_cut_outlined,
  ],
  [
    "Food",
    Icons.food_bank_outlined,
  ],
  [
    "Public Service",
    Icons.supervisor_account_rounded,
  ],
  [
    "Car Rental",
    Icons.car_rental,
  ],
  [
    "Hotels",
    Icons.hotel_outlined,
  ],
  [
    "Taxi",
    Icons.local_taxi_outlined,
  ]
];
