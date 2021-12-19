// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (context,state) {},
      builder: (context,states) {
        var cubit = HomeCubit.get(context);
        double width = MediaQuery.of(context).size.width;

        return Scaffold(

          body: cubit.weatherModel != null ? Container(
            // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg/night.png",),fit: BoxFit.cover,)),
            child: Stack(
              children: [

                Visibility(
                  visible: cubit.expanded,
                  child: Container(
                    decoration:  BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/images/bg/night.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child:  BackdropFilter(
                      filter:  ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child:  Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
                      ),
                    ),
                  ),
                ),

                Visibility(
                  visible: !cubit.expanded,
                  child: Container(
                    decoration:  BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/images/bg/night.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                //Moon Sun
                //Details
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset("assets/images/cloud_moon.png",width: 200,),

                        Text("Alexandria, Egypt",style: TextStyle(color: Colors.white,fontSize: 20),),

                        Text("Sat, 11 December 8:21 pm",style: TextStyle(color: Colors.white,fontSize: 20),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/cloud.png",height: 100,width: 50,),
                            Image.asset("assets/icons/meater.png",height: 100,),
                            Text(cubit.weatherModel!.main!.temp.toString(),style: TextStyle(color: Colors.white,fontSize: 40),),
                          ],
                        ),
                        // Text(cubit.weatherModel!.weather[0].main.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),

                      ],
                    ),
                  ),
                ),

                // Positioned(
                //   top: 120,
                //     child: Stack(
                //       children: [
                //         MovingCloud(image: 'assets/images/nightcloud/ncloud1.png', reverse: false, autoPlay_duration: 4000,animation_duration: 4000),
                //         // MovingCloud(image: 'assets/images/nightcloud/ncloud2.png', reverse: false, autoPlay_duration: 3000,animation_duration: 3000),
                //         // MovingCloud(image: 'assets/images/nightcloud/ncloud3.png', reverse: false, autoPlay_duration: 2000,animation_duration: 2000),
                //         MovingCloud(image: 'assets/images/nightcloud/ncloud4.png', reverse: true, autoPlay_duration: 2000,animation_duration: 2000),
                //         MovingCloud(image: 'assets/images/nightcloud/ncloud2.png', reverse: true, autoPlay_duration: 2000,animation_duration: 2000),
                //         MovingCloud(image: 'assets/images/nightcloud/ncloud1.png', reverse: true, autoPlay_duration: 3000,animation_duration: 3000),
                //       ],
                //     )
                // ),


                // settings
                Positioned(
                  left: 10,
                  top: 30,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(35),),
                  height: 50,
                  child: IconButton(icon: Icon(Icons.more_vert_outlined,color: Colors.white,),
                    onPressed: () {  },
                    splashRadius: 20,
                  ),
                  ),
                ),

                //bottom nav
                Visibility(
                  visible: !(cubit.expanded),
                  child: Positioned(
                    bottom: 0,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.9),
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                              gradient: LinearGradient(colors: [
                                Colors.white.withOpacity(.4),
                                Colors.grey.withOpacity(.11),
                                Colors.grey.withOpacity(.1),
                                Colors.grey.withOpacity(.11),
                                Colors.white.withOpacity(.4),
                              ],),
                            ),
                            height: 145,
                            width: width,
                            child: Column(
                              children: [
                                Hero(
                                  tag: 'sws',
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset("assets/icons/sunrise.png",height: 60,width: 50,),
                                        Image.asset("assets/icons/wind.png",height: 60,width: 50,),
                                        Image.asset("assets/icons/sunset.png",height: 60,width: 50,),
                                    ],
                                    ),
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("5:05 am",style: TextStyle(color: Colors.white,fontSize: 15),),
                                    Text("12 kph",style: TextStyle(color: Colors.white,fontSize: 15),),
                                    Text("5:35 pm",style: TextStyle(color: Colors.white,fontSize: 15),),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [

                                      Hero(
                                        tag: 't_button',
                                        child: DefaultButton(
                                            function: (){},
                                            text: "Tomorrow's Forecast",
                                          // width: 200,
                                          // bgColor: 0xFF324B4F,
                                        ),
                                      ),

                                      SizedBox(width: 10,),

                                      Hero(
                                        tag: 'd_button',
                                        child: DefaultButton(
                                          function: (){},
                                          text: "7 Days Forecast",
                                          width: 200,
                                          // bgColor: 0xFF324B4F,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            top: -20,
                            left: width / 2 - 20,
                            child: Container(
                              width: 40,
                              child: FittedBox(
                                child: FloatingActionButton(
                                  child:
                                  Icon(Icons.keyboard_arrow_up , size: 40,),
                                  onPressed: () {
                                    // cubit.controller = BottomSheet.createAnimationController();
                                    // cubit.controller!.duration = Duration(seconds: 3);
                                    showModalBottomSheet(context: context,
                                      builder: (context) => buildSheet(context,cubit),
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
                                      // transitionAnimationController: cubit.controller,
                                      // barrierColor: Colors.black.withAlpha(1),
                                      // backgroundColor: Colors.blueGrey.withAlpha(245),
                                      backgroundColor: Colors.blueGrey.withOpacity(0.5),
                                      // isDismissible: false,
                                    ).whenComplete((){
                                      cubit.expand();
                                    })
                                        // .whenComplete(() => cubit.controller =BottomSheet.createAnimationController(TickerProviderStateMixin.) )
                                    ;
                                    cubit.expand();
                                  },
                                  backgroundColor: Colors.blueGrey,
                                  mini: true,
                                  heroTag: 'sheet_button',
                                ),
                              ),
                            ),
                          ),

                        ],
                      )
                  ),
                ),

              ],
            ),
          ) : Center(child: CircularProgressIndicator()),

        );
      },
    );
  }
}


Widget buildSheet(BuildContext context,HomeCubit cubit) {
  double width = MediaQuery.of(context).size.width;
  return Stack(
    clipBehavior: Clip.none,
    children: [


      Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        // decoration: BoxDecoration(
        //   color: Color(0xFF232323),
        //   borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        // ),
        ////////////////////////////////////////////
        decoration: BoxDecoration(
          // color: Colors.blueGrey.withOpacity(.9),
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(16)),
        //
        //   // gradient: LinearGradient(colors: [
        //   //   Colors.blueGrey.withOpacity(.9),
        //   //   Colors.blueGrey.withOpacity(.8),
        //   //   Colors.blueGrey.withOpacity(.6),
        //   //   Colors.blueGrey.withOpacity(.8),
        //   //   Colors.blueGrey.withOpacity(.9),
        //   // ],),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Currently",style: TextStyle(color: Colors.white,fontSize: 18),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/cloud.png",height: 100,width: 50,),
                Image.asset("assets/icons/meater.png",height: 100,),
                Text("24°ᶜ",style: TextStyle(color: Colors.white,fontSize: 40),),
              ],
            ),

            Text("Cloudy",style: TextStyle(color: Colors.white,fontSize: 18),),

            Text("High: 34°ᶜ Low: 23°ᶜ Precip: 90%",style: TextStyle(color: Colors.white,fontSize: 18),),

            Hero(
              tag: 'sws',
              child: Container(
                height: 80,
                width: width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/icons/sunrise.png",height: 60,width: 50,),
                        Image.asset("assets/icons/wind.png",height: 60,width: 50,),
                        Image.asset("assets/icons/sunset.png",height: 60,width: 50,),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("5:05 am",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("12 kph",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("5:35 pm",style: TextStyle(color: Colors.white,fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 120,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Details",style: TextStyle(color: Colors.white,fontSize: 18),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/humidity.png",height: 25,width: 50,color: Colors.white,),
                          Text("Humidity",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                      // Text(cubit.weatherModel!.main!.humidity.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/sun.png",height: 50,width: 50,),
                          Text("UV Index",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                      Text("Low",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ],
                  ),
                ],
              ),
            ),


            Text("Hourly",style: TextStyle(color: Colors.white,fontSize: 18),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/rain2.png",height: 55,width: 50,),
                    Text("2 am",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/meater.png",height: 30,),
                        Text(" 24°ᶜ",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/raindrop.png",height: 15,),
                        Text(" 55%",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/sun_cloud.png",height: 55,width: 50,),
                    Text("8 am",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/meater.png",height: 30,),
                        Text(" 27°ᶜ",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/raindrop.png",height: 15,),
                        Text(" 15%",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/storm.png",height: 55,width: 50,),
                    Text("2 pm",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/meater.png",height: 30,),
                        Text(" 26°ᶜ",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/raindrop.png",height: 15,),
                        Text(" 75%",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/moon_cloud.png",height: 55,width: 50,),
                    Text("8 pm",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/meater.png",height: 30,),
                        Text(" 25°ᶜ",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/raindrop.png",height: 15,),
                        Text(" 5%",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [

                  Hero(
                    tag: "t_button",
                    child: DefaultButton(
                      function: (){},
                      text: "Tomorrow's Forecast",
                      // width: 200,
                      // bgColor: 0xFF324B4F,
                    ),
                  ),

                  SizedBox(width: 10,),

                  Hero(
                    tag: 'd_button',
                    child: DefaultButton(
                      function: (){},
                      text: "7 Days Forecast",
                      width: 200,
                      // bgColor: 0xFF324B4F,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      //fab
      Positioned(
        top: -20,
        left: width / 2 - 20,
        child: Container(
          width: 40,
          child: FittedBox(
            child: FloatingActionButton(
              child:
              Icon(Icons.keyboard_arrow_down , size: 40,),
              onPressed: () {
                HomeCubit.get(context).expand();
                Navigator.pop(context);
              },
              backgroundColor: Colors.blueGrey,
              mini: true,
              heroTag: 'sheet_button',
            ),
          ),
        ),
      ),
    ],
  );
}