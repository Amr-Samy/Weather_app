// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/modules/home/cubit/states.dart';
import 'cubit/cubit.dart';

Widget buildForecastSheet(BuildContext context,HomeCubit cubit) {
  double width = MediaQuery.of(context).size.width;
  return BlocConsumer<HomeCubit,HomeStates>(
    listener: (context,state){},
    builder: (context,state){
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
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text("Forecast",style: TextStyle(color: Colors.white,fontSize: 18),),

                Text("Hourly",style: TextStyle(color: Colors.white,fontSize: 18),),

                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: cubit.myListForecast.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return cubit.myListForecast.length >1 ? Column(
                        children: [
                          Image.asset("assets/images/rain2.png",height: 55,width: 50,),
                          Text(cubit.myListForecast[index].dt.toString(),style: TextStyle(color: Colors.white,fontSize: 18),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/meater.png",height: 30,),
                              Text("${cubit.myListForecast[index].main!.temp.toString()}°ᶜ",style: TextStyle(color: Colors.white,fontSize: 18),),
                            ],
                          ),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Image.asset("assets/icons/raindrop.png",height: 15,),
                          //     Text(" 55%",style: TextStyle(color: Colors.white,fontSize: 18),),
                          //   ],
                          // ),

                        ],
                      ) : Center(child: CircularProgressIndicator(),);
                    },
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
    },
  );

}