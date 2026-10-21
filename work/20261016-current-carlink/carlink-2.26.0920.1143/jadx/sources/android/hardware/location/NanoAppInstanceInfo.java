package android.hardware.location;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class NanoAppInstanceInfo {
    public static final Parcelable.Creator<NanoAppInstanceInfo> CREATOR = new Parcelable.Creator<NanoAppInstanceInfo>() { // from class: android.hardware.location.NanoAppInstanceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NanoAppInstanceInfo createFromParcel(Parcel parcel) {
            return new NanoAppInstanceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NanoAppInstanceInfo[] newArray(int i2) {
            return new NanoAppInstanceInfo[i2];
        }
    };
    private long mAppId;
    private int mAppVersion;
    private int mContexthubId;
    private int mHandle;
    private String mName;
    private int mNeededExecMemBytes;
    private int mNeededReadMemBytes;
    private int[] mNeededSensors;
    private int mNeededWriteMemBytes;
    private int[] mOutputEvents;
    private String mPublisher;

    public int describeContents() {
        return 0;
    }

    public long getAppId() {
        return this.mAppId;
    }

    public int getAppVersion() {
        return this.mAppVersion;
    }

    public int getContexthubId() {
        return this.mContexthubId;
    }

    public int getHandle() {
        return this.mHandle;
    }

    public String getName() {
        return this.mName;
    }

    public int getNeededExecMemBytes() {
        return this.mNeededExecMemBytes;
    }

    public int getNeededReadMemBytes() {
        return this.mNeededReadMemBytes;
    }

    public int[] getNeededSensors() {
        return this.mNeededSensors;
    }

    public int getNeededWriteMemBytes() {
        return this.mNeededWriteMemBytes;
    }

    public int[] getOutputEvents() {
        return this.mOutputEvents;
    }

    public String getPublisher() {
        return this.mPublisher;
    }

    public void setAppId(long j2) {
        this.mAppId = j2;
    }

    public void setAppVersion(int i2) {
        this.mAppVersion = i2;
    }

    public void setContexthubId(int i2) {
        this.mContexthubId = i2;
    }

    public void setHandle(int i2) {
        this.mHandle = i2;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setNeededExecMemBytes(int i2) {
        this.mNeededExecMemBytes = i2;
    }

    public void setNeededReadMemBytes(int i2) {
        this.mNeededReadMemBytes = i2;
    }

    public void setNeededSensors(int[] iArr) {
        if (iArr == null) {
            iArr = EmptyArray.INT;
        }
        this.mNeededSensors = iArr;
    }

    public void setNeededWriteMemBytes(int i2) {
        this.mNeededWriteMemBytes = i2;
    }

    public void setOutputEvents(int[] iArr) {
        if (iArr == null) {
            iArr = EmptyArray.INT;
        }
        this.mOutputEvents = iArr;
    }

    public void setPublisher(String str) {
        this.mPublisher = str;
    }

    public String toString() {
        StringBuilder sbU = c.u("handle : " + this.mHandle, ", Id : 0x");
        sbU.append(Long.toHexString(this.mAppId));
        StringBuilder sbU2 = c.u(sbU.toString(), ", Version : ");
        sbU2.append(this.mAppVersion);
        StringBuilder sbU3 = c.u(sbU2.toString(), ", Name : ");
        sbU3.append(this.mName);
        StringBuilder sbU4 = c.u(sbU3.toString(), ", Publisher : ");
        sbU4.append(this.mPublisher);
        return sbU4.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPublisher);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mHandle);
        parcel.writeLong(this.mAppId);
        parcel.writeInt(this.mAppVersion);
        parcel.writeInt(this.mContexthubId);
        parcel.writeInt(this.mNeededReadMemBytes);
        parcel.writeInt(this.mNeededWriteMemBytes);
        parcel.writeInt(this.mNeededExecMemBytes);
        parcel.writeInt(this.mNeededSensors.length);
        parcel.writeIntArray(this.mNeededSensors);
        parcel.writeInt(this.mOutputEvents.length);
        parcel.writeIntArray(this.mOutputEvents);
    }

    public NanoAppInstanceInfo() {
        this.mNeededSensors = EmptyArray.INT;
        this.mOutputEvents = EmptyArray.INT;
    }

    private NanoAppInstanceInfo(Parcel parcel) {
        this.mPublisher = parcel.readString();
        this.mName = parcel.readString();
        this.mHandle = parcel.readInt();
        this.mAppId = parcel.readLong();
        this.mAppVersion = parcel.readInt();
        this.mContexthubId = parcel.readInt();
        this.mNeededReadMemBytes = parcel.readInt();
        this.mNeededWriteMemBytes = parcel.readInt();
        this.mNeededExecMemBytes = parcel.readInt();
        int[] iArr = new int[parcel.readInt()];
        this.mNeededSensors = iArr;
        parcel.readIntArray(iArr);
        int[] iArr2 = new int[parcel.readInt()];
        this.mOutputEvents = iArr2;
        parcel.readIntArray(iArr2);
    }
}
