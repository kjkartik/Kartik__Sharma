// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:naturalwallpaper/first_page.dart';
// import 'package:naturalwallpaper/repositery.dart';
// import 'model_class.dart';
//
// class LongShari extends StatefulWidget {
//   const LongShari({Key? key}) : super(key: key);
//
//   _LongShariState createState() => _LongShariState();
// }
//
// class _LongShariState extends State<LongShari>{
//
//
// var id;
//   @override
//   late List<ModelClassShari>modelClassShari;
//   var repositery =ShariRepositery();
//   void initState1(){
//     super.initState();
//     _loadData();
//   }
//    _loadData()async{
//     var list =await repositery.getLongShari();
//     setState(() {
//       modelClassShari =list;
//     });
//
//    }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(130.0),
//         child: AppBar(
//           title: Center(
//             child: Text(
//               'LONG SHARI',
//             ),
//           ),
//           flexibleSpace: Image(
//             image: AssetImage('image/1.jpg'),
//             fit: BoxFit.fitWidth,
//           ),
//         ),
//       ),
// var id
//       body: Container(
//         decoration: BoxDecoration(image: DecorationImage
//         (image:AssetImage('image/14.jpg'),fit: BoxFit.fill )),
//         child: ListView.builder
//         (itemCount: null == modelClassShari ? 0 : modelClassShari.length,
//         itemBuilder: (BuildContext context, int index) {
//           ModelClassShari modelclass = modelClassShari[index];
//           return Card(
//                 color: Colors.transparent,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//             // (image:AssetImage('image/18.jpg'),fit: BoxFit.fill)
//                 modelclass.shortShari,
//                 style: TextStyle(fontSize: 17, color: Colors.white),
//                 // maxLines: 6,
//
// //
//             ),
//           );
//         },
//         ),
//       ),
//     );
//   }
//   }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:naturalwallpaper/repositery.dart';
import 'model_class.dart';

class LongShari extends StatefulWidget {
  const LongShari({Key? key}) : super(key: key);

  @override
  _LongShariState createState() => _LongShariState();
}

class _LongShariState extends State<LongShari> {
  @override
  late List<ModelClassShari> modelClassShari;
  var repositery = ShariRepositery();

  void initState() {
    super.initState();
    _longShari();
  }

  _longShari() async {
    var shari = await repositery.getLongShari();
    setState(() {
      modelClassShari = shari;
    });
  }

  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
        key: key,
    appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: AppBar(
          title: Center(
            child: Text(
              'LONG SHARI',
            ),
          ),
          flexibleSpace: Image(
            image: AssetImage('image/1.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage
          (image:AssetImage('image/water.jpg'),fit: BoxFit.fill )),
        child: ListView.builder
          (itemCount: null == modelClassShari ? 0 : modelClassShari.length,
          itemBuilder: (BuildContext context, int index) {
            ModelClassShari modelclass = modelClassShari[index];
            return Card(
                color: Colors.transparent,
                child: Padding(
                padding: const EdgeInsets.all(8.0),
            child: Text(
            // (image:AssetImage('image/18.jpg'),fit: BoxFit.fill)
            modelclass.shortShari,
            style: TextStyle(fontSize: 17, color: Colors.white),
            // maxLines: 6,

//
            ),
            ));
          },
        ),
      ),
        // body: Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage('image/10.jpg'), fit: BoxFit.fill)),
        //   child: ListView.builder(
        //     itemCount: null == _modelClassShari ? 0 : _modelClassShari.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       ModelClassShari shari = _modelClassShari[index];
        //       return Card(
        //
        //         // color: Colors.transparent,
        //         // elevation: 25.0,
        //         // child: Row(
        //         //   children: [
        //         //     Flexible(
        //         //       child: Padding(
        //         //         padding: const EdgeInsets.all(12.0),
        //         //         child: AnimatedTextKit(
        //         //           animatedTexts: [
        //         //             TyperAnimatedText(
        //         //                 shari.shortShari,textStyle: TextStyle(color: Colors.white)
        //         //             ),
        //         //           ],
        //         //           totalRepeatCount: 1,
        //         //           isRepeatingAnimation: true,
        //         //         ),
        //         //       ),
        //         //     ),
        //         //     TextButton(
        //         //       onPressed: () {},
        //         //       child: IconButton(
        //         //         onPressed: () {
        //         //           Clipboard.setData(
        //         //             new ClipboardData(
        //         //               text: shari.shortShari,
        //         //             ),
        //         //           );
        //         //           key.currentState!.showSnackBar(
        //         //             new SnackBar(
        //         //               content: new Text(
        //         //                 "copid",
        //         //               ),
        //         //             ),
        //         //           );
        //         //         },
        //         //         icon: Row(
        //         //           children: [
        //         //             Icon(Icons.copy),
        //         //           ],
        //         //         ),
        //         //       ), )
        //         //   ],
        //         // ),
        //       );
        //     },
        //   ),
        // )
    );
  }
}
