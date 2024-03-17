import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_jadara/Feature/Auth/presentation/views/login.dart';
import 'package:task_jadara/Feature/Menu/data/cubit/logout_cubit.dart';
import 'package:task_jadara/Feature/Menu/data/cubit/logout_state.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: BlocBuilder<LogoutCubit, LogoutState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: const Text('هل تريد تسجيل الخروج '),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('لا'),
                        ),
                        TextButton(
                          onPressed: () async {
                            if (state is LogoutInitial) {
                              await context.read<LogoutCubit>().logoutRequest();
                            } else if (state is LogoutSuccess) {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return const LoginView();
                                },
                              ));
                            }
                          },
                          child: const Text('نعم'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                height: 74,
                width: 368,
                decoration: BoxDecoration(
                    color: const Color(0xff004252),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Image.asset('assets/image/menu/تسجيل الخروج.png'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'تسجيل الخروج',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
