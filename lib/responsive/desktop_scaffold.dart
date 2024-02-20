import 'package:flutter/material.dart';
import 'package:responsive_design_demo/constants.dart';
import 'package:responsive_design_demo/widgets/my_box.dart';
import 'package:responsive_design_demo/widgets/my_tile.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBGColor,
        appBar: myDesktopAppBar,
        drawer: myDrawer,
        body: Row(
          children: [
            myDrawer,
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // grid of 4 on the top
                    AspectRatio(
                      aspectRatio: 4,
                      child: SizedBox(
                        width: double.infinity,
                        child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return const MyBox();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                        child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      },
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8,16,16,16),
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
