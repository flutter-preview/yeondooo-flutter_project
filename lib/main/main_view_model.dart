import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/result/result_screen.dart';
import '../data/model/bmi_calculator_model.dart';

class MainViewModel extends ChangeNotifier {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  BmiCalculatorModel? _bmiCalculatorModel;

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get heightController => _heightController;

  TextEditingController get weightController => _weightController;

  Future<void> save() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('height', double.parse(_heightController.text));
    await prefs.setDouble('weight', double.parse(_weightController.text));
  }

  Future<void> load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final double? height = prefs.getDouble('height');
    final double? weight = prefs.getDouble('weight');

    if (height != null && weight != null) {
      _heightController.text = '$height';
      _weightController.text = '$weight';
    }
  }

  void calculateBmi(BuildContext context) {
    if (_formKey.currentState?.validate() == false) {
      return;
    }

    save();

    final double height = double.parse(_heightController.text);
    final double weight = double.parse(_weightController.text);

    _bmiCalculatorModel = BmiCalculatorModel(height: height, weight: weight);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          height: height,
          weight: weight,
        ),
      ),
    );
  }
}
