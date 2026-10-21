package com.syu.Uvoice;

import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.lsec.core.util.data.FinalChip;
import com.syu.jni.SyuJniNative;

/* JADX INFO: loaded from: classes.dex */
public class UvoiceEcnr {
    public static UvoiceEcnr INSTANCE = null;
    public static boolean bLoadLibOnce = false;
    public static String ai_appid = "AHOPvaBY000016c2";
    public static String ai_code = "66J6Y4UK";
    public static String ai_code_test = "TB24A6JJ";
    public static int iJniNative = 255;
    public static String mStrPlatForm = FinalChip.BSP_PLATFORM_Null;

    public static native int checkActivate();

    public static native int checkActivate2(String str);

    public static native int getActivateCreate(int i);

    public static native int getActivateCreate2(int i, String str, String str2);

    public static native int getQrCode(byte[] bArr);

    public static native int getQrCode2(byte[] bArr, String str);

    private UvoiceEcnr() {
        System.loadLibrary("uvoice_ecnr_license_jni");
    }

    public static UvoiceEcnr getInstance() {
        if (!bLoadLibOnce) {
            bLoadLibOnce = true;
            try {
                if (INSTANCE == null) {
                    INSTANCE = new UvoiceEcnr();
                }
            } catch (Throwable th) {
                INSTANCE = null;
            }
        }
        return INSTANCE;
    }

    public static int getActivateCreate() {
        int code = getAIType();
        Log.d("UvEcnrJNI", new StringBuffer("  java jar 激活  App_Bt syu_jni_command code = ").append(code).toString());
        if (code >= 0) {
            return getActivateCreate2(code, ai_appid, ai_code);
        }
        return -1;
    }

    public static int checkActivate2() {
        return checkActivate2(ai_appid);
    }

    public static int getQrCode2(byte[] qr_code) {
        return getQrCode2(qr_code, ai_appid);
    }

    public static int getAIType() {
        String mStrPlatForm2 = getPlat();
        int mBtType = SystemProperties.getInt("sys.fyt.bluetooth_type", -1);
        Log.d("jarr", new StringBuffer("  jar 11 JAR getAIType mBtType = ").append(mBtType).append(" mStrPlatForm = ").append(mStrPlatForm2).append(" getJniNative = ").append(getJniNative()).toString());
        if (mBtType == 1 && "6318".equals(mStrPlatForm2) && getJniNative() >= 0) {
            return getJniNative();
        }
        if (mBtType == 7 && "6318".equals(mStrPlatForm2)) {
            return getJniNative();
        }
        return ((mBtType == 1 || mBtType == 8 || mBtType == 7) && "890A".equals(mStrPlatForm2)) ? 1 : -1;
    }

    public static int getJniNative() {
        if (iJniNative != 255) {
            return iJniNative;
        }
        Bundle outparam = new Bundle();
        SyuJniNative syuJniNative = SyuJniNative.getInstance();
        if (syuJniNative == null) {
            return -1;
        }
        syuJniNative.syu_jni_command(201, null, outparam);
        if (outparam == null) {
            return -1;
        }
        int iJniNative2 = outparam.getInt("param0", -1);
        Log.d("UvEcnrJNI", new StringBuffer("  jar 11 App_Bt syu_jni_command iJniNative = ").append(iJniNative2).toString());
        return iJniNative2;
    }

    public static String getPlat() {
        if (!TextUtils.isEmpty(mStrPlatForm)) {
            return mStrPlatForm;
        }
        mStrPlatForm = SystemProperties.get("sys.fyt.platform", FinalChip.BSP_PLATFORM_Null);
        if (TextUtils.isEmpty(mStrPlatForm)) {
            mStrPlatForm = SystemProperties.get("ro.fyt.platform", FinalChip.BSP_PLATFORM_Null);
        }
        return mStrPlatForm;
    }
}
