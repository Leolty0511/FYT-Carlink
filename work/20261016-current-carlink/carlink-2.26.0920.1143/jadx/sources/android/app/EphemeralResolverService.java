package android.app;

import android.content.pm.EphemeralResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class EphemeralResolverService extends InstantAppResolverService {
    private static final boolean DEBUG_EPHEMERAL = Build.IS_DEBUGGABLE;
    private static final String TAG = "PackageManager";

    @Override // android.app.InstantAppResolverService
    public void _onGetInstantAppIntentFilter(int[] iArr, String str, String str2, InstantAppResolverService.InstantAppResolutionCallback instantAppResolutionCallback) {
        if (DEBUG_EPHEMERAL) {
            Log.d(TAG, "Legacy resolver; getInstantAppIntentFilter; prefix: " + Arrays.toString(iArr));
        }
        EphemeralResolveInfo ephemeralResolveInfoOnGetEphemeralIntentFilter = onGetEphemeralIntentFilter(str2);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(ephemeralResolveInfoOnGetEphemeralIntentFilter.getInstantAppResolveInfo());
        instantAppResolutionCallback.onInstantAppResolveInfo(arrayList);
    }

    @Override // android.app.InstantAppResolverService
    public void _onGetInstantAppResolveInfo(int[] iArr, String str, InstantAppResolverService.InstantAppResolutionCallback instantAppResolutionCallback) {
        if (DEBUG_EPHEMERAL) {
            Log.d(TAG, "Legacy resolver; getInstantAppResolveInfo; prefix: " + Arrays.toString(iArr));
        }
        List<EphemeralResolveInfo> listOnGetEphemeralResolveInfo = onGetEphemeralResolveInfo(iArr);
        int size = listOnGetEphemeralResolveInfo == null ? 0 : listOnGetEphemeralResolveInfo.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(listOnGetEphemeralResolveInfo.get(i2).getInstantAppResolveInfo());
        }
        instantAppResolutionCallback.onInstantAppResolveInfo(arrayList);
    }

    @Override // android.app.InstantAppResolverService
    public Looper getLooper() {
        return super.getLooper();
    }

    @Deprecated
    public abstract List<EphemeralResolveInfo> onEphemeralResolveInfoList(int[] iArr, int i2);

    public EphemeralResolveInfo onGetEphemeralIntentFilter(String str) {
        throw new IllegalStateException("Must define");
    }

    public List<EphemeralResolveInfo> onGetEphemeralResolveInfo(int[] iArr) {
        return onEphemeralResolveInfoList(iArr, -4096);
    }
}
