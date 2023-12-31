import 'package:flutter/material.dart';
import 'main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainViewModel _viewModel = MainViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.load();
  }

  @override
  void dispose() {
    _viewModel.heightController.dispose();
    _viewModel.weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비만도 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _viewModel.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: _viewModel.heightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '키를 입력하세요.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _viewModel.weightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '몸무게',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '몸무게를 입력하세요.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  _viewModel.calculateBmi(context);
                },
                child: const Text('결과'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
