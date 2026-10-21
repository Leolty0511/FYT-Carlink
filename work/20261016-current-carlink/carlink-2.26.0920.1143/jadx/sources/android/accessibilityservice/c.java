package android.accessibilityservice;

import android.app.Fragment;
import android.app.IApplicationThread;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Parcel;
import android.util.Log;
import android.util.Printer;
import java.io.File;
import java.io.PrintWriter;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static void A(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        Log.w(str, sb.toString());
    }

    public static void B(StringBuilder sb, String str, Printer printer) {
        sb.append(str);
        printer.println(sb.toString());
    }

    public static void C(StringBuilder sb, String str, String str2) {
        sb.append(str);
        Log.w(str2, sb.toString());
    }

    public static String D(String str, String str2) {
        return str + str2;
    }

    public static float a(float f2, float f3, float f4, float f5) {
        return ((f2 - f3) * f4) + f5;
    }

    public static IApplicationThread b(Parcel parcel, String str) {
        parcel.enforceInterface(str);
        return IApplicationThread.Stub.asInterface(parcel.readStrongBinder());
    }

    public static String c(TypedArray typedArray, StringBuilder sb, String str) {
        sb.append(typedArray.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    public static String d(String str, int i2) {
        return str + i2;
    }

    public static String e(String str, int i2, String str2) {
        return str + i2 + str2;
    }

    public static String f(String str, long j2) {
        return str + j2;
    }

    public static String g(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String h(String str, Uri uri) {
        return str + uri;
    }

    public static String i(String str, File file) {
        return str + file;
    }

    public static String j(String str, String str2) {
        return str + str2;
    }

    public static String k(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String l(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String m(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        sb.append(str);
        return sb.toString();
    }

    public static String n(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String o(StringBuilder sb, boolean z2, String str) {
        sb.append(z2);
        sb.append(str);
        return sb.toString();
    }

    public static String p(XmlPullParser xmlPullParser, StringBuilder sb) {
        sb.append(xmlPullParser.getName());
        return sb.toString();
    }

    public static StringBuilder q(int i2, String str) {
        StringBuilder sb = new StringBuilder(i2);
        sb.append(str);
        return sb;
    }

    public static StringBuilder r(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder s(String str, int i2, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder t(String str, int i2, String str2, int i3, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder u(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder v(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder w(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void x(int i2, StringBuilder sb, String str) {
        sb.append(Integer.toHexString(i2));
        sb.append(str);
    }

    public static void y(PrintWriter printWriter, boolean z2, String str, String str2) {
        printWriter.println(z2);
        printWriter.print(str);
        printWriter.print(str2);
    }

    public static void z(String str, boolean z2, String str2) {
        Log.d(str2, str + z2);
    }
}
