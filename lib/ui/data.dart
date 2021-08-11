import 'package:flutter/material.dart';

class Data {
  // 1- listview uchun

  List<String> catNames = ["All", "Flight", "Beach", "Sailing", "Hotel", "Spa"];
  List<Icon> catIcons = const [
    Icon(Icons.all_inclusive),
    Icon(Icons.flight),
    Icon(Icons.beach_access),
    Icon(Icons.sailing),
    Icon(Icons.hotel),
    Icon(Icons.spa)
  ];

  // 2- listview uchun
  List<String> citiesNames = ["Sao Paulo", "New York", "Istanbul"];
  List<String> citiesId = ["SAO", "LGA", "IST"];

  List<String> citiesImage = [
    "https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnJhemlsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1553484604-9f524520c793?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIweW91cmt8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1491252476179-5f2566566ab8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80",
  ];

  List<Widget> routes1 = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("LGA"),
        Text("-9h 35m-"),
        Text("SAO"),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("SAO"),
        Text("-9h 35m-"),
        Text("LGA"),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("LGA"),
        Text("-9h 35m-"),
        Text("IST"),
      ],
    ),
  ];
  List<Widget> routes2 = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("New York"),
        Icon(Icons.flight_takeoff),
        Text("Sao Paulo"),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Sao Paulo"),
        Icon(Icons.flight_takeoff),
        Text("New York"),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("New York"),
        Icon(Icons.flight_takeoff),
        Text("Istanbul"),
      ],
    )
  ];
  ///////////////
}
