import 'package:flutter/material.dart';

Widget robotContainer(int id, String name, String email) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo[100]
      ),
      child: Column(
        children: [
          Image.network("https://robohash.org/$id", width: 50),
          formatedText(name),
          formatedText(email),
        ],
      ),
    );
  }

  Widget formatedText(String text) {
    return Text(
      text, 
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 10
      ),
    );
  }