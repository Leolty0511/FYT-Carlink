package android.service.carrier;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MessagePdu implements Parcelable {
    public static final Parcelable.Creator<MessagePdu> CREATOR = new Parcelable.Creator<MessagePdu>() { // from class: android.service.carrier.MessagePdu.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessagePdu createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            int i2 = parcel.readInt();
            if (i2 == -1) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    arrayList2.add(parcel.createByteArray());
                }
                arrayList = arrayList2;
            }
            return new MessagePdu(arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessagePdu[] newArray(int i2) {
            return new MessagePdu[i2];
        }
    };
    private static final int NULL_LENGTH = -1;
    private final List<byte[]> mPduList;

    public MessagePdu(List<byte[]> list) {
        if (list == null || list.contains(null)) {
            throw new IllegalArgumentException("pduList must not be null or contain nulls");
        }
        this.mPduList = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<byte[]> getPdus() {
        return this.mPduList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        List<byte[]> list = this.mPduList;
        if (list == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(list.size());
        Iterator<byte[]> it = this.mPduList.iterator();
        while (it.hasNext()) {
            parcel.writeByteArray(it.next());
        }
    }
}
