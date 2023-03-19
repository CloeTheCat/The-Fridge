import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_fridge/screens/login_screen.dart';
import 'package:the_fridge/utils/controller.dart';
import 'package:the_fridge/utils/theme.dart';
import 'package:the_fridge/widgets/boards_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalController globalController = Get.put(GlobalController(), permanent: true);
    // JsonClass myData = globalController.getData();
    // print('coso: ${myData.data?.userData?.name}');

    return Scaffold(
      backgroundColor: CustomColors.textColor,
        appBar: AppBar(
          title: Text('THE FRIDGE', style: CustomTextStyles.appBarTitle),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: ((context) => Container(
              decoration: BoxDecoration(
                color: CustomColors.buttonColor,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              child: IconButton(
                iconSize: 30,
                icon: CustomIcons.appBarMenu,
                onPressed: () => Scaffold.of(context).openDrawer()
              )
            ))
          )
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: CustomColors.buttonColor,
                ),
                child: Center(child: Text(
                  'THE FRIDGE',
                  style: CustomTextStyles.drawerTitle,
                ))
              ),
              ListTile(
                title: Text('Boards', style: CustomTextStyles.drawerSectionTitle)
              ),
              ListTile(
                leading: const Icon(Icons.lock_rounded, color: CustomColors.textColor),
                title: Text('X\'s Board', style: CustomTextStyles.drawerSectionText,),
              ),
              ListTile(
                leading: const Icon(Icons.group_rounded, color: CustomColors.textColor,),
                title: Text('Board 1', style: CustomTextStyles.drawerSectionText,),
              ),
              ListTile(
                leading: const Icon(Icons.lock_rounded, color: CustomColors.textColor,),
                title: Text('Board 2', style: CustomTextStyles.drawerSectionText,),
              ),
              const Divider(
                thickness: 1,
                color: CustomColors.textColor,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: const Icon(Icons.archive_rounded, color: CustomColors.textColor,),
                title: Text('Archive', style: CustomTextStyles.drawerSectionText,),
              ),
              ListTile(
                leading: const Icon(Icons.delete_rounded, color: CustomColors.textColor,),
                title: Text('Trash Can', style: CustomTextStyles.drawerSectionText,),
              ),
              ListTile(
                leading: const Icon(Icons.settings_rounded, color: CustomColors.textColor,),
                title: Text('Settings', style: CustomTextStyles.drawerSectionText,),
              ),
            ],
          ),
        ),
        body: Center(
            child: Container(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(LoginScreen());
                        },
                        child: const Text('Login screen'),
                      ),
                    ),
                    BoardsView(boardsData: globalController.getData().getJsonClass(),)
                  ],
                ))));
  }
}