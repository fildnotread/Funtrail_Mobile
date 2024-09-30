import 'package:Funtrails/feature/shop/screens/Explore/Explore_page.dart';
import 'package:Funtrails/feature/shop/screens/Hotel/Hotel_Page.dart';
import 'package:Funtrails/feature/shop/screens/Restaurant/Restaurant_Page.dart';
import 'package:Funtrails/feature/shop/screens/home/home.dart';
import 'package:Funtrails/utils/constants/colors.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:camera/camera.dart'; // Import for camera
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:animations/animations.dart'; // Import for page transition animations
import 'utils/helpers/helper_functions.dart';

class Navigationsbarmenu extends StatefulWidget {
  const Navigationsbarmenu({super.key});

  @override
  _NavigationsbarmenuState createState() => _NavigationsbarmenuState();
}

class _NavigationsbarmenuState extends State<Navigationsbarmenu> {
  late Navigationcontroller controller;
  late List<CameraDescription> _cameras; // List for available cameras

  @override
  void initState() {
    super.initState();
    controller = Get.put(Navigationcontroller());
    _initCameras(); // Initialize cameras when the widget is created
  }

  Future<void> _initCameras() async {
    _cameras = await availableCameras(); // Get available cameras
  }

  Future<void> _openCamera() async {
    if (_cameras.isNotEmpty) {
      final cameraController = CameraController(_cameras[0], ResolutionPreset.high);
      await cameraController.initialize();
      if (!mounted) return;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CameraPreviewScreen(cameraController: cameraController),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    List<IconData> iconList = [
      Iconsax.home,
      Iconsax.search_status,
      Iconsax.home_hashtag,
      Iconsax.shop,
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final iconSize = isActive ? 30.0 : 24.0;
            return Transform.scale(
              scale: isActive ? 1 : 0.9,
              child: Icon(
                iconList[index],
                size: iconSize,
                color: isActive ? TColors.white : TColors.dark,
              ),
            );
          },
          activeIndex: controller.selectedIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => controller.onTabSelected(index),
          backgroundColor: TColors.primary,
          elevation: 15,
          notchMargin: 10,
          splashColor: TColors.primary.withOpacity(0.2),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openCamera, // Open camera when pressed
        backgroundColor: TColors.primary,
        child: const Icon(
          Icons.qr_code_scanner_sharp,
          color: TColors.textWhite,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx(
        () => PageTransitionSwitcher(
          duration: const Duration(milliseconds: 500),
          reverse: controller.selectedIndex.value < controller.previousIndex.value,
          transitionBuilder: (Widget child, Animation<double> primaryAnimation, Animation<double> secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: controller.screens[controller.selectedIndex.value], // Render selected page with animation
        ),
      ),
    );
  }
}

class Navigationcontroller extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  var previousIndex = 0.obs; // Store previous index

  final List<Widget> screens = [
    const Homescreen(),
    const ExploreScreen(),
    const HotelScreen(),
    const RestaurantScreen()
  ];

  void onTabSelected(int index) {
    previousIndex.value = selectedIndex.value; // Update previous index
    selectedIndex.value = index; // Update selected index
  }
}

class CameraPreviewScreen extends StatelessWidget {
  final CameraController cameraController;

  const CameraPreviewScreen({required this.cameraController, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Camera')),
      body: CameraPreview(cameraController),
    );
  }
}
