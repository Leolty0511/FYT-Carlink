package android.nfc;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;

/* JADX INFO: loaded from: classes.dex */
public final class BeamShareData implements Parcelable {
    public static final Parcelable.Creator<BeamShareData> CREATOR = new Parcelable.Creator<BeamShareData>() { // from class: android.nfc.BeamShareData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BeamShareData createFromParcel(Parcel parcel) {
            Uri[] uriArr;
            NdefMessage ndefMessage = (NdefMessage) parcel.readParcelable(NdefMessage.class.getClassLoader());
            int i2 = parcel.readInt();
            if (i2 > 0) {
                uriArr = new Uri[i2];
                parcel.readTypedArray(uriArr, Uri.CREATOR);
            } else {
                uriArr = null;
            }
            return new BeamShareData(ndefMessage, uriArr, (UserHandle) parcel.readParcelable(UserHandle.class.getClassLoader()), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BeamShareData[] newArray(int i2) {
            return new BeamShareData[i2];
        }
    };
    public final int flags;
    public final NdefMessage ndefMessage;
    public final Uri[] uris;
    public final UserHandle userHandle;

    public BeamShareData(NdefMessage ndefMessage, Uri[] uriArr, UserHandle userHandle, int i2) {
        this.ndefMessage = ndefMessage;
        this.uris = uriArr;
        this.userHandle = userHandle;
        this.flags = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        Uri[] uriArr = this.uris;
        int length = uriArr != null ? uriArr.length : 0;
        parcel.writeParcelable(this.ndefMessage, 0);
        parcel.writeInt(length);
        if (length > 0) {
            parcel.writeTypedArray(this.uris, 0);
        }
        parcel.writeParcelable(this.userHandle, 0);
        parcel.writeInt(this.flags);
    }
}
