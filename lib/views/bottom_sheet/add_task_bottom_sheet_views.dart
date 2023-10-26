import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/app_view_model.dart';
import 'package:provider/provider.dart';

import '../../models/task_model.dart';

class AddTaskBottomSheetView extends StatelessWidget {
  const AddTaskBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();

    return Consumer<appViewModel>(builder: (context, viewModel, child) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
            height: 80,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 350,
                child: TextField(
                    onSubmitted: (value) {
                      if (entryController.text.isNotEmpty) {
                        Task newTask = Task(entryController.text, false);
                        viewModel.addTask(newTask);
                        entryController.clear();
                      }
                      Navigator.of(context).pop();
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        filled: true,
                        fillColor: viewModel.clrlvl2,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none))),
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: viewModel.clrlvl4,
                    autofocus: true,
                    autocorrect: false,
                    controller: entryController,
                    style: TextStyle(
                        color: viewModel.clrlvl4, fontWeight: FontWeight.w500)),
              ),
            )),
      );
    });
  }
}
