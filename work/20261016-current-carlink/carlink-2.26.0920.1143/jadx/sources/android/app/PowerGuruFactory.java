package android.app;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public class PowerGuruFactory {
    private static final String TAG = "PowerGuruFactory";
    private static PowerGuruFactory sInstance;

    /* JADX WARN: Code duplicated, block: B:21:0x0035 A[Catch: all -> 0x0040, TryCatch #0 {, blocks: (B:4:0x0003, B:18:0x002a, B:19:0x0031, B:21:0x0035, B:22:0x003c, B:10:0x000c, B:14:0x0017, B:16:0x001f), top: B:28:0x0003, inners: #1 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public static synchronized PowerGuruFactory getInstance() {
        PowerGuruFactory powerGuruFactory = sInstance;
        if (powerGuruFactory != null) {
            return powerGuruFactory;
        }
        if (PowerGuruFactoryEx.class == 0) {
            if (sInstance == null) {
                sInstance = new PowerGuruFactory();
            }
            return sInstance;
        }
        try {
            Constructor declaredConstructor = PowerGuruFactoryEx.class.getDeclaredConstructor(new Class[0]);
            if (declaredConstructor != null) {
                sInstance = (PowerGuruFactory) declaredConstructor.newInstance(new Object[0]);
            }
        } catch (Throwable unused) {
            Log.e(TAG, "Can't create specific ObjectFactory");
        }
        if (sInstance == null) {
            sInstance = new PowerGuruFactory();
        }
        return sInstance;
        throw th;
    }

    public AbsPowerGuru createExtraPowerGuru(IPowerGuru iPowerGuru, Context context) {
        return new AbsPowerGuru(iPowerGuru, context) { // from class: android.app.PowerGuruFactory.1
        };
    }
}
