package j1;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Constructor<?> f3038a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f3039b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class<?>[] f3040c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Class<?> f3041d;

    public a(Class<?> cls) {
        this.f3041d = null;
        this.f3041d = cls;
    }

    public final void a() {
        try {
            for (Constructor<?> constructor : this.f3041d.getDeclaredConstructors()) {
                Log.e("Reflex", constructor.toString());
            }
            Class<?>[] clsArr = this.f3040c;
            this.f3038a = (clsArr == null || clsArr.length <= 0) ? this.f3041d.getDeclaredConstructor(new Class[0]) : this.f3041d.getDeclaredConstructor(clsArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public <T> T b() {
        if (this.f3038a == null) {
            a();
        }
        Log.e("Skin", "constructor is " + this.f3038a);
        Constructor<?> constructor = this.f3038a;
        if (constructor == null) {
            throw new IllegalArgumentException(this.f3041d + " has no find Constructor(" + Arrays.toString(this.f3040c) + ")!!");
        }
        constructor.setAccessible(true);
        Log.e("Reflex", "newInstance(): " + this.f3038a.getName() + "  \nparam  " + Arrays.toString(this.f3039b) + "  \nparam Class: " + Arrays.toString(this.f3040c));
        Object objNewInstance = null;
        try {
            Object[] objArr = this.f3039b;
            objNewInstance = objArr == null ? (T) this.f3038a.newInstance(new Object[0]) : this.f3038a.newInstance(objArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return (T) objNewInstance;
    }

    public a c(Class<?>... clsArr) {
        if (clsArr == null || clsArr.length <= 0) {
            return this;
        }
        int length = clsArr.length;
        Class<?>[] clsArr2 = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            clsArr2[i2] = clsArr[i2];
        }
        this.f3040c = clsArr2;
        return this;
    }

    public a d(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            a();
            return this;
        }
        this.f3038a = null;
        int length = objArr.length;
        this.f3039b = objArr;
        if (this.f3040c == null) {
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
                this.f3040c = clsArr;
                arrayList2.toArray(clsArr);
                a();
            }
            if (this.f3038a == null) {
                Class<?>[] clsArr2 = new Class[arrayList.size()];
                this.f3040c = clsArr2;
                arrayList.toArray(clsArr2);
                a();
            }
        } else {
            a();
        }
        return this;
    }
}
