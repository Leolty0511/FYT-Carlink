package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SaveRequest implements Parcelable {
    public static final Parcelable.Creator<SaveRequest> CREATOR = new Parcelable.Creator<SaveRequest>() { // from class: android.service.autofill.SaveRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SaveRequest createFromParcel(Parcel parcel) {
            return new SaveRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SaveRequest[] newArray(int i2) {
            return new SaveRequest[i2];
        }
    };
    private final Bundle mClientState;
    private final ArrayList<FillContext> mFillContexts;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getClientState() {
        return this.mClientState;
    }

    public List<FillContext> getFillContexts() {
        return this.mFillContexts;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedArrayList(this.mFillContexts, i2);
        parcel.writeBundle(this.mClientState);
    }

    public SaveRequest(ArrayList<FillContext> arrayList, Bundle bundle) {
        this.mFillContexts = (ArrayList) Preconditions.checkNotNull(arrayList, "fillContexts");
        this.mClientState = bundle;
    }

    private SaveRequest(Parcel parcel) {
        this((ArrayList<FillContext>) parcel.readTypedArrayList(null), parcel.readBundle());
    }
}
