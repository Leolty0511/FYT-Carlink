package android.app.admin;

import android.accessibilityservice.c;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class SystemUpdateInfo implements Parcelable {
    private static final String ATTR_ORIGINAL_BUILD = "original-build";
    private static final String ATTR_RECEIVED_TIME = "received-time";
    private static final String ATTR_SECURITY_PATCH_STATE = "security-patch-state";
    public static final Parcelable.Creator<SystemUpdateInfo> CREATOR = new Parcelable.Creator<SystemUpdateInfo>() { // from class: android.app.admin.SystemUpdateInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SystemUpdateInfo createFromParcel(Parcel parcel) {
            return new SystemUpdateInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SystemUpdateInfo[] newArray(int i2) {
            return new SystemUpdateInfo[i2];
        }
    };
    public static final int SECURITY_PATCH_STATE_FALSE = 1;
    public static final int SECURITY_PATCH_STATE_TRUE = 2;
    public static final int SECURITY_PATCH_STATE_UNKNOWN = 0;
    private final long mReceivedTime;
    private final int mSecurityPatchState;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SecurityPatchState {
    }

    public static SystemUpdateInfo of(long j2) {
        if (j2 == -1) {
            return null;
        }
        return new SystemUpdateInfo(j2, 0);
    }

    public static SystemUpdateInfo readFromXml(XmlPullParser xmlPullParser) {
        if (Build.FINGERPRINT.equals(xmlPullParser.getAttributeValue(null, ATTR_ORIGINAL_BUILD))) {
            return new SystemUpdateInfo(Long.parseLong(xmlPullParser.getAttributeValue(null, ATTR_RECEIVED_TIME)), Integer.parseInt(xmlPullParser.getAttributeValue(null, ATTR_SECURITY_PATCH_STATE)));
        }
        return null;
    }

    private static String securityPatchStateToString(int i2) {
        if (i2 == 0) {
            return "unknown";
        }
        if (i2 == 1) {
            return "false";
        }
        if (i2 == 2) {
            return "true";
        }
        throw new IllegalArgumentException(c.d("Unrecognized security patch state: ", i2));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SystemUpdateInfo.class != obj.getClass()) {
            return false;
        }
        SystemUpdateInfo systemUpdateInfo = (SystemUpdateInfo) obj;
        return this.mReceivedTime == systemUpdateInfo.mReceivedTime && this.mSecurityPatchState == systemUpdateInfo.mSecurityPatchState;
    }

    public long getReceivedTime() {
        return this.mReceivedTime;
    }

    public int getSecurityPatchState() {
        return this.mSecurityPatchState;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.mReceivedTime), Integer.valueOf(this.mSecurityPatchState));
    }

    public String toString() {
        return String.format("SystemUpdateInfo (receivedTime = %d, securityPatchState = %s)", Long.valueOf(this.mReceivedTime), securityPatchStateToString(this.mSecurityPatchState));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(getReceivedTime());
        parcel.writeInt(getSecurityPatchState());
    }

    public void writeToXml(XmlSerializer xmlSerializer, String str) throws IOException {
        xmlSerializer.startTag(null, str);
        xmlSerializer.attribute(null, ATTR_RECEIVED_TIME, String.valueOf(this.mReceivedTime));
        xmlSerializer.attribute(null, ATTR_SECURITY_PATCH_STATE, String.valueOf(this.mSecurityPatchState));
        xmlSerializer.attribute(null, ATTR_ORIGINAL_BUILD, Build.FINGERPRINT);
        xmlSerializer.endTag(null, str);
    }

    private SystemUpdateInfo(long j2, int i2) {
        this.mReceivedTime = j2;
        this.mSecurityPatchState = i2;
    }

    public static SystemUpdateInfo of(long j2, boolean z2) {
        if (j2 == -1) {
            return null;
        }
        return new SystemUpdateInfo(j2, z2 ? 2 : 1);
    }

    private SystemUpdateInfo(Parcel parcel) {
        this.mReceivedTime = parcel.readLong();
        this.mSecurityPatchState = parcel.readInt();
    }
}
