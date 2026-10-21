package android.app;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArraySet;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteInput implements Parcelable {
    public static final Parcelable.Creator<RemoteInput> CREATOR = new Parcelable.Creator<RemoteInput>() { // from class: android.app.RemoteInput.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteInput createFromParcel(Parcel parcel) {
            return new RemoteInput(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RemoteInput[] newArray(int i2) {
            return new RemoteInput[i2];
        }
    };
    private static final int DEFAULT_FLAGS = 1;
    private static final String EXTRA_DATA_TYPE_RESULTS_DATA = "android.remoteinput.dataTypeResultsData";
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    private static final int FLAG_ALLOW_FREE_FORM_INPUT = 1;
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    private final ArraySet<String> mAllowedDataTypes;
    private final CharSequence[] mChoices;
    private final Bundle mExtras;
    private final int mFlags;
    private final CharSequence mLabel;
    private final String mResultKey;

    public static final class Builder {
        private CharSequence[] mChoices;
        private CharSequence mLabel;
        private final String mResultKey;
        private int mFlags = 1;
        private Bundle mExtras = new Bundle();
        private final ArraySet<String> mAllowedDataTypes = new ArraySet<>();

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.mResultKey = str;
        }

        private void setFlag(int i2, boolean z2) {
            if (z2) {
                this.mFlags = i2 | this.mFlags;
            } else {
                this.mFlags = (~i2) & this.mFlags;
            }
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                this.mExtras.putAll(bundle);
            }
            return this;
        }

        public RemoteInput build() {
            return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mFlags, this.mExtras, this.mAllowedDataTypes);
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public Builder setAllowDataType(String str, boolean z2) {
            if (z2) {
                this.mAllowedDataTypes.add(str);
            } else {
                this.mAllowedDataTypes.remove(str);
            }
            return this;
        }

        public Builder setAllowFreeFormInput(boolean z2) {
            setFlag(this.mFlags, z2);
            return this;
        }

        public Builder setChoices(CharSequence[] charSequenceArr) {
            if (charSequenceArr == null) {
                this.mChoices = null;
            } else {
                this.mChoices = new CharSequence[charSequenceArr.length];
                for (int i2 = 0; i2 < charSequenceArr.length; i2++) {
                    this.mChoices[i2] = Notification.safeCharSequence(charSequenceArr[i2]);
                }
            }
            return this;
        }

        public Builder setLabel(CharSequence charSequence) {
            this.mLabel = Notification.safeCharSequence(charSequence);
            return this;
        }
    }

    public static void addDataResultToIntent(RemoteInput remoteInput, Intent intent, Map<String, Uri> map) {
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            clipDataIntentFromIntent = new Intent();
        }
        for (Map.Entry<String, Uri> entry : map.entrySet()) {
            String key = entry.getKey();
            Uri value = entry.getValue();
            if (key != null) {
                Bundle bundleExtra = clipDataIntentFromIntent.getBundleExtra(getExtraResultsKeyForData(key));
                if (bundleExtra == null) {
                    bundleExtra = new Bundle();
                }
                bundleExtra.putString(remoteInput.getResultKey(), value.toString());
                clipDataIntentFromIntent.putExtra(getExtraResultsKeyForData(key), bundleExtra);
            }
        }
        intent.setClipData(ClipData.newIntent("android.remoteinput.results", clipDataIntentFromIntent));
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            clipDataIntentFromIntent = new Intent();
        }
        Bundle bundleExtra = clipDataIntentFromIntent.getBundleExtra("android.remoteinput.resultsData");
        if (bundleExtra == null) {
            bundleExtra = new Bundle();
        }
        for (RemoteInput remoteInput : remoteInputArr) {
            Object obj = bundle.get(remoteInput.getResultKey());
            if (obj instanceof CharSequence) {
                bundleExtra.putCharSequence(remoteInput.getResultKey(), (CharSequence) obj);
            }
        }
        clipDataIntentFromIntent.putExtra("android.remoteinput.resultsData", bundleExtra);
        intent.setClipData(ClipData.newIntent("android.remoteinput.results", clipDataIntentFromIntent));
    }

    private static Intent getClipDataIntentFromIntent(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType(ClipDescription.MIMETYPE_TEXT_INTENT) && description.getLabel().equals("android.remoteinput.results")) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }

    public static Map<String, Uri> getDataResultsFromIntent(Intent intent, String str) {
        String strSubstring;
        String string;
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str2 : clipDataIntentFromIntent.getExtras().keySet()) {
            if (str2.startsWith(EXTRA_DATA_TYPE_RESULTS_DATA) && (strSubstring = str2.substring(39)) != null && !strSubstring.isEmpty() && (string = clipDataIntentFromIntent.getBundleExtra(str2).getString(str)) != null && !string.isEmpty()) {
                map.put(strSubstring, Uri.parse(string));
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    private static String getExtraResultsKeyForData(String str) {
        return android.accessibilityservice.c.j(EXTRA_DATA_TYPE_RESULTS_DATA, str);
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
        if (clipDataIntentFromIntent == null) {
            return null;
        }
        return (Bundle) clipDataIntentFromIntent.getExtras().getParcelable("android.remoteinput.resultsData");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getAllowFreeFormInput() {
        return (this.mFlags & 1) != 0;
    }

    public Set<String> getAllowedDataTypes() {
        return this.mAllowedDataTypes;
    }

    public CharSequence[] getChoices() {
        return this.mChoices;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public String getResultKey() {
        return this.mResultKey;
    }

    public boolean isDataOnly() {
        return !getAllowFreeFormInput() && (getChoices() == null || getChoices().length == 0) && !getAllowedDataTypes().isEmpty();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mResultKey);
        parcel.writeCharSequence(this.mLabel);
        parcel.writeCharSequenceArray(this.mChoices);
        parcel.writeInt(this.mFlags);
        parcel.writeBundle(this.mExtras);
        parcel.writeArraySet(this.mAllowedDataTypes);
    }

    private RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, int i2, Bundle bundle, ArraySet<String> arraySet) {
        this.mResultKey = str;
        this.mLabel = charSequence;
        this.mChoices = charSequenceArr;
        this.mFlags = i2;
        this.mExtras = bundle;
        this.mAllowedDataTypes = arraySet;
    }

    private RemoteInput(Parcel parcel) {
        this.mResultKey = parcel.readString();
        this.mLabel = parcel.readCharSequence();
        this.mChoices = parcel.readCharSequenceArray();
        this.mFlags = parcel.readInt();
        this.mExtras = parcel.readBundle();
        this.mAllowedDataTypes = parcel.readArraySet(null);
    }
}
