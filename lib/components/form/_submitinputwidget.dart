import "package:flutter/material.dart";

class SubmitInputWidget extends StatelessWidget {
  final formKey;
  SubmitInputWidget({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            // Validate returns true if the form is valid, or false otherwise.
            if (formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          child: const Text('Enregister'),
        ));
  }
}
