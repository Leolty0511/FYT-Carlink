package android.os;

/* JADX INFO: loaded from: classes.dex */
public class PatternMatcher implements Parcelable {
    public static final Parcelable.Creator<PatternMatcher> CREATOR = new Parcelable.Creator<PatternMatcher>() { // from class: android.os.PatternMatcher.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PatternMatcher createFromParcel(Parcel parcel) {
            return new PatternMatcher(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PatternMatcher[] newArray(int i2) {
            return new PatternMatcher[i2];
        }
    };
    public static final int PATTERN_LITERAL = 0;
    public static final int PATTERN_PREFIX = 1;
    public static final int PATTERN_SIMPLE_GLOB = 2;
    private final String mPattern;
    private final int mType;

    public PatternMatcher(String str, int i2) {
        this.mPattern = str;
        this.mType = i2;
    }

    public static boolean matchPattern(String str, String str2, int i2) {
        if (str2 == null) {
            return false;
        }
        if (i2 == 0) {
            return str.equals(str2);
        }
        if (i2 == 1) {
            return str2.startsWith(str);
        }
        if (i2 != 2) {
            return false;
        }
        int length = str.length();
        if (length <= 0) {
            return str2.length() <= 0;
        }
        int length2 = str2.length();
        char cCharAt = str.charAt(0);
        int i3 = 0;
        int i4 = 0;
        while (i3 < length && i4 < length2) {
            i3++;
            char cCharAt2 = i3 < length ? str.charAt(i3) : (char) 0;
            boolean z2 = cCharAt == '\\';
            if (z2) {
                i3++;
                char c2 = cCharAt2;
                cCharAt2 = i3 < length ? str.charAt(i3) : (char) 0;
                cCharAt = c2;
            }
            if (cCharAt2 == '*') {
                if (z2 || cCharAt != '.') {
                    while (str2.charAt(i4) == cCharAt && (i4 = i4 + 1) < length2) {
                    }
                    i3++;
                    cCharAt = i3 < length ? str.charAt(i3) : (char) 0;
                } else {
                    if (i3 >= length - 1) {
                        return true;
                    }
                    int i5 = i3 + 1;
                    char cCharAt3 = str.charAt(i5);
                    if (cCharAt3 == '\\') {
                        i5++;
                        cCharAt3 = i5 < length ? str.charAt(i5) : (char) 0;
                    }
                    while (str2.charAt(i4) != cCharAt3 && (i4 = i4 + 1) < length2) {
                    }
                    if (i4 == length2) {
                        return false;
                    }
                    i3 = i5 + 1;
                    cCharAt = i3 < length ? str.charAt(i3) : (char) 0;
                    i4++;
                }
            } else {
                if (cCharAt != '.' && str2.charAt(i4) != cCharAt) {
                    return false;
                }
                i4++;
                cCharAt = cCharAt2;
            }
        }
        if (i3 < length || i4 < length2) {
            return i3 == length - 2 && str.charAt(i3) == '.' && str.charAt(i3 + 1) == '*';
        }
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getPath() {
        return this.mPattern;
    }

    public final int getType() {
        return this.mType;
    }

    public boolean match(String str) {
        return matchPattern(this.mPattern, str, this.mType);
    }

    public String toString() {
        String str;
        int i2 = this.mType;
        if (i2 == 0) {
            str = "LITERAL: ";
        } else if (i2 != 1) {
            str = i2 != 2 ? "? " : "GLOB: ";
        } else {
            str = "PREFIX: ";
        }
        return "PatternMatcher{" + str + this.mPattern + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPattern);
        parcel.writeInt(this.mType);
    }

    public PatternMatcher(Parcel parcel) {
        this.mPattern = parcel.readString();
        this.mType = parcel.readInt();
    }
}
