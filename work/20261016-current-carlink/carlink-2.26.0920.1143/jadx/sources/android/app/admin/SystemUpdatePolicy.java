package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class SystemUpdatePolicy implements Parcelable {
    public static final Parcelable.Creator<SystemUpdatePolicy> CREATOR = new Parcelable.Creator<SystemUpdatePolicy>() { // from class: android.app.admin.SystemUpdatePolicy.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SystemUpdatePolicy createFromParcel(Parcel parcel) {
            SystemUpdatePolicy systemUpdatePolicy = new SystemUpdatePolicy();
            systemUpdatePolicy.mPolicyType = parcel.readInt();
            systemUpdatePolicy.mMaintenanceWindowStart = parcel.readInt();
            systemUpdatePolicy.mMaintenanceWindowEnd = parcel.readInt();
            return systemUpdatePolicy;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SystemUpdatePolicy[] newArray(int i2) {
            return new SystemUpdatePolicy[i2];
        }
    };
    private static final String KEY_INSTALL_WINDOW_END = "install_window_end";
    private static final String KEY_INSTALL_WINDOW_START = "install_window_start";
    private static final String KEY_POLICY_TYPE = "policy_type";
    public static final int TYPE_INSTALL_AUTOMATIC = 1;
    public static final int TYPE_INSTALL_WINDOWED = 2;
    public static final int TYPE_POSTPONE = 3;
    private static final int TYPE_UNKNOWN = -1;
    private static final int WINDOW_BOUNDARY = 1440;
    private int mMaintenanceWindowEnd;
    private int mMaintenanceWindowStart;
    private int mPolicyType;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SystemUpdatePolicyType {
    }

    public static SystemUpdatePolicy createAutomaticInstallPolicy() {
        SystemUpdatePolicy systemUpdatePolicy = new SystemUpdatePolicy();
        systemUpdatePolicy.mPolicyType = 1;
        return systemUpdatePolicy;
    }

    public static SystemUpdatePolicy createPostponeInstallPolicy() {
        SystemUpdatePolicy systemUpdatePolicy = new SystemUpdatePolicy();
        systemUpdatePolicy.mPolicyType = 3;
        return systemUpdatePolicy;
    }

    public static SystemUpdatePolicy createWindowedInstallPolicy(int i2, int i3) {
        if (i2 < 0 || i2 >= WINDOW_BOUNDARY || i3 < 0 || i3 >= WINDOW_BOUNDARY) {
            throw new IllegalArgumentException("startTime and endTime must be inside [0, 1440)");
        }
        SystemUpdatePolicy systemUpdatePolicy = new SystemUpdatePolicy();
        systemUpdatePolicy.mPolicyType = 2;
        systemUpdatePolicy.mMaintenanceWindowStart = i2;
        systemUpdatePolicy.mMaintenanceWindowEnd = i3;
        return systemUpdatePolicy;
    }

    public static SystemUpdatePolicy restoreFromXml(XmlPullParser xmlPullParser) {
        try {
            SystemUpdatePolicy systemUpdatePolicy = new SystemUpdatePolicy();
            String attributeValue = xmlPullParser.getAttributeValue(null, KEY_POLICY_TYPE);
            if (attributeValue != null) {
                systemUpdatePolicy.mPolicyType = Integer.parseInt(attributeValue);
                String attributeValue2 = xmlPullParser.getAttributeValue(null, KEY_INSTALL_WINDOW_START);
                if (attributeValue2 != null) {
                    systemUpdatePolicy.mMaintenanceWindowStart = Integer.parseInt(attributeValue2);
                }
                String attributeValue3 = xmlPullParser.getAttributeValue(null, KEY_INSTALL_WINDOW_END);
                if (attributeValue3 != null) {
                    systemUpdatePolicy.mMaintenanceWindowEnd = Integer.parseInt(attributeValue3);
                }
                return systemUpdatePolicy;
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getInstallWindowEnd() {
        if (this.mPolicyType == 2) {
            return this.mMaintenanceWindowEnd;
        }
        return -1;
    }

    public int getInstallWindowStart() {
        if (this.mPolicyType == 2) {
            return this.mMaintenanceWindowStart;
        }
        return -1;
    }

    public int getPolicyType() {
        return this.mPolicyType;
    }

    public boolean isValid() {
        int i2;
        int i3 = this.mPolicyType;
        if (i3 == 1 || i3 == 3) {
            return true;
        }
        if (i3 != 2) {
            return false;
        }
        int i4 = this.mMaintenanceWindowStart;
        return i4 >= 0 && i4 < WINDOW_BOUNDARY && (i2 = this.mMaintenanceWindowEnd) >= 0 && i2 < WINDOW_BOUNDARY;
    }

    public void saveToXml(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.attribute(null, KEY_POLICY_TYPE, Integer.toString(this.mPolicyType));
        xmlSerializer.attribute(null, KEY_INSTALL_WINDOW_START, Integer.toString(this.mMaintenanceWindowStart));
        xmlSerializer.attribute(null, KEY_INSTALL_WINDOW_END, Integer.toString(this.mMaintenanceWindowEnd));
    }

    public String toString() {
        return String.format("SystemUpdatePolicy (type: %d, windowStart: %d, windowEnd: %d)", Integer.valueOf(this.mPolicyType), Integer.valueOf(this.mMaintenanceWindowStart), Integer.valueOf(this.mMaintenanceWindowEnd));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mPolicyType);
        parcel.writeInt(this.mMaintenanceWindowStart);
        parcel.writeInt(this.mMaintenanceWindowEnd);
    }

    private SystemUpdatePolicy() {
        this.mPolicyType = -1;
    }
}
