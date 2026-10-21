package android.hardware.location;

import android.accessibilityservice.c;
import android.app.backup.FullBackup;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.content.NativeLibraryHelper;

/* JADX INFO: loaded from: classes.dex */
public class MemoryRegion implements Parcelable {
    public static final Parcelable.Creator<MemoryRegion> CREATOR = new Parcelable.Creator<MemoryRegion>() { // from class: android.hardware.location.MemoryRegion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MemoryRegion createFromParcel(Parcel parcel) {
            return new MemoryRegion(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MemoryRegion[] newArray(int i2) {
            return new MemoryRegion[i2];
        }
    };
    private boolean mIsExecutable;
    private boolean mIsReadable;
    private boolean mIsWritable;
    private int mSizeBytes;
    private int mSizeBytesFree;

    public MemoryRegion(Parcel parcel) {
        this.mSizeBytes = parcel.readInt();
        this.mSizeBytesFree = parcel.readInt();
        this.mIsReadable = parcel.readInt() != 0;
        this.mIsWritable = parcel.readInt() != 0;
        this.mIsExecutable = parcel.readInt() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCapacityBytes() {
        return this.mSizeBytes;
    }

    public int getFreeCapacityBytes() {
        return this.mSizeBytesFree;
    }

    public boolean isExecutable() {
        return this.mIsExecutable;
    }

    public boolean isReadable() {
        return this.mIsReadable;
    }

    public boolean isWritable() {
        return this.mIsWritable;
    }

    public String toString() {
        String str = isReadable() ? FullBackup.ROOT_TREE_TOKEN : NativeLibraryHelper.CLEAR_ABI_OVERRIDE;
        String strD = isWritable() ? c.D(str, "w") : c.D(str, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
        return "[ " + this.mSizeBytesFree + "/ " + this.mSizeBytes + " ] : " + (isExecutable() ? c.D(strD, "x") : c.D(strD, NativeLibraryHelper.CLEAR_ABI_OVERRIDE));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSizeBytes);
        parcel.writeInt(this.mSizeBytesFree);
        parcel.writeInt(this.mIsReadable ? 1 : 0);
        parcel.writeInt(this.mIsWritable ? 1 : 0);
        parcel.writeInt(this.mIsExecutable ? 1 : 0);
    }
}
