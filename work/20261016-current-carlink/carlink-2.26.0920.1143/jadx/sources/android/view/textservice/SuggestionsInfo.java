package android.view.textservice;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.ArrayUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class SuggestionsInfo implements Parcelable {
    public static final int RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS = 4;
    public static final int RESULT_ATTR_IN_THE_DICTIONARY = 1;
    public static final int RESULT_ATTR_LOOKS_LIKE_TYPO = 2;
    private int mCookie;
    private int mSequence;
    private final String[] mSuggestions;
    private final int mSuggestionsAttributes;
    private final boolean mSuggestionsAvailable;
    private static final String[] EMPTY = (String[]) ArrayUtils.emptyArray(String.class);
    public static final Parcelable.Creator<SuggestionsInfo> CREATOR = new Parcelable.Creator<SuggestionsInfo>() { // from class: android.view.textservice.SuggestionsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SuggestionsInfo createFromParcel(Parcel parcel) {
            return new SuggestionsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SuggestionsInfo[] newArray(int i2) {
            return new SuggestionsInfo[i2];
        }
    };

    public SuggestionsInfo(int i2, String[] strArr) {
        this(i2, strArr, 0, 0);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCookie() {
        return this.mCookie;
    }

    public int getSequence() {
        return this.mSequence;
    }

    public String getSuggestionAt(int i2) {
        return this.mSuggestions[i2];
    }

    public int getSuggestionsAttributes() {
        return this.mSuggestionsAttributes;
    }

    public int getSuggestionsCount() {
        if (this.mSuggestionsAvailable) {
            return this.mSuggestions.length;
        }
        return -1;
    }

    public void setCookieAndSequence(int i2, int i3) {
        this.mCookie = i2;
        this.mSequence = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSuggestionsAttributes);
        parcel.writeStringArray(this.mSuggestions);
        parcel.writeInt(this.mCookie);
        parcel.writeInt(this.mSequence);
        parcel.writeInt(this.mSuggestionsAvailable ? 1 : 0);
    }

    public SuggestionsInfo(int i2, String[] strArr, int i3, int i4) {
        if (strArr == null) {
            this.mSuggestions = EMPTY;
            this.mSuggestionsAvailable = false;
        } else {
            this.mSuggestions = strArr;
            this.mSuggestionsAvailable = true;
        }
        this.mSuggestionsAttributes = i2;
        this.mCookie = i3;
        this.mSequence = i4;
    }

    public SuggestionsInfo(Parcel parcel) {
        this.mSuggestionsAttributes = parcel.readInt();
        this.mSuggestions = parcel.readStringArray();
        this.mCookie = parcel.readInt();
        this.mSequence = parcel.readInt();
        this.mSuggestionsAvailable = parcel.readInt() == 1;
    }
}
