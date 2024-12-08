import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../extensions/extensions.dart';
import '../../models/resident_tax_model.dart';
import '../../utility/utility.dart';

part 'resident_tax.freezed.dart';

part 'resident_tax.g.dart';

@freezed
class ResidentTaxState with _$ResidentTaxState {
  const factory ResidentTaxState({
    @Default(<ResidentTaxModel>[]) List<ResidentTaxModel> residentTaxList,
    @Default(<String, ResidentTaxModel>{}) Map<String, ResidentTaxModel> residentTaxMap,
  }) = _ResidentTaxState;
}

@Riverpod(keepAlive: true)
class ResidentTax extends _$ResidentTax {
  final Utility utility = Utility();

  ///
  @override
  ResidentTaxState build() => const ResidentTaxState();

  ///
  Future<void> getAllResidentTax() async {
    final HttpClient client = ref.read(httpClientProvider);

    // ignore: always_specify_types
    await client.get(path: 'residentTax').then((value) {
      final List<ResidentTaxModel> list = <ResidentTaxModel>[];
      final Map<String, ResidentTaxModel> map = <String, ResidentTaxModel>{};

      // ignore: avoid_dynamic_calls
      for (int i = 0; i < value.length.toString().toInt(); i++) {
        // ignore: avoid_dynamic_calls
        final ResidentTaxModel val = ResidentTaxModel.fromJson(value[i] as Map<String, dynamic>);

        list.add(val);
        map[val.period] = val;
      }

      state = state.copyWith(residentTaxList: list, residentTaxMap: map);
    // ignore: always_specify_types
    }).catchError((error, _) {
      utility.showError('予期せぬエラーが発生しました');
    });
  }
}
