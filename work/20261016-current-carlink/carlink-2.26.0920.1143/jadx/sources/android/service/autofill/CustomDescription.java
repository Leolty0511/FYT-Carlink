package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.Pair;
import android.view.autofill.Helper;
import android.widget.RemoteViews;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class CustomDescription implements Parcelable {
    public static final Parcelable.Creator<CustomDescription> CREATOR = new Parcelable.Creator<CustomDescription>() { // from class: android.service.autofill.CustomDescription.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomDescription createFromParcel(Parcel parcel) {
            Builder builder = new Builder((RemoteViews) parcel.readParcelable(null));
            int[] iArrCreateIntArray = parcel.createIntArray();
            if (iArrCreateIntArray != null) {
                InternalTransformation[] internalTransformationArr = (InternalTransformation[]) parcel.readParcelableArray(null, InternalTransformation.class);
                int length = iArrCreateIntArray.length;
                for (int i2 = 0; i2 < length; i2++) {
                    builder.addChild(iArrCreateIntArray[i2], internalTransformationArr[i2]);
                }
            }
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomDescription[] newArray(int i2) {
            return new CustomDescription[i2];
        }
    };
    private static final String TAG = "CustomDescription";
    private final RemoteViews mPresentation;
    private final ArrayList<Pair<Integer, InternalTransformation>> mTransformations;

    public static class Builder {
        private final RemoteViews mPresentation;
        private ArrayList<Pair<Integer, InternalTransformation>> mTransformations;

        public Builder(RemoteViews remoteViews) {
            this.mPresentation = remoteViews;
        }

        public Builder addChild(int i2, Transformation transformation) {
            Preconditions.checkArgument(transformation instanceof InternalTransformation, "not provided by Android System: " + transformation);
            if (this.mTransformations == null) {
                this.mTransformations = new ArrayList<>();
            }
            this.mTransformations.add(new Pair<>(Integer.valueOf(i2), (InternalTransformation) transformation));
            return this;
        }

        public CustomDescription build() {
            return new CustomDescription(this);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RemoteViews getPresentation(ValueFinder valueFinder) {
        ArrayList<Pair<Integer, InternalTransformation>> arrayList = this.mTransformations;
        if (arrayList != null) {
            int size = arrayList.size();
            if (Helper.sDebug) {
                Log.d(TAG, "getPresentation(): applying " + size + " transformations");
            }
            for (int i2 = 0; i2 < size; i2++) {
                Pair<Integer, InternalTransformation> pair = this.mTransformations.get(i2);
                int iIntValue = pair.first.intValue();
                InternalTransformation internalTransformation = pair.second;
                if (Helper.sDebug) {
                    Log.d(TAG, "#" + i2 + ": " + internalTransformation);
                }
                try {
                    internalTransformation.apply(valueFinder, this.mPresentation, iIntValue);
                } catch (Exception e2) {
                    Log.e(TAG, "Could not apply transformation " + internalTransformation + ": " + e2.getClass());
                    return null;
                }
            }
        }
        return this.mPresentation;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "CustomDescription: [presentation=" + this.mPresentation + ", transformations=" + this.mTransformations + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mPresentation, i2);
        ArrayList<Pair<Integer, InternalTransformation>> arrayList = this.mTransformations;
        if (arrayList == null) {
            parcel.writeIntArray(null);
            return;
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        InternalTransformation[] internalTransformationArr = new InternalTransformation[size];
        for (int i3 = 0; i3 < size; i3++) {
            Pair<Integer, InternalTransformation> pair = this.mTransformations.get(i3);
            iArr[i3] = pair.first.intValue();
            internalTransformationArr[i3] = pair.second;
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(internalTransformationArr, i2);
    }

    private CustomDescription(Builder builder) {
        this.mPresentation = builder.mPresentation;
        this.mTransformations = builder.mTransformations;
    }
}
