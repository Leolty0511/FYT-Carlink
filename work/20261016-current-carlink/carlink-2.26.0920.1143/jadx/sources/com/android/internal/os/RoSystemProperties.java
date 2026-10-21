package com.android.internal.os;

import android.content.ContentResolver;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class RoSystemProperties {
    public static final boolean CONFIG_LOW_RAM;
    public static final boolean CONFIG_SMALL_BATTERY;
    public static final String CONTROL_PRIVAPP_PERMISSIONS;
    public static final boolean CONTROL_PRIVAPP_PERMISSIONS_DISABLE;
    public static final boolean CONTROL_PRIVAPP_PERMISSIONS_ENFORCE;
    public static final boolean CONTROL_PRIVAPP_PERMISSIONS_LOG;
    public static final boolean CRYPTO_BLOCK_ENCRYPTED;
    public static final boolean CRYPTO_ENCRYPTABLE;
    public static final boolean CRYPTO_ENCRYPTED;
    public static final boolean CRYPTO_FILE_ENCRYPTED;
    public static final String CRYPTO_STATE;
    public static final String CRYPTO_TYPE;
    public static final boolean DEBUGGABLE;
    public static final int FACTORYTEST;
    public static final boolean FW_SYSTEM_USER_SPLIT;

    static {
        boolean z2 = false;
        DEBUGGABLE = SystemProperties.getInt("ro.debuggable", 0) == 1;
        FACTORYTEST = SystemProperties.getInt("ro.factorytest", 0);
        String str = SystemProperties.get("ro.control_privapp_permissions");
        CONTROL_PRIVAPP_PERMISSIONS = str;
        CONFIG_LOW_RAM = SystemProperties.getBoolean("ro.config.low_ram", false);
        CONFIG_SMALL_BATTERY = SystemProperties.getBoolean("ro.config.small_battery", false);
        FW_SYSTEM_USER_SPLIT = SystemProperties.getBoolean("ro.fw.system_user_split", false);
        String str2 = SystemProperties.get("ro.crypto.state");
        CRYPTO_STATE = str2;
        String str3 = SystemProperties.get("ro.crypto.type");
        CRYPTO_TYPE = str3;
        CRYPTO_ENCRYPTABLE = (str2.isEmpty() || "unsupported".equals(str2)) ? false : true;
        CRYPTO_ENCRYPTED = "encrypted".equalsIgnoreCase(str2);
        CRYPTO_FILE_ENCRYPTED = ContentResolver.SCHEME_FILE.equalsIgnoreCase(str3);
        CRYPTO_BLOCK_ENCRYPTED = "block".equalsIgnoreCase(str3);
        boolean zEqualsIgnoreCase = "log".equalsIgnoreCase(str);
        CONTROL_PRIVAPP_PERMISSIONS_LOG = zEqualsIgnoreCase;
        boolean zEqualsIgnoreCase2 = "enforce".equalsIgnoreCase(str);
        CONTROL_PRIVAPP_PERMISSIONS_ENFORCE = zEqualsIgnoreCase2;
        if (!zEqualsIgnoreCase && !zEqualsIgnoreCase2) {
            z2 = true;
        }
        CONTROL_PRIVAPP_PERMISSIONS_DISABLE = z2;
    }
}
