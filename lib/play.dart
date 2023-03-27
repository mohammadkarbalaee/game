import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_cloud/controller.dart';
import 'package:lottie/lottie.dart';

class PlayPage extends GetView<PlayController> {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[100],
                  backgroundImage: const NetworkImage(
                      'https://xsgames.co/randomusers/avatar.php?g=male'),
                ),
              ),
            ),
            const Text('2'),
            const Text('-'),
            const Text('3'),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[100],
                  backgroundImage: const NetworkImage(
                      'https://xsgames.co/randomusers/avatar.php?g=female'),
                ),
              ),
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          fontFamily: 'appFont',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://xsgames.co/randomusers/avatar.php?g=male'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: Get.height / 5),
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Hadi Tavakoli, 23',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Iran,Isfahan',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Flutter developer',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.squareSelected1.value =
                    !controller.squareSelected1.value;
              },
              child: Obx(
                () => AnimatedAlign(
                  alignment: controller.squareSelected1.value
                      ? Alignment.center
                      : Alignment.bottomLeft,
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                    ),
                    child: const Text(
                      '✊',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.circleSelected1.value =
                    !controller.circleSelected1.value;
              },
              child: Obx(
                () => AnimatedAlign(
                  alignment: controller.circleSelected1.value
                      ? Alignment.center
                      : Alignment.bottomCenter,
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    child: const Text(
                      '✋',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.triangleSelected1.value =
                    !controller.triangleSelected1.value;
              },
              child: Obx(
                () => AnimatedAlign(
                  alignment: controller.triangleSelected1.value
                      ? Alignment.center
                      : Alignment.bottomRight,
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  curve: Curves.fastOutSlowIn,
                  child: CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: Colors.grey.shade300,
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 80,
                      height: 80,
                      child: const Text(
                        '✌️',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // show result
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'You Win!',
                    style: TextStyle(
                      fontFamily: "Wolf",
                      fontSize: 80,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 2,
                    width: Get.width,
                    child: Obx(
                      () => controller.flag.value
                          ? Lottie.asset(
                              'assets/animation/7843-flixxo-coins.json',
                              repeat: false,
                              fit: BoxFit.cover,
                            )
                          : const SizedBox(),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200],
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          child: const Icon(
                            Icons.refresh,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.flag.value = !controller.flag.value;
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 90),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200],
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          child: const Text(
                            'Collect',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
