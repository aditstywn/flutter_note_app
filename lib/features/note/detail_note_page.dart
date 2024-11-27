import 'package:flutter/material.dart';
import '../../core/config/colors_app.dart';
import 'edit_note_page.dart';

class DetailNotePage extends StatefulWidget {
  const DetailNotePage({super.key});

  @override
  State<DetailNotePage> createState() => _DetailNotePageState();
}

class _DetailNotePageState extends State<DetailNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
        title: const Text(
          'Detail',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Created on',
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorsApp.textSecondary,
                    ),
                  ),
                  Text(
                    'September 20, 2021',
                    style: TextStyle(
                      fontSize: 12,
                      color: ColorsApp.textSecondary,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EditNotePage();
                  }));
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorsApp.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.edit_outlined,
                    color: ColorsApp.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.delete_outline_outlined,
                color: ColorsApp.red,
                size: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Calculus Assignment 1',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: ColorsApp.primary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: ColorsApp.textSecondary,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Deadline is Saturday, February 4 2024. Assignments are collected in the lecturer room at a maximum of 16.00. Must be done tonight',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: ColorsApp.textPrimary,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Due Date',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorsApp.textSecondary,
            ),
          ),
          const Text(
            'February 4, 2024',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorsApp.primary,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsApp.primary,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Mark as complete',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorsApp.white,
            ),
          ),
        ),
      ),
    );
  }
}
