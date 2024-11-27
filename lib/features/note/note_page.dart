import 'package:flutter/material.dart';
import 'package:flutter_note_app/core/config/colors_app.dart';

import 'add_note_page.dart';
import 'detail_note_page.dart';
import 'profile_page.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Adit 👋',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'This is your to-do list',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.textSecondary,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.notifications_outlined,
                  size: 35,
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfilePage();
                    }));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorsApp.primaryDark,
                        width: 3.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 23,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/52753554?v=4'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorsApp.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: ColorsApp.primary.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search your note',
                  hintStyle: const TextStyle(
                    color: ColorsApp.primary,
                    fontSize: 16,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 28,
                    color: ColorsApp.primary,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const DetailNotePage();
                    }));
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: ColorsApp.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: ColorsApp.primary.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Calculus Assignment 1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: ColorsApp.primary,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Deadline is Saturday, February 4 2024. Assignments are collected in the lecturers room at a maximum of 16.00. Must be done tonight',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: ColorsApp.textPrimary,
                            ),
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Due Date',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorsApp.textSecondary,
                                    ),
                                  ),
                                  Text(
                                    'February 4, 2024',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorsApp.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: ColorsApp.white,
                                  side: const BorderSide(
                                    color: ColorsApp.primary,
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                ),
                                onPressed: () {
                                  // Aksi tombol
                                },
                                child: const Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: ColorsApp.primary,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: ColorsApp.primary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddNotePage();
          }));
        },
        child: const Icon(
          Icons.add,
          color: ColorsApp.white,
        ),
      ),
    );
  }
}
