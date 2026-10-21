package android.telephony.mbms;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public final class UriPathPair implements Parcelable {
    public static final Parcelable.Creator<UriPathPair> CREATOR = new Parcelable.Creator<UriPathPair>() { // from class: android.telephony.mbms.UriPathPair.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UriPathPair createFromParcel(Parcel parcel) {
            return new UriPathPair(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UriPathPair[] newArray(int i2) {
            return new UriPathPair[i2];
        }
    };
    private final Uri mContentUri;
    private final Uri mFilePathUri;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Uri getContentUri() {
        return this.mContentUri;
    }

    public Uri getFilePathUri() {
        return this.mFilePathUri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mFilePathUri, i2);
        parcel.writeParcelable(this.mContentUri, i2);
    }

    public UriPathPair(Uri uri, Uri uri2) {
        if (uri == null || !ContentResolver.SCHEME_FILE.equals(uri.getScheme())) {
            throw new IllegalArgumentException("File URI must have file scheme");
        }
        if (uri2 == null || !"content".equals(uri2.getScheme())) {
            throw new IllegalArgumentException("Content URI must have content scheme");
        }
        this.mFilePathUri = uri;
        this.mContentUri = uri2;
    }

    private UriPathPair(Parcel parcel) {
        this.mFilePathUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mContentUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
