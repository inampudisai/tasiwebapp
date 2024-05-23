import 'package:flutter/material.dart';
import 'package:tasiwebapp/views/members/teammemberspage.dart';

class NavigateBar extends StatelessWidget {
  const NavigateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Telugu Association of South Island'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Show Home Page',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return const Teammemberspage();
                },
              ),
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.admin_panel_settings),
          tooltip: 'Go to admin page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
        IconButton(
          icon: const Icon(Icons.groups_sharp),
          tooltip: 'Go to Members Page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
        IconButton(
          icon: const Icon(Icons.support_rounded),
          tooltip: 'Go to sponsers Page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
        IconButton(
          icon: const Icon(Icons.contact_page),
          tooltip: 'Go to Contact Page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
      ],
    );
  }
}
