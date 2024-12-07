import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../models/wareki_model.dart';
import '../../utility/utility.dart';

part 'wareki.freezed.dart';

part 'wareki.g.dart';

@freezed
class WarekiState with _$WarekiState {
  const factory WarekiState({
    @Default(<WarekiModel>[]) List<WarekiModel> warekiList,
    @Default(<String, WarekiModel>{}) Map<String, WarekiModel> warekiMap,
  }) = _WarekiState;
}

@riverpod
Future<WarekiState> wareki(WarekiRef ref, {required int year}) async {
  final Utility utility = Utility();

  final HttpClient client = ref.read(httpClientProvider);

  final List<WarekiModel> list = <WarekiModel>[];

  final Map<String, WarekiModel> map = <String, WarekiModel>{};

  // ignore: always_specify_types
  await client.getByPath(path: 'https://seireki.teraren.com/seireki/$year.json').then((value) {
    if (value != null) {
      final WarekiModel val = WarekiModel.fromJson(value as Map<String, dynamic>);

      list.add(val);

      map[utility.generateWareki(wareki: val.wareki)] = val;
    }

    //
    //
    //
    // // ignore: avoid_dynamic_calls
    // for (int i = 0; i < value.length.toString().toInt(); i++) {
    //   // ignore: avoid_dynamic_calls
    //   final WarekiModel val = WarekiModel.fromJson(value[i] as Map<String, dynamic>);
    //
    //   list.add(val);
    //
    //   map[utility.generateWareki(wareki: val.wareki)] = val;
    // }
    //
    //
    //

    // ignore: always_specify_types
  });

  //
  // .catchError((error, _) {
  //   utility.showError('予期せぬエラーが発生しました');
  // });

  // ignore: always_specify_types
  return Future.value(WarekiState(warekiList: list, warekiMap: map));
}
