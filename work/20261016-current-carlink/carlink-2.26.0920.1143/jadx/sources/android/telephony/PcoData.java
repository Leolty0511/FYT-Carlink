package android.telephony;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PcoData implements Parcelable {
    public static final Parcelable.Creator<PcoData> CREATOR = new Parcelable.Creator() { // from class: android.telephony.PcoData.1
        @Override // android.os.Parcelable.Creator
        public PcoData createFromParcel(Parcel parcel) {
            return new PcoData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PcoData[] newArray(int i2) {
            return new PcoData[i2];
        }
    };
    public final String bearerProto;
    public final int cid;
    public final byte[] contents;
    public final int pcoId;

    public PcoData(int i2, String str, int i3, byte[] bArr) {
        this.cid = i2;
        this.bearerProto = str;
        this.pcoId = i3;
        this.contents = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PcoData(");
        sb.append(this.cid);
        sb.append(", ");
        sb.append(this.bearerProto);
        sb.append(", ");
        sb.append(this.pcoId);
        sb.append(", contents[");
        return c.m(sb, this.contents.length, "])");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.cid);
        parcel.writeString(this.bearerProto);
        parcel.writeInt(this.pcoId);
        parcel.writeByteArray(this.contents);
    }

    public PcoData(Parcel parcel) {
        this.cid = parcel.readInt();
        this.bearerProto = parcel.readString();
        this.pcoId = parcel.readInt();
        this.contents = parcel.createByteArray();
    }
}
