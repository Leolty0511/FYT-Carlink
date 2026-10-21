package android.service.autofill;

import android.accessibilityservice.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.Pair;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import android.widget.RemoteViews;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class ImageTransformation extends InternalTransformation {
    public static final Parcelable.Creator<ImageTransformation> CREATOR = new Parcelable.Creator<ImageTransformation>() { // from class: android.service.autofill.ImageTransformation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImageTransformation createFromParcel(Parcel parcel) {
            AutofillId autofillId = (AutofillId) parcel.readParcelable(null);
            Pattern[] patternArr = (Pattern[]) parcel.readSerializable();
            int[] iArrCreateIntArray = parcel.createIntArray();
            Builder builder = new Builder(autofillId, patternArr[0], iArrCreateIntArray[0]);
            int length = patternArr.length;
            for (int i2 = 1; i2 < length; i2++) {
                builder.addOption(patternArr[i2], iArrCreateIntArray[i2]);
            }
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImageTransformation[] newArray(int i2) {
            return new ImageTransformation[i2];
        }
    };
    private static final String TAG = "ImageTransformation";
    private final AutofillId mId;
    private final ArrayList<Pair<Pattern, Integer>> mOptions;

    public static class Builder {
        private boolean mDestroyed;
        private final AutofillId mId;
        private final ArrayList<Pair<Pattern, Integer>> mOptions = new ArrayList<>();

        public Builder(AutofillId autofillId, Pattern pattern, int i2) {
            this.mId = (AutofillId) Preconditions.checkNotNull(autofillId);
            addOption(pattern, i2);
        }

        private void throwIfDestroyed() {
            Preconditions.checkState(!this.mDestroyed, "Already called build()");
        }

        public Builder addOption(Pattern pattern, int i2) {
            throwIfDestroyed();
            Preconditions.checkNotNull(pattern);
            Preconditions.checkArgument(i2 != 0);
            this.mOptions.add(new Pair<>(pattern, Integer.valueOf(i2)));
            return this;
        }

        public ImageTransformation build() {
            throwIfDestroyed();
            this.mDestroyed = true;
            return new ImageTransformation(this);
        }
    }

    @Override // android.service.autofill.InternalTransformation
    public void apply(ValueFinder valueFinder, RemoteViews remoteViews, int i2) throws Exception {
        String strFindByAutofillId = valueFinder.findByAutofillId(this.mId);
        if (strFindByAutofillId == null) {
            Log.w(TAG, "No view for id " + this.mId);
            return;
        }
        int size = this.mOptions.size();
        if (Helper.sDebug) {
            Log.d(TAG, size + " multiple options on id " + i2 + " to compare against");
        }
        for (int i3 = 0; i3 < size; i3++) {
            Pair<Pattern, Integer> pair = this.mOptions.get(i3);
            try {
                if (pair.first.matcher(strFindByAutofillId).matches()) {
                    Log.d(TAG, "Found match at " + i3 + ": " + pair);
                    remoteViews.setImageViewResource(i2, pair.second.intValue());
                    return;
                }
            } catch (Exception e2) {
                StringBuilder sbS = c.s("Error matching regex #", i3, "(");
                sbS.append(pair.first.pattern());
                sbS.append(") on id ");
                sbS.append(pair.second);
                sbS.append(": ");
                sbS.append(e2.getClass());
                Log.w(TAG, sbS.toString());
                throw e2;
            }
        }
        if (Helper.sDebug) {
            Log.d(TAG, "No match for ".concat(strFindByAutofillId));
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "ImageTransformation: [id=" + this.mId + ", options=" + this.mOptions + "]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Serializable, java.util.regex.Pattern[]] */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.mId, i2);
        int size = this.mOptions.size();
        ?? r0 = new Pattern[size];
        int[] iArr = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            Pair<Pattern, Integer> pair = this.mOptions.get(i3);
            r0[i3] = pair.first;
            iArr[i3] = pair.second.intValue();
        }
        parcel.writeSerializable(r0);
        parcel.writeIntArray(iArr);
    }

    private ImageTransformation(Builder builder) {
        this.mId = builder.mId;
        this.mOptions = builder.mOptions;
    }
}
