package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FillRequest implements Parcelable {
    public static final Parcelable.Creator<FillRequest> CREATOR = new Parcelable.Creator<FillRequest>() { // from class: android.service.autofill.FillRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillRequest createFromParcel(Parcel parcel) {
            return new FillRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillRequest[] newArray(int i2) {
            return new FillRequest[i2];
        }
    };
    public static final int FLAG_MANUAL_REQUEST = 1;
    public static final int INVALID_REQUEST_ID = Integer.MIN_VALUE;
    private final Bundle mClientState;
    private final ArrayList<FillContext> mContexts;
    private final int mFlags;
    private final int mId;

    @Retention(RetentionPolicy.SOURCE)
    public @interface RequestFlags {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getClientState() {
        return this.mClientState;
    }

    public List<FillContext> getFillContexts() {
        return this.mContexts;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public int getId() {
        return this.mId;
    }

    public String toString() {
        return "FillRequest: [id=" + this.mId + ", flags=" + this.mFlags + ", ctxts= " + this.mContexts + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeParcelableList(this.mContexts, i2);
        parcel.writeBundle(this.mClientState);
        parcel.writeInt(this.mFlags);
    }

    private FillRequest(Parcel parcel) {
        this.mId = parcel.readInt();
        ArrayList<FillContext> arrayList = new ArrayList<>();
        this.mContexts = arrayList;
        parcel.readParcelableList(arrayList, null);
        this.mClientState = parcel.readBundle();
        this.mFlags = parcel.readInt();
    }

    public FillRequest(int i2, ArrayList<FillContext> arrayList, Bundle bundle, int i3) {
        this.mId = i2;
        this.mFlags = Preconditions.checkFlagsArgument(i3, 1);
        this.mContexts = (ArrayList) Preconditions.checkCollectionElementsNotNull(arrayList, "contexts");
        this.mClientState = bundle;
    }
}
