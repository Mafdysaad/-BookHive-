import 'package:booklyapp/Features/home/presentation/views/widget/custom_actions_home_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/home_view_body.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/profile_details.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: const Color(0xFF7968FF),
          leadingWidth: double.infinity,
          leading: const ProfileDetails(),
          actions: const [CustomActionsHomeView()]),
      body: const HomeViewBody(),
    );
  }
}
