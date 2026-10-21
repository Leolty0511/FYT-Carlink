package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StringParceledListSlice extends BaseParceledListSlice<String> {
    public static final Parcelable.ClassLoaderCreator<StringParceledListSlice> CREATOR = new Parcelable.ClassLoaderCreator<StringParceledListSlice>() { // from class: android.content.pm.StringParceledListSlice.1
        @Override // android.os.Parcelable.Creator
        public StringParceledListSlice[] newArray(int i2) {
            return new StringParceledListSlice[i2];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        public StringParceledListSlice createFromParcel(Parcel parcel) {
            return new StringParceledListSlice(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public StringParceledListSlice createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new StringParceledListSlice(parcel, classLoader);
        }
    };

    public static StringParceledListSlice emptyList() {
        return new StringParceledListSlice(Collections.emptyList());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.content.pm.BaseParceledListSlice
    public /* bridge */ /* synthetic */ List<String> getList() {
        return super.getList();
    }

    @Override // android.content.pm.BaseParceledListSlice
    public Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader) {
        return Parcel.STRING_CREATOR;
    }

    @Override // android.content.pm.BaseParceledListSlice
    public /* bridge */ /* synthetic */ void setInlineCountLimit(int i2) {
        super.setInlineCountLimit(i2);
    }

    @Override // android.content.pm.BaseParceledListSlice
    public void writeParcelableCreator(String str, Parcel parcel) {
    }

    @Override // android.content.pm.BaseParceledListSlice, android.os.Parcelable
    public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
    }

    public StringParceledListSlice(List<String> list) {
        super(list);
    }

    @Override // android.content.pm.BaseParceledListSlice
    public void writeElement(String str, Parcel parcel, int i2) {
        parcel.writeString(str);
    }

    private StringParceledListSlice(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
    }
}
