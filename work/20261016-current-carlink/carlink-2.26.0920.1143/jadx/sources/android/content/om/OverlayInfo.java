package android.content.om;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class OverlayInfo implements Parcelable {
    public static final Parcelable.Creator<OverlayInfo> CREATOR = new Parcelable.Creator<OverlayInfo>() { // from class: android.content.om.OverlayInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OverlayInfo createFromParcel(Parcel parcel) {
            return new OverlayInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OverlayInfo[] newArray(int i2) {
            return new OverlayInfo[i2];
        }
    };
    public static final int STATE_DISABLED = 2;
    public static final int STATE_ENABLED = 3;
    public static final int STATE_MISSING_TARGET = 0;
    public static final int STATE_NO_IDMAP = 1;
    public static final int STATE_UNKNOWN = -1;
    public final String baseCodePath;
    public final String packageName;
    public final int state;
    public final String targetPackageName;
    public final int userId;

    public OverlayInfo(OverlayInfo overlayInfo, int i2) {
        this(overlayInfo.packageName, overlayInfo.targetPackageName, overlayInfo.baseCodePath, i2, overlayInfo.userId);
    }

    private void ensureValidState() {
        if (this.packageName == null) {
            throw new IllegalArgumentException("packageName must not be null");
        }
        if (this.targetPackageName == null) {
            throw new IllegalArgumentException("targetPackageName must not be null");
        }
        if (this.baseCodePath == null) {
            throw new IllegalArgumentException("baseCodePath must not be null");
        }
        int i2 = this.state;
        if (i2 != -1 && i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException(c.m(new StringBuilder("State "), this.state, " is not a valid state"));
        }
    }

    public static String stateToString(int i2) {
        if (i2 == -1) {
            return "STATE_UNKNOWN";
        }
        if (i2 == 0) {
            return "STATE_MISSING_TARGET";
        }
        if (i2 == 1) {
            return "STATE_NO_IDMAP";
        }
        if (i2 != 2) {
            return i2 != 3 ? "<unknown state>" : "STATE_ENABLED";
        }
        return "STATE_DISABLED";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || OverlayInfo.class != obj.getClass()) {
            return false;
        }
        OverlayInfo overlayInfo = (OverlayInfo) obj;
        return this.userId == overlayInfo.userId && this.state == overlayInfo.state && this.packageName.equals(overlayInfo.packageName) && this.targetPackageName.equals(overlayInfo.targetPackageName) && this.baseCodePath.equals(overlayInfo.baseCodePath);
    }

    public int hashCode() {
        int i2 = (((this.userId + 31) * 31) + this.state) * 31;
        String str = this.packageName;
        int iHashCode = (i2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.targetPackageName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.baseCodePath;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public boolean isEnabled() {
        return this.state == 3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OverlayInfo { overlay=");
        sb.append(this.packageName);
        sb.append(", target=");
        sb.append(this.targetPackageName);
        sb.append(", state=");
        sb.append(this.state);
        sb.append(" (");
        sb.append(stateToString(this.state));
        sb.append("), userId=");
        return c.m(sb, this.userId, " }");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.targetPackageName);
        parcel.writeString(this.baseCodePath);
        parcel.writeInt(this.state);
        parcel.writeInt(this.userId);
    }

    public OverlayInfo(String str, String str2, String str3, int i2, int i3) {
        this.packageName = str;
        this.targetPackageName = str2;
        this.baseCodePath = str3;
        this.state = i2;
        this.userId = i3;
        ensureValidState();
    }

    public OverlayInfo(Parcel parcel) {
        this.packageName = parcel.readString();
        this.targetPackageName = parcel.readString();
        this.baseCodePath = parcel.readString();
        this.state = parcel.readInt();
        this.userId = parcel.readInt();
        ensureValidState();
    }
}
