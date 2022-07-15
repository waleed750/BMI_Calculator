import 'package:flutter/material.dart';

class User
{
  final int id  ;
  final String name  ;
  final int number ;
  User({
    required this.id ,
    required this.name ,
    required this.number,});

}
class UserScreen extends StatelessWidget {

  List<User> users = [
    User(id: 1 , name: 'Waleed' , number: 010152487) ,
    User(id: 1 , name: 'Waleed' , number: 010152487) ,
    User(id: 1 , name: 'Waleed' , number: 010152487) ,
    User(id: 1 , name: 'Waleed' , number: 010152487) ,
    User(id: 1 , name: 'Waleed' , number: 010152487) ,
    User(id: 1 , name: 'Waleed' , number: 010152487) ,
    User(id: 1 , name: 'Waleed' , number: 010152487) ,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users'
        ),
      ),
      body: ListView.separated(itemBuilder: (context, index) => buildItem(users[index]),
          separatorBuilder: (context , index)=> Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          itemCount: users.length),
    );
  }
}
Widget buildItem (User model) => Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(

    children: [

      CircleAvatar(

        radius: 20.0,

        child: Text(

          '${model.id}' ,

          style: TextStyle(

            fontWeight: FontWeight.bold ,

          ),

        ),

      ) ,

      SizedBox(width: 20.0,),

      Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        mainAxisSize: MainAxisSize.min,

        children: [

          Text('${model.name}' ,
          style: TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 20.0
          ),
          ) ,

          Text('${model.number}' ,

            style: TextStyle(

                color: Colors.grey[500]

            ),

          ) ,

        ],

      ),



    ],

  ),
) ;
