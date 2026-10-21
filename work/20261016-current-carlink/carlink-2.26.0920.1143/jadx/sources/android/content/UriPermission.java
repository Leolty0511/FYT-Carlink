package android.content;

import android.app.m;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class UriPermission implements Parcelable {
    public static final Parcelable.Creator<UriPermission> CREATOR = new Parcelable.Creator<UriPermission>() { // from class: android.content.UriPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UriPermission createFromParcel(Parcel parcel) {
            return new UriPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UriPermission[] newArray(int i2) {
            return new UriPermission[i2];
        }
    };
    public static final long INVALID_TIME = Long.MIN_VALUE;
    private final int mModeFlags;
    private final long mPersistedTime;
    private final Uri mUri;

    public UriPermission(Uri uri, int i2, long j2) {
        this.mUri = uri;
        this.mModeFlags = i2;
        this.mPersistedTime = j2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getPersistedTime() {
        return this.mPersistedTime;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public boolean isReadPermission() {
        return (this.mModeFlags & 1) != 0;
    }

    public boolean isWritePermission() {
        return (this.mModeFlags & 2) != 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UriPermission {uri=");
        sb.append(this.mUri);
        sb.append(", modeFlags=");
        sb.append(this.mModeFlags);
        sb.append(", persistedTime=");
        return m.k(sb, this.mPersistedTime, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mUri, i2);
        parcel.writeInt(this.mModeFlags);
        parcel.writeLong(this.mPersistedTime);
    }

    public UriPermission(Parcel parcel) {
        this.mUri = (Uri) parcel.readParcelable(null);
        this.mModeFlags = parcel.readInt();
        this.mPersistedTime = parcel.readLong();
    }
}
