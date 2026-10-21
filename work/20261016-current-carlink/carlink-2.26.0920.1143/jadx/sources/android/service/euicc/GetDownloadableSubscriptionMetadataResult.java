package android.service.euicc;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.euicc.DownloadableSubscription;

/* JADX INFO: loaded from: classes2.dex */
public final class GetDownloadableSubscriptionMetadataResult implements Parcelable {
    public static final Parcelable.Creator<GetDownloadableSubscriptionMetadataResult> CREATOR = new Parcelable.Creator<GetDownloadableSubscriptionMetadataResult>() { // from class: android.service.euicc.GetDownloadableSubscriptionMetadataResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetDownloadableSubscriptionMetadataResult createFromParcel(Parcel parcel) {
            return new GetDownloadableSubscriptionMetadataResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetDownloadableSubscriptionMetadataResult[] newArray(int i2) {
            return new GetDownloadableSubscriptionMetadataResult[i2];
        }
    };
    public final int result;
    public final DownloadableSubscription subscription;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.result);
        parcel.writeTypedObject(this.subscription, i2);
    }

    public GetDownloadableSubscriptionMetadataResult(int i2, DownloadableSubscription downloadableSubscription) {
        this.result = i2;
        if (i2 == 0) {
            this.subscription = downloadableSubscription;
        } else {
            if (downloadableSubscription != null) {
                throw new IllegalArgumentException(c.d("Error result with non-null subscription: ", i2));
            }
            this.subscription = null;
        }
    }

    private GetDownloadableSubscriptionMetadataResult(Parcel parcel) {
        this.result = parcel.readInt();
        this.subscription = (DownloadableSubscription) parcel.readTypedObject(DownloadableSubscription.CREATOR);
    }
}
