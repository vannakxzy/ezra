import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

import '../../../../app/base/page/base_page_bloc_state.dart';
import '../../../../core/constants/size_constant.dart';
import '../../../../shared/widgets/app_refresh_indicator.dart';
import '../bloc/bloc.dart';
import '../widgets/musics_card.dart';

@RoutePage()
class MusicsPage extends StatefulWidget {
  const MusicsPage({super.key});

  @override
  State<MusicsPage> createState() => _MusicsPageState();
}

class _MusicsPageState extends BasePageBlocState<MusicsPage, MusicsBloc> {
  @override
  void initState() {
    bloc.add(InitPage(1));
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MusicsBloc, MusicState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              children: [
                MoonFormTextInput(
                  borderRadius: BorderRadius.circular(20),
                  controller: TextEditingController(),
                  // validator: (String? value) =>
                  //     value != null && value.length < 5
                  //         ? "The text should be longer than 5 characters."
                  //         : null,
                  hintText: "sdfsfdsfdsdf",
                  // onTap: () => _textController.clear(),
                  leading: const Icon(MoonIcons.generic_search_24_light),
                  trailing: GestureDetector(
                    child: const Icon(MoonIcons.controls_close_small_24_light),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: state.isloading && state.musics.isEmpty
                        ? Center(
                            //  child: MoonC,
                            child: CircularProgressIndicator(),
                          )
                        : state.musics.isEmpty
                            ? const Center(child: SizedBox())
                            : AppSmartRefreshScrollView(
                                enableLoadMore: state.isMorePage,
                                onLoadMore: () async =>
                                    bloc.add(InitPage(state.page)),
                                onRefresh: () async {
                                  bloc.add(ClickRefreshPage(1));
                                },
                                child: ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      final musics = state.musics[index];
                                      return MusicsCard(
                                        entity: musics,
                                        ontap: () {
                                          bloc.add(ClickMusics(index));
                                        },
                                        clickFavorite: () {
                                          bloc.add(ClickFavorite(index));
                                        },
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const Gap(kPadding),
                                    itemCount: state.musics.length),
                              ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
