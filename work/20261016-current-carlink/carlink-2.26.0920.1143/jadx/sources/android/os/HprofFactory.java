package android.os;

import android.util.Log;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public class HprofFactory {
    private static final String TAG = "HprofFactory";
    private static HprofDebug sInstance;

    /* JADX WARN: Code duplicated, block: B:21:0x003e A[Catch: all -> 0x0049, TryCatch #1 {, blocks: (B:4:0x0003, B:18:0x0033, B:19:0x003a, B:21:0x003e, B:22:0x0045, B:10:0x000e, B:14:0x0019, B:16:0x0021, B:8:0x0009), top: B:30:0x0003, inners: #0, #2 }] */
    public static synchronized HprofDebug getInstance() {
        Class<HprofDebugEx> cls;
        HprofDebug hprofDebug = sInstance;
        if (hprofDebug != null) {
            return hprofDebug;
        }
        try {
            cls = HprofDebugEx.class;
            int i2 = HprofDebugEx.f108a;
        } catch (Throwable unused) {
            Log.d(TAG, "Can't find specific HprofDebugEx");
            cls = null;
        }
        if (cls == null) {
            if (sInstance == null) {
                sInstance = new HprofDebug();
            }
            return sInstance;
        }
        try {
            Constructor<HprofDebugEx> constructor = cls.getConstructor(new Class[0]);
            if (constructor != null) {
                sInstance = constructor.newInstance(new Object[0]);
                Log.d(TAG, "Create HprofDebugEx");
            }
        } catch (Throwable unused2) {
            Log.e(TAG, "Can't create specific ObjectFactory");
        }
        if (sInstance == null) {
            sInstance = new HprofDebug();
        }
        return sInstance;
        throw th;
    }
}
