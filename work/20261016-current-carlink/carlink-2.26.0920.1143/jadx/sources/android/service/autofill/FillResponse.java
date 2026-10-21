package android.service.autofill;

import android.accessibilityservice.c;
import android.content.IntentSender;
import android.content.pm.ParceledListSlice;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FillResponse implements Parcelable {
    public static final Parcelable.Creator<FillResponse> CREATOR = new Parcelable.Creator<FillResponse>() { // from class: android.service.autofill.FillResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillResponse createFromParcel(Parcel parcel) {
            Builder builder = new Builder();
            ParceledListSlice parceledListSlice = (ParceledListSlice) parcel.readParcelable(null);
            List list = parceledListSlice != null ? parceledListSlice.getList() : null;
            int size = list != null ? list.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                builder.addDataset((Dataset) list.get(i2));
            }
            builder.setSaveInfo((SaveInfo) parcel.readParcelable(null));
            builder.setClientState((Bundle) parcel.readParcelable(null));
            AutofillId[] autofillIdArr = (AutofillId[]) parcel.readParcelableArray(null, AutofillId.class);
            IntentSender intentSender = (IntentSender) parcel.readParcelable(null);
            RemoteViews remoteViews = (RemoteViews) parcel.readParcelable(null);
            if (autofillIdArr != null) {
                builder.setAuthentication(autofillIdArr, intentSender, remoteViews);
            }
            builder.setIgnoredIds((AutofillId[]) parcel.readParcelableArray(null, AutofillId.class));
            FillResponse fillResponseBuild = builder.build();
            fillResponseBuild.setRequestId(parcel.readInt());
            return fillResponseBuild;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillResponse[] newArray(int i2) {
            return new FillResponse[i2];
        }
    };
    private final IntentSender mAuthentication;
    private final AutofillId[] mAuthenticationIds;
    private final Bundle mClientState;
    private final ParceledListSlice<Dataset> mDatasets;
    private final AutofillId[] mIgnoredIds;
    private final RemoteViews mPresentation;
    private int mRequestId;
    private final SaveInfo mSaveInfo;

    public static final class Builder {
        private IntentSender mAuthentication;
        private AutofillId[] mAuthenticationIds;
        private Bundle mCLientState;
        private ArrayList<Dataset> mDatasets;
        private boolean mDestroyed;
        private AutofillId[] mIgnoredIds;
        private RemoteViews mPresentation;
        private SaveInfo mSaveInfo;

        private void throwIfDestroyed() {
            if (this.mDestroyed) {
                throw new IllegalStateException("Already called #build()");
            }
        }

        public Builder addDataset(Dataset dataset) {
            throwIfDestroyed();
            if (dataset == null) {
                return this;
            }
            if (this.mDatasets == null) {
                this.mDatasets = new ArrayList<>();
            }
            this.mDatasets.add(dataset);
            return this;
        }

        public FillResponse build() {
            throwIfDestroyed();
            if (this.mAuthentication == null && this.mDatasets == null && this.mSaveInfo == null) {
                throw new IllegalArgumentException("need to provide at least one DataSet or a SaveInfo or an authentication with a presentation");
            }
            this.mDestroyed = true;
            return new FillResponse(this);
        }

        public Builder setAuthentication(AutofillId[] autofillIdArr, IntentSender intentSender, RemoteViews remoteViews) {
            throwIfDestroyed();
            if (autofillIdArr == null || autofillIdArr.length == 0) {
                throw new IllegalArgumentException("ids cannot be null or empry");
            }
            if ((remoteViews == null) ^ (intentSender == null)) {
                throw new IllegalArgumentException("authentication and presentation must be both non-null or null");
            }
            this.mAuthentication = intentSender;
            this.mPresentation = remoteViews;
            this.mAuthenticationIds = autofillIdArr;
            return this;
        }

        public Builder setClientState(Bundle bundle) {
            throwIfDestroyed();
            this.mCLientState = bundle;
            return this;
        }

        public Builder setIgnoredIds(AutofillId... autofillIdArr) {
            this.mIgnoredIds = autofillIdArr;
            return this;
        }

        public Builder setSaveInfo(SaveInfo saveInfo) {
            throwIfDestroyed();
            this.mSaveInfo = saveInfo;
            return this;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IntentSender getAuthentication() {
        return this.mAuthentication;
    }

    public AutofillId[] getAuthenticationIds() {
        return this.mAuthenticationIds;
    }

    public Bundle getClientState() {
        return this.mClientState;
    }

    public List<Dataset> getDatasets() {
        ParceledListSlice<Dataset> parceledListSlice = this.mDatasets;
        if (parceledListSlice != null) {
            return parceledListSlice.getList();
        }
        return null;
    }

    public AutofillId[] getIgnoredIds() {
        return this.mIgnoredIds;
    }

    public RemoteViews getPresentation() {
        return this.mPresentation;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public SaveInfo getSaveInfo() {
        return this.mSaveInfo;
    }

    public void setRequestId(int i2) {
        this.mRequestId = i2;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        StringBuilder sb = new StringBuilder("FillResponse : [mRequestId=" + this.mRequestId);
        sb.append(", datasets=");
        ParceledListSlice<Dataset> parceledListSlice = this.mDatasets;
        sb.append(parceledListSlice == null ? "N/A" : parceledListSlice.getList());
        sb.append(", saveInfo=");
        sb.append(this.mSaveInfo);
        sb.append(", clientState=");
        sb.append(this.mClientState != null);
        sb.append(", hasPresentation=");
        sb.append(this.mPresentation != null);
        sb.append(", hasAuthentication=");
        sb.append(this.mAuthentication != null);
        sb.append(", authenticationIds=");
        sb.append(Arrays.toString(this.mAuthenticationIds));
        sb.append(", ignoredIds=");
        return c.n(sb, Arrays.toString(this.mIgnoredIds), "]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mDatasets, i2);
        parcel.writeParcelable(this.mSaveInfo, i2);
        parcel.writeParcelable(this.mClientState, i2);
        parcel.writeParcelableArray(this.mAuthenticationIds, i2);
        parcel.writeParcelable(this.mAuthentication, i2);
        parcel.writeParcelable(this.mPresentation, i2);
        parcel.writeParcelableArray(this.mIgnoredIds, i2);
        parcel.writeInt(this.mRequestId);
    }

    private FillResponse(Builder builder) {
        this.mDatasets = builder.mDatasets != null ? new ParceledListSlice<>(builder.mDatasets) : null;
        this.mSaveInfo = builder.mSaveInfo;
        this.mClientState = builder.mCLientState;
        this.mPresentation = builder.mPresentation;
        this.mAuthentication = builder.mAuthentication;
        this.mAuthenticationIds = builder.mAuthenticationIds;
        this.mIgnoredIds = builder.mIgnoredIds;
        this.mRequestId = Integer.MIN_VALUE;
    }
}
