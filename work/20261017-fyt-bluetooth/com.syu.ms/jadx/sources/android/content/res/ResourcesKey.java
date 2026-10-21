package android.content.res;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class ResourcesKey {
    public final int mDisplayId;
    private final int mHash;
    public final Configuration mOverrideConfiguration;
    public final String mResDir;
    public final float mScale;
    private final IBinder mToken;

    public ResourcesKey(String str, int i2, Configuration configuration, float f2, IBinder iBinder) {
        Configuration configuration2 = new Configuration();
        this.mOverrideConfiguration = configuration2;
        this.mResDir = str;
        this.mDisplayId = i2;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        this.mScale = f2;
        this.mToken = iBinder;
        this.mHash = ((((((527 + (str == null ? 0 : str.hashCode())) * 31) + i2) * 31) + configuration2.hashCode()) * 31) + Float.floatToIntBits(f2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ResourcesKey)) {
            return false;
        }
        ResourcesKey resourcesKey = (ResourcesKey) obj;
        if (!this.mResDir.equals(resourcesKey.mResDir) || this.mDisplayId != resourcesKey.mDisplayId) {
            return false;
        }
        Configuration configuration = this.mOverrideConfiguration;
        Configuration configuration2 = resourcesKey.mOverrideConfiguration;
        return (configuration == configuration2 || !(configuration == null || configuration2 == null || !configuration.equals(configuration2))) && this.mScale == resourcesKey.mScale;
    }

    public boolean hasOverrideConfiguration() {
        return !Configuration.EMPTY.equals(this.mOverrideConfiguration);
    }

    public int hashCode() {
        return this.mHash;
    }

    public String toString() {
        return Integer.toHexString(this.mHash);
    }
}
