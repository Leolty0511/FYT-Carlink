package com.syu.app;

import android.graphics.Typeface;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.lsec.core.frame.app.MyActivity;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.ipc.Conn;
import com.lsec.core.ipc.ConnSys;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.ipc.module.main.Sound;
import com.lsec.core.ipc.module.sys.Sys;
import com.lsec.core.ipc786.module.Bt786;
import com.lsec.core.ipc786.module.Main786;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.IConnectedMain;
import com.lsec.core.util.IUiNotify;
import com.lsec.core.util.Markup;
import com.lsec.core.util.data.FinalChip;
import com.syu.bt.App_Bt;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class AppBluetooth extends MyApplication {
    public static String mStrCustomer = FinalChip.BSP_PLATFORM_Null;
    public static String mStrCustomerKH = FinalChip.BSP_PLATFORM_Null;
    public static int mIsTranslucent = 0;
    public static int mStatess = 0;
    public Conn mConn = null;
    public ConnSys mConnSys = null;
    public Main786 mMainConn = null;
    public Bt786 mBtConn = null;
    public Runnable mRunnable_InitIpc = new Runnable() { // from class: com.syu.app.AppBluetooth.1
        @Override // java.lang.Runnable
        public void run() {
            AppBluetooth.this.initIpc();
        }
    };
    private IUiNotify notify_Bt_786 = new IUiNotify() { // from class: com.syu.app.AppBluetooth.2
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (IUiNotify uiNotify : AppBluetooth.mListUiNotify_Bt_786) {
                uiNotify.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    private IUiNotify notify_Main_786 = new IUiNotify() { // from class: com.syu.app.AppBluetooth.3
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (IUiNotify uiNotify : AppBluetooth.mListUiNotify_Main_786) {
                uiNotify.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    private IUiNotify notify_Bt = new IUiNotify() { // from class: com.syu.app.AppBluetooth.4
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (IUiNotify uiNotify : AppBluetooth.mListUiNotify_Bt) {
                uiNotify.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    private IUiNotify notify_Main = new IUiNotify() { // from class: com.syu.app.AppBluetooth.5
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (IUiNotify uiNotify : AppBluetooth.mListUiNotify_Main) {
                uiNotify.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    private IUiNotify notify_Sound = new IUiNotify() { // from class: com.syu.app.AppBluetooth.6
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (IUiNotify uiNotify : AppBluetooth.mListUiNotify_Sound) {
                uiNotify.onNotify(updateCode, ints, flts, strs);
            }
        }
    };
    private IUiNotify notify_Sys = new IUiNotify() { // from class: com.syu.app.AppBluetooth.7
        @Override // com.lsec.core.util.IUiNotify
        public void onNotify(int updateCode, int[] ints, float[] flts, String[] strs) {
            for (IUiNotify uiNotify : AppBluetooth.mListUiNotify_Sys) {
                uiNotify.onNotify(updateCode, ints, flts, strs);
            }
        }
    };

    public static AppBluetooth getApp() {
        return (AppBluetooth) myApp;
    }

    @Override // com.lsec.core.frame.app.MyApplication, android.app.Application
    public void onCreate() throws Throwable {
        ReadConf();
        setThemeColor();
        Log.d("theme", " 00 App  *** AppBluetooth  onCreate ");
        super.onCreate();
        App_Bt.getInstance().onCreate(this);
        this.mRunnable_InitIpc.run();
    }

    public void setThemeColor() {
        Log.d("theme", " 00 App  *** setThemeColor  mStrCustomer = " + mStrCustomer);
        if (mStrCustomer.equals("TZY_NEW")) {
            String colorType = SystemProperties.get("persist.fyt.themefortzy", "gradientpurple");
            if (colorType.equalsIgnoreCase("gradientpurple") || colorType.equalsIgnoreCase("spro")) {
                MyApplication.mStrFolderAsset = "UI1";
                return;
            }
            if (colorType.equalsIgnoreCase("gradientblue")) {
                MyApplication.mStrFolderAsset = "UI3";
                return;
            }
            if (colorType.equalsIgnoreCase("blackgold")) {
                MyApplication.mStrFolderAsset = "UI4";
                return;
            }
            if (colorType.equalsIgnoreCase("black")) {
                MyApplication.mStrFolderAsset = "UI2";
                return;
            }
            if (colorType.equalsIgnoreCase("dn_day")) {
                MyApplication.mStrFolderAsset = "UI5";
                return;
            } else if (colorType.equalsIgnoreCase("dn_night")) {
                MyApplication.mStrFolderAsset = "UI6";
                return;
            } else {
                if (colorType.equalsIgnoreCase("dn_auto")) {
                    MyApplication.mStrFolderAsset = "UI7";
                    return;
                }
                return;
            }
        }
        if (mStrCustomer.equals("bba")) {
            Log.d("gdyy", " setThemeColor 01 colorType:" + SystemProperties.get("persist.lsec.bbatype", FinalChip.BSP_PLATFORM_Null));
            MyApplication.mStrFolderAsset = "UI6";
            return;
        }
        if (mStrCustomer.equals("NEW_BT_1920")) {
            try {
                Log.d("theme", " 11 App  *** setThemeColor  mStrCustomer = " + mStrCustomer);
                DisplayMetrics metric = new DisplayMetrics();
                WindowManager mWindowManager = (WindowManager) getSystemService("window");
                mWindowManager.getDefaultDisplay().getMetrics(metric);
                int width = metric.widthPixels;
                int height = metric.heightPixels;
                int barHeight = SystemProperties.getInt("sys.lsec.navi_bar_height", 0);
                double mScreenWchuH = (1.0d * ((double) width)) / ((double) height);
                if (mScreenWchuH > 2.7d || barHeight >= 100) {
                    MyApplication.mStrFolderAsset = "UI1";
                }
                Log.d("theme", " 22 App  *** setThemeColor  screenWidth = " + width + " screenHeight = " + height + "  ** mScreenWchuH = " + mScreenWchuH + "barHeight = " + barHeight + " mStrFolderAsset = " + MyApplication.mStrFolderAsset);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (mStrCustomer.equals("BT_23NEW")) {
            try {
                Typeface mTypeface = Typeface.createFromAsset(getAssets(), "fonts/COMPASSE.OTF");
                Field field = Typeface.class.getDeclaredField("MONOSPACE");
                field.setAccessible(true);
                field.set(null, mTypeface);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                if (!mStrCustomerKH.equals("yl_zz")) {
                    Log.d("theme", " 11 App  *** setThemeColor  mStrCustomer = " + mStrCustomer);
                }
                DisplayMetrics metric2 = new DisplayMetrics();
                WindowManager mWindowManager2 = (WindowManager) getSystemService("window");
                mWindowManager2.getDefaultDisplay().getMetrics(metric2);
                int width2 = metric2.widthPixels;
                int height2 = metric2.heightPixels;
                int barHeight2 = SystemProperties.getInt("sys.lsec.navi_bar_height", 0);
                double mScreenWchuH2 = (1.0d * ((double) width2)) / ((double) height2);
                if (mScreenWchuH2 > 2.15d) {
                    MyApplication.mStrFolderAsset = "UI1";
                }
                if (width2 == 2880 && barHeight2 >= 100) {
                    MyApplication.mStrFolderAsset = "UI1";
                }
                Log.d("theme", " 22 App  *** setThemeColor  screenWidth = " + width2 + " screenHeight = " + height2 + "  ** mScreenWchuH = " + mScreenWchuH2 + "barHeight = " + barHeight2 + " mStrFolderAsset = " + MyApplication.mStrFolderAsset);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public void initIpc() {
        if (mIsOldService) {
            Bt.mUiNotifyEvent.uiNotify = this.notify_Bt_786;
            Main.mUiNotifyEvent.uiNotify = this.notify_Main_786;
            this.mMainConn = new Main786(getApp(), getApp(), RegCode.mRegister_Main_786);
            this.mBtConn = new Bt786(getApp(), getApp(), RegCode.mRegister_Bt_786);
            return;
        }
        Main.mUiNotifyEvent.uiNotify = this.notify_Main;
        Sound.mUiNotifyEvent.uiNotify = this.notify_Sound;
        Bt.mUiNotifyEvent.uiNotify = this.notify_Bt;
        Sys.mUiNotifyEvent.uiNotify = this.notify_Sys;
        this.mConn = new Conn(getApp(), getApp());
        this.mConn.addObserver(Main.getInstance(), RegCode.mRegister_Main);
        this.mConn.addObserver(Bt.getInstance(), RegCode.mRegister_Bt);
        this.mConn.addObserver(Sound.getInstance(), RegCode.mRegister_Sound);
        this.mConnSys = new ConnSys(getApp(), getApp());
        this.mConnSys.addObserver(Sys.getInstance(), RegCode.mRegister_Sys);
    }

    public void ReadConf() throws Throwable {
        String str;
        try {
            int id = getResources().getIdentifier("conf_platform", "raw", getPackageName());
            if (id >= 0) {
                String strXml = FuncUtils.readStrFromStream(getResources().openRawResource(id));
                if (!TextUtils.isEmpty(strXml)) {
                    Markup xml = new Markup();
                    xml.ReadXML(strXml);
                    if (xml.IntoItem()) {
                        do {
                            String strTemp = xml.GetAttr("name");
                            if (strTemp != null) {
                                if (strTemp.equals("platform")) {
                                    String str2 = xml.GetAttr("value");
                                    if (str2 != null) {
                                        Main.initPlatForm(str2);
                                    }
                                } else if (strTemp.equals("old_service")) {
                                    String str3 = xml.GetAttr("value");
                                    if (str3 != null && str3.equals("1")) {
                                        mIsOldService = true;
                                    }
                                } else if (strTemp.equals("customer")) {
                                    String str4 = xml.GetAttr("value");
                                    if (str4 != null) {
                                        mStrCustomer = str4;
                                    }
                                } else if (strTemp.equals("customer_kh")) {
                                    String str5 = xml.GetAttr("value");
                                    if (str5 != null) {
                                        mStrCustomerKH = str5;
                                    }
                                } else if (strTemp.equals("Translucent") && (str = xml.GetAttr("value")) != null) {
                                    if (str.equals("1")) {
                                        mIsTranslucent = 1;
                                    } else if (str.equals("2")) {
                                        mIsTranslucent = 2;
                                    } else if (str.equals("3")) {
                                        mIsTranslucent = 3;
                                    } else if (str.equals("4")) {
                                        mIsTranslucent = 4;
                                    }
                                }
                            }
                        } while (xml.NextItem());
                        xml.ExitItem();
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    @Override // com.lsec.core.frame.app.MyApplication, com.lsec.core.util.InterfaceApp
    public void requestAppIdRight() {
        MyActivity activity = getApp().getTopActivity();
        if (activity != null) {
            activity.requestAppIdRight();
        }
    }

    @Override // com.lsec.core.frame.app.MyApplication, com.lsec.core.util.InterfaceApp
    public void onConnected_Main() {
        for (IConnectedMain connectedMain : mListConnectedMain) {
            connectedMain.onConnected_Main();
        }
    }
}
