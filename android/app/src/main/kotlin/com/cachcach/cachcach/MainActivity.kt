package com.cachcach.cachcach

import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        installSplashScreen()
        WindowCompat.setDecorFitsSystemWindows(window, false);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            splashScreen
                .setOnExitAnimationListener {
                    it.remove()
                }
        }
        super.onCreate(savedInstanceState, persistentState)
    }
}
