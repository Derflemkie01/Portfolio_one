import 'package:bootstrap_grid/bootstrap_grid.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/dashboard.dart';
import 'package:portfolio/screens/service.dart';
import 'package:portfolio/widget/textwidget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          child: SizedBox(
            child: BootstrapRow(children: [
              BootstrapCol(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: textWidget('ABOUT US', weight: bold, size: 35),
                  ),
                ),
              ),
              BootstrapCol(
                  child: BootstrapRow(children: [
                BootstrapCol(
                    sm: 3,
                    child: BootstrapRow(
                      children: [
                        BootstrapCol(
                            child: Container(
                          height: 150,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                                child:
                                    Center(child: textWidget('Container 1'))),
                          ),
                        )),
                        BootstrapCol(
                            child: Container(
                          height: 150,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                                child:
                                    Center(child: textWidget('Container 2'))),
                          ),
                        )),
                      ],
                    )),
                BootstrapCol(
                    sm: 3,
                    child: BootstrapRow(
                      children: [
                        BootstrapCol(
                            child: Container(
                          height: 150,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                                child:
                                    Center(child: textWidget('Container 3'))),
                          ),
                        )),
                        BootstrapCol(
                            child: Container(
                          height: 150,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                                child:
                                    Center(child: textWidget('Container 4'))),
                          ),
                        )),
                      ],
                    )),
                BootstrapCol(
                    md: 6,
                    child: Container(
                     
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: BootstrapRow(children: [
                          BootstrapCol(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child:
                                textWidget('ABOUT ME', weight: bold, size: 15),
                          )),
                          BootstrapCol(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: textWidget(
                                'IM A ENTRY LEVEL PROGRAMMER BASED ON MY OWN KNOWLEDGE',
                                weight: bold,
                                size: 30),
                          )),
                          BootstrapCol(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 5),
                            child: textWidget(
                                'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. 3',
                                weight: bold,
                                size: 15),
                          )),
                          BootstrapCol(
                              child: BootstrapRow(children: [
                            BootstrapCol(
                              md: 6,
                              child: SizedBox(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textWidget('Name: ',
                                              alignment: TextAlign.left,
                                              warptext: true),
                                          textWidget('Date of Birth:',
                                              alignment: TextAlign.left,
                                              warptext: true),
                                          textWidget('Address:',
                                              alignment: TextAlign.left,
                                              warptext: true),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textWidget('Melfred: ',
                                              alignment: TextAlign.left,
                                              warptext: true),
                                          textWidget('March 2, 2000',
                                              alignment: TextAlign.left,
                                              warptext: true),
                                          textWidget(
                                              'Talisay Nasipit Agusan Del Norte',
                                              alignment: TextAlign.left,
                                              warptext: true),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            BootstrapCol(
                              md: 6,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        textWidget('ZIP Code: ',
                                            alignment: TextAlign.left,
                                            warptext: true),
                                        textWidget('Email:',
                                            alignment: TextAlign.left,
                                            warptext: true),
                                        textWidget('Phone:',
                                            alignment: TextAlign.left,
                                            warptext: true),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        textWidget('8602: ',
                                            alignment: TextAlign.left,
                                            warptext: true),
                                        textWidget('melfredbalanag@gmail.com',
                                            alignment: TextAlign.left,
                                            warptext: true),
                                        textWidget('09762876208',
                                            alignment: TextAlign.left,
                                            warptext: true),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                          BootstrapCol(
                            xs: 12,
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: textWidget('DOWNLOAD CV'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
              ]))
            ]),
          ),
        ));
  }
}
