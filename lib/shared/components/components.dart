// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget DefaultButton({
  required VoidCallback function,
  required String text,
  double width = double.infinity,
  double radius = 15,
  int bgColor = 0xFF6F35A5,
  int textColor = 0xFFFFFFFF,
  bool isUpper = true,
}) =>

    Container(
      // width: width,
      child: MaterialButton(
        color: Color(0xFF53696D),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 35,
        onPressed: function,
              child: Text(
                  isUpper ? text.toUpperCase() : text,
                style: TextStyle(
                  color: Color(textColor),
                  // fontSize: 16.sp,
                ),
              ),
      ),

      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(radius),
      //   color: Color(bgColor),
      // ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  // required String label,
  required String hint,
  required IconData prefix,
  IconData suffix = Icons.remove_red_eye,
  required TextInputType inputType,
  final FormFieldValidator<String>? onSubmit,
  final FormFieldValidator<String>? onChange,
  final FormFieldValidator<String>? validate,
  VoidCallback? suffixTap,
  bool isPassword = false,
  bool showSuffix = false,

}) => TextFormField(
  controller: controller,
  keyboardType: inputType,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  validator: validate,
  obscureText: isPassword,
  decoration: InputDecoration(
    prefixIcon: Icon(prefix,color: Color(0xFF6F35A5),),
    suffixIcon: Visibility(
      visible: showSuffix,
      replacement: SizedBox.shrink(),
      child: GestureDetector(
          child: Icon(isPassword ? suffix :Icons.visibility_off,
            color: Color(0xFF6F35A5),),
          onTap: suffixTap,
      ),
    ),
    // labelText: label,
    fillColor: Color(0xFFF2E6FD),
    filled: true,
    hintStyle: TextStyle(color: Color(0xFF6F35A5),),
    hintText: hint,
    focusedBorder:  OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.transparent, width: 0.9, style: BorderStyle.none),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),

    enabledBorder:  OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.transparent, width: 0.9, style: BorderStyle.none),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),

    border: OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.transparent, width: 0.9, style: BorderStyle.none),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),

  ),
);

Widget SuffixFormField({
  required TextEditingController controller,
  required String hint,
  required TextInputType inputType,
  int maxLines  = 1 ,
  int maxLength = 30,
  IconData? suffix,
  bool isPassword = true,
  bool enabled = true,
  final FormFieldValidator<String>? onSubmit,
  final FormFieldValidator<String>? onChange,
  final FormFieldValidator<String>? validate,
  VoidCallback? suffixTap,

}) => TextFormField(
  controller: controller,
  validator: validate,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  keyboardType: inputType,
  obscureText: isPassword,
  enabled: enabled,
  maxLines: maxLines,
  maxLength: maxLength,

  decoration: InputDecoration(
    suffixIcon: Container(
        margin: EdgeInsets.only(right: 20,left: 20),
        child: GestureDetector(
            onTap: suffixTap,
            child: Icon(suffix,
              // color: Get.theme.hintColor,
            )
        )
    ),
    hintText: hint,
    hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
    counterText: "",

    focusedBorder:  UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey, width: 0.9, style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),

    enabledBorder:  UnderlineInputBorder(
      borderSide: BorderSide(
          color: Colors.grey, width: 0.9, style: BorderStyle.none),
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),

    border: UnderlineInputBorder(
        borderSide: BorderSide(
        color: Colors.grey, width: 0.9, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),

  ),

);



enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class QuarterCircle extends StatelessWidget {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCircle({
    this.color = Colors.grey,
    this.circleAlignment = CircleAlignment.topLeft,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ClipRect(
        child: CustomPaint(
          painter: QuarterCirclePainter(
            circleAlignment: circleAlignment,
            color: color,
          ),
        ),
      ),
    );
  }
}

class QuarterCirclePainter extends CustomPainter {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCirclePainter({required this.circleAlignment, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = math.min(size.height, size.width);
    final offset = circleAlignment == CircleAlignment.topLeft
        ? Offset(.0, .0)
        : circleAlignment == CircleAlignment.topRight
        ? Offset(size.width, .0)
        : circleAlignment == CircleAlignment.bottomLeft
        ? Offset(.0, size.height)
        : Offset(size.width, size.height);
    canvas.drawCircle(offset, radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(QuarterCirclePainter oldDelegate) {
    return color == oldDelegate.color &&
        circleAlignment == oldDelegate.circleAlignment;
  }
}


//////////////Functions////////////////

void navigateTo(context,Widget widget)
{
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => widget
      )
  );
}


Widget generateBluredImage() {
  return new Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage("assets/images/bg/night.png"),
        fit: BoxFit.cover,
      ),
    ),
    //I blured the parent container to blur background image, you can get rid of this part
    child: new BackdropFilter(
      filter: new ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
      child: new Container(
        decoration: new BoxDecoration(color: Colors.black.withOpacity(0.2)),
      ),
    ),
  );
}

Widget rectShapeContainer() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
    padding: const EdgeInsets.all(15.0),
    decoration: new BoxDecoration(
      borderRadius: new BorderRadius.circular(10.0),
      shape: BoxShape.rectangle,
      color: Colors.black.withOpacity(0.5),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black26,
          blurRadius: 5.0,
          offset: new Offset(5.0, 5.0),
        ),
      ],
    ),
    child: new Column(
      children: <Widget>[
        new Text(
          'There\'s only one corner of the universe you can be certain of improving and that\'s your own self.',
          style: new TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    ),
  );
}

Widget MovingCloud({
  required String image,
  double width = 150,
  required bool reverse ,
  bool visible = true ,
  required int autoPlay_duration ,
  required int animation_duration ,
}) =>
    Visibility(
      visible: visible,
      child: CarouselSlider(
          items:[
            Image(
              image: AssetImage(image,
              ),
              height: width,
              width: width,
            ),
            SizedBox(
              width: 30,
            ),
          ],

          options: CarouselOptions(
            height: 150,
            // pauseAutoPlayOnManualNavigate: true,
            //pageSnapping: true,
            // pauseAutoPlayOnTouch: true,
            // pauseAutoPlayInFiniteScroll: true,
            // enableInfiniteScroll: true,
            reverse: reverse,
            autoPlay: true,
            // enlargeCenterPage: true,
            autoPlayInterval: Duration(milliseconds: autoPlay_duration),
            autoPlayAnimationDuration: Duration(milliseconds: animation_duration),
            autoPlayCurve: Curves.linear,
            scrollDirection: Axis.horizontal,
            // viewportFraction: 1.0
          )
      ),
    );