package android.service.euicc;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.euicc.DownloadableSubscription;

/* JADX INFO: loaded from: classes2.dex */
public final class GetDefaultDownloadableSubscriptionListResult implements Parcelable {
    public static final Parcelable.Creator<GetDefaultDownloadableSubscriptionListResult> CREATOR = new Parcelable.Creator<GetDefaultDownloadableSubscriptionListResult>() { // from class: android.service.euicc.GetDefaultDownloadableSubscriptionListResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetDefaultDownloadableSubscriptionListResult createFromParcel(Parcel parcel) {
            return new GetDefaultDownloadableSubscriptionListResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetDefaultDownloadableSubscriptionListResult[] newArray(int i2) {
            return new GetDefaultDownloadableSubscriptionListResult[i2];
        }
    };
    public final int result;
    public final DownloadableSubscription[] subscriptions;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.result);
        parcel.writeTypedArray(this.subscriptions, i2);
    }

    public GetDefaultDownloadableSubscriptionListResult(int i2, DownloadableSubscription[] downloadableSubscriptionArr) {
        this.result = i2;
        if (i2 == 0) {
            this.subscriptions = downloadableSubscriptionArr;
        } else {
            if (downloadableSubscriptionArr != null) {
                throw new IllegalArgumentException(c.d("Error result with non-null subscriptions: ", i2));
            }
            this.subscriptions = null;
        }
    }

    private GetDefaultDownloadableSubscriptionListResult(Parcel parcel) {
        this.result = parcel.readInt();
        this.subscriptions = (DownloadableSubscription[]) parcel.createTypedArray(DownloadableSubscription.CREATOR);
    }
}
