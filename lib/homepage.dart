import 'package:customnavigatoion_bar/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // here is the list of screens which changes
  List pages=[
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // here is print statement to ensure we are only biulding it once
    print("hello");
    return Scaffold(
      // this property is used from blending the botton space with page
      extendBody: true,


//here we are calling the provider value by using consumer so whenever the change in value it automatically change the index
      body: Consumer<pagechange>(
        builder: (context,newindex,child){
          return pages[newindex.newindex];
        },


      ),










// here we are using the bottomAppBar insted of Bottom navigation bar
      bottomNavigationBar:BottomAppBar(

        notchMargin: 6,
        shape:const CircularNotchedRectangle(),

        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(0,const Icon(Icons.home_outlined)),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(1,const Icon(Icons.search_rounded)),
            ),
           const  Opacity(opacity: 0,child: Icon(Icons.no_cell),),
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(2,const Icon(Icons.person_outline)),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: buildicon(3,const Icon(Icons.settings_outlined)),
            ),

          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(

        onPressed: () {  },
        child: const Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


    );
  }
  Widget buildicon(var index,icon){


    return  Consumer<pagechange>(add
      builder: (context,newindex,child){
        final isSelected=newindex.newindex==index;
        return  IconTheme(
           data: IconThemeData(
            color:isSelected? Colors.deepOrangeAccent:Colors.black

          ),
          child: IconButton(onPressed: (){
            context.read<pagechange>().changeindex(index);



          }, icon: icon));
      },


    );




  }
}
