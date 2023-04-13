import 'package:auto_route/auto_route.dart';
import 'package:deeplink_tutorial/cat_service.dart';
import 'package:deeplink_tutorial/router.dart';
import 'package:deeplink_tutorial/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
    );
  }
}

@RoutePage()
class CatFactsPage extends StatelessWidget {
  const CatFactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Facts'),
      ),
      body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index]['text']),
                      onTap: () {
                        AutoRouter.of(context).push(
                          SingleFactRoute(id: snapshot.data![index]['_id']),
                        );
                      },
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
          future: CatService.getCatFacts()),
    );
  }
}

@RoutePage()
class SingleFactPage extends StatelessWidget {
  final String id;
  const SingleFactPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Fact'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              /// Create a shareable link
              


            },
          ),
        ],
      ),
      body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data!['text']),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
          future: CatService.getCatBreed(id)),
    );
  }
}
