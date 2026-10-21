package android.os.storage;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import java.io.CharArrayWriter;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class StorageVolume implements Parcelable {
    private static final String ACTION_OPEN_EXTERNAL_DIRECTORY = "android.os.storage.action.OPEN_EXTERNAL_DIRECTORY";
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
    public static final String EXTRA_DIRECTORY_NAME = "android.os.storage.extra.DIRECTORY_NAME";
    public static final String EXTRA_STORAGE_VOLUME = "android.os.storage.extra.STORAGE_VOLUME";
    public static final int STORAGE_ID_INVALID = 0;
    public static final int STORAGE_ID_PRIMARY = 65537;
    public static final int STORAGE_ID_PRIMARY_EMU = 256;
    private final boolean mAllowMassStorage;
    private final String mDescription;
    private final boolean mEmulated;
    private final String mFsUuid;
    private final String mId;
    private final long mMaxFileSize;
    private final long mMtpReserveSize;
    private final UserHandle mOwner;
    private final File mPath;
    private final boolean mPrimary;
    private final boolean mRemovable;
    private final String mState;
    private final int mStorageId;

    public boolean allowMassStorage() {
        return this.mAllowMassStorage;
    }

    public Intent createAccessIntent(String str) {
        if (isPrimary() && str == null) {
            return null;
        }
        if (str != null && !Environment.isStandardDirectory(str)) {
            return null;
        }
        Intent intent = new Intent(ACTION_OPEN_EXTERNAL_DIRECTORY);
        intent.putExtra(EXTRA_STORAGE_VOLUME, this);
        intent.putExtra(EXTRA_DIRECTORY_NAME, str);
        return intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String dump() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(new IndentingPrintWriter(charArrayWriter, "    ", 80));
        return charArrayWriter.toString();
    }

    public boolean equals(Object obj) {
        File file;
        if (!(obj instanceof StorageVolume) || (file = this.mPath) == null) {
            return false;
        }
        return file.equals(((StorageVolume) obj).mPath);
    }

    public String getDescription(Context context) {
        return this.mDescription;
    }

    public int getFatVolumeId() {
        String str = this.mFsUuid;
        if (str != null && str.length() == 9) {
            try {
                return (int) Long.parseLong(this.mFsUuid.replace(NativeLibraryHelper.CLEAR_ABI_OVERRIDE, ""), 16);
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public String getId() {
        return this.mId;
    }

    public long getMaxFileSize() {
        return this.mMaxFileSize;
    }

    public int getMtpReserveSpace() {
        return (int) (this.mMtpReserveSize / 1048576);
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
        return this.mDescription;
    }

    public String getUuid() {
        return this.mFsUuid;
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

    public String toString() {
        StringBuilder sb = new StringBuilder("StorageVolume: ");
        sb.append(this.mDescription);
        if (this.mFsUuid != null) {
            sb.append(" (");
            sb.append(this.mFsUuid);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mId);
        parcel.writeInt(this.mStorageId);
        parcel.writeString(this.mPath.toString());
        parcel.writeString(this.mDescription);
        parcel.writeInt(this.mPrimary ? 1 : 0);
        parcel.writeInt(this.mRemovable ? 1 : 0);
        parcel.writeInt(this.mEmulated ? 1 : 0);
        parcel.writeLong(this.mMtpReserveSize);
        parcel.writeInt(this.mAllowMassStorage ? 1 : 0);
        parcel.writeLong(this.mMaxFileSize);
        parcel.writeParcelable(this.mOwner, i2);
        parcel.writeString(this.mFsUuid);
        parcel.writeString(this.mState);
    }

    public StorageVolume(String str, int i2, File file, String str2, boolean z2, boolean z3, boolean z4, long j2, boolean z5, long j3, UserHandle userHandle, String str3, String str4) {
        this.mId = (String) Preconditions.checkNotNull(str);
        this.mStorageId = i2;
        this.mPath = (File) Preconditions.checkNotNull(file);
        this.mDescription = (String) Preconditions.checkNotNull(str2);
        this.mPrimary = z2;
        this.mRemovable = z3;
        this.mEmulated = z4;
        this.mMtpReserveSize = j2;
        this.mAllowMassStorage = z5;
        this.mMaxFileSize = j3;
        this.mOwner = (UserHandle) Preconditions.checkNotNull(userHandle);
        this.mFsUuid = str3;
        this.mState = (String) Preconditions.checkNotNull(str4);
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("StorageVolume:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.printPair("mId", this.mId);
        indentingPrintWriter.printPair("mStorageId", Integer.valueOf(this.mStorageId));
        indentingPrintWriter.printPair("mPath", this.mPath);
        indentingPrintWriter.printPair("mDescription", this.mDescription);
        indentingPrintWriter.printPair("mPrimary", Boolean.valueOf(this.mPrimary));
        indentingPrintWriter.printPair("mRemovable", Boolean.valueOf(this.mRemovable));
        indentingPrintWriter.printPair("mEmulated", Boolean.valueOf(this.mEmulated));
        indentingPrintWriter.printPair("mMtpReserveSize", Long.valueOf(this.mMtpReserveSize));
        indentingPrintWriter.printPair("mAllowMassStorage", Boolean.valueOf(this.mAllowMassStorage));
        indentingPrintWriter.printPair("mMaxFileSize", Long.valueOf(this.mMaxFileSize));
        indentingPrintWriter.printPair("mOwner", this.mOwner);
        indentingPrintWriter.printPair("mFsUuid", this.mFsUuid);
        indentingPrintWriter.printPair("mState", this.mState);
        indentingPrintWriter.decreaseIndent();
    }

    private StorageVolume(Parcel parcel) {
        this.mId = parcel.readString();
        this.mStorageId = parcel.readInt();
        this.mPath = new File(parcel.readString());
        this.mDescription = parcel.readString();
        this.mPrimary = parcel.readInt() != 0;
        this.mRemovable = parcel.readInt() != 0;
        this.mEmulated = parcel.readInt() != 0;
        this.mMtpReserveSize = parcel.readLong();
        this.mAllowMassStorage = parcel.readInt() != 0;
        this.mMaxFileSize = parcel.readLong();
        this.mOwner = (UserHandle) parcel.readParcelable(null);
        this.mFsUuid = parcel.readString();
        this.mState = parcel.readString();
    }
}
