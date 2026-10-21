package android.companion;

import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static boolean a(DeviceFilter deviceFilter, Parcelable parcelable) {
        return deviceFilter == null || deviceFilter.matches(parcelable);
    }
}
