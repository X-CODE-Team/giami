import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gami/layout/edit_profile_layout/cubit/cubit.dart';
import 'package:gami/layout/edit_profile_layout/cubit/states.dart';
import 'package:gami/screens/drawer/drawer_screen.dart';

class GiamiLayout extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> screens = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileLayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.grey),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined),
              onPressed: () {},
            ),
            title: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add_photo_alternate_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.list_sharp),
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
              ),
            ],
          ),
          endDrawer: Drawer(
            child: DrawerScreen(),
          ),
          body: Container(),
          bottomNavigationBar: BottomAppBar(
            color: Colors.pink[50],
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.message_rounded,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Icon(
                    Icons.perm_identity_outlined,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {},
            child: Icon(
              Icons.list_rounded,
              size: 35,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
