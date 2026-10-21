package android.content.res;

import android.app.m;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ObbInfo implements Parcelable {
    public static final Parcelable.Creator<ObbInfo> CREATOR = new Parcelable.Creator<ObbInfo>() { // from class: android.content.res.ObbInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObbInfo createFromParcel(Parcel parcel) {
            return new ObbInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ObbInfo[] newArray(int i2) {
            return new ObbInfo[i2];
        }
    };
    public static final int OBB_OVERLAY = 1;
    public String filename;
    public int flags;
    public String packageName;
    public byte[] salt;
    public int version;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ObbInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" packageName=");
        sb.append(this.packageName);
        sb.append(",version=");
        sb.append(this.version);
        sb.append(",flags=");
        return m.j(sb, this.flags, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.filename);
        parcel.writeString(this.packageName);
        parcel.writeInt(this.version);
        parcel.writeInt(this.flags);
        parcel.writeByteArray(this.salt);
    }

    public ObbInfo() {
    }

    private ObbInfo(Parcel parcel) {
        this.filename = parcel.readString();
        this.packageName = parcel.readString();
        this.version = parcel.readInt();
        this.flags = parcel.readInt();
        this.salt = parcel.createByteArray();
    }
}
