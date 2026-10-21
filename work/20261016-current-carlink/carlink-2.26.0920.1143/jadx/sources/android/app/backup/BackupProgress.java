package android.app.backup;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BackupProgress implements Parcelable {
    public static final Parcelable.Creator<BackupProgress> CREATOR = new Parcelable.Creator<BackupProgress>() { // from class: android.app.backup.BackupProgress.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackupProgress createFromParcel(Parcel parcel) {
            return new BackupProgress(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackupProgress[] newArray(int i2) {
            return new BackupProgress[i2];
        }
    };
    public final long bytesExpected;
    public final long bytesTransferred;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.bytesExpected);
        parcel.writeLong(this.bytesTransferred);
    }

    public BackupProgress(long j2, long j3) {
        this.bytesExpected = j2;
        this.bytesTransferred = j3;
    }

    private BackupProgress(Parcel parcel) {
        this.bytesExpected = parcel.readLong();
        this.bytesTransferred = parcel.readLong();
    }
}
