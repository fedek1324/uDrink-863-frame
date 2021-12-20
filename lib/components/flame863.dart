import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frame863/constants.dart';
import 'package:word_break_text/word_break_text.dart';

class Frame863 extends StatelessWidget {
  const Frame863({Key? key}) : super(key: key);

  // Todo: fix image, fix text wrap, check constants
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(),
        //total figma height 1193 px
        //total figma width 414 px
        body: Column(children: [
          PictureHeader(size: size),
          Container( // Container to make row elem expanded
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: kDefaultPadding, right: 10),
                  child: Image.asset(
                    "assets/images/maiTai.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Container( // Container to make col elem expanded
                    height: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "Май тай" + "   ",
                                  style: TextStyle(
                                    fontFamily: 'Mont',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                text: "20%" + "\n",
                                style: TextStyle(
                                  fontFamily: 'Mont',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Темный ром, светлый ром, гренадин, ликер Cointreau, ананасовый сок",
                            style: TextStyle(
                              fontFamily: 'Mont',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: kTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text('Бар'),
    );
  }
}

class PictureHeader extends StatelessWidget {
  const PictureHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: size.height * 0.24, // 290 / 1193
        width: size.width,
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/coctail.jpg"),
            fit: BoxFit.cover,
          ),
          // gradient doesnt work there
        ),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          height: size.height * 0.12,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black.withAlpha(0),
                Colors.black38,
                Colors.black
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(
          left: kDefaultPadding,
          bottom: size.height * 0.02,
        ),
        height: size.height * 0.245, // 0.005 removes white spripe
        alignment: Alignment.bottomLeft,
        width: 180,
        child: const Text('Подборка от приложения',
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontFamily: 'Mont', fontSize: 24, fontWeight: FontWeight.bold)),
      ),
    ]);
  }
}
