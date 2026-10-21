package android.hardware.location;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ContextHubInfo {
    public static final Parcelable.Creator<ContextHubInfo> CREATOR = new Parcelable.Creator<ContextHubInfo>() { // from class: android.hardware.location.ContextHubInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContextHubInfo createFromParcel(Parcel parcel) {
            return new ContextHubInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContextHubInfo[] newArray(int i2) {
            return new ContextHubInfo[i2];
        }
    };
    private int mId;
    private int mMaxPacketLengthBytes;
    private MemoryRegion[] mMemoryRegions;
    private String mName;
    private float mPeakMips;
    private float mPeakPowerDrawMw;
    private int mPlatformVersion;
    private float mSleepPowerDrawMw;
    private int mStaticSwVersion;
    private float mStoppedPowerDrawMw;
    private int[] mSupportedSensors;
    private String mToolchain;
    private int mToolchainVersion;
    private String mVendor;

    public int describeContents() {
        return 0;
    }

    public int getId() {
        return this.mId;
    }

    public int getMaxPacketLengthBytes() {
        return this.mMaxPacketLengthBytes;
    }

    public MemoryRegion[] getMemoryRegions() {
        MemoryRegion[] memoryRegionArr = this.mMemoryRegions;
        return (MemoryRegion[]) Arrays.copyOf(memoryRegionArr, memoryRegionArr.length);
    }

    public String getName() {
        return this.mName;
    }

    public float getPeakMips() {
        return this.mPeakMips;
    }

    public float getPeakPowerDrawMw() {
        return this.mPeakPowerDrawMw;
    }

    public int getPlatformVersion() {
        return this.mPlatformVersion;
    }

    public float getSleepPowerDrawMw() {
        return this.mSleepPowerDrawMw;
    }

    public int getStaticSwVersion() {
        return this.mStaticSwVersion;
    }

    public float getStoppedPowerDrawMw() {
        return this.mStoppedPowerDrawMw;
    }

    public int[] getSupportedSensors() {
        int[] iArr = this.mSupportedSensors;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public String getToolchain() {
        return this.mToolchain;
    }

    public int getToolchainVersion() {
        return this.mToolchainVersion;
    }

    public String getVendor() {
        return this.mVendor;
    }

    public void setId(int i2) {
        this.mId = i2;
    }

    public void setMaxPacketLenBytes(int i2) {
        this.mMaxPacketLengthBytes = i2;
    }

    public void setMemoryRegions(MemoryRegion[] memoryRegionArr) {
        this.mMemoryRegions = (MemoryRegion[]) Arrays.copyOf(memoryRegionArr, memoryRegionArr.length);
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setPeakMips(float f2) {
        this.mPeakMips = f2;
    }

    public void setPeakPowerDrawMw(float f2) {
        this.mPeakPowerDrawMw = f2;
    }

    public void setPlatformVersion(int i2) {
        this.mPlatformVersion = i2;
    }

    public void setSleepPowerDrawMw(float f2) {
        this.mSleepPowerDrawMw = f2;
    }

    public void setStaticSwVersion(int i2) {
        this.mStaticSwVersion = i2;
    }

    public void setStoppedPowerDrawMw(float f2) {
        this.mStoppedPowerDrawMw = f2;
    }

    public void setSupportedSensors(int[] iArr) {
        this.mSupportedSensors = Arrays.copyOf(iArr, iArr.length);
    }

    public void setToolchain(String str) {
        this.mToolchain = str;
    }

    public void setToolchainVersion(int i2) {
        this.mToolchainVersion = i2;
    }

    public void setVendor(String str) {
        this.mVendor = str;
    }

    public String toString() {
        StringBuilder sbU = c.u("Id : " + this.mId, ", Name : ");
        sbU.append(this.mName);
        StringBuilder sbU2 = c.u(sbU.toString(), "\n\tVendor : ");
        sbU2.append(this.mVendor);
        StringBuilder sbU3 = c.u(sbU2.toString(), ", ToolChain : ");
        sbU3.append(this.mToolchain);
        StringBuilder sbU4 = c.u(sbU3.toString(), "\n\tPlatformVersion : ");
        sbU4.append(this.mPlatformVersion);
        StringBuilder sbU5 = c.u(sbU4.toString(), ", StaticSwVersion : ");
        sbU5.append(this.mStaticSwVersion);
        StringBuilder sbU6 = c.u(sbU5.toString(), "\n\tPeakMips : ");
        sbU6.append(this.mPeakMips);
        StringBuilder sbU7 = c.u(c.m(c.u(m.i(c.u(m.i(c.u(sbU6.toString(), ", StoppedPowerDraw : "), this.mStoppedPowerDrawMw, " mW"), ", PeakPowerDraw : "), this.mPeakPowerDrawMw, " mW"), ", MaxPacketLength : "), this.mMaxPacketLengthBytes, " Bytes"), "\n\tSupported sensors : ");
        sbU7.append(Arrays.toString(this.mSupportedSensors));
        StringBuilder sbU8 = c.u(sbU7.toString(), "\n\tMemory Regions : ");
        sbU8.append(Arrays.toString(this.mMemoryRegions));
        return sbU8.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeString(this.mName);
        parcel.writeString(this.mVendor);
        parcel.writeString(this.mToolchain);
        parcel.writeInt(this.mPlatformVersion);
        parcel.writeInt(this.mToolchainVersion);
        parcel.writeInt(this.mStaticSwVersion);
        parcel.writeFloat(this.mPeakMips);
        parcel.writeFloat(this.mStoppedPowerDrawMw);
        parcel.writeFloat(this.mSleepPowerDrawMw);
        parcel.writeFloat(this.mPeakPowerDrawMw);
        parcel.writeInt(this.mMaxPacketLengthBytes);
        parcel.writeInt(this.mSupportedSensors.length);
        parcel.writeIntArray(this.mSupportedSensors);
        parcel.writeTypedArray(this.mMemoryRegions, i2);
    }

    public ContextHubInfo() {
    }

    private ContextHubInfo(Parcel parcel) {
        this.mId = parcel.readInt();
        this.mName = parcel.readString();
        this.mVendor = parcel.readString();
        this.mToolchain = parcel.readString();
        this.mPlatformVersion = parcel.readInt();
        this.mToolchainVersion = parcel.readInt();
        this.mStaticSwVersion = parcel.readInt();
        this.mPeakMips = parcel.readFloat();
        this.mStoppedPowerDrawMw = parcel.readFloat();
        this.mSleepPowerDrawMw = parcel.readFloat();
        this.mPeakPowerDrawMw = parcel.readFloat();
        this.mMaxPacketLengthBytes = parcel.readInt();
        int[] iArr = new int[parcel.readInt()];
        this.mSupportedSensors = iArr;
        parcel.readIntArray(iArr);
        this.mMemoryRegions = (MemoryRegion[]) parcel.createTypedArray(MemoryRegion.CREATOR);
    }
}
