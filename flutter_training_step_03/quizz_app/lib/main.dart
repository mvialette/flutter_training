import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyQuizzePageApp(title: 'Some another awesome quizz app'),
    );
  }
}

class MyQuizzePageApp extends StatefulWidget {
  final String title;

  const MyQuizzePageApp({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyQuizzState();
  }
}

class _MyQuizzState extends State<MyQuizzePageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quizz App")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text("Welcome into my awesome Quizz Application"),
            SizedBox(height: 50),
            Text("What's the best team ?"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Team A"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 0,
                  ),
                  onPressed: () {
                    _showToast(context, "Team A");
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(
                  child: Text("Team B"),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    _showToast(context, "Team B");
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    textStyle: const TextStyle(fontSize: 15),
                    padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  child: const Text("Team C"),
                  onPressed: () {
                    _showToast(context, "Team C");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showToast(context, "Team D");
        },
        backgroundColor: Colors.green,
        child: const Text("Team D"),
      ),
    );
  }

  void _showToast(BuildContext context, String teamLabel) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text('Choice : ' + teamLabel),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}