package android.telephony.mbms;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class FileInfo implements Parcelable {
    public static final Parcelable.Creator<FileInfo> CREATOR = new Parcelable.Creator<FileInfo>() { // from class: android.telephony.mbms.FileInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileInfo createFromParcel(Parcel parcel) {
            return new FileInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileInfo[] newArray(int i2) {
            return new FileInfo[i2];
        }
    };
    private final String mimeType;
    private final Uri uri;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Uri getUri() {
        return this.uri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.uri, i2);
        parcel.writeString(this.mimeType);
    }

    public FileInfo(Uri uri, String str) {
        this.uri = uri;
        this.mimeType = str;
    }

    private FileInfo(Parcel parcel) {
        this.uri = (Uri) parcel.readParcelable(null);
        this.mimeType = parcel.readString();
    }
}
