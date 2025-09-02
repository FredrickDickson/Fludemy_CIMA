import 'package:flutter/material.dart';
import 'package:fludemy/app/core/responsive/breakpoints.dart';
import '../../widgets/appbar/mobile_app_bar.dart';
import '../../widgets/appbar/web_app_bar.dart';
import '../../widgets/sections/advantages_section.dart';

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
                children: [
                  Container(
                    color: const Color(0xFF001F3F),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/cima_logo.png',
                          height: 80,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              const Text('CIMA', style: TextStyle(color: Colors.white, fontSize: 32)),
                        ),
                        const Text(
                          'Center for International Mediators and Arbitrators',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const AdvantagesSection(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Qualification Pathways', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            ListTile(title: Text('International Arbitration'), subtitle: Text('Certification course.')),
                            ListTile(title: Text('Mediation Training'), subtitle: Text('Skill-building pathway.')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Latest News', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
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