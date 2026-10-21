package android.hardware.location;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class NanoApp {
    public static final Parcelable.Creator<NanoApp> CREATOR = new Parcelable.Creator<NanoApp>() { // from class: android.hardware.location.NanoApp.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NanoApp createFromParcel(Parcel parcel) {
            return new NanoApp(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NanoApp[] newArray(int i2) {
            return new NanoApp[i2];
        }
    };
    private final String TAG;
    private final String UNKNOWN;
    private byte[] mAppBinary;
    private long mAppId;
    private boolean mAppIdSet;
    private int mAppVersion;
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

    public byte[] getAppBinary() {
        return this.mAppBinary;
    }

    public long getAppId() {
        return this.mAppId;
    }

    public int getAppVersion() {
        return this.mAppVersion;
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

    public void setAppBinary(byte[] bArr) {
        this.mAppBinary = bArr;
    }

    public void setAppId(long j2) {
        this.mAppId = j2;
        this.mAppIdSet = true;
    }

    public void setAppVersion(int i2) {
        this.mAppVersion = i2;
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
        this.mNeededSensors = iArr;
    }

    public void setNeededWriteMemBytes(int i2) {
        this.mNeededWriteMemBytes = i2;
    }

    public void setOutputEvents(int[] iArr) {
        this.mOutputEvents = iArr;
    }

    public void setPublisher(String str) {
        this.mPublisher = str;
    }

    public String toString() {
        StringBuilder sbU = c.u("Id : " + this.mAppId, ", Version : ");
        sbU.append(this.mAppVersion);
        StringBuilder sbU2 = c.u(sbU.toString(), ", Name : ");
        sbU2.append(this.mName);
        StringBuilder sbU3 = c.u(sbU2.toString(), ", Publisher : ");
        sbU3.append(this.mPublisher);
        return sbU3.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mAppBinary == null) {
            throw new IllegalStateException("Must set non-null AppBinary for nanoapp " + this.mName);
        }
        if (!this.mAppIdSet) {
            throw new IllegalStateException("Must set AppId for nanoapp " + this.mName);
        }
        parcel.writeString(this.mPublisher);
        parcel.writeString(this.mName);
        parcel.writeLong(this.mAppId);
        parcel.writeInt(this.mAppVersion);
        parcel.writeInt(this.mNeededReadMemBytes);
        parcel.writeInt(this.mNeededWriteMemBytes);
        parcel.writeInt(this.mNeededExecMemBytes);
        parcel.writeInt(this.mNeededSensors.length);
        parcel.writeIntArray(this.mNeededSensors);
        parcel.writeInt(this.mOutputEvents.length);
        parcel.writeIntArray(this.mOutputEvents);
        parcel.writeInt(this.mAppBinary.length);
        parcel.writeByteArray(this.mAppBinary);
    }

    public NanoApp() {
        this(0L, (byte[]) null);
        this.mAppIdSet = false;
    }

    @Deprecated
    public NanoApp(int i2, byte[] bArr) {
        this.TAG = "NanoApp";
        this.UNKNOWN = "Unknown";
        Log.w("NanoApp", "NanoApp(int, byte[]) is deprecated, please use NanoApp(long, byte[]) instead.");
    }

    public NanoApp(long j2, byte[] bArr) {
        this.TAG = "NanoApp";
        this.UNKNOWN = "Unknown";
        this.mPublisher = "Unknown";
        this.mName = "Unknown";
        this.mAppId = j2;
        this.mAppIdSet = true;
        this.mAppVersion = 0;
        this.mNeededReadMemBytes = 0;
        this.mNeededWriteMemBytes = 0;
        this.mNeededExecMemBytes = 0;
        this.mNeededSensors = new int[0];
        this.mOutputEvents = new int[0];
        this.mAppBinary = bArr;
    }

    private NanoApp(Parcel parcel) {
        this.TAG = "NanoApp";
        this.UNKNOWN = "Unknown";
        this.mPublisher = parcel.readString();
        this.mName = parcel.readString();
        this.mAppId = parcel.readLong();
        this.mAppVersion = parcel.readInt();
        this.mNeededReadMemBytes = parcel.readInt();
        this.mNeededWriteMemBytes = parcel.readInt();
        this.mNeededExecMemBytes = parcel.readInt();
        int[] iArr = new int[parcel.readInt()];
        this.mNeededSensors = iArr;
        parcel.readIntArray(iArr);
        int[] iArr2 = new int[parcel.readInt()];
        this.mOutputEvents = iArr2;
        parcel.readIntArray(iArr2);
        byte[] bArr = new byte[parcel.readInt()];
        this.mAppBinary = bArr;
        parcel.readByteArray(bArr);
    }
}
