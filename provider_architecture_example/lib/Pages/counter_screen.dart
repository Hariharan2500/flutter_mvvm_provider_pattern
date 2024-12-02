import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_view_model.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MVVM with Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed the button this many times:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '${viewModel.counter}', // Access counter via ViewModel
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.increment, // Call increment via ViewModel
        child: const Icon(Icons.add),
      ),
    );
  }
}
