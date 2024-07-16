import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx_project/domain/adversiting.dart';
import 'package:olx_project/domain/repository.dart';

class PostPage extends StatefulWidget {
  final NUMBER_REGREX = RegExp(r'^([1-9][0-9]{,2}(,[0-9]{3})*|[0-9]+)(\.[0-9]{1,9})?$');
  final Repository repository;

  PostPage({super.key, required this.repository});

  @override
  State<PostPage> createState() => _PostState();
}

class _PostState extends State<PostPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text("OLX Challenge", style: TextStyle(fontSize: 24)),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                controller: _nameController,
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Please add a Name";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Price',
                ),
                controller: _priceController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                validator: (String? value) {
                  if (value == null || !widget.NUMBER_REGREX.hasMatch(value)) {
                    return "Please add valid price";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
                controller: _descriptionController,
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Please add a Descripton";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      var advertising = Advertising(
                          name: _nameController.text,
                          price: double.parse(_priceController.text),
                          description: _descriptionController.text);
                      widget.repository.postAdvertising(advertising);
                      _nameController.clear();
                      _priceController.clear();
                      _descriptionController.clear();
                      const snackBar = SnackBar(
                        content: Text('Advertisement was sent!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
