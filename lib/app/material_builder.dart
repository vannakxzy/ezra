import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constants/app_colors_constants.dart';
import '../core/constants/icon_constant.dart';
import '../core/utils/controllers/app_controller.dart';
import '../gen/i18n/translations.g.dart';
import 'package:moon_design/moon_design.dart';

class MaterialBuilder extends StatelessWidget {
  final Widget child;
  const MaterialBuilder({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AppController>();
    return MediaQuery.withClampedTextScaling(
      minScaleFactor: 1,
      maxScaleFactor: 2.0,
      child: Obx(
        () => Stack(
          children: [
            child,
            // if (controller.isLongPress.value == true)
            IgnorePointer(
              child: AnimatedContainer(
                curve: Curves.easeInSine,
                duration: const Duration(milliseconds: 300),
                color: controller.isLongPress.value
                    ? Colors.black.withOpacity(0.8)
                    : Colors.transparent,
                child: controller.isLongPress.value == true
                    ? Scaffold(
                        backgroundColor: Colors.transparent,
                        body: Stack(
                          children: [
                            Positioned(
                                top: controller.dy.value,
                                left: controller.dx.value,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 0.5,
                                          color: AppColor.primaryColor
                                              .withOpacity(0.5))),
                                  height: 50,
                                  width: 50,
                                )),
                            Positioned(
                              left: controller.isOnleft.value ? null : 10,
                              right: controller.isOnleft.value ? 10 : null,
                              top: controller.dy.value > 200
                                  ? controller.dy.value - 130
                                  : controller.dy.value + 40,
                              child: Text(
                                controller.action.value == 1
                                    ? t.common.like
                                    : controller.action.value == 2
                                        ? controller.isSaved.value
                                            ? t.common.unSave
                                            : t.common.save
                                        : controller.action.value == 3
                                            ? t.common.send
                                            : controller.action.value == 4
                                                ? t.common.hide
                                                : "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            AnimatedPositioned(
                              left: controller.afterLongPress.value
                                  ? controller.isPress01.value
                                      ? controller.dx.value -
                                          (controller.isOnleft.value ? 15 : -5)
                                      : controller.dx.value -
                                          (controller.isOnleft.value ? 10 : -10)
                                  : controller.dx.value + 5,
                              top: controller.afterLongPress.value
                                  ? controller.isPress01.value
                                      ? controller.dy.value - 99
                                      : controller.dy.value - 75
                                  : controller.dy.value + 5,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOutQuint,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                height: controller.isPress01.value ? 57 : 45,
                                width: controller.isPress01.value ? 57 : 45,
                                decoration: BoxDecoration(
                                  color: controller.isPress01.value
                                      ? AppColor.primaryColor
                                      : AppColor.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  MiconLike,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                              left: controller.afterLongPress.value
                                  ? controller.isPress02.value
                                      ? controller.dx.value +
                                          (controller.isOnleft.value ? 45 : -50)
                                      : controller.dx.value +
                                          (controller.isOnleft.value ? 40 : -40)
                                  : controller.dx.value + 5,
                              top: controller.afterLongPress.value
                                  ? controller.isPress02.value
                                      ? controller.dy.value - 90
                                      : controller.dy.value - 70
                                  : controller.dy.value + 7,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOutQuint,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                height: controller.isPress02.value ? 57 : 45,
                                width: controller.isPress02.value ? 57 : 45,
                                decoration: BoxDecoration(
                                  color: controller.isPress02.value
                                      ? AppColor.primaryColor
                                      : AppColor.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Icon(
                                  controller.isSaved.value
                                      ? MoonIcons.controls_close_24_regular
                                      : MiconSave,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                            AnimatedPositioned(
                              left: controller.afterLongPress.value
                                  ? controller.isPress03.value
                                      ? controller.dx.value +
                                          (controller.isOnleft.value ? 85 : -95)
                                      : controller.dx.value +
                                          (controller.isOnleft.value ? 70 : -75)
                                  : controller.dx.value,
                              top: controller.afterLongPress.value
                                  ? controller.isPress03.value
                                      ? controller.dy.value - 50
                                      : controller.dy.value -
                                          (controller.isOnleft.value
                                              ? 40
                                              : 37.5)
                                  : controller.dy.value,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOutQuint,
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Center(
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 250),
                                    height:
                                        controller.isPress03.value ? 57 : 45,
                                    width: controller.isPress03.value ? 57 : 45,
                                    decoration: BoxDecoration(
                                      color: controller.isPress03.value
                                          ? AppColor.primaryColor
                                          : AppColor.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      MiconSend,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                              left: controller.afterLongPress.value
                                  ? controller.isPress04.value
                                      ? controller.dx.value +
                                          (controller.isOnleft.value
                                              ? 100
                                              : -100)
                                      : controller.dx.value +
                                          (controller.isOnleft.value ? 75 : -75)
                                  : controller.dx.value,
                              top: controller.afterLongPress.value
                                  ? controller.isPress04.value
                                      ? controller.dy.value + 10
                                      : controller.dy.value + 10
                                  : controller.dy.value,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOutQuint,
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Center(
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 250),
                                    height:
                                        controller.isPress04.value ? 57 : 45,
                                    width: controller.isPress04.value ? 57 : 45,
                                    decoration: BoxDecoration(
                                      color: controller.isPress04.value
                                          ? AppColor.primaryColor
                                          : AppColor.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      MiconHide,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                children: controller.listLike.map((element) {
                  return Positioned(
                    top: element.dy!,
                    left: element.dx,
                    child: Transform.rotate(
                      angle: element.angle!,
                      child: AnimatedOpacity(
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 2000),
                        opacity: element.remove == true ? 0 : 1,
                        child: const IgnorePointer(
                          ignoring: true,
                          child: Icon(
                            MiconLike,
                            size: 200,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
