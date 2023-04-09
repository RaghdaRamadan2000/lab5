import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get prefixIcon => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(70, 200, 70, 30),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  maxRadius: 53,
                  backgroundImage: AssetImage('images/thh.png'),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Raghda Ramadan ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Pacifico',
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'fultter developer',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(

                  //style: TextStyle(backgroundColor: Colors.white),
                  controller: nameController,
                  decoration: new InputDecoration(
                    prefixIcon: prefixIcon ?? Icon(Icons.call),
                    border: OutlineInputBorder(),
                    labelText: '01322222221',
                  )),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: new InputDecoration(
                  prefixIcon: prefixIcon ?? Icon(Icons.mark_email_unread),
                  border: OutlineInputBorder(),
                  labelText: ' rrr12@gmail.com',
                ),
              ),
            ),
          ],
        ));
  }
}
