package com.myspec;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemProperties;
import android.view.View;
import android.view.WindowManager;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.ipc.module.main.Main;
import com.syu.bt.App_Bt;
import com.syu.bt.util.CustomerUtil;
import com.syu.jni.SyuJniNative;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class MyClass {
    private static MyClass mInstance;
    View v;
    private int stateActivite = -1256;
    HashMap<String, Drawable> mapDrawables = new HashMap<>();
    public boolean bPopPhoneTip = false;
    public Runnable mRunnable_popPhoneTip = new Runnable() { // from class: com.myspec.MyClass.1
        @Override // java.lang.Runnable
        public void run() {
            if (!MyClass.this.bPopPhoneTip) {
                MyClass.this.v = new View(App_Bt.getInstance().uiApp.mContext);
                if (Locale.getDefault().getLanguage().toString().contains("zh")) {
                    MyClass.this.v.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("zh_tip", MyClass.this.mapDrawables, null));
                } else if (Locale.getDefault().getLanguage().toString().contains("ru")) {
                    MyClass.this.v.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("ru_tip", MyClass.this.mapDrawables, null));
                } else {
                    MyClass.this.v.setBackground(App_Bt.getInstance().uiApp.getDrawableFromPath("en_tip", MyClass.this.mapDrawables, null));
                }
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.flags = 40;
                layoutParams.type = 2002;
                layoutParams.gravity = 16;
                layoutParams.format = 1;
                layoutParams.width = -1;
                layoutParams.height = -1;
                MyClass.this.bPopPhoneTip = true;
                WindowManager windowManager = (WindowManager) MyApplication.myApp.getSystemService("window");
                windowManager.addView(MyClass.this.v, layoutParams);
            }
        }
    };
    public Runnable mRunnable_hidePopPhoneTip = new Runnable() { // from class: com.myspec.MyClass.2
        @Override // java.lang.Runnable
        public void run() {
            if (MyClass.this.bPopPhoneTip) {
                WindowManager windowManager = (WindowManager) MyApplication.myApp.getSystemService("window");
                if (MyClass.this.v != null) {
                    windowManager.removeView(MyClass.this.v);
                }
                MyClass.this.bPopPhoneTip = false;
            }
        }
    };

    public static MyClass getInstance() {
        if (mInstance == null) {
            mInstance = new MyClass();
        }
        return mInstance;
    }

    public void initCust() {
        if (CustomerUtil.is7862() && App_Bt.bSpeValue && !this.bPopPhoneTip) {
            boolean activestep = SystemProperties.getBoolean("sys.lsec.needsetinfo", false);
            popTip(activestep);
        } else if (App_Bt.bSpeValue && !this.bPopPhoneTip && MyApplication.mIdPlatForm == 40) {
            Main.postRunnable_Ui(false, new Runnable() { // from class: com.myspec.MyClass.3
                @Override // java.lang.Runnable
                public void run() {
                    Bundle inparam = new Bundle();
                    Bundle outparam = new Bundle();
                    MyClass.this.stateActivite = -256;
                    inparam.putInt("areaindex", 256);
                    SyuJniNative syuJniNative = SyuJniNative.getInstance();
                    if (syuJniNative != null && SyuJniNative.bLoadLibOnce) {
                        MyClass.this.stateActivite = syuJniNative.syu_jni_command(112, inparam, outparam);
                        if (outparam != null && MyClass.this.stateActivite == 0) {
                            MyClass.this.stateActivite = outparam.getInt("isactived", 55);
                        }
                    }
                    if (MyClass.this.stateActivite != -256) {
                        MyClass.this.popTip(MyClass.this.stateActivite != 1);
                    }
                }
            }, 0L);
        }
    }

    public void destCust() {
        if (App_Bt.bSpeValue) {
            popTip(false);
        }
    }

    public boolean isMainThread() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public void popTip(boolean bPop) {
        Runnable runnable;
        Main.removeRunnable_Ui(this.mRunnable_popPhoneTip);
        Main.removeRunnable_Ui(this.mRunnable_hidePopPhoneTip);
        if (bPop) {
            runnable = this.mRunnable_popPhoneTip;
        } else {
            runnable = this.mRunnable_hidePopPhoneTip;
        }
        if (runnable != null) {
            if (isMainThread()) {
                runnable.run();
            } else {
                Main.postRunnable_Ui(true, runnable);
            }
        }
    }
}
