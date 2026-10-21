package android.content.pm;

import android.app.m;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class VerificationParams implements Parcelable {
    public static final Parcelable.Creator<VerificationParams> CREATOR = new Parcelable.Creator<VerificationParams>() { // from class: android.content.pm.VerificationParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerificationParams createFromParcel(Parcel parcel) {
            return new VerificationParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerificationParams[] newArray(int i2) {
            return new VerificationParams[i2];
        }
    };
    public static final int NO_UID = -1;
    private static final String TO_STRING_PREFIX = "VerificationParams{";
    private int mInstallerUid;
    private final Uri mOriginatingURI;
    private final int mOriginatingUid;
    private final Uri mReferrer;
    private final Uri mVerificationURI;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VerificationParams)) {
            return false;
        }
        VerificationParams verificationParams = (VerificationParams) obj;
        Uri uri = this.mVerificationURI;
        if (uri == null) {
            if (verificationParams.mVerificationURI != null) {
                return false;
            }
        } else if (!uri.equals(verificationParams.mVerificationURI)) {
            return false;
        }
        Uri uri2 = this.mOriginatingURI;
        if (uri2 == null) {
            if (verificationParams.mOriginatingURI != null) {
                return false;
            }
        } else if (!uri2.equals(verificationParams.mOriginatingURI)) {
            return false;
        }
        Uri uri3 = this.mReferrer;
        if (uri3 == null) {
            if (verificationParams.mReferrer != null) {
                return false;
            }
        } else if (!uri3.equals(verificationParams.mReferrer)) {
            return false;
        }
        return this.mOriginatingUid == verificationParams.mOriginatingUid && this.mInstallerUid == verificationParams.mInstallerUid;
    }

    public int getInstallerUid() {
        return this.mInstallerUid;
    }

    public Uri getOriginatingURI() {
        return this.mOriginatingURI;
    }

    public int getOriginatingUid() {
        return this.mOriginatingUid;
    }

    public Uri getReferrer() {
        return this.mReferrer;
    }

    public Uri getVerificationURI() {
        return this.mVerificationURI;
    }

    public int hashCode() {
        Uri uri = this.mVerificationURI;
        int iHashCode = ((uri == null ? 1 : uri.hashCode()) * 5) + 3;
        Uri uri2 = this.mOriginatingURI;
        int iHashCode2 = ((uri2 == null ? 1 : uri2.hashCode()) * 7) + iHashCode;
        Uri uri3 = this.mReferrer;
        return (this.mInstallerUid * 17) + (this.mOriginatingUid * 13) + ((uri3 != null ? uri3.hashCode() : 1) * 11) + iHashCode2;
    }

    public void setInstallerUid(int i2) {
        this.mInstallerUid = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VerificationParams{mVerificationURI=");
        sb.append(this.mVerificationURI.toString());
        sb.append(",mOriginatingURI=");
        sb.append(this.mOriginatingURI.toString());
        sb.append(",mReferrer=");
        sb.append(this.mReferrer.toString());
        sb.append(",mOriginatingUid=");
        sb.append(this.mOriginatingUid);
        sb.append(",mInstallerUid=");
        return m.j(sb, this.mInstallerUid, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mVerificationURI, 0);
        parcel.writeParcelable(this.mOriginatingURI, 0);
        parcel.writeParcelable(this.mReferrer, 0);
        parcel.writeInt(this.mOriginatingUid);
        parcel.writeInt(this.mInstallerUid);
    }

    public VerificationParams(Uri uri, Uri uri2, Uri uri3, int i2) {
        this.mVerificationURI = uri;
        this.mOriginatingURI = uri2;
        this.mReferrer = uri3;
        this.mOriginatingUid = i2;
        this.mInstallerUid = -1;
    }

    private VerificationParams(Parcel parcel) {
        this.mVerificationURI = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mOriginatingURI = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mReferrer = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mOriginatingUid = parcel.readInt();
        this.mInstallerUid = parcel.readInt();
    }
}
