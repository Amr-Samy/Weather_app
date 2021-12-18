// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:math' as math;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/shared/components/components.dart';

import 'home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {




    //todo in home screen
    Timer(Duration(seconds: 4), () {

    });


    return Scaffold(
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child:
        Stack(
          fit: StackFit.expand,
          children: <Widget>[
            generateBluredImage(),

            Card1(),

            // MovingCloud(image: 'assets/images/nightcloud/ncloud1.png', reverse: false, autoPlay_duration: 4000,animation_duration: 4000),
            // MovingCloud(image: 'assets/images/nightcloud/ncloud2.png', reverse: false, autoPlay_duration: 3000,animation_duration: 3000),
            // MovingCloud(image: 'assets/images/nightcloud/ncloud3.png', reverse: false, autoPlay_duration: 2000,animation_duration: 2000),
            // MovingCloud(image: 'assets/images/nightcloud/ncloud4.png', reverse: true, autoPlay_duration: 2000,animation_duration: 2000),
            // MovingCloud(image: 'assets/images/nightcloud/ncloud2.png', reverse: true, autoPlay_duration: 2000,animation_duration: 2000),
            // MovingCloud(image: 'assets/images/nightcloud/ncloud1.png', reverse: true, autoPlay_duration: 3000,animation_duration: 3000),

            // CarouselSlider(
            //     items:[
            //       Image(
            //         image: AssetImage('assets/images/nightcloud/ncloud1.png',
            //         ),
            //         height: 150,
            //         width: 150,
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //     ],
            //
            //     options: CarouselOptions(
            //       height: 150,
            //       pauseAutoPlayOnManualNavigate: true,
            //       //pageSnapping: true,
            //       pauseAutoPlayOnTouch: true,
            //       pauseAutoPlayInFiniteScroll: true,
            //       // enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: true,
            //       // enlargeCenterPage: true,
            //       autoPlayInterval: Duration(milliseconds: 3000),
            //       autoPlayAnimationDuration: Duration(milliseconds: 3000),
            //       autoPlayCurve: Curves.linear,
            //       scrollDirection: Axis.horizontal,
            //       //viewportFraction: 1.0
            //     )
            // ),
            //
            // CarouselSlider(
            //     items:[
            //       Image(
            //         image: AssetImage('assets/images/nightcloud/ncloud4.png',
            //         ),
            //         height: 150,
            //         width: 150,
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //     ],
            //
            //
            //     options: CarouselOptions(
            //       height: 150,
            //       pauseAutoPlayOnManualNavigate: true,
            //       //pageSnapping: true,
            //       pauseAutoPlayOnTouch: true,
            //       pauseAutoPlayInFiniteScroll: true,
            //
            //       // enableInfiniteScroll: true,
            //       reverse: true,
            //       autoPlay: true,
            //       // enlargeCenterPage: true,
            //       autoPlayInterval: Duration(milliseconds: 3000),
            //       autoPlayAnimationDuration: Duration(milliseconds: 3000),
            //       autoPlayCurve: Curves.linear,
            //       scrollDirection: Axis.horizontal,
            //
            //       //viewportFraction: 1.0
            //     )
            // ),
            //
            // CarouselSlider(
            //     items:[
            //       Image(
            //         image: AssetImage('assets/images/nightcloud/ncloud3.png',
            //         ),
            //         height: 150,
            //         width: 150,
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //     ],
            //
            //
            //     options: CarouselOptions(
            //       height: 150,
            //       pauseAutoPlayOnManualNavigate: true,
            //       //pageSnapping: true,
            //       pauseAutoPlayOnTouch: true,
            //       pauseAutoPlayInFiniteScroll: true,
            //
            //       // enableInfiniteScroll: true,
            //       reverse: true,
            //       autoPlay: true,
            //       // enlargeCenterPage: true,
            //       autoPlayInterval: Duration(milliseconds: 2000),
            //       autoPlayAnimationDuration: Duration(milliseconds: 2000),
            //       autoPlayCurve: Curves.linear,
            //       scrollDirection: Axis.horizontal,
            //
            //       //viewportFraction: 1.0
            //     )
            // ),
            //
            // CarouselSlider(
            //     items:[
            //       Image(
            //         image: AssetImage('assets/images/nightcloud/ncloud2.png',
            //         ),
            //         height: 150,
            //         width: 150,
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //     ],
            //
            //
            //     options: CarouselOptions(
            //       height: 150,
            //       pauseAutoPlayOnManualNavigate: true,
            //       //pageSnapping: true,
            //       pauseAutoPlayOnTouch: true,
            //       pauseAutoPlayInFiniteScroll: true,
            //
            //       // enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: true,
            //       // enlargeCenterPage: true,
            //       autoPlayInterval: Duration(milliseconds: 2000),
            //       autoPlayAnimationDuration: Duration(milliseconds: 2000),
            //       autoPlayCurve: Curves.linear,
            //       scrollDirection: Axis.horizontal,
            //
            //       //viewportFraction: 1.0
            //     )
            // ),
            //
            // CarouselSlider(
            //     items:[
            //       Image(
            //         image: AssetImage('assets/images/nightcloud/ncloud1.png',
            //         ),
            //         height: 150,
            //         width: 150,
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //     ],
            //
            //
            //     options: CarouselOptions(
            //       height: 150,
            //       pauseAutoPlayOnManualNavigate: true,
            //       //pageSnapping: true,
            //       pauseAutoPlayOnTouch: true,
            //       pauseAutoPlayInFiniteScroll: true,
            //
            //       // enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: true,
            //       // enlargeCenterPage: true,
            //       autoPlayInterval: Duration(milliseconds: 3000),
            //       autoPlayAnimationDuration: Duration(milliseconds: 3000),
            //       autoPlayCurve: Curves.linear,
            //       scrollDirection: Axis.horizontal,
            //
            //       //viewportFraction: 1.0
            //     )
            // ),

            // Positioned(
            //     bottom: 0,
            //     child: buildSheet(context)),
          ],
        ),
      ),
    );
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),

                ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToCollapse: true,
                  ),
                  header: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "ExpandablePanel",
                        // style: Theme.of(context).textTheme.body2,
                      )),
                  collapsed: Text(
                    loremIpsum,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (var _ in Iterable.generate(2))
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              loremIpsum,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                    ],
                  ),


                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),

              ],
            ),
          ),
        ));
  }
}