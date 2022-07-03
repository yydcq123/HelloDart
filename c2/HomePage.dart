import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color _Green = Color(0xff2ba667);
  static const Color _Yellow = Color(0xfff8bb01);
  static const Color _Red = Color(0xffe53b00);
  final List _colorList = [_Green, _Yellow, _Red];
  final List _textList = ['正常', '注意', '含水警报'];
  final List _iconList = [
    Icons.done_all_outlined,
    Icons.error_outline,
    Icons.close
  ];
  final List _descriptionList = ['当前含水量低于5%', '当前含水量高于5%', '当前含水量高于10%'];
  int condition = 0;
  int tapCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _colorList[condition],
      child: Center(
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  onDoubleTap: () {
                    if (tapCount != 2) {
                      tapCount++;
                      return;
                    }
                    tapCount = 0;
                    setState(() {
                      condition = (condition + 1) % 3;
                    });
                  },
                  child: Icon(_iconList[condition],
                      size: 100, color: _colorList[condition]),
                ),
                Text(_textList[condition],
                    style:
                        TextStyle(fontSize: 30, color: _colorList[condition])),
                const SizedBox(height: 20),
                Text(_descriptionList[condition]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
