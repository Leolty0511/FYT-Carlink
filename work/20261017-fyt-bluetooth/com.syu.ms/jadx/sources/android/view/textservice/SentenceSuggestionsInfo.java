package android.view.textservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class SentenceSuggestionsInfo implements Parcelable {
    public static final Parcelable.Creator<SentenceSuggestionsInfo> CREATOR = new Parcelable.Creator<SentenceSuggestionsInfo>() { // from class: android.view.textservice.SentenceSuggestionsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SentenceSuggestionsInfo createFromParcel(Parcel parcel) {
            return new SentenceSuggestionsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SentenceSuggestionsInfo[] newArray(int i2) {
            return new SentenceSuggestionsInfo[i2];
        }
    };
    private final int[] mLengths;
    private final int[] mOffsets;
    private final SuggestionsInfo[] mSuggestionsInfos;

    public SentenceSuggestionsInfo(SuggestionsInfo[] suggestionsInfoArr, int[] iArr, int[] iArr2) {
        if (suggestionsInfoArr == null || iArr == null || iArr2 == null) {
            throw null;
        }
        if (suggestionsInfoArr.length != iArr.length || iArr.length != iArr2.length) {
            throw new IllegalArgumentException();
        }
        int length = suggestionsInfoArr.length;
        this.mSuggestionsInfos = (SuggestionsInfo[]) Arrays.copyOf(suggestionsInfoArr, length);
        this.mOffsets = Arrays.copyOf(iArr, length);
        this.mLengths = Arrays.copyOf(iArr2, length);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLengthAt(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int[] iArr = this.mLengths;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    public int getOffsetAt(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int[] iArr = this.mOffsets;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    public int getSuggestionsCount() {
        return this.mSuggestionsInfos.length;
    }

    public SuggestionsInfo getSuggestionsInfoAt(int i2) {
        if (i2 < 0) {
            return null;
        }
        SuggestionsInfo[] suggestionsInfoArr = this.mSuggestionsInfos;
        if (i2 < suggestionsInfoArr.length) {
            return suggestionsInfoArr[i2];
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSuggestionsInfos.length);
        parcel.writeTypedArray(this.mSuggestionsInfos, 0);
        parcel.writeIntArray(this.mOffsets);
        parcel.writeIntArray(this.mLengths);
    }

    public SentenceSuggestionsInfo(Parcel parcel) {
        SuggestionsInfo[] suggestionsInfoArr = new SuggestionsInfo[parcel.readInt()];
        this.mSuggestionsInfos = suggestionsInfoArr;
        parcel.readTypedArray(suggestionsInfoArr, SuggestionsInfo.CREATOR);
        int[] iArr = new int[suggestionsInfoArr.length];
        this.mOffsets = iArr;
        parcel.readIntArray(iArr);
        int[] iArr2 = new int[suggestionsInfoArr.length];
        this.mLengths = iArr2;
        parcel.readIntArray(iArr2);
    }
}
