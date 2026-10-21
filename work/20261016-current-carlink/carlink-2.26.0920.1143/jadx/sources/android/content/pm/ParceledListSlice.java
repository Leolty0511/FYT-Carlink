package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ParceledListSlice<T extends Parcelable> extends BaseParceledListSlice<T> {
    public static final Parcelable.ClassLoaderCreator<ParceledListSlice> CREATOR = new Parcelable.ClassLoaderCreator<ParceledListSlice>() { // from class: android.content.pm.ParceledListSlice.1
        @Override // android.os.Parcelable.Creator
        public ParceledListSlice[] newArray(int i2) {
            return new ParceledListSlice[i2];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        public ParceledListSlice createFromParcel(Parcel parcel) {
            return new ParceledListSlice(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ParceledListSlice createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ParceledListSlice(parcel, classLoader);
        }
    };

    public static <T extends Parcelable> ParceledListSlice<T> emptyList() {
        return new ParceledListSlice<>(Collections.emptyList());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        List list = getList();
        int iDescribeContents = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iDescribeContents |= ((Parcelable) list.get(i2)).describeContents();
        }
        return iDescribeContents;
    }

    @Override // android.content.pm.BaseParceledListSlice
    public /* bridge */ /* synthetic */ List getList() {
        return super.getList();
    }

    @Override // android.content.pm.BaseParceledListSlice
    public Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader) {
        return parcel.readParcelableCreator(classLoader);
    }

    @Override // android.content.pm.BaseParceledListSlice
    public /* bridge */ /* synthetic */ void setInlineCountLimit(int i2) {
        super.setInlineCountLimit(i2);
    }

    @Override // android.content.pm.BaseParceledListSlice, android.os.Parcelable
    public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
    }

    public ParceledListSlice(List<T> list) {
        super(list);
    }

    @Override // android.content.pm.BaseParceledListSlice
    public void writeElement(T t2, Parcel parcel, int i2) {
        t2.writeToParcel(parcel, i2);
    }

    @Override // android.content.pm.BaseParceledListSlice
    public void writeParcelableCreator(T t2, Parcel parcel) {
        parcel.writeParcelableCreator(t2);
    }

    private ParceledListSlice(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
    }
}
