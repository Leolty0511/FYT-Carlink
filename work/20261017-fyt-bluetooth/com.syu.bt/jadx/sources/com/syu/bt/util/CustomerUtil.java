package com.syu.bt.util;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class CustomerUtil {
    public static boolean filterDemand_DZSJ() {
        int value;
        return (MyApplication.mIdCustomer == 63 && ((value = Bt.DATA[9]) == 3 || value == 5 || value == 4)) ? false : true;
    }

    public static void otoSkipCarSetting(CharSequence s, Activity activity) {
        if (s != null && activity != null && s.toString().equals("51243204")) {
            Intent intent = new Intent();
            intent.setClassName("com.syu.settings", "com.syu.settings.MainActivity");
            intent.setFlags(268435456);
            intent.putExtra("page", 6);
            activity.startActivity(intent);
            Bt_IpcObj.clearKey(true);
        }
    }

    public static boolean needSpliceNumber() {
        return false;
    }

    public static boolean needskipBtMusic() {
        return MyApplication.mIdCustomer != 41;
    }

    public static boolean isDZSJMIB4Config() {
        return (MyApplication.mIdCustomer == 63 || MyApplication.mIdCustomer == 94) && App_Bt.bHistoryLogAllFlag;
    }

    public static boolean isZhangConfig() {
        return MyApplication.mIdCustomer == 53 && Main.mConf_PlatForm == 8;
    }

    public static boolean isTZYConfig() {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            return false;
        }
        return MyApplication.mIdCustomer == 95 || MyApplication.mIdCustomer == 107;
    }

    public static boolean isLuChangConfig() {
        return MyApplication.mIdCustomer == 105 && Main.mConf_PlatForm == 8;
    }

    public static boolean isXHCNConfig() {
        return MyApplication.mIdCustomer == 62 && Main.mConf_PlatForm == 8;
    }

    public static boolean isYZConfig() {
        return MyApplication.mIdCustomer == 122;
    }

    public static boolean isYFConfig() {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW") || App_Bt.mStrCustomer.equals("bba")) {
            return false;
        }
        return MyApplication.mIdCustomer == 112 || MyApplication.mIdCustomer == 140 || App_Bt.mStrCustomer.equalsIgnoreCase("YF_UI2");
    }

    public static boolean isXCConfig() {
        return MyApplication.mIdCustomer == 100 && Main.mConf_PlatForm == 8;
    }

    public static boolean isZHTDConfig() {
        if (App_Bt.mStrCustomer.equalsIgnoreCase("zhtd")) {
            return true;
        }
        if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset) && MyApplication.mStrFolderAsset.equalsIgnoreCase("ui3") && App_Bt.mStrCustomer.equals("bba")) {
            Log.d("HJT", "isZHTDConfig");
            return true;
        }
        return false;
    }

    public static boolean is7731() {
        switch (MyApplication.mIdPlatForm) {
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
                return true;
            default:
                return false;
        }
    }

    public static boolean is8541() {
        switch (MyApplication.mIdPlatForm) {
            case 50:
                return true;
            default:
                return false;
        }
    }

    public static boolean is7862() {
        switch (MyApplication.mIdPlatForm) {
            case 51:
            case 52:
            case 53:
            case 62:
                return true;
            default:
                return false;
        }
    }

    public static boolean is7862BuiltInBT() {
        return is7862() && App_Bt.mBtType == 0;
    }
}
