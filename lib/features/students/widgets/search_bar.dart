import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';
import 'package:gap/gap.dart';

class SearchBar extends HookWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();

    return Container(
      margin: EdgeInsets.only(
          top: 20,
          bottom: 10,
          left: getWidth(context, 0.035),
          right: getWidth(context, 0.035)),
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            color: Colors.black87,
          ),
          const Gap(7.5),
          Expanded(
            child: SizedBox(
              height: 35,
              child: TextField(
                cursorColor: Colors.black38,
                onChanged: (value) {
                  BlocProvider.of<StudentBloc>(context)
                      .add(StudentSearchEvent(searchTerm: value));
                },
                controller: searchController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 0.75, color: Colors.black87)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 0.75, color: Colors.black87))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
