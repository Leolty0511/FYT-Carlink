package android.content.pm;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ConfigurationInfo implements Parcelable {
    public static final Parcelable.Creator<ConfigurationInfo> CREATOR = new Parcelable.Creator<ConfigurationInfo>() { // from class: android.content.pm.ConfigurationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigurationInfo createFromParcel(Parcel parcel) {
            return new ConfigurationInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConfigurationInfo[] newArray(int i2) {
            return new ConfigurationInfo[i2];
        }
    };
    public static final int GL_ES_VERSION_UNDEFINED = 0;
    public static final int INPUT_FEATURE_FIVE_WAY_NAV = 2;
    public static final int INPUT_FEATURE_HARD_KEYBOARD = 1;
    public int reqGlEsVersion;
    public int reqInputFeatures;
    public int reqKeyboardType;
    public int reqNavigation;
    public int reqTouchScreen;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getGlEsVersion() {
        int i2 = this.reqGlEsVersion;
        return String.valueOf(((-65536) & i2) >> 16) + "." + String.valueOf(i2 & 65535);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ConfigurationInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" touchscreen = ");
        sb.append(this.reqTouchScreen);
        sb.append(" inputMethod = ");
        sb.append(this.reqKeyboardType);
        sb.append(" navigation = ");
        sb.append(this.reqNavigation);
        sb.append(" reqInputFeatures = ");
        sb.append(this.reqInputFeatures);
        sb.append(" reqGlEsVersion = ");
        return c.m(sb, this.reqGlEsVersion, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.reqTouchScreen);
        parcel.writeInt(this.reqKeyboardType);
        parcel.writeInt(this.reqNavigation);
        parcel.writeInt(this.reqInputFeatures);
        parcel.writeInt(this.reqGlEsVersion);
    }

    public ConfigurationInfo() {
        this.reqInputFeatures = 0;
    }

    public ConfigurationInfo(ConfigurationInfo configurationInfo) {
        this.reqInputFeatures = 0;
        this.reqTouchScreen = configurationInfo.reqTouchScreen;
        this.reqKeyboardType = configurationInfo.reqKeyboardType;
        this.reqNavigation = configurationInfo.reqNavigation;
        this.reqInputFeatures = configurationInfo.reqInputFeatures;
        this.reqGlEsVersion = configurationInfo.reqGlEsVersion;
    }

    private ConfigurationInfo(Parcel parcel) {
        this.reqInputFeatures = 0;
        this.reqTouchScreen = parcel.readInt();
        this.reqKeyboardType = parcel.readInt();
        this.reqNavigation = parcel.readInt();
        this.reqInputFeatures = parcel.readInt();
        this.reqGlEsVersion = parcel.readInt();
    }
}
