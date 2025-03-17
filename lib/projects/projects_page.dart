import 'package:flutter/material.dart';
import 'package:proyecto_ui/routes/app_routes.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practicas 2025'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.onboarding);
              },
              child: Text('Onboarding'.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
