# FlutterImagePickerBug
This is a minimal example that reproduces a flutter bug:
https://github.com/flutter/flutter/issues/74841#issuecomment-769766041

## Steps to reproduce
Run this flutter app on a (virtual) device with Android 4.4.2.

## Log
```
01-29 16:54:58.722 2582-2582/com.foo.foo D/dalvikvm: Not late-enabling CheckJNI (already on)
01-29 16:54:58.742 2582-2582/com.foo.foo D/AndroidRuntime: Shutting down VM
01-29 16:54:58.742 2582-2582/com.foo.foo W/dalvikvm: threadid=1: thread exiting with uncaught exception (group=0x9cd4db20)
01-29 16:54:58.742 2582-2582/com.foo.foo E/AndroidRuntime: FATAL EXCEPTION: main
    Process: com.foo.foo, PID: 2582
    java.lang.RuntimeException: Unable to get provider io.flutter.plugins.imagepicker.ImagePickerFileProvider: java.lang.ClassNotFoundException: Didn't find class "io.flutter.plugins.imagepicker.ImagePickerFileProvider" on path: DexPathList[[zip file "/data/app/com.foo.foo-1.apk"],nativeLibraryDirectories=[/data/app-lib/com.foo.foo-1, /vendor/lib, /system/lib]]
        at android.app.ActivityThread.installProvider(ActivityThread.java:4793)
        at android.app.ActivityThread.installContentProviders(ActivityThread.java:4385)
        at android.app.ActivityThread.handleBindApplication(ActivityThread.java:4325)
        at android.app.ActivityThread.access$1500(ActivityThread.java:135)
        at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1256)
        at android.os.Handler.dispatchMessage(Handler.java:102)
        at android.os.Looper.loop(Looper.java:136)
        at android.app.ActivityThread.main(ActivityThread.java:5017)
        at java.lang.reflect.Method.invokeNative(Native Method)
        at java.lang.reflect.Method.invoke(Method.java:515)
        at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:779)
        at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:595)
        at dalvik.system.NativeStart.main(Native Method)
     Caused by: java.lang.ClassNotFoundException: Didn't find class "io.flutter.plugins.imagepicker.ImagePickerFileProvider" on path: DexPathList[[zip file "/data/app/com.foo.foo-1.apk"],nativeLibraryDirectories=[/data/app-lib/com.foo.foo-1, /vendor/lib, /system/lib]]
        at dalvik.system.BaseDexClassLoader.findClass(BaseDexClassLoader.java:56)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:497)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:457)
        at android.app.ActivityThread.installProvider(ActivityThread.java:4778)
        at android.app.ActivityThread.installContentProviders(ActivityThread.java:4385) 
        at android.app.ActivityThread.handleBindApplication(ActivityThread.java:4325) 
        at android.app.ActivityThread.access$1500(ActivityThread.java:135) 
        at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1256) 
        at android.os.Handler.dispatchMessage(Handler.java:102) 
        at android.os.Looper.loop(Looper.java:136) 
        at android.app.ActivityThread.main(ActivityThread.java:5017) 
        at java.lang.reflect.Method.invokeNative(Native Method) 
        at java.lang.reflect.Method.invoke(Method.java:515) 
        at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:779) 
        at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:595) 
        at dalvik.system.NativeStart.main(Native Method) 
```