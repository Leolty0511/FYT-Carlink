package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.telecom.Logging.Session;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import android.widget.RemoteViews;
import com.android.internal.util.Preconditions;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class CharSequenceTransformation extends InternalTransformation {
    public static final Parcelable.Creator<CharSequenceTransformation> CREATOR = new Parcelable.Creator<CharSequenceTransformation>() { // from class: android.service.autofill.CharSequenceTransformation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CharSequenceTransformation createFromParcel(Parcel parcel) {
            AutofillId[] autofillIdArr = (AutofillId[]) parcel.readParcelableArray(null, AutofillId.class);
            Pattern[] patternArr = (Pattern[]) parcel.readSerializable();
            String[] strArrCreateStringArray = parcel.createStringArray();
            Builder builder = new Builder(autofillIdArr[0], patternArr[0], strArrCreateStringArray[0]);
            int length = autofillIdArr.length;
            for (int i2 = 1; i2 < length; i2++) {
                builder.addField(autofillIdArr[i2], patternArr[i2], strArrCreateStringArray[i2]);
            }
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CharSequenceTransformation[] newArray(int i2) {
            return new CharSequenceTransformation[i2];
        }
    };
    private static final String TAG = "CharSequenceTransformation";
    private final ArrayMap<AutofillId, Pair<Pattern, String>> mFields;

    public static class Builder {
        private boolean mDestroyed;
        private final ArrayMap<AutofillId, Pair<Pattern, String>> mFields = new ArrayMap<>();

        public Builder(AutofillId autofillId, Pattern pattern, String str) {
            addField(autofillId, pattern, str);
        }

        private void throwIfDestroyed() {
            Preconditions.checkState(!this.mDestroyed, "Already called build()");
        }

        public Builder addField(AutofillId autofillId, Pattern pattern, String str) {
            throwIfDestroyed();
            Preconditions.checkNotNull(autofillId);
            Preconditions.checkNotNull(pattern);
            Preconditions.checkNotNull(str);
            this.mFields.put(autofillId, new Pair<>(pattern, str));
            return this;
        }

        public CharSequenceTransformation build() {
            throwIfDestroyed();
            this.mDestroyed = true;
            return new CharSequenceTransformation(this);
        }
    }

    @Override // android.service.autofill.InternalTransformation
    public void apply(ValueFinder valueFinder, RemoteViews remoteViews, int i2) throws Exception {
        StringBuilder sb = new StringBuilder();
        int size = this.mFields.size();
        if (Helper.sDebug) {
            Log.d(TAG, size + " multiple fields on id " + i2);
        }
        for (int i3 = 0; i3 < size; i3++) {
            AutofillId autofillIdKeyAt = this.mFields.keyAt(i3);
            Pair<Pattern, String> pairValueAt = this.mFields.valueAt(i3);
            String strFindByAutofillId = valueFinder.findByAutofillId(autofillIdKeyAt);
            if (strFindByAutofillId == null) {
                Log.w(TAG, "No value for id " + autofillIdKeyAt);
                return;
            }
            try {
                Matcher matcher = pairValueAt.first.matcher(strFindByAutofillId);
                if (!matcher.find()) {
                    if (Helper.sDebug) {
                        Log.d(TAG, "match for " + pairValueAt.first + " failed on id " + autofillIdKeyAt);
                        return;
                    }
                    return;
                }
                sb.append(matcher.replaceAll(pairValueAt.second));
            } catch (Exception e2) {
                Log.w(TAG, "Cannot apply " + pairValueAt.first.pattern() + Session.SUBSESSION_SEPARATION_CHAR + pairValueAt.second + " to field with autofill id" + autofillIdKeyAt + ": " + e2.getClass());
                throw e2;
            }
        }
        remoteViews.setCharSequence(i2, "setText", sb);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "MultipleViewsCharSequenceTransformation: [fields=" + this.mFields + "]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.Serializable, java.util.regex.Pattern[]] */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int size = this.mFields.size();
        AutofillId[] autofillIdArr = new AutofillId[size];
        ?? r2 = new Pattern[size];
        String[] strArr = new String[size];
        for (int i3 = 0; i3 < size; i3++) {
            autofillIdArr[i3] = this.mFields.keyAt(i3);
            Pair<Pattern, String> pairValueAt = this.mFields.valueAt(i3);
            r2[i3] = pairValueAt.first;
            strArr[i3] = pairValueAt.second;
        }
        parcel.writeParcelableArray(autofillIdArr, i2);
        parcel.writeSerializable(r2);
        parcel.writeStringArray(strArr);
    }

    private CharSequenceTransformation(Builder builder) {
        this.mFields = builder.mFields;
    }
}
