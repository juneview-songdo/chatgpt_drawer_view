import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  Color activeColor = const Color(0xFF40414f);
  TextStyle fixedStyle = TextStyle(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: const Color(0xff202123),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Visibility(
                        visible: true,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: activeColor),
                                ),
                                child: ListTile(
                                  onTap: () {},
                                  leading: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    'New Chat',
                                    style: fixedStyle,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Visibility(
                      //   visible: true,
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       border: Border.all(color: activeColor),
                      //     ),
                      //     child: ListTile(
                      //       leading: const Icon(
                      //         Icons.add,
                      //         color: Colors.white,
                      //       ),
                      //       title: Text(
                      //         overflow: TextOverflow.ellipsis,
                      //         maxLines: 1,
                      //         'New Chat',
                      //         style: fixedStyle,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 1,
                    color: activeColor,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                    ),
                    title: Text('Clear Conversation', style: fixedStyle),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.nightlight_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Dark Mode',
                      style: fixedStyle,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.discord,
                      color: Colors.white,
                    ),
                    title: Text('OpenAI Discord', style: fixedStyle),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.open_in_new,
                      color: Colors.white,
                    ),
                    title: Text('Updates and FAQ', style: fixedStyle),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                    title: Text('Log out', style: fixedStyle),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
