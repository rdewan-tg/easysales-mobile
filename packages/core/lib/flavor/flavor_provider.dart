part of '../core.dart';


final flavorProvider = StateProvider<Flavor>((ref) {
  return Flavor.dev;
});