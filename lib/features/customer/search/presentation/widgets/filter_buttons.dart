import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_text_field.dart';
import 'package:tele_store/core/enums/filter_button_enum.dart';
import 'package:tele_store/features/customer/search/data/models/search_request_body.dart';
import 'package:tele_store/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:tele_store/features/customer/search/presentation/widgets/save_filter_button.dart';
import 'package:tele_store/features/customer/search/presentation/widgets/search_button_price.dart';
import 'package:tele_store/features/customer/search/presentation/widgets/search_for_data_icon.dart';

class FilterButtons extends StatefulWidget {
  const FilterButtons({super.key});

  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  final formkey = GlobalKey<FormState>();
  FilterButtonsEnum searchEnum = FilterButtonsEnum.none;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceMaxController = TextEditingController();
  final TextEditingController priceMinController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    priceMaxController.dispose();
    priceMinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFadeInRight(
                duration: 200,
                child: SearchNamePriceButton(
                  isSelected: searchEnum == FilterButtonsEnum.name,
                  onTap: () {
                    _nameSearchMethod();
                  },
                  title: 'search Name',
                ),
              ),

              CustomFadeInLeft(
                duration: 200,
                child: SearchNamePriceButton(
                  isSelected: searchEnum == FilterButtonsEnum.price,
                  onTap: () {
                    _priceSearchMethod();
                  },
                  title: 'search price',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),

          if (searchEnum == FilterButtonsEnum.name) ...[
            CustomFadeInDown(
              duration: 200,
              child: CustomTextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                hintText: "search for product name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "search can not be empty";
                  }
                  return null;
                },
              ),
            ),

            SaveFilterButton(
              onTap: () {
                if (fromKey.currentState!.validate()) {
                  context.read<SearchBloc>().add(
                    SearchEvent.fetchedProducts(
                      searchbody: SearchRequestBody(
                        searchName: nameController.text.trim(),
                        priceMin: null,
                        priceMax: null,
                      ),
                    ),
                  );
                }
                setState(() {
                  searchEnum = FilterButtonsEnum.saved;
                });
              },
            ),
          ] else if (searchEnum == FilterButtonsEnum.price) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 160.w,
                  child: CustomFadeInDown(
                    duration: 200,
                    child: CustomTextField(
                      controller: priceMinController,
                      hintText: "MIN",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "MIn cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 160.w,
                  child: CustomFadeInDown(
                    duration: 200,
                    child: CustomTextField(
                      controller: priceMaxController,
                      hintText: "MAX",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "MAX cannot be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),

            SaveFilterButton(
              onTap: () {
                if (fromKey.currentState!.validate()) {
                  context.read<SearchBloc>().add(
                    SearchEvent.fetchedProducts(
                      searchbody: SearchRequestBody(
                        searchName: null,
                        priceMin: int.parse(priceMinController.text.trim()),
                        priceMax: int.parse(priceMaxController.text.trim()),
                      ),
                    ),
                  );
                }
                setState(() {
                  searchEnum = FilterButtonsEnum.saved;
                });
              },
            ),
          ] else if (searchEnum == FilterButtonsEnum.none) ...[
            SearchFormDataIcon(),
          ] else
            SizedBox.shrink(),

          SizedBox(
            height: 25.h,
          ),
        ],
      ),
    );
  }

  void _priceSearchMethod() {
    if (searchEnum == FilterButtonsEnum.price) {
      setState(() {
        searchEnum = FilterButtonsEnum.saved;
      });
    } else {
      setState(() {
        searchEnum = FilterButtonsEnum.price;
      });
    }
  }

  void _nameSearchMethod() {
    if (searchEnum == FilterButtonsEnum.name) {
      setState(() {
        searchEnum = FilterButtonsEnum.saved;
      });
    } else {
      setState(() {
        searchEnum = FilterButtonsEnum.name;
      });
    }
  }
}
