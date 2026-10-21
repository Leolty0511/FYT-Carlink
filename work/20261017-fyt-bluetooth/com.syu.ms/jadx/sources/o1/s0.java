package o1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.input.InputManager;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class s0 {
    public static int[] A(Context context, int i2, int i3) {
        int[] iArr;
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i2);
        InputStreamReader inputStreamReader = new InputStreamReader(inputStreamOpenRawResource);
        try {
            try {
                try {
                    char[] cArr = new char[inputStreamOpenRawResource.available()];
                    inputStreamReader.read(cArr);
                    String[] strArrSplit = Pattern.compile("\n|\t|\r").matcher(new String(cArr)).replaceAll(ProxyProperties.LOCAL_EXCL_LIST).trim().replace(" ", ProxyProperties.LOCAL_EXCL_LIST).split(",");
                    int length = strArrSplit.length;
                    iArr = new int[length];
                    for (int i4 = 0; i4 < length; i4++) {
                        try {
                            iArr[i4] = Integer.parseInt(strArrSplit[i4], 16);
                        } catch (Exception unused) {
                        }
                    }
                    try {
                        inputStreamReader.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (Throwable th) {
                    try {
                        inputStreamReader.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                iArr = null;
            }
        } catch (Exception unused2) {
            inputStreamReader.close();
            iArr = null;
            Log.e("test", " data Len = " + iArr.length);
            return iArr;
        }
        Log.e("test", " data Len = " + iArr.length);
        return iArr;
    }

    public static void B(KeyEvent keyEvent, int i2) {
        new j1.c("injectInputEvent").g((InputManager) new j1.c("getInstance").e(InputManager.class).a()).c(InputEvent.class, Integer.TYPE).d(keyEvent, Integer.valueOf(i2)).a();
    }

    public static void C(long j2) {
        try {
            Thread.sleep(j2);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    public static int[] D(String str) {
        int[] iArr = null;
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = Integer.parseInt(jSONArray.getString(i2), 16);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return iArr;
    }

    public static int[] E(String str) {
        int[] iArr = null;
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = jSONArray.getInt(i2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return iArr;
    }

    public static void F(String str, String str2) {
        d0.d("android.os.SystemProperties", "set", str, str2);
    }

    public static int[] a(int i2) {
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = 0;
        }
        return iArr;
    }

    public static int[] b(int[] iArr, int i2) {
        if (iArr == null || iArr.length == 0) {
            return null;
        }
        int[] iArr2 = new int[iArr.length];
        iArr2[0] = 255;
        for (int i3 = 1; i3 < iArr.length; i3++) {
            iArr2[i3] = iArr[i3] + i2;
        }
        return iArr2;
    }

    public static int c(int i2, int i3) {
        return (i2 >> (i3 * 8)) & 255;
    }

    public static String[] d(byte... bArr) {
        return s(e(bArr));
    }

    public static int[] e(byte... bArr) {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        return iArr;
    }

    public static boolean f(byte[] bArr, int i2) {
        return bArr != null && i2 >= 0 && bArr.length > i2;
    }

    public static boolean g(float[] fArr, int i2) {
        return fArr != null && i2 >= 0 && fArr.length > i2;
    }

    public static boolean h(int[] iArr, int i2) {
        return iArr != null && i2 >= 0 && iArr.length > i2;
    }

    public static <T> boolean i(T[] tArr, int i2) {
        return tArr != null && i2 >= 0 && tArr.length > i2;
    }

    public static boolean j(String str, String str2) {
        if (t(str) || t(str2)) {
            return false;
        }
        return str.equals(str2);
    }

    public static String k(String str) {
        try {
            return (String) a.f.q().getApplicationInfo(str, 0).loadLabel(a.f.q());
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
    }

    public static boolean l(String str, boolean z2) {
        return SystemProperties.getBoolean(str, z2);
    }

    public static int m(String str, int i2) {
        return SystemProperties.getInt(str, i2);
    }

    public static long n(String str, long j2) {
        return SystemProperties.getLong(str, j2);
    }

    public static String o(String str, String str2) {
        return (String) d0.d("android.os.SystemProperties", "get", str, str2);
    }

    public static JSONArray p(int[] iArr) {
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            try {
                jSONArray.put(i2, iArr[i2]);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray;
    }

    public static int[] q(int i2, int i3) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("len of array is 0 or < 0!!");
        }
        int[] iArr = new int[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            iArr[i4] = i3;
        }
        return iArr;
    }

    public static byte[] r(int... iArr) {
        int length = iArr.length;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) (iArr[i2] & 255);
        }
        return bArr;
    }

    public static String[] s(int... iArr) {
        int length = iArr == null ? 0 : iArr.length;
        if (length <= 0) {
            return null;
        }
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = String.format("%02X", Integer.valueOf(iArr[i2]));
        }
        return strArr;
    }

    public static boolean t(String str) {
        return str == null || str.isEmpty();
    }

    public static ArrayList<String> u(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(jSONArray.getString(i2));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public static JSONArray v(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                jSONArray.put(i2, list.get(i2));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray;
    }

    public static double w(double d2, double d3) {
        return Math.log(d2) / Math.log(d3);
    }

    public static int x(int i2, int i3) {
        return ((i2 & 255) << 8) | (i3 & 255);
    }

    public static int y(int i2, int i3, int i4) {
        return ((i2 & 255) << 16) | ((i3 & 255) << 8) | (i4 & 255);
    }

    public static int z(int i2, int i3, int i4, int i5) {
        return ((i2 & 255) << 24) | ((i3 & 255) << 16) | ((i4 & 255) << 8) | (i5 & 255);
    }
}
