# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\Program Files\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-keepattributes Signature, InnerClasses, LineNumberTable

# android-support
-dontwarn android.support.**
-keep class android.support.** { *; }

# app
-keep class me.wcy.weather.utils.proguard.NoProGuard { *; }
-keep class * extends me.wcy.weather.utils.proguard.NoProGuard { *; }

# amap
-keep class com.amap.api.location.** { *; }
-keep class com.amap.api.fence.** { *; }
-keep class com.autonavi.aps.amapapi.model.** { *; }

# rxjava
-dontwarn rx.**
-keep class rx.** { *; }

# retrofit
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }

# okio
-dontwarn okio.**
-keep class okio.** { *; }

# glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

# bmob
-dontwarn cn.bmob.v3.**
-keep class cn.bmob.v3.** { *; }
