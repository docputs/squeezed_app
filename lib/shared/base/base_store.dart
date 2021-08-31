import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/auth/core/errors/auth_failure.dart';

part '../base_store.g.dart';

class BaseStore = _BaseStore with _$BaseStore;

abstract class _BaseStore with Store {
  @observable
  String? errorMessage;

  @computed
  bool get hasError => errorMessage != null;

  @observable
  bool isLoading = false;

  @action
  Future<T?> makeAsyncRequest<T>(Future<T> Function() function) async {
    isLoading = true;
    try {
      final result = await function();
      return result;
    } on AuthFailure catch (e) {
      errorMessage = e.message;
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
    }
  }
}
