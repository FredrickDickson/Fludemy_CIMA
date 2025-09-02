import 'package:flutter/material.dart';
import 'package:fludemy/app/core/responsive/breakpoints.dart';
import 'widgets/appbar/mobile_app_bar.dart';
import 'widgets/appbar/web_app_bar.dart';
import 'widgets/sections/advantages_section.dart';
import 'widgets/sections/course_section.dart';
import 'widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < Breakpoints.mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 80),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < Breakpoints.mobileBreakpoint
              ? const Drawer(
                  child: ListView(
                    children: [
                      DrawerHeader(
                        child: Text('CIMA Menu', style: TextStyle(color: Colors.white)),
                        decoration: BoxDecoration(color: Color(0xFF001F3F)),
                      ),
                      ListTile(title: Text('Membership'), onTap: null),
                      ListTile(title: Text('Qualifications'), onTap: null),
                      ListTile(title: Text('News'), onTap: null),
                    ],
                  ),
                )
              : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: const [
                  TopSection(), // Will update to CIMA banner
                  AdvantagesSection(),
                  CourseSection(), // Will update to ADR courses
                  // New News Section
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Latest News', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(title: Text('Maritime ADR Strategy'), subtitle: Text('New initiatives in Ghana.')),
                      ListTile(title: Text('Partnership Update'), subtitle: Text('Collaboration with fusion centers.')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}