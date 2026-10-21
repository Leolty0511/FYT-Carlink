package android.telephony.mbms;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadStateCallback {
    public static final int ALL_UPDATES = 0;
    public static final int PROGRESS_UPDATES = 1;
    public static final int STATE_UPDATES = 2;
    private final int mCallbackFilterFlags;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FilterFlag {
    }

    public DownloadStateCallback() {
        this.mCallbackFilterFlags = 0;
    }

    public int getCallbackFilterFlags() {
        return this.mCallbackFilterFlags;
    }

    public final boolean isFilterFlagSet(int i2) {
        int i3 = this.mCallbackFilterFlags;
        return i3 == 0 || (i2 & i3) > 0;
    }

    public void onProgressUpdated(DownloadRequest downloadRequest, FileInfo fileInfo, int i2, int i3, int i4, int i5) {
    }

    public void onStateUpdated(DownloadRequest downloadRequest, FileInfo fileInfo, int i2) {
    }

    public DownloadStateCallback(int i2) {
        this.mCallbackFilterFlags = i2;
    }
}
