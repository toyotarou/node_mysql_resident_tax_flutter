import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/http/client.dart';
import '../../utility/utility.dart';

part 'resident_tax_input.freezed.dart';

part 'resident_tax_input.g.dart';

@freezed
class ResidentTaxInputState with _$ResidentTaxInputState {
  const factory ResidentTaxInputState({
    @Default('') String payDate,
    @Default('') String interestPayDate,
  }) = _ResidentTaxInputState;
}

@riverpod
class ResidentTaxInput extends _$ResidentTaxInput {
  final Utility utility = Utility();

  ///
  @override
  ResidentTaxInputState build() => const ResidentTaxInputState();

  ///
  void setPayDate({required String date}) => state = state.copyWith(payDate: date);

  ///
  void setInterestPayDate({required String date}) => state = state.copyWith(interestPayDate: date);

  ///
  Future<void> inputResidentTax({required Map<String, dynamic> param}) async {
    final HttpClient client = ref.read(httpClientProvider);

    // ignore: always_specify_types
    await client.post(path: 'residentTax', body: param).then((value) {}).catchError((error, _) {
      utility.showError('予期せぬエラーが発生しました');
    });
  }
}
