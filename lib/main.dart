import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  MySnackBar(massage, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(massage)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
        backgroundColor: Colors.brown,
        centerTitle: true,
        leading: Icon(Icons.search),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      floatingActionButton : FloatingActionButton(
          elevation: 10,
          onPressed: (){
            MySnackBar('This is Floating Action Button', context);
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.brown,
      ),
    );
  }
}

