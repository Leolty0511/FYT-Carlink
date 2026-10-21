package android.content.res;

import android.accessibilityservice.c;
import android.text.TextUtils;
import com.android.internal.logging.nano.MetricsProto;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ResourcesKey {
    public final CompatibilityInfo mCompatInfo;
    public final int mDisplayId;
    private final int mHash;
    public final String[] mLibDirs;
    public final String[] mOverlayDirs;
    public final Configuration mOverrideConfiguration;
    public final String mResDir;
    public final String[] mSplitResDirs;

    public ResourcesKey(String str, String[] strArr, String[] strArr2, String[] strArr3, int i2, Configuration configuration, CompatibilityInfo compatibilityInfo) {
        this.mResDir = str;
        this.mSplitResDirs = strArr;
        this.mOverlayDirs = strArr2;
        this.mLibDirs = strArr3;
        this.mDisplayId = i2;
        Configuration configuration2 = new Configuration(configuration == null ? Configuration.EMPTY : configuration);
        this.mOverrideConfiguration = configuration2;
        compatibilityInfo = compatibilityInfo == null ? CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO : compatibilityInfo;
        this.mCompatInfo = compatibilityInfo;
        this.mHash = Objects.hashCode(compatibilityInfo) + ((Objects.hashCode(configuration2) + ((((((((((Objects.hashCode(str) + MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE) * 31) + Arrays.hashCode(strArr)) * 31) + Arrays.hashCode(strArr2)) * 31) + Arrays.hashCode(strArr3)) * 31) + i2) * 31)) * 31);
    }

    private static boolean anyStartsWith(String[] strArr, String str) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (str2 != null && str2.startsWith(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ResourcesKey)) {
            return false;
        }
        ResourcesKey resourcesKey = (ResourcesKey) obj;
        return this.mHash == resourcesKey.mHash && Objects.equals(this.mResDir, resourcesKey.mResDir) && Arrays.equals(this.mSplitResDirs, resourcesKey.mSplitResDirs) && Arrays.equals(this.mOverlayDirs, resourcesKey.mOverlayDirs) && Arrays.equals(this.mLibDirs, resourcesKey.mLibDirs) && this.mDisplayId == resourcesKey.mDisplayId && Objects.equals(this.mOverrideConfiguration, resourcesKey.mOverrideConfiguration) && Objects.equals(this.mCompatInfo, resourcesKey.mCompatInfo);
    }

    public boolean hasOverrideConfiguration() {
        return !Configuration.EMPTY.equals(this.mOverrideConfiguration);
    }

    public int hashCode() {
        return this.mHash;
    }

    public boolean isPathReferenced(String str) {
        String str2 = this.mResDir;
        return (str2 != null && str2.startsWith(str)) || anyStartsWith(this.mSplitResDirs, str) || anyStartsWith(this.mOverlayDirs, str) || anyStartsWith(this.mLibDirs, str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ResourcesKey{ mHash=");
        c.x(this.mHash, sb, " mResDir=");
        sb.append(this.mResDir);
        sb.append(" mSplitDirs=[");
        String[] strArr = this.mSplitResDirs;
        if (strArr != null) {
            sb.append(TextUtils.join(",", strArr));
        }
        sb.append("] mOverlayDirs=[");
        String[] strArr2 = this.mOverlayDirs;
        if (strArr2 != null) {
            sb.append(TextUtils.join(",", strArr2));
        }
        sb.append("] mLibDirs=[");
        String[] strArr3 = this.mLibDirs;
        if (strArr3 != null) {
            sb.append(TextUtils.join(",", strArr3));
        }
        sb.append("] mDisplayId=");
        sb.append(this.mDisplayId);
        sb.append(" mOverrideConfig=");
        sb.append(Configuration.resourceQualifierString(this.mOverrideConfiguration));
        sb.append(" mCompatInfo=");
        sb.append(this.mCompatInfo);
        sb.append("}");
        return sb.toString();
    }
}
