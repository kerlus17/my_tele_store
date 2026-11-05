import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_customer.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';

class ProductDetailsImageSlider extends StatefulWidget {
  const ProductDetailsImageSlider({
    required this.imglist,
    this.skew = -0.05,
    super.key,
  });
  final List<String> imglist;
  final double skew;

  @override
  State<ProductDetailsImageSlider> createState() =>
      _ProductDetailsImageSliderState();
}

class _ProductDetailsImageSliderState extends State<ProductDetailsImageSlider> {
  int activateIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cardHeight = 160.h;
    final screenWidth = MediaQuery.of(context).size.width;

    final extra = math.tan(widget.skew.abs()) * screenWidth / 2;

    return CustomFadeInRight(
      duration: 800,
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: widget.imglist.length,
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: extra),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.skewY(widget.skew),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return CustomContainerLinearCustomer(
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              child: const SizedBox.shrink(),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.all(12.r),
                        child: CachedNetworkImage(
                          imageUrl: widget.imglist[index].imageProductFormate(),
                          fit: BoxFit.contain,
                          placeholder: (context, url) =>
                              const SizedBox.shrink(),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: cardHeight + extra * 2,
              reverse: true,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() => activateIndex = index);
              },
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imglist.asMap().entries.map((entry) {
              return Container(
                width: 15.w,
                height: 4.h,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: activateIndex == entry.key
                      ? context.color.bluePinkLight
                      : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
