package android.printservice.recommendation;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RecommendationInfo implements Parcelable {
    public static final Parcelable.Creator<RecommendationInfo> CREATOR = new Parcelable.Creator<RecommendationInfo>() { // from class: android.printservice.recommendation.RecommendationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendationInfo createFromParcel(Parcel parcel) {
            return new RecommendationInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecommendationInfo[] newArray(int i2) {
            return new RecommendationInfo[i2];
        }
    };
    private final List<InetAddress> mDiscoveredPrinters;
    private final CharSequence mName;
    private final CharSequence mPackageName;
    private final boolean mRecommendsMultiVendorService;

    private static ArrayList<InetAddress> readDiscoveredPrinters(Parcel parcel) {
        int i2 = parcel.readInt();
        ArrayList<InetAddress> arrayList = new ArrayList<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            try {
                arrayList.add(InetAddress.getByAddress(parcel.readBlob()));
            } catch (UnknownHostException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<InetAddress> getDiscoveredPrinters() {
        return this.mDiscoveredPrinters;
    }

    public CharSequence getName() {
        return this.mName;
    }

    public int getNumDiscoveredPrinters() {
        return this.mDiscoveredPrinters.size();
    }

    public CharSequence getPackageName() {
        return this.mPackageName;
    }

    public boolean recommendsMultiVendorService() {
        return this.mRecommendsMultiVendorService;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeCharSequence(this.mPackageName);
        parcel.writeCharSequence(this.mName);
        parcel.writeInt(this.mDiscoveredPrinters.size());
        Iterator<InetAddress> it = this.mDiscoveredPrinters.iterator();
        while (it.hasNext()) {
            parcel.writeBlob(it.next().getAddress());
        }
        parcel.writeByte(this.mRecommendsMultiVendorService ? (byte) 1 : (byte) 0);
    }

    public RecommendationInfo(CharSequence charSequence, CharSequence charSequence2, List<InetAddress> list, boolean z2) {
        this.mPackageName = Preconditions.checkStringNotEmpty(charSequence);
        this.mName = Preconditions.checkStringNotEmpty(charSequence2);
        this.mDiscoveredPrinters = (List) Preconditions.checkCollectionElementsNotNull(list, "discoveredPrinters");
        this.mRecommendsMultiVendorService = z2;
    }

    @Deprecated
    public RecommendationInfo(CharSequence charSequence, CharSequence charSequence2, int i2, boolean z2) {
        throw new IllegalArgumentException("This constructor has been deprecated");
    }

    private RecommendationInfo(Parcel parcel) {
        this(parcel.readCharSequence(), parcel.readCharSequence(), readDiscoveredPrinters(parcel), parcel.readByte() != 0);
    }
}
