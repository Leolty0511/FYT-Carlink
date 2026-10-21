package android.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class PowerGuruAlarmInfo implements Parcelable {
    public static final Parcelable.Creator<PowerGuruAlarmInfo> CREATOR = new Parcelable.Creator<PowerGuruAlarmInfo>() { // from class: android.app.PowerGuruAlarmInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PowerGuruAlarmInfo createFromParcel(Parcel parcel) {
            return new PowerGuruAlarmInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PowerGuruAlarmInfo[] newArray(int i2) {
            return new PowerGuruAlarmInfo[i2];
        }
    };
    public String actionName;
    public int alarmType;
    public String componentName;
    public boolean isAvailable;
    public boolean isFromGMS;
    public String packageName;

    public PowerGuruAlarmInfo(String str, String str2, String str3, int i2, boolean z2, boolean z3) {
        this.packageName = str;
        this.actionName = str2;
        this.componentName = str3;
        this.alarmType = i2;
        this.isFromGMS = z2;
        this.isAvailable = z3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAction() {
        return this.actionName;
    }

    public int getAlarmType() {
        return this.alarmType;
    }

    public boolean getAvailable() {
        return this.isAvailable;
    }

    public String getCpnt() {
        return this.componentName;
    }

    public boolean getFromGMS() {
        return this.isFromGMS;
    }

    public String getPkg() {
        return this.packageName;
    }

    public void readFromParcel(Parcel parcel) {
        this.packageName = parcel.readString();
        this.actionName = parcel.readString();
        this.componentName = parcel.readString();
        this.alarmType = parcel.readInt();
        this.isFromGMS = parcel.readInt() == 1;
        this.isAvailable = parcel.readInt() == 1;
    }

    public String setAction(String str) {
        this.actionName = str;
        return str;
    }

    public int setAlarmType(int i2) {
        this.alarmType = i2;
        return i2;
    }

    public void setAvailable(boolean z2) {
        this.isAvailable = z2;
    }

    public String setCpnt(String str) {
        this.componentName = str;
        return str;
    }

    public void setFromGMS(boolean z2) {
        this.isFromGMS = z2;
    }

    public String setPkg(String str) {
        this.packageName = str;
        return str;
    }

    public String toString() {
        return "p: " + this.packageName + " a: " + this.actionName + " c: " + this.componentName + " t: " + this.alarmType + " gms: " + this.isFromGMS + " ava: " + this.isAvailable;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.actionName);
        parcel.writeString(this.componentName);
        parcel.writeInt(this.alarmType);
        if (this.isFromGMS) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
        if (this.isAvailable) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
    }

    public PowerGuruAlarmInfo() {
    }

    public PowerGuruAlarmInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
