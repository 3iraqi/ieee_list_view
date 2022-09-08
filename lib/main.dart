import 'package:flutter/material.dart';
main()=>runApp(const ListView());

    class ListView extends StatelessWidget {
      const ListView({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) =>const  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:   Home(),
      );//MaterialApp
    }

    class Home extends StatelessWidget {
      const Home({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) =>Scaffold(

        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Gallery",
            style: TextStyle(
                color: Colors.black54
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),

        body: Image.asset("img/img1.jpg"),

      );
    }
