

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modules/signup_page.dart';
import 'modules/QuizPage.dart';




void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lets Call',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       
       home: VoiceCallPage(),
      
    );
  }
}


class VoiceCallPage extends StatefulWidget {



  @override
  _VoiceCallPageState createState() => _VoiceCallPageState();
}

class _VoiceCallPageState extends State<VoiceCallPage> {
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('PadhaEEE' , style: TextStyle(fontWeight: FontWeight.w700),),
        ),
        body: Center(
          child: Container(

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,

            decoration: BoxDecoration(
              color: Colors.white,
            ),

            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0,),

                Text('Your Study Room on the Go ! !',
                  style: TextStyle(
                  color: Colors.lightBlueAccent, fontWeight: FontWeight.w300,
                  fontSize: 15
                ),
                ),

                SizedBox(height: 20.00,),
                Text('AMRIT SAHANI',
                  style: TextStyle(
                      color: Colors.lightBlueAccent, fontWeight: FontWeight.w900,
                      fontSize: 20
                  ),
                ),

                SizedBox(height: 20.00,),
                Text(
                  '0.00',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),


                SizedBox(
                  height: 20.00,),

                ClipRRect(
                  borderRadius: BorderRadius.circular(200.00),
                  child: Image.network('https://media-exp1.licdn.com/dms/image/C5103AQGD_U01JGYnIg/profile-displayphoto-shrink_200_200/0?e=1597276800&v=beta&t=YNJY81wop4yQES_oglr1UWAUPVgYYiGkaPOlrl-9jpk',
                  height: 250.00,
                  width: 250.00,
                  ),

                ),


                SizedBox(height: 20.0,),

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    FunctionalButton(title: 'Speaker', icon: Icons.phone_in_talk, onPressed: (){},),
                    FunctionalButton(title: 'Video Call', icon: Icons.videocam, onPressed: (){},),
                    FunctionalButton(title: 'Mute', icon: Icons.mic_off, onPressed: (){},),



                  ],
                ),

                SizedBox(
                  height: 40.00,
                ),

                FloatingActionButton(
                  onPressed: () {},
                  elevation: 20.00,
                  shape: CircleBorder(side : BorderSide(color: Colors.redAccent)),
                  mini: false,
                  child: Icon(Icons.call_end , color: Colors.red,),
                  backgroundColor: Colors.redAccent[100],
                ),

                SizedBox(
                  height: 20.00,
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("I'm a new user.",style: TextStyle(fontWeight: FontWeight.bold),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SignupPage();
                          }));
                        },
                        child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      )
                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("QUESTIONS.",style: TextStyle(fontWeight: FontWeight.bold),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return QuizPage();
                          }));
                        },
                        child: Text("PLEASE PROCEED HERE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      )
                    ],
                  ),
                ),





              ],
            ),

          ),
        ),
      ),
    );
  }
}



class FunctionalButton extends StatefulWidget {

  final title;
  final icon;
  final Function() onPressed;

  const FunctionalButton({Key key, this.title , this.icon , this.onPressed}) : super(key : key);

  @override
  _FunctionalButtonState createState() => _FunctionalButtonState();
}

class _FunctionalButtonState extends State<FunctionalButton> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.deepOrangeAccent,
          fillColor: Colors.white,
          elevation: 20.00,
          shape: CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              widget.icon, size: 30.00, color: Colors.deepOrangeAccent,),
          ),
        ),

        Container(

          margin: EdgeInsets.symmetric(vertical: 10.00,horizontal: 2.00),
          child: Text(widget.title, style: TextStyle(fontSize: 15.00, color: Colors.deepOrangeAccent),),
        ),





      ],
    );
  }
}


