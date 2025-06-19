# Keep your Maps SDK related classes safe
-keep class com.google.android.gms.maps.** { *; }
-dontwarn com.google.android.gms.maps.**

# Flutter Local Notifications
-keep class com.dexterous.flutterlocalnotifications.** { *; }
-keep class com.google.gson.* { *; }

# Keep notification resources
-keepresourcexmlattribute **.R$drawable/ic_notification
-keep class **.R$drawable {
    #noinspection ShrinkerUnresolvedReference
    int ic_notification;
}

# Gson
-keepattributes Signature
-keep class * extends com.google.gson.reflect.TypeToken { *; }
-keep class com.google.gson.internal.* { *; }
-keep class com.google.gson.stream.* { *; }