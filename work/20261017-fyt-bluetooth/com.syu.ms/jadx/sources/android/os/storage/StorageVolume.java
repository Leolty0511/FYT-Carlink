package android.os.storage;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import java.io.CharArrayWriter;
import java.io.File;
import u.h;

/* JADX INFO: loaded from: classes.dex */
public class StorageVolume implements Parcelable {
    public static final Parcelable.Creator<StorageVolume> CREATOR = new Parcelable.Creator<StorageVolume>() { // from class: android.os.storage.StorageVolume.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StorageVolume createFromParcel(Parcel parcel) {
            return new StorageVolume(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StorageVolume[] newArray(int i2) {
            return new StorageVolume[i2];
        }
    };
    public static final String EXTRA_STORAGE_VOLUME = "storage_volume";
    private final boolean mAllowMassStorage;
    private final int mDescriptionId;
    private final boolean mEmulated;
    private final long mMaxFileSize;
    private final int mMtpReserveSpace;
    private final UserHandle mOwner;
    private final File mPath;
    private final boolean mPrimary;
    private final boolean mRemovable;
    private String mState;
    private int mStorageId;
    private String mUserLabel;
    private String mUuid;

    public static StorageVolume fromTemplate(StorageVolume storageVolume, File file, UserHandle userHandle) {
        return new StorageVolume(file, storageVolume.mDescriptionId, storageVolume.mPrimary, storageVolume.mRemovable, storageVolume.mEmulated, storageVolume.mMtpReserveSpace, storageVolume.mAllowMassStorage, storageVolume.mMaxFileSize, userHandle);
    }

    public boolean allowMassStorage() {
        return this.mAllowMassStorage;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(h hVar) {
        hVar.println("StorageVolume:");
        hVar.b();
        hVar.d("mStorageId", Integer.valueOf(this.mStorageId));
        hVar.d("mPath", this.mPath);
        hVar.d("mDescriptionId", Integer.valueOf(this.mDescriptionId));
        hVar.d("mPrimary", Boolean.valueOf(this.mPrimary));
        hVar.d("mRemovable", Boolean.valueOf(this.mRemovable));
        hVar.d("mEmulated", Boolean.valueOf(this.mEmulated));
        hVar.d("mMtpReserveSpace", Integer.valueOf(this.mMtpReserveSpace));
        hVar.d("mAllowMassStorage", Boolean.valueOf(this.mAllowMassStorage));
        hVar.d("mMaxFileSize", Long.valueOf(this.mMaxFileSize));
        hVar.d("mOwner", this.mOwner);
        hVar.d("mUuid", this.mUuid);
        hVar.d("mUserLabel", this.mUserLabel);
        hVar.d("mState", this.mState);
        hVar.a();
    }

    public boolean equals(Object obj) {
        File file;
        if (!(obj instanceof StorageVolume) || (file = this.mPath) == null) {
            return false;
        }
        return file.equals(((StorageVolume) obj).mPath);
    }

    public String getDescription(Context context) {
        return context.getResources().getString(this.mDescriptionId);
    }

    public int getDescriptionId() {
        return this.mDescriptionId;
    }

    public int getFatVolumeId() {
        String str = this.mUuid;
        if (str != null && str.length() == 9) {
            try {
                return Integer.parseInt(this.mUuid.replace("-", ProxyProperties.LOCAL_EXCL_LIST), 16);
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public long getMaxFileSize() {
        return this.mMaxFileSize;
    }

    public int getMtpReserveSpace() {
        return this.mMtpReserveSpace;
    }

    public UserHandle getOwner() {
        return this.mOwner;
    }

    public String getPath() {
        return this.mPath.toString();
    }

    public File getPathFile() {
        return this.mPath;
    }

    public String getState() {
        return this.mState;
    }

    public int getStorageId() {
        return this.mStorageId;
    }

    public String getUserLabel() {
        return this.mUserLabel;
    }

    public String getUuid() {
        return this.mUuid;
    }

    public int hashCode() {
        return this.mPath.hashCode();
    }

    public boolean isEmulated() {
        return this.mEmulated;
    }

    public boolean isPrimary() {
        return this.mPrimary;
    }

    public boolean isRemovable() {
        return this.mRemovable;
    }

    public void setState(String str) {
        this.mState = str;
    }

    public void setStorageId(int i2) {
        this.mStorageId = ((i2 + 1) << 16) + 1;
    }

    public void setUserLabel(String str) {
        this.mUserLabel = str;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(new h(charArrayWriter, "    ", 80));
        return charArrayWriter.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mStorageId);
        parcel.writeString(this.mPath.toString());
        parcel.writeInt(this.mDescriptionId);
        parcel.writeInt(this.mPrimary ? 1 : 0);
        parcel.writeInt(this.mRemovable ? 1 : 0);
        parcel.writeInt(this.mEmulated ? 1 : 0);
        parcel.writeInt(this.mMtpReserveSpace);
        parcel.writeInt(this.mAllowMassStorage ? 1 : 0);
        parcel.writeLong(this.mMaxFileSize);
        parcel.writeParcelable(this.mOwner, i2);
        parcel.writeString(this.mUuid);
        parcel.writeString(this.mUserLabel);
        parcel.writeString(this.mState);
    }

    public StorageVolume(File file, int i2, boolean z2, boolean z3, boolean z4, int i3, boolean z5, long j2, UserHandle userHandle) {
        this.mPath = file;
        this.mDescriptionId = i2;
        this.mPrimary = z2;
        this.mRemovable = z3;
        this.mEmulated = z4;
        this.mMtpReserveSpace = i3;
        this.mAllowMassStorage = z5;
        this.mMaxFileSize = j2;
        this.mOwner = userHandle;
    }

    private StorageVolume(Parcel parcel) {
        this.mStorageId = parcel.readInt();
        this.mPath = new File(parcel.readString());
        this.mDescriptionId = parcel.readInt();
        this.mPrimary = parcel.readInt() != 0;
        this.mRemovable = parcel.readInt() != 0;
        this.mEmulated = parcel.readInt() != 0;
        this.mMtpReserveSpace = parcel.readInt();
        this.mAllowMassStorage = parcel.readInt() != 0;
        this.mMaxFileSize = parcel.readLong();
        this.mOwner = (UserHandle) parcel.readParcelable(null);
        this.mUuid = parcel.readString();
        this.mUserLabel = parcel.readString();
        this.mState = parcel.readString();
    }
}
