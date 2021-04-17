import 'package:flutter/material.dart';
import 'package:flutter_architecture/providers/cat_api_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {

  void _refresh(BuildContext context) {
    context.refresh(catApiProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _Image(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _refresh(context),
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class _Image extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final catProvider = watch(catApiProvider);

    return catProvider.when(
      data: (data) {
        return Image.network(data.webpurl);
      },
      loading: () => CircularProgressIndicator(),
      error: (_, __) => ErrorScreen(),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
