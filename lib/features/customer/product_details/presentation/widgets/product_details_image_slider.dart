import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_customer.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';

class ProductDetailsImageSlider extends StatefulWidget {
  const ProductDetailsImageSlider({required this.imglist, super.key});
  final List<String> imglist;

  @override
  State<ProductDetailsImageSlider> createState() =>
      _ProductDetailsImageSliderState();
}

class _ProductDetailsImageSliderState extends State<ProductDetailsImageSlider> {
  int ActivateIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 800,
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: widget.imglist.length,
            itemBuilder: (context, index, realIndex) {
              return CustomContainerLinearCustomer(
                height: 160.h,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl: widget.imglist[index].imageProductFormate(),
                    fit: BoxFit.fill,
                    placeholder: (context, url) => const SizedBox.shrink(),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 160.h,
              reverse: true,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                ActivateIndex = index;
                setState(() {});
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
                  color: ActivateIntent == entry.key
                      ? context.color.bluePinkLight
                      : Colors.grey,
                ), // BoxDecoration
              ); // Container
            }).toList(),
          ), // Row
        ],
      ),
    );
  }
}

// return CustomContainerLinearCustomer(
//                 height: 160.h,
//                 width: MediaQuery.of(context).size.width,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: CachedNetworkImage(
//                     imageUrl: widget.imglist[index],
//                     fit: BoxFit.fill,
//                     placeholder: (context, url) => const SizedBox.shrink(),
//                     errorWidget: (context, url, error) => const Icon(
//                       Icons.error,
//                       color: Colors.red,
//                       size: 30,
//                     ),
//                   ),
//                 ),
//               );
