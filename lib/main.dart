import 'package:flutter/material.dart';
main()=>runApp(const ListViewTask());

    class ListViewTask extends StatelessWidget {
      const ListViewTask({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:   Home(),
      );//MaterialApp
    }

    class Home extends StatefulWidget {
       Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
     final List<String>titles=["Communication System Quiz","Os Report","Buy some stuff","Go to the Gym","Flutter Task","Flutter Task بردو"] ;

     final List<String>subtitles=["10:00AM","11:00AM","1:00PM","2:00PM","4:00PM","6:00PM",] ;

      @override
      Widget build(BuildContext context) =>Scaffold(
        backgroundColor:  const Color(0xff4368FF),

        appBar: AppBar(

           // elevation: 0,

          title: const Text(
            "Todo List",
            style: TextStyle(
              fontFamily: 'Raleway',
                color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff4368FF),

        ),

        body:ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context,index)=> ListTile(

              title: Text(
                  titles[index],
                style: const TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white
                ),
              ),
              subtitle: Text(
                subtitles[index],
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white
                ),
              ),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.delete_outline_rounded,
                    color: Colors.white,
                  )
                    ,  onPressed: (){showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Delete"),
                    content: Text(
                        "Are you sure you want to delete this item?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel")),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              titles.removeAt(index);
                              subtitles.removeAt(index);
                            });
                            Navigator.pop(context);
                          },
                          child: Text("Yes"))
                    ],
                  ));

            },
              )    ,

            )
        ),

      );
}
