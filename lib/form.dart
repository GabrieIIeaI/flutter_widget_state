import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameController = GlobalKey<FormState>();
  final _descriptionController = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Formulário")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}