import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/widgets/custom_container_linear_customer.dart';
import 'package:tele_store/core/extentions/context_extension.dart';

class SlantedBannerClipper extends CustomClipper<Path> {
  const SlantedBannerClipper({
    required this.rightInset,
    required this.radius,
  });

  final double rightInset;
  final double radius;

  @override
  Path getClip(Size size) {
    final points = <Offset>[
      const Offset(0, 0), 
      Offset(size.width, rightInset), 
      Offset(size.width, size.height - rightInset), 
      Offset(0, size.height), 
    ];
    return _roundedPolygon(points, radius);
  }

  Path _roundedPolygon(List<Offset> pts, double r) {
    final path = Path();
    final n = pts.length;
    for (var i = 0; i < n; i++) {
      final prev = pts[(i - 1 + n) % n];
      final cur = pts[i];
      final next = pts[(i + 1) % n];

      final toPrev = prev - cur;
      final toNext = next - cur;
      final dPrev = r < toPrev.distance / 2 ? r : toPrev.distance / 2;
      final dNext = r < toNext.distance / 2 ? r : toNext.distance / 2;

      final start = cur + toPrev / toPrev.distance * dPrev;
      final end = cur + toNext / toNext.distance * dNext;

      if (i == 0) {
        path.moveTo(start.dx, start.dy);
      } else {
        path.lineTo(start.dx, start.dy);
      }
      path.quadraticBezierTo(cur.dx, cur.dy, end.dx, end.dy);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(SlantedBannerClipper old) =>
      old.rightInset != rightInset || old.radius != radius;
}

class BannerSlider extends StatefulWidget {
  const BannerSlider({required this.imglist, super.key});
  final List<String> imglist;

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int ActivateIntent = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: widget.imglist.length,
            itemBuilder: (context, index, realIndex) {
              return ClipPath(
                clipper: SlantedBannerClipper(
                  rightInset: 22.h,
                  radius: 18,
                ),
                clipBehavior: Clip.antiAlias,
                child: CustomContainerLinearCustomer(
                  height: 160.h,
                  width: MediaQuery.of(context).size.width,
                  child: CachedNetworkImage(
                    imageUrl: widget.imglist[index],
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
                ActivateIntent = index;
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
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}