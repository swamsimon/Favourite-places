import 'package:favourite_places/providers/user_places.dart';
import 'package:favourite_places/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();
  var _selectedImage;

  void _savePlace() {
    final _enteredText = _titleController.text;

    if (_enteredText.isEmpty) {
      return;
    }
    ref
        .read(userPlacesNotifier.notifier)
        .addPlace(_enteredText, _selectedImage!);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    //By overriding the dispose method in your widget's lifecycle, you ensure that the controller releases its resources properly. This is especially important in apps with multiple screens or complex forms, as unused controllers can accumulate and degrade performance

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add new list")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(label: Text('Title')),
              controller: _titleController,
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            const SizedBox(height: 10),
            ImageInput(
              onPickImage: (image) {
                _selectedImage = image;
              },
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _savePlace,
              icon: const Icon(Icons.add),
              label: const Text("Add Your Place"),
            ),
          ],
        ),
      ),
    );
  }
}
