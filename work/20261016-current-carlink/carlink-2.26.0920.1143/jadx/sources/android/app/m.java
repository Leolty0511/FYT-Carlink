package android.app;

import android.bluetooth.BluetoothDevice;
import android.os.HwParcel;
import android.util.ArraySet;
import android.util.Log;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class m {
    public static void A(String str, int i2, String str2) {
        Log.w(str2, str + i2);
    }

    public static void B(String str, String str2, String str3) {
        Log.w(str, str2);
        Log.d(str3, Log.getStackTraceString(new Throwable()));
    }

    public static void C(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        Log.e(str, sb.toString());
    }

    public static int D(int i2, int i3, int i4, int i5) {
        return ((i2 * i3) + i4) * i5;
    }

    public static double a(double d2, double d3, double d4) {
        return (Math.sin(d2) * d3) + d4;
    }

    public static int b(int i2, int i3, int i4, int i5) {
        return ((i2 - i3) / i4) + i5;
    }

    public static HwParcel c(String str) {
        HwParcel hwParcel = new HwParcel();
        hwParcel.writeInterfaceToken(str);
        return hwParcel;
    }

    public static String d(int i2, StringBuilder sb) {
        sb.append(Integer.toHexString(i2));
        return sb.toString();
    }

    public static String e(String str, int i2, String str2, int i3) {
        return str + i2 + str2 + i3;
    }

    public static String f(String str, int i2, String str2, int i3, String str3) {
        return str + i2 + str2 + i3 + str3;
    }

    public static String g(String str, BluetoothDevice bluetoothDevice, String str2) {
        return str + bluetoothDevice + str2;
    }

    public static String h(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String i(StringBuilder sb, float f2, String str) {
        sb.append(f2);
        sb.append(str);
        return sb.toString();
    }

    public static String j(StringBuilder sb, int i2, char c) {
        sb.append(i2);
        sb.append(c);
        return sb.toString();
    }

    public static String k(StringBuilder sb, long j2, String str) {
        sb.append(j2);
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder l(String str, long j2, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder m(StringBuilder sb, int i2, StringBuilder sb2, String str) {
        sb.append(i2);
        sb2.append(sb.toString());
        return new StringBuilder(str);
    }

    public static void n(ArraySet arraySet, String str, String str2, String str3, String str4) {
        arraySet.add(str);
        arraySet.add(str2);
        arraySet.add(str3);
        arraySet.add(str4);
    }

    public static void o(String str) {
        Log.e(str, Log.getStackTraceString(new Throwable()));
    }

    public static void p(String str, int i2, String str2) {
        Log.e(str2, str + i2);
    }

    public static void q(String str, int i2, String str2, String str3) {
        Log.e(str3, str + i2 + str2);
    }

    public static void r(String str, String str2, String str3) {
        Log.e(str3, str + str2);
    }

    public static void s(String str, String str2, String str3, String str4) {
        Log.w(str4, str + str2 + str3);
    }

    public static void t(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        Log.d(str, sb.toString());
    }

    public static void u(StringBuilder sb, int i2, String str, int i3, String str2) {
        sb.append(i2);
        sb.append(str);
        sb.append(i3);
        sb.append(str2);
    }

    public static void v(StringBuilder sb, int i2, String str, String str2) {
        sb.setLength(i2);
        sb.append(str);
        sb.append(str2);
    }

    public static void w(StringBuilder sb, String str) {
        sb.append(Log.getStackTraceString(new Throwable()));
        Log.e(str, sb.toString());
    }

    public static void x(StringBuilder sb, String str, String str2) {
        sb.append(str);
        Log.d(str2, sb.toString());
    }

    public static void y(HashSet hashSet, String str, String str2, String str3, String str4) {
        hashSet.add(str);
        hashSet.add(str2);
        hashSet.add(str3);
        hashSet.add(str4);
    }

    public static int z(int i2, int i3, int i4, int i5) {
        return ((i2 * i3) / i4) + i5;
    }
}
