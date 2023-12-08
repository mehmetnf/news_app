import 'package:country_flags/country_flags.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/data/model/language_model.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 11),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<LanguageModel>(
                      isExpanded: true,
                      dropdownStyleData: const DropdownStyleData(
                        decoration: BoxDecoration(color: cPrimaryColor),
                      ),
                      items: viewModel.countries
                          .map((LanguageModel item) =>
                              DropdownMenuItem<LanguageModel>(
                                value: item,
                                child: Text(
                                  item.title!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: viewModel.selectedValue,
                      onChanged: (LanguageModel? value) {
                        viewModel.selectedValue = value;
                        viewModel.topNews(
                          language: viewModel.selectedValue!.key.toString(),
                        );
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: CountryFlag.fromLanguageCode(
                  viewModel.selectedValue!.key.toString(),
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
