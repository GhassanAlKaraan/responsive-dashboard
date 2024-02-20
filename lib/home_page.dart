import 'package:flutter/material.dart';
import 'package:responsive_design_demo/responsive/desktop_scaffold.dart';
import 'package:responsive_design_demo/responsive/mobile_scaffold.dart';
import 'package:responsive_design_demo/responsive/responsive_layout.dart';
import 'package:responsive_design_demo/responsive/tablet_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileScaffold: MobileScaffold(), desktopScaffold: DesktopScaffold(), tabletScaffold: TabletScaffold(),);
  }
}
