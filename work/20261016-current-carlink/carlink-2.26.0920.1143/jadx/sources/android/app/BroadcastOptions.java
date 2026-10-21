package android.app;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class BroadcastOptions {
    static final String KEY_MAX_MANIFEST_RECEIVER_API_LEVEL = "android:broadcast.maxManifestReceiverApiLevel";
    static final String KEY_MIN_MANIFEST_RECEIVER_API_LEVEL = "android:broadcast.minManifestReceiverApiLevel";
    static final String KEY_TEMPORARY_APP_WHITELIST_DURATION = "android:broadcast.temporaryAppWhitelistDuration";
    private int mMaxManifestReceiverApiLevel;
    private int mMinManifestReceiverApiLevel;
    private long mTemporaryAppWhitelistDuration;

    private BroadcastOptions() {
        this.mMinManifestReceiverApiLevel = 0;
        this.mMaxManifestReceiverApiLevel = 10000;
    }

    public static BroadcastOptions makeBasic() {
        return new BroadcastOptions();
    }

    public int getMaxManifestReceiverApiLevel() {
        return this.mMaxManifestReceiverApiLevel;
    }

    public int getMinManifestReceiverApiLevel() {
        return this.mMinManifestReceiverApiLevel;
    }

    public long getTemporaryAppWhitelistDuration() {
        return this.mTemporaryAppWhitelistDuration;
    }

    public void setMaxManifestReceiverApiLevel(int i2) {
        this.mMaxManifestReceiverApiLevel = i2;
    }

    public void setMinManifestReceiverApiLevel(int i2) {
        this.mMinManifestReceiverApiLevel = i2;
    }

    public void setTemporaryAppWhitelistDuration(long j2) {
        this.mTemporaryAppWhitelistDuration = j2;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        long j2 = this.mTemporaryAppWhitelistDuration;
        if (j2 > 0) {
            bundle.putLong(KEY_TEMPORARY_APP_WHITELIST_DURATION, j2);
        }
        int i2 = this.mMinManifestReceiverApiLevel;
        if (i2 != 0) {
            bundle.putInt(KEY_MIN_MANIFEST_RECEIVER_API_LEVEL, i2);
        }
        int i3 = this.mMaxManifestReceiverApiLevel;
        if (i3 != 10000) {
            bundle.putInt(KEY_MAX_MANIFEST_RECEIVER_API_LEVEL, i3);
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    public BroadcastOptions(Bundle bundle) {
        this.mMinManifestReceiverApiLevel = 0;
        this.mMaxManifestReceiverApiLevel = 10000;
        this.mTemporaryAppWhitelistDuration = bundle.getLong(KEY_TEMPORARY_APP_WHITELIST_DURATION);
        this.mMinManifestReceiverApiLevel = bundle.getInt(KEY_MIN_MANIFEST_RECEIVER_API_LEVEL, 0);
        this.mMaxManifestReceiverApiLevel = bundle.getInt(KEY_MAX_MANIFEST_RECEIVER_API_LEVEL, 10000);
    }
}
