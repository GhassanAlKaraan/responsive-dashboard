import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_design_demo/constants.dart';
import 'package:responsive_design_demo/widgets/my_box.dart';
import 'package:responsive_design_demo/widgets/my_tile.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBGColor,
        appBar: myAppBar,
        drawer: myDrawer,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // grid of 4 on the top
              AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return const MyBox();
                    },
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
              ))
            ],
          ),
        ));
  }
}
