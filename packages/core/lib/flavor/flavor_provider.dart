part of '../core.dart';


final flavorProvider = NotifierProvider<AppFlavor, Flavor >(AppFlavor.new);

class AppFlavor extends Notifier<Flavor> {
  @override
  Flavor build() {
    return Flavor.dev;
  }


  void setFlavor(Flavor flavor) {
    state = flavor;
  }
}