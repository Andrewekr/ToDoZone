import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/app_view_model.dart';
import 'package:flutter_application_1/views/bottom_sheet/add_task_bottom_sheet_views.dart';
import 'package:provider/provider.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<appViewModel>(
      builder: (context, viewModel, child) {
        return SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: viewModel.clrlvl3,
                foregroundColor: viewModel.clrlvl1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            onPressed: () {
              viewModel.bottomSheetBuilder(AddTaskBottomSheetView(), context);
            },
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
