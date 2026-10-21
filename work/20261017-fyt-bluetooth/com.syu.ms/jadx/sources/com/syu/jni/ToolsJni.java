package com.syu.jni;

import android.nfc.tech.NfcB;
import android.os.Bundle;
import android.provider.CallLog;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class ToolsJni {
    private static int cmdCpu = -1;
    private static int resetCnt;
    private static int[] results;

    public static int callSystemCtrl(int i2, int i3) {
        return callSystemCtrl(i2, "param0", i3);
    }

    public static byte[] cmd_101_getT132Parama() {
        byte[] bArr = new byte[16384];
        Bundle bundle = new Bundle();
        bundle.putByteArray("param1", bArr);
        SyuJniNative.getInstance().syu_jni_command(101, null, bundle);
        return bArr;
    }

    public static int cmd_104_write_gamma(byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("param0", bArr);
        return SyuJniNative.getInstance().syu_jni_command(104, bundle, null);
    }

    public static int cmd_10_little_hom(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(10, bundle, null);
    }

    public static int[] cmd_147_7026_control_read() {
        int[] iArr = new int[4];
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle.putInt("ch7026cmd", 1);
        if (SyuJniNative.getInstance().syu_jni_command(147, bundle, bundle2) != 0) {
            return null;
        }
        iArr[0] = bundle2.getInt("hposition");
        iArr[1] = bundle2.getInt("vposition");
        iArr[2] = bundle2.getInt("hsync");
        iArr[3] = bundle2.getInt("vsync");
        return iArr;
    }

    public static int cmd_147_7026_control_write(int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt("ch7026cmd", i2);
        if (i2 == 2) {
            bundle.putInt("vposition", i3);
        } else if (i2 == 3) {
            bundle.putInt("hposition", i3);
        } else if (i2 == 4) {
            bundle.putInt("vsync", i3);
        } else if (i2 == 5) {
            bundle.putInt("hsync", i3);
        } else if (i2 == 6) {
            int[] iArrCmd_147_7026_control_read = new int[4];
            if (cmd_147_7026_control_read() != null) {
                iArrCmd_147_7026_control_read = cmd_147_7026_control_read();
            }
            bundle.putInt("vposition", iArrCmd_147_7026_control_read[1]);
            bundle.putInt("hposition", iArrCmd_147_7026_control_read[0]);
            bundle.putInt("vsync", iArrCmd_147_7026_control_read[3]);
            bundle.putInt("hsync", iArrCmd_147_7026_control_read[2]);
        } else if (i2 == 10) {
            bundle.putInt("rotation", i3);
        }
        return SyuJniNative.getInstance().syu_jni_command(147, bundle, null);
    }

    public static byte[] cmd_148_read_data(int i2, int i3) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle.putInt(CallLog.Calls.OFFSET_PARAM_KEY, i3);
        bundle.putInt("readsize", i2);
        if (SyuJniNative.getInstance().syu_jni_command(148, bundle, bundle2) == 0) {
            return bundle2.getByteArray(NfcB.EXTRA_APPDATA);
        }
        return null;
    }

    public static int cmd_149_write_data(byte[] bArr, int i2) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("writedata", bArr);
        bundle.putInt(CallLog.Calls.OFFSET_PARAM_KEY, i2);
        return SyuJniNative.getInstance().syu_jni_command(149, bundle, null);
    }

    public static int cmd_14_set_backcar_type(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(14, bundle, null);
    }

    public static int cmd_153_gsensor_power_onoff(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(153, bundle, null);
    }

    public static int cmd_16_set_led_colors(int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        bundle.putInt("param1", i3);
        return SyuJniNative.getInstance().syu_jni_command(16, bundle, null);
    }

    public static int cmd_17_get_led_colors() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(17, null, bundle);
        return bundle.getInt("param0", 0);
    }

    public static int cmd_19_airplane_mode(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(19, bundle, null);
    }

    public static int cmd_1_backcarMirror(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(1, bundle, null);
    }

    public static int cmd_22_set_video_mode(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(22, bundle, null);
    }

    public static void cmd_24_reset_8288a() {
        SyuJniNative.getInstance().syu_jni_command(24, null, null);
    }

    public static int cmd_251_Normal_Io_Set(int i2, int i3) {
        if (i2 >= 256) {
            return -1;
        }
        int i4 = ((i2 << 8) & 65280) | 65536 | (i3 & 255);
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i4);
        return SyuJniNative.getInstance().syu_jni_command(251, bundle, null);
    }

    public static int cmd_252_Normal_Io_Get(int i2) {
        if (i2 >= 256) {
            return -1;
        }
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle2.putInt("param0", (i2 << 8) & 65280);
        SyuJniNative.getInstance().syu_jni_command(252, bundle2, bundle);
        return bundle.getInt("param0", 0);
    }

    public static int cmd_25_get_video_mode() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(25, null, bundle);
        return bundle.getInt("param0", 0);
    }

    public static int cmd_26_get_video_signal_on() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(26, null, bundle);
        return bundle.getInt("param0", 1);
    }

    public static int cmd_29_acc_state_to_bsp(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(29, bundle, null);
    }

    public static int cmd_2_soundMix(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(2, bundle, null);
    }

    public static void cmd_31_fan_en(int i2) {
        if (cmdCpu != i2) {
            cmdCpu = i2;
            Bundle bundle = new Bundle();
            bundle.putInt("param0", cmdCpu);
            SyuJniNative.getInstance().syu_jni_command(31, bundle, null);
        }
    }

    public static int cmd_32_get_boot_reverse_status() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(32, null, bundle);
        return bundle.getInt("param0", 0);
    }

    public static void cmd_33_reset_videoIc(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        SyuJniNative.getInstance().syu_jni_command(33, bundle, null);
        resetCnt++;
    }

    public static int cmd_3_encarption_result() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(3, null, bundle);
        return bundle.getInt("param0", 1);
    }

    public static int cmd_4_audio_state() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(4, null, bundle);
        return bundle.getInt("param0", 0);
    }

    public static int cmd_50_fm_ant_en(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(50, bundle, null);
    }

    public static int cmd_5_turnoff_lcdc(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(5, bundle, null);
    }

    public static int cmd_6_mute_amp(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(6, bundle, null);
    }

    public static int cmd_7_get_amp_state() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(7, null, bundle);
        return bundle.getInt("param0", 0);
    }

    public static int cmd_8_reset_gps() {
        return SyuJniNative.getInstance().syu_jni_command(8, null, null);
    }

    public static int cmd_9_poweron_screen(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i2);
        return SyuJniNative.getInstance().syu_jni_command(9, bundle, null);
    }

    public static int getSystemCtrlState(int i2, int i3) {
        return getSystemCtrlState(i2, "param0", i3);
    }

    public static int getUsbIndex() {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(254, null, bundle);
        return bundle.getInt("param0", 0);
    }

    public static int setInputForGpio(int i2, int i3) {
        if (i2 >= 256) {
            return -1;
        }
        int i4 = ((i2 << 8) & 65280) | 0 | (i3 & 255);
        Bundle bundle = new Bundle();
        bundle.putInt("param0", i4);
        return SyuJniNative.getInstance().syu_jni_command(251, bundle, null);
    }

    public static int setUsbIndex(int i2, int i3) {
        if (i3 < 0) {
            return -1;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("param0", ((i2 << 4) & 240) | (i3 & 15));
        return SyuJniNative.getInstance().syu_jni_command(255, bundle, null);
    }

    public static int testJni() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle.putInt("test_param", 100);
        int iSyu_jni_command = SyuJniNative.getInstance().syu_jni_command(0, bundle, bundle2);
        bundle2.getDouble("test_param");
        return iSyu_jni_command;
    }

    public static int callSystemCtrl(int i2, String str, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(str, i3);
        return SyuJniNative.getInstance().syu_jni_command(i2, bundle, new Bundle());
    }

    public static int getSystemCtrlState(int i2) {
        return getSystemCtrlState(i2, 0);
    }

    public static int getSystemCtrlState(int i2, String str, int i3) {
        Bundle bundle = new Bundle();
        SyuJniNative.getInstance().syu_jni_command(i2, null, bundle);
        return bundle.getInt(str, i3);
    }

    public static int callSystemCtrl(int i2, String str, int i3, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt(str, i3);
        Bundle bundle2 = new Bundle();
        Log.e("lseccamm", "callSystemCtrl cmdid: " + i2 + " key:" + str + " param:" + i3 + " ret :" + SyuJniNative.getInstance().syu_jni_command(i2, bundle, bundle2));
        return bundle2.getInt(str2, -1);
    }
}
