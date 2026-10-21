package o1;

import android.content.SharedPreferences;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import app.App;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f16870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Looper f16871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<a> f16872c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SharedPreferences f16873d;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16874a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f16875b;

        public a() {
        }
    }

    public h0(String str) {
        this.f16873d = App.c().getSharedPreferences(str, 0);
        HandlerThread handlerThread = new HandlerThread("SharedPreferencesUtils-work-thread::" + str);
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        this.f16871b = looper;
        Handler handler = new Handler(looper);
        this.f16870a = handler;
        handler.postDelayed(this, 3000L);
    }

    public String a(float[] fArr) {
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < fArr.length; i2++) {
            try {
                jSONArray.put(i2, fArr[i2]);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    public String b(String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            try {
                jSONArray.put(i2, strArr[i2]);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    public void c() {
        this.f16872c.clear();
        this.f16873d.edit().clear().commit();
    }

    public void d() {
        int size = this.f16872c.size();
        for (int i2 = 0; i2 < size; i2++) {
            e(this.f16872c.keyAt(i2));
        }
    }

    public void e(int i2) {
        synchronized (this.f16873d) {
            if (this.f16872c.indexOfKey(i2) >= 0) {
                a aVar = this.f16872c.get(i2);
                if (aVar.f16874a) {
                    Object obj = aVar.f16875b;
                    if (obj instanceof Integer) {
                        this.f16873d.edit().putInt(i2 + ProxyProperties.LOCAL_EXCL_LIST, ((Integer) aVar.f16875b).intValue()).commit();
                    } else if (obj instanceof Float) {
                        this.f16873d.edit().putFloat(i2 + ProxyProperties.LOCAL_EXCL_LIST, ((Float) aVar.f16875b).floatValue()).commit();
                    } else if (obj instanceof String) {
                        this.f16873d.edit().putString(i2 + ProxyProperties.LOCAL_EXCL_LIST, (String) aVar.f16875b).commit();
                    } else if (obj instanceof int[]) {
                        this.f16873d.edit().putString(i2 + ProxyProperties.LOCAL_EXCL_LIST, s0.p((int[]) aVar.f16875b).toString()).commit();
                    } else if (obj instanceof String[]) {
                        this.f16873d.edit().putString(i2 + ProxyProperties.LOCAL_EXCL_LIST, b((String[]) aVar.f16875b)).commit();
                    } else if (obj instanceof float[]) {
                        this.f16873d.edit().putString(i2 + ProxyProperties.LOCAL_EXCL_LIST, a((float[]) aVar.f16875b)).commit();
                    } else if (obj instanceof SparseIntArray) {
                        String strO = o((SparseIntArray) obj);
                        this.f16873d.edit().putString(i2 + ProxyProperties.LOCAL_EXCL_LIST, strO).commit();
                    }
                }
                aVar.f16874a = false;
            }
        }
    }

    public float[] f(int i2) {
        a aVar;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            aVar = this.f16872c.get(i2);
        } else {
            a aVar2 = new a();
            aVar2.f16875b = g(i2);
            this.f16872c.put(i2, aVar2);
            aVar = aVar2;
        }
        Object obj = aVar.f16875b;
        if (obj != null) {
            return (float[]) ((float[]) obj).clone();
        }
        return null;
    }

    public float[] g(int i2) {
        String strL = l(i2, ProxyProperties.LOCAL_EXCL_LIST);
        if (strL != null && !strL.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(strL);
                int length = jSONArray.length();
                float[] fArr = new float[length];
                for (int i3 = 0; i3 < length; i3++) {
                    fArr[i3] = (float) jSONArray.getDouble(i3);
                }
                return fArr;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public int h(int i2, int i3) {
        a aVar;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            aVar = this.f16872c.get(i2);
        } else {
            a aVar2 = new a();
            aVar2.f16875b = Integer.valueOf(this.f16873d.getInt(ProxyProperties.LOCAL_EXCL_LIST + i2, i3));
            this.f16872c.put(i2, aVar2);
            aVar = aVar2;
        }
        return ((Integer) aVar.f16875b).intValue();
    }

    public int[] i(int i2) {
        a aVar;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            aVar = this.f16872c.get(i2);
        } else {
            a aVar2 = new a();
            aVar2.f16875b = j(i2);
            this.f16872c.put(i2, aVar2);
            aVar = aVar2;
        }
        Object obj = aVar.f16875b;
        if (obj != null) {
            return (int[]) ((int[]) obj).clone();
        }
        return null;
    }

    public int[] j(int i2) {
        String strL = l(i2, ProxyProperties.LOCAL_EXCL_LIST);
        if (strL != null && !strL.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(strL);
                int length = jSONArray.length();
                int[] iArr = new int[length];
                for (int i3 = 0; i3 < length; i3++) {
                    iArr[i3] = jSONArray.getInt(i3);
                }
                return iArr;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public SparseIntArray k(int i2) {
        a aVar;
        SparseIntArray sparseIntArrayM17clone;
        synchronized (this.f16873d) {
            if (this.f16872c.indexOfKey(i2) >= 0) {
                aVar = this.f16872c.get(i2);
            } else {
                a aVar2 = new a();
                String string = this.f16873d.getString(i2 + ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                SparseIntArray sparseIntArray = new SparseIntArray();
                aVar2.f16875b = sparseIntArray;
                this.f16872c.put(i2, aVar2);
                Log.e("Steer", "------>> put key : " + i2);
                if (string != null && !string.isEmpty()) {
                    try {
                        JSONObject jSONObject = new JSONObject(string);
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            sparseIntArray.put(Integer.valueOf(next).intValue(), Integer.valueOf(jSONObject.getInt(next)).intValue());
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        sparseIntArray.clear();
                    }
                }
                aVar = aVar2;
            }
            sparseIntArrayM17clone = ((SparseIntArray) aVar.f16875b).m17clone();
        }
        return sparseIntArrayM17clone;
    }

    public String l(int i2, String str) {
        a aVar;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            aVar = this.f16872c.get(i2);
        } else {
            a aVar2 = new a();
            aVar2.f16875b = this.f16873d.getString(i2 + ProxyProperties.LOCAL_EXCL_LIST, str);
            this.f16872c.put(i2, aVar2);
            aVar = aVar2;
        }
        return (String) aVar.f16875b;
    }

    public String[] m(int i2) {
        a aVar;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            aVar = this.f16872c.get(i2);
        } else {
            a aVar2 = new a();
            aVar2.f16875b = n(i2);
            this.f16872c.put(i2, aVar2);
            aVar = aVar2;
        }
        Object obj = aVar.f16875b;
        if (obj != null) {
            return (String[]) ((String[]) obj).clone();
        }
        return null;
    }

    public String[] n(int i2) {
        String strL = l(i2, ProxyProperties.LOCAL_EXCL_LIST);
        if (strL != null && !strL.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(strL);
                int length = jSONArray.length();
                String[] strArr = new String[length];
                for (int i3 = 0; i3 < length; i3++) {
                    strArr[i3] = jSONArray.getString(i3);
                }
                return strArr;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public String o(SparseIntArray sparseIntArray) {
        HashMap map = new HashMap();
        int size = sparseIntArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            map.put(sparseIntArray.keyAt(i2) + ProxyProperties.LOCAL_EXCL_LIST, Integer.valueOf(sparseIntArray.valueAt(i2)));
        }
        return new JSONObject(map).toString();
    }

    public void p(int i2, float[] fArr) {
        boolean z2 = true;
        if (this.f16872c.indexOfKey(i2) < 0) {
            a aVar = new a();
            aVar.f16875b = g(i2);
            aVar.f16874a = true;
            this.f16872c.put(i2, aVar);
            return;
        }
        a aVar2 = this.f16872c.get(i2);
        Object obj = aVar2.f16875b;
        float[] fArr2 = obj == null ? null : (float[]) obj;
        if (obj != null && Arrays.equals(fArr, fArr2)) {
            z2 = false;
        }
        aVar2.f16874a = z2;
        int length = fArr2 == null ? 0 : fArr2.length;
        int length2 = fArr == null ? 0 : fArr.length;
        if (length != length2) {
            fArr2 = new float[length2];
            System.arraycopy(fArr, 0, fArr2, 0, length2);
        } else if (z2 && length > 0) {
            System.arraycopy(fArr, 0, fArr2, 0, length);
        }
        aVar2.f16875b = fArr2;
    }

    public void q(int i2, int i3) {
        boolean z2 = true;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            a aVar = this.f16872c.get(i2);
            Object obj = aVar.f16875b;
            if (obj != null && ((Integer) obj).intValue() == i3) {
                z2 = false;
            }
            aVar.f16874a = z2;
            aVar.f16875b = Integer.valueOf(i3);
            return;
        }
        a aVar2 = new a();
        aVar2.f16875b = Integer.valueOf(this.f16873d.getInt(i2 + ProxyProperties.LOCAL_EXCL_LIST, i3));
        aVar2.f16874a = true;
        this.f16872c.put(i2, aVar2);
    }

    public void r(int i2, int[] iArr) {
        boolean z2 = true;
        if (this.f16872c.indexOfKey(i2) < 0) {
            a aVar = new a();
            aVar.f16875b = j(i2);
            aVar.f16874a = true;
            this.f16872c.put(i2, aVar);
            return;
        }
        a aVar2 = this.f16872c.get(i2);
        Object obj = aVar2.f16875b;
        int[] iArr2 = obj == null ? null : (int[]) obj;
        if (obj != null && Arrays.equals(iArr, iArr2)) {
            z2 = false;
        }
        aVar2.f16874a = z2;
        int length = iArr2 == null ? 0 : iArr2.length;
        int length2 = iArr == null ? 0 : iArr.length;
        if (length != length2) {
            iArr2 = new int[length2];
            System.arraycopy(iArr, 0, iArr2, 0, length2);
        } else if (z2 && length > 0) {
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        aVar2.f16875b = iArr2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16870a.removeCallbacks(this);
        d();
        this.f16870a.postDelayed(this, 3000L);
    }

    public void s(int i2, SparseIntArray sparseIntArray) {
        synchronized (this.f16873d) {
            if (sparseIntArray.size() <= 0) {
                return;
            }
            if (this.f16872c.indexOfKey(i2) >= 0) {
                a aVar = this.f16872c.get(i2);
                Object obj = aVar.f16875b;
                SparseIntArray sparseIntArray2 = obj == null ? null : (SparseIntArray) obj;
                int size = sparseIntArray2 == null ? 0 : sparseIntArray2.size();
                int size2 = sparseIntArray.size();
                boolean z2 = size != size2;
                aVar.f16874a = z2;
                if (!z2 && size2 > 0) {
                    for (int i3 = 0; i3 < size2; i3++) {
                        int iKeyAt = sparseIntArray2.keyAt(i3);
                        boolean z3 = aVar.f16874a || sparseIntArray2.get(iKeyAt, -1) != sparseIntArray.get(iKeyAt, -1);
                        aVar.f16874a = z3;
                        if (z3) {
                            break;
                        }
                    }
                }
                if (aVar.f16874a) {
                    aVar.f16875b = sparseIntArray.m17clone();
                }
            } else {
                a aVar2 = new a();
                SparseIntArray sparseIntArrayK = k(i2);
                if (sparseIntArrayK.size() == 0 || sparseIntArrayK.size() != sparseIntArray.size()) {
                    sparseIntArrayK = sparseIntArray.m17clone();
                }
                aVar2.f16875b = sparseIntArrayK;
                aVar2.f16874a = true;
                this.f16872c.put(i2, aVar2);
            }
        }
    }

    public void t(int i2, String str) {
        boolean z2 = true;
        if (this.f16872c.indexOfKey(i2) >= 0) {
            a aVar = this.f16872c.get(i2);
            Object obj = aVar.f16875b;
            if (obj != null && ((String) obj) == str) {
                z2 = false;
            }
            aVar.f16874a = z2;
            aVar.f16875b = str;
            return;
        }
        a aVar2 = new a();
        aVar2.f16875b = this.f16873d.getString(i2 + ProxyProperties.LOCAL_EXCL_LIST, str);
        aVar2.f16874a = true;
        this.f16872c.put(i2, aVar2);
    }

    public void u(int i2, String[] strArr) {
        boolean z2 = true;
        if (this.f16872c.indexOfKey(i2) < 0) {
            a aVar = new a();
            aVar.f16875b = n(i2);
            aVar.f16874a = true;
            this.f16872c.put(i2, aVar);
            return;
        }
        a aVar2 = this.f16872c.get(i2);
        Object obj = aVar2.f16875b;
        String[] strArr2 = obj == null ? null : (String[]) obj;
        if (obj != null && Arrays.equals(strArr, strArr2)) {
            z2 = false;
        }
        aVar2.f16874a = z2;
        int length = strArr2 == null ? 0 : strArr2.length;
        int length2 = strArr == null ? 0 : strArr.length;
        if (length != length2) {
            strArr2 = new String[length2];
            System.arraycopy(strArr, 0, strArr2, 0, length2);
        } else if (z2 && length > 0) {
            System.arraycopy(strArr, 0, strArr2, 0, length);
        }
        aVar2.f16875b = strArr2;
    }

    public void v(int i2) {
        if (this.f16872c.indexOfKey(i2) >= 0) {
            this.f16872c.remove(i2);
        }
        this.f16873d.edit().remove(i2 + ProxyProperties.LOCAL_EXCL_LIST).apply();
    }
}
