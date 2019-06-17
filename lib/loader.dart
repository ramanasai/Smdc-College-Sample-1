import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';
//import 'package:flutter/semantics.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

class loader extends StatefulWidget {
  @override
  _loaderState createState() => _loaderState();
}

class _loaderState extends State<loader> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation <double> Animation_Rotation;
  Animation <double> Animation_Radius_In;
  Animation <double> Animation_Radius_Out;

  @override
  void initState() { 
    super.initState();
    controller = AnimationController(vsync: this,duration: Duration(seconds: 10));

    Animation_Rotation= Tween<double>
    (
      begin: 0.0,
      end: 100.0,
    ).animate(CurvedAnimation
    (parent: controller,curve: Interval(0.0,1.0,curve: Curves.linear)));

    Animation_Radius_In = Tween<double>
    (
      begin: 100.0,
      end: 0.0,
    ).animate(CurvedAnimation
    (parent: controller,
     curve: Interval(0.75,1.0,curve:Curves.elasticIn)));

     Animation_Radius_Out = Tween<double>
    (
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation
    (parent: controller,
     curve: Interval(0.0,0.25,curve:Curves.elasticOut)));

     controller.addListener(()
     {
        setState(() {
         if(controller.value>=0.75 && controller.value<=1.0){
          radius=Animation_Radius_In.value*initialradius;
          //color:Colors.accents;
        }
        else if(controller.value>=0.0 && controller.value<=0.25)
        {
          radius=Animation_Radius_Out.value*initialradius;
        } 
        });
     }
     );
     controller.repeat();
  }

   final double initialradius=25;
   double radius=0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Center(
        child: RotationTransition(
          turns: Animation_Rotation,
        child: Stack(
          children: <Widget>[
            Dot(
              radius: 0.0,
              color: Colors.lightBlue,
              
            ),
              Transform.translate(offset: Offset(radius*cos(pi/4),radius*sin(pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.redAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(pi/4),radius*sin(pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.redAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(2*pi/4),radius*sin(2*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.redAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(3+pi/4),radius*sin(3+pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.black,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(4*pi/4),radius*sin(4*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.red,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(5*pi/4),radius*sin(5*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.greenAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(6*pi/4),radius*sin(6*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.grey,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(7*pi/4),radius*sin(7*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.yellow,
              ),
              ),

              Transform.translate(offset: Offset(radius*cos(8*pi/4),radius*sin(8*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.lightBlueAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(9*pi/4),radius*sin(9*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.lightBlue,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(10*pi/4),radius*sin(10*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.blue,
              ),
              ),

              Transform.translate(offset: Offset(radius*cos(11+pi/4),radius*sin(11+pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.black,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(12*pi/4),radius*sin(12*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.red,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(13*pi/4),radius*sin(13*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.greenAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(14*pi/4),radius*sin(14*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.redAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(15*pi/4),radius*sin(15*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.black,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(16*pi/4),radius*sin(16*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.red,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(17*pi/4),radius*sin(17*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.greenAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(19*pi/4),radius*sin(19*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.grey,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(18*pi/4),radius*sin(18*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.yellow,
              ),
              ),

              Transform.translate(offset: Offset(radius*cos(25*pi/4),radius*sin(25*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.lightBlueAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(25*pi/4),radius*sin(25*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.lightBlue,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(20*pi/4),radius*sin(20*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.blue,
              ),
              ),

              Transform.translate(offset: Offset(radius*cos(21+pi/4),radius*sin(21+pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.black,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(22*pi/4),radius*sin(22*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.red,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(23*pi/4),radius*sin(23*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.greenAccent,
              ),
              ),


              Transform.translate(offset: Offset(radius*cos(24*pi/4),radius*sin(24*pi/4)),
              child:Dot
              (
                radius: 5.0,
                color: Colors.limeAccent,
              ),
              )
          ]
        )
        )
    ),
    );
  }
}

class Dot extends StatelessWidget{

  final double radius;
  final color;

  Dot({this.radius,this.color});

  @override
  Widget build(BuildContext context)
  {
    return Center(
    child: Container(
      width: this.radius,
      height: this.radius,
      decoration: BoxDecoration(
      color: this.color,
      shape: BoxShape.circle),
    ), 
    );
  }
}