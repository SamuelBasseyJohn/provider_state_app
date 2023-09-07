import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/ViewModel/counter_provider.dart';
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterProvider>(
              builder: (context, cp, child) => Column(
                children: [
                  Text(
                    '${cp.counter.value}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  child!,
                ],
              ),
              child: Text("I am not a rebuilt widget"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterProvider.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );;
  }
}
