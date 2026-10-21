package android.os;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public class PMFactory {
    private static final String TAG = "PMFactory";
    private static PMFactory sInstance;

    /* JADX WARN: Code duplicated, block: B:21:0x0035 A[Catch: all -> 0x0040, TryCatch #0 {, blocks: (B:4:0x0003, B:18:0x002a, B:19:0x0031, B:21:0x0035, B:22:0x003c, B:10:0x000c, B:14:0x0017, B:16:0x001f), top: B:28:0x0003, inners: #1 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public static synchronized PMFactory getInstance() {
        PMFactory pMFactory = sInstance;
        if (pMFactory != null) {
            return pMFactory;
        }
        if (PMFactoryEx.class == 0) {
            if (sInstance == null) {
                sInstance = new PMFactory();
            }
            return sInstance;
        }
        try {
            Constructor declaredConstructor = PMFactoryEx.class.getDeclaredConstructor(new Class[0]);
            if (declaredConstructor != null) {
                sInstance = (PMFactory) declaredConstructor.newInstance(new Object[0]);
            }
        } catch (Throwable unused) {
            Log.e(TAG, "Can't create specific ObjectFactory");
        }
        if (sInstance == null) {
            sInstance = new PMFactory();
        }
        return sInstance;
        throw th;
    }

    public AbsPowerManager createExtraPowerManager(Context context) {
        return new AbsPowerManager() { // from class: android.os.PMFactory.1
        };
    }
}
