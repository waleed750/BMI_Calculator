import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends  StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPassword = true;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:Center(
        child:SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
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
                      validate: (value){
                          if(value!.length < 1 ){
                            return "you must type an email address";
                          }
                          return null ;
                      },
                      editingController: emailController ,
                      prefxIcon: Icons.email
                  ) ,
                  SizedBox(height: 20.0,) ,
                  defaultTextFormFeild(type: TextInputType.visiblePassword,
                      editingController: passwordController ,
                    label: 'password',
                    prefxIcon: Icons.lock ,
                    password: isPassword ,
                    validate: (value){
                        if(value == "" || value == " " || value!.isEmpty)
                          {
                            return "you must enter password ";
                          }
                        return null ;
                    },
                    suffxIcon: isPassword ? Icons.visibility : Icons.visibility_off,
                    suffxFunc: (){
                       isPassword = !isPassword;
                       setState(() {

                       });
                    },
                  ),
                  SizedBox(height: 20.0,) ,
                  defaultButton(text: 'LOGIN', method: (){
                    if(formKey.currentState!.validate())
                      {
                        print(formKey.currentState!.validate());
                        print(emailController.text);
                        print(passwordController.text);
                      }
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
