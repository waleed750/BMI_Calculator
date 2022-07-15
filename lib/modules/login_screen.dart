import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends  StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:Center(
        child:SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
             mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login' ,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 30.0 ,
                    fontWeight: FontWeight.bold,

                    color: Colors.blue,
                  ),

                ) ,
                SizedBox(height: 20.0,) ,
                defaultTextFormFeild(type: TextInputType.emailAddress,
                    label: 'Email Address',
                    editingController: emailController ,
                    prefxIcon: Icons.email
                ) ,
                SizedBox(height: 20.0,) ,
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock) ,
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder()
                  ),
                ) ,
                SizedBox(height: 20.0,) ,
                defaultButton(text: 'LOGIN', method: (){
                  print(emailController.text);
                  print(passwordController.text);
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have acount'
                    ) ,
                    TextButton(onPressed: (){},
                        child: Text(
                          'signup'
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void fun ()
{
  print('notify');
}
/*AppBar(
leading: Icon(Icons.menu),

title: Text(
'first app ' ,
style: TextStyle(
fontSize: 20.0 ,
),
),
actions: [
IconButton(onPressed: fun,
icon: Icon(Icons.notification_important)),
IconButton(icon: Icon(Icons.search) ,
onPressed: fun,
),
],
)*/
/*Column(
        mainAxisSize: MainAxisSize.min,


        children: [
          Expanded(
            child: Container(
              color:  Colors.green,

              child: Text(
                'First' ,
                style: TextStyle(
                  fontSize: 30.0 ,

                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
                'Second' ,
              style: TextStyle(
                backgroundColor: Colors.yellowAccent  ,
                fontSize: 30.0 ,

              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue ,
              child: Text(
                  'Third' ,
                style: TextStyle(

                  fontSize: 30.0 ,

                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
                'Fourth' ,
              style: TextStyle(
                backgroundColor: Colors.red  ,
                fontSize: 30.0 ,

              ),
            ),
          ),
        ],
      ),*/
