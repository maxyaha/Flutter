import 'package:flutter_app/src/features/home/domain/home_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

class HomeRepository {
  Future<HomeModel> fetchHomeData() async {
    // Simulate network delay
    await Future<void>.delayed(const Duration(milliseconds: 500));
    return const HomeModel(
      title: 'Welcome to the Dashboard',
      description:
          'This is a responsive view demonstrating Clean Architecture.',
    );
  }
}

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepository();
}

@riverpod
Future<HomeModel> homeData(Ref ref) {
  return ref.watch(homeRepositoryProvider).fetchHomeData();
}
