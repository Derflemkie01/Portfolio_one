import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bootstrap_grid/bootstrap_grid.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/service.dart';
import 'package:portfolio/widget/textwidget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<Widget> pages = [const AboutPage(), const ServicePage()];
  int SelectedIndex = 0;

  void onMenuSelected(int index) {
    setState(() {
      SelectedIndex = index;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => pages[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(179, 130, 127, 127),
        leading: TextButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashBoardPage()));
            },
            child: const Text('MELFRED')),
        leadingWidth: 100,
        actions: [
          PopupMenuButton<int>(
              onSelected: onMenuSelected,
              itemBuilder: (context) => [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text('About'),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text('Services'),
                    ),
                  ],
              icon: const Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.blueAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
          child: BootstrapRow(children: [
            BootstrapCol(
                md: 6,
                child: Container(
                  padding: const EdgeInsets.only(left: 50),
                  child: BootstrapRow(children: [
                    BootstrapCol(
                        child: Container(
                            child: Padding(
                      padding: const EdgeInsets.only(top: 280),
                      child:
                          textWidget('Im A Programmer', size: 30, weight: bold),
                    ))),
                    BootstrapCol(
                        child: Container(
                            child: textWidget('Im Melfred C. Balanag',
                                weight: bold, size: 60))),
                    BootstrapCol(
                        child: BootstrapRow(children: [
                      BootstrapCol(
                        xs: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                              onPressed: () {}, child: textWidget('More About Me',
                                    alignment: TextAlign.center)),
                        ),
                      ),
                      BootstrapCol(
                        xs: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SizedBox(
                            width: 30,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: textWidget('Hire Me',
                                    alignment: TextAlign.center)),
                          ),
                        ),
                      ),
                    ])),
                  ]),
                )),
            BootstrapCol(
                md: 6,
                child: Container(
                  height: MediaQuery.of(context).size.height - 75,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('asset/pic.png'))),
                )),
            const BootstrapCol(
                md: 12,
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                        'Copyright ©2024 All rights reserve This template is made with  by VSCODE'),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
