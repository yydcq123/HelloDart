import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> changeLanguage() async {
      int? i = await showDialog<int>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('请选择语言'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    // 返回1
                    Navigator.pop(context, 1);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('中文简体'),
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    // 返回2
                    Navigator.pop(context, 2);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('美国英语'),
                  ),
                ),
              ],
            );
          });

      if (i != null) {
        print("选择了：${i == 1 ? "中文简体" : "美国英语"}");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Container(color: Colors.red, child: _Drag())),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
class _Drag extends StatefulWidget {
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<_Drag> with SingleTickerProviderStateMixin {
  double _top = 0.0; //距顶部的偏移
  double _left = 0.0;//距左边的偏移

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(child: Text("A")),
            //手指按下时会触发此回调
            onPanDown: (DragDownDetails e) {
              //打印手指按下的位置(相对于屏幕)
              print("用户手指按下：${e.globalPosition}");
            },
            //手指滑动时会触发此回调
            onPanUpdate: (DragUpdateDetails e) {
              //用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e){
              //打印滑动结束时在x、y轴上的速度
              print(e.velocity);
            },
          ),
        )
      ],
    );
  }
}