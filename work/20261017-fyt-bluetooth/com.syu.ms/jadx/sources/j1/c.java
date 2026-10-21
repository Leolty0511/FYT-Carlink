package j1;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Method f3045b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f3046c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Class<?>[] f3047d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Class<?> f3048e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f3049f = null;

    public c(String str) {
        this.f3044a = str;
        if (k1.a.a(str)) {
            throw new IllegalArgumentException("Method name can't be empty!!");
        }
    }

    public <Result> Result a() {
        if (this.f3045b == null) {
            b();
        }
        if (this.f3045b == null) {
            throw new IllegalArgumentException(this.f3048e + " has no method " + this.f3044a + "!!");
        }
        Log.e("Reflex", "call " + this.f3044a + " target: " + this.f3049f + "  \nparam  " + Arrays.toString(this.f3046c) + "  \nparam Class: " + Arrays.toString(this.f3047d));
        this.f3045b.setAccessible(true);
        Object objInvoke = null;
        try {
            Object[] objArr = this.f3046c;
            objInvoke = objArr == null ? (Result) this.f3045b.invoke(this.f3049f, new Object[0]) : this.f3045b.invoke(this.f3049f, objArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return (Result) objInvoke;
    }

    public final void b() {
        Class<?> cls = this.f3048e;
        if (cls == null) {
            throw new IllegalArgumentException("findMethod 'clazz' can't be NULL!!");
        }
        try {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getName().equals(this.f3044a)) {
                    Log.e("Reflex", method.toString());
                }
            }
            Class<?>[] clsArr = this.f3047d;
            this.f3045b = clsArr == null ? this.f3048e.getDeclaredMethod(this.f3044a, new Class[0]) : this.f3048e.getDeclaredMethod(this.f3044a, clsArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public c c(Class<?>... clsArr) {
        if (clsArr == null || clsArr.length <= 0) {
            return this;
        }
        int length = clsArr.length;
        Class<?>[] clsArr2 = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            clsArr2[i2] = clsArr[i2];
        }
        this.f3047d = clsArr2;
        return this;
    }

    public c d(Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            this.f3045b = null;
            int length = objArr.length;
            this.f3046c = objArr;
            if (this.f3047d == null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < length; i2++) {
                    Class<?> cls = (Class) new b(objArr[i2].getClass(), "TYPE").a(null);
                    if (cls == null) {
                        cls = objArr[i2].getClass();
                    }
                    arrayList2.add(cls);
                    arrayList.add(objArr[i2].getClass());
                }
                if (arrayList2.size() > 0) {
                    Class<?>[] clsArr = new Class[arrayList2.size()];
                    this.f3047d = clsArr;
                    arrayList2.toArray(clsArr);
                    b();
                }
                if (this.f3045b == null) {
                    Class<?>[] clsArr2 = new Class[arrayList.size()];
                    this.f3047d = clsArr2;
                    arrayList.toArray(clsArr2);
                    b();
                }
            } else {
                b();
            }
        }
        return this;
    }

    public c e(Class<?> cls) {
        this.f3048e = cls;
        return this;
    }

    public c f(String str) {
        try {
            this.f3048e = Class.forName(str);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
        }
        return this;
    }

    public c g(Object obj) {
        if (obj == null) {
            return this;
        }
        e(obj.getClass());
        this.f3049f = obj;
        return this;
    }
}
