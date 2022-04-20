import 'package:flutter/material.dart';
import 'package:robot_friend_app/models/robotModel.dart';
import 'package:robot_friend_app/presenters/home/robotWidget.dart';
import 'package:robot_friend_app/service/service.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Robot> robots = [];

  @override
  void initState() {
    getRobots();
    super.initState();
  }

  void getRobots() async {
    try {
      List<Robot> response = await service();
      setState(() {
        robots = response;
      });
      
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Robots Friends"),
        centerTitle: true,
      ),
      body: myBody(),
    );
  }

  Widget myBody() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Wrap(
          spacing: 10,
          alignment: WrapAlignment.spaceAround,
          children: [
            for(Robot robot in robots) robotContainer(robot.id, robot.name, robot.email)
          ],
        ),
      ],
    );
  }
}