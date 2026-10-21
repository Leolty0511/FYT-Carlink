package j1;

import android.util.Log;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class<?> f3042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Field f3043b;

    public b(Class<?> cls, String str) {
        this.f3042a = null;
        this.f3043b = null;
        this.f3042a = cls;
        if (cls == null) {
            throw new IllegalArgumentException("clazz can't be null!!");
        }
        try {
            this.f3043b = cls.getField(str);
        } catch (NoSuchFieldException e2) {
            Log.e("Reflex", cls.getName() + " have no field " + str + "!");
            e2.printStackTrace();
        }
    }

    public T a(Object obj) {
        try {
            this.f3043b.setAccessible(true);
            return (T) this.f3043b.get(obj);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public b(String str, String str2) {
        this(Class.forName(str), str2);
    }
}
