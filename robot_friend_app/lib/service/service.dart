import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:robot_friend_app/models/robotModel.dart';

Future<List<Robot>>service() async {

  List<Robot> robots = [];

  var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  var jsonList = jsonDecode(response.body);
  jsonList.forEach((robot) => {
    robots.add(Robot.fromMap(robot))
  });

  return robots;
}