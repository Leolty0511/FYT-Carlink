package android.service.autofill;

import android.accessibilityservice.c;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.autofill.Helper;
import android.widget.RemoteViews;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Dataset implements Parcelable {
    public static final Parcelable.Creator<Dataset> CREATOR = new Parcelable.Creator<Dataset>() { // from class: android.service.autofill.Dataset.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Dataset createFromParcel(Parcel parcel) {
            RemoteViews remoteViews = (RemoteViews) parcel.readParcelable(null);
            Builder builder = remoteViews == null ? new Builder() : new Builder(remoteViews);
            ArrayList typedArrayList = parcel.readTypedArrayList(null);
            ArrayList typedArrayList2 = parcel.readTypedArrayList(null);
            ArrayList arrayList = new ArrayList();
            parcel.readParcelableList(arrayList, null);
            int i2 = 0;
            int size = typedArrayList != null ? typedArrayList.size() : 0;
            int size2 = typedArrayList2 != null ? typedArrayList2.size() : 0;
            while (i2 < size) {
                builder.setValueAndPresentation((AutofillId) typedArrayList.get(i2), size2 > i2 ? (AutofillValue) typedArrayList2.get(i2) : null, arrayList.isEmpty() ? null : (RemoteViews) arrayList.get(i2));
                i2++;
            }
            builder.setAuthentication((IntentSender) parcel.readParcelable(null));
            builder.setId(parcel.readString());
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Dataset[] newArray(int i2) {
            return new Dataset[i2];
        }
    };
    private final IntentSender mAuthentication;
    private final ArrayList<AutofillId> mFieldIds;
    private final ArrayList<RemoteViews> mFieldPresentations;
    private final ArrayList<AutofillValue> mFieldValues;
    String mId;
    private final RemoteViews mPresentation;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IntentSender getAuthentication() {
        return this.mAuthentication;
    }

    public ArrayList<AutofillId> getFieldIds() {
        return this.mFieldIds;
    }

    public RemoteViews getFieldPresentation(int i2) {
        RemoteViews remoteViews = this.mFieldPresentations.get(i2);
        return remoteViews != null ? remoteViews : this.mPresentation;
    }

    public ArrayList<AutofillValue> getFieldValues() {
        return this.mFieldValues;
    }

    public String getId() {
        return this.mId;
    }

    public boolean isEmpty() {
        ArrayList<AutofillId> arrayList = this.mFieldIds;
        return arrayList == null || arrayList.isEmpty();
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        StringBuilder sb = new StringBuilder(c.n(new StringBuilder("Dataset "), this.mId, " ["));
        sb.append("fieldIds=");
        sb.append(this.mFieldIds);
        sb.append(", fieldValues=");
        sb.append(this.mFieldValues);
        sb.append(", fieldPresentations=");
        ArrayList<RemoteViews> arrayList = this.mFieldPresentations;
        sb.append(arrayList == null ? 0 : arrayList.size());
        sb.append(", hasPresentation=");
        sb.append(this.mPresentation != null);
        sb.append(", hasAuthentication=");
        sb.append(this.mAuthentication != null);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mPresentation, i2);
        parcel.writeTypedArrayList(this.mFieldIds, i2);
        parcel.writeTypedArrayList(this.mFieldValues, i2);
        parcel.writeParcelableList(this.mFieldPresentations, i2);
        parcel.writeParcelable(this.mAuthentication, i2);
        parcel.writeString(this.mId);
    }

    private Dataset(Builder builder) {
        this.mFieldIds = builder.mFieldIds;
        this.mFieldValues = builder.mFieldValues;
        this.mFieldPresentations = builder.mFieldPresentations;
        this.mPresentation = builder.mPresentation;
        this.mAuthentication = builder.mAuthentication;
        this.mId = builder.mId;
    }

    public static final class Builder {
        private IntentSender mAuthentication;
        private boolean mDestroyed;
        private ArrayList<AutofillId> mFieldIds;
        private ArrayList<RemoteViews> mFieldPresentations;
        private ArrayList<AutofillValue> mFieldValues;
        private String mId;
        private RemoteViews mPresentation;

        public Builder(RemoteViews remoteViews) {
            Preconditions.checkNotNull(remoteViews, "presentation must be non-null");
            this.mPresentation = remoteViews;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValueAndPresentation(AutofillId autofillId, AutofillValue autofillValue, RemoteViews remoteViews) {
            Preconditions.checkNotNull(autofillId, "id cannot be null");
            ArrayList<AutofillId> arrayList = this.mFieldIds;
            if (arrayList != null) {
                int iIndexOf = arrayList.indexOf(autofillId);
                if (iIndexOf >= 0) {
                    this.mFieldValues.set(iIndexOf, autofillValue);
                    this.mFieldPresentations.set(iIndexOf, remoteViews);
                    return;
                }
            } else {
                this.mFieldIds = new ArrayList<>();
                this.mFieldValues = new ArrayList<>();
                this.mFieldPresentations = new ArrayList<>();
            }
            this.mFieldIds.add(autofillId);
            this.mFieldValues.add(autofillValue);
            this.mFieldPresentations.add(remoteViews);
        }

        private void throwIfDestroyed() {
            if (this.mDestroyed) {
                throw new IllegalStateException("Already called #build()");
            }
        }

        public Dataset build() {
            throwIfDestroyed();
            this.mDestroyed = true;
            if (this.mFieldIds != null) {
                return new Dataset(this);
            }
            throw new IllegalArgumentException("at least one value must be set");
        }

        public Builder setAuthentication(IntentSender intentSender) {
            throwIfDestroyed();
            this.mAuthentication = intentSender;
            return this;
        }

        public Builder setId(String str) {
            throwIfDestroyed();
            this.mId = str;
            return this;
        }

        public Builder setValue(AutofillId autofillId, AutofillValue autofillValue) {
            throwIfDestroyed();
            if (this.mPresentation == null) {
                throw new IllegalStateException("Dataset presentation not set on constructor");
            }
            setValueAndPresentation(autofillId, autofillValue, null);
            return this;
        }

        public Builder() {
        }

        public Builder setValue(AutofillId autofillId, AutofillValue autofillValue, RemoteViews remoteViews) {
            throwIfDestroyed();
            Preconditions.checkNotNull(remoteViews, "presentation cannot be null");
            setValueAndPresentation(autofillId, autofillValue, remoteViews);
            return this;
        }
    }
}
