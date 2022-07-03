import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.face),
                title: Text('Title-1'),
                subtitle: Text('Subtitle-1'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: const [
                    Text("这里是缅甸北部这里是缅甸北部这里是缅甸北部这里是缅甸北部fasfasfasfasfasfad"),
                  ],
                ),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    child: const Text(
                      '复制',
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text(
                      '刷新',
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.face_outlined),
                title: Text('Title-2'),
                subtitle: Text('Subtitle-2'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: const [
                    Text("这里是缅甸北部这里是缅甸北部这里是缅甸北部这里是缅甸北部fasfasfasfasfasfad"),
                  ],
                ),
              ),
              ButtonBar(
                children: [
                  TextButton(
                    child: const Text(
                      '复制',
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text(
                      '刷新',
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('Title-3'),
                subtitle: Text('Subtitle-3'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: const [
                    Text("这里是缅甸北部这里是缅甸北部这里是缅甸北部这里是缅甸北部fasfasfasfasfasfad"),
                  ],
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: const Text('复制'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text('刷新'),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
