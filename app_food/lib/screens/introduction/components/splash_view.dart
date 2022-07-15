import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _introductionanimation,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/introduction_animation/introduction_image.png'),
                      fit: BoxFit.cover)),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    bottom: 30,
                    height: 58,
                    child: InkWell(
                      onTap: () {
                        widget.animationController.animateTo(0.2);
                      },
                      child: Container(
                        height: 58,
                        padding: EdgeInsets.only(
                          left: 56.0,
                          right: 56.0,
                          top: 16,
                          bottom: 16,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ])),
                        child: Text(
                          "开始",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height,
            //   child: Image.asset(
            //     'assets/introduction_animation/introduction_image.png',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // Positioned(
            //   left: 30,
            //   width: 80,
            //   height: 200,
            //   child: InkWell(
            //     onTap: () {
            //       widget.animationController.animateTo(0.2);
            //     },
            //     child: Container(
            //       height: 58,
            //       padding: EdgeInsets.only(
            //         left: 56.0,
            //         right: 56.0,
            //         top: 16,
            //         bottom: 16,
            //       ),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30),
            //           gradient: LinearGradient(colors: [
            //             Color.fromRGBO(143, 148, 251, 1),
            //             Color.fromRGBO(143, 148, 251, .6),
            //           ])),
            //       child: Text(
            //         "开始",
            //         style: TextStyle(
            //           fontSize: 18,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            //   child: Text(
            //     "Clearhead",
            //     style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 64, right: 64),
            //   child: Text(
            //     "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore",
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            // SizedBox(
            //   height: 48,
            // ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       bottom: MediaQuery.of(context).padding.bottom + 16),
            //   child: InkWell(
            //     onTap: () {
            //       widget.animationController.animateTo(0.2);
            //     },
            //     child: Container(
            //       height: 58,
            //       padding: EdgeInsets.only(
            //         left: 56.0,
            //         right: 56.0,
            //         top: 16,
            //         bottom: 16,
            //       ),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30),
            //           gradient: LinearGradient(colors: [
            //             Color.fromRGBO(143, 148, 251, 1),
            //             Color.fromRGBO(143, 148, 251, .6),
            //           ])),
            //       child: Text(
            //         "开始",
            //         style: TextStyle(
            //           fontSize: 18,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
