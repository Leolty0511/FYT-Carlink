package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class PasswordMetrics implements Parcelable {
    private static final int CHAR_DIGIT = 2;
    private static final int CHAR_LOWER_CASE = 0;
    private static final int CHAR_SYMBOL = 3;
    private static final int CHAR_UPPER_CASE = 1;
    public static final Parcelable.Creator<PasswordMetrics> CREATOR = new Parcelable.Creator<PasswordMetrics>() { // from class: android.app.admin.PasswordMetrics.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PasswordMetrics createFromParcel(Parcel parcel) {
            return new PasswordMetrics(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PasswordMetrics[] newArray(int i2) {
            return new PasswordMetrics[i2];
        }
    };
    public static final int MAX_ALLOWED_SEQUENCE = 3;
    public int length;
    public int letters;
    public int lowerCase;
    public int nonLetter;
    public int numeric;
    public int quality;
    public int symbols;
    public int upperCase;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CharacterCatagory {
    }

    private static int categoryChar(char c) {
        if ('a' <= c && c <= 'z') {
            return 0;
        }
        if ('A' > c || c > 'Z') {
            return ('0' > c || c > '9') ? 3 : 2;
        }
        return 1;
    }

    public static PasswordMetrics computeForPassword(String str) {
        int i2;
        int i3;
        int length = str.length();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            int iCategoryChar = categoryChar(str.charAt(i4));
            if (iCategoryChar == 0) {
                i5++;
                i7++;
            } else if (iCategoryChar != 1) {
                if (iCategoryChar == 2) {
                    i8++;
                } else if (iCategoryChar == 3) {
                    i9++;
                }
                i10++;
            } else {
                i5++;
                i6++;
            }
            i4++;
        }
        boolean z2 = i8 > 0;
        boolean z3 = i5 + i9 > 0;
        if (z3 && z2) {
            i3 = 327680;
        } else {
            if (!z3) {
                if (z2) {
                    i3 = maxLengthSequence(str) > 3 ? 131072 : 196608;
                } else {
                    i2 = 0;
                }
                return new PasswordMetrics(i2, length, i5, i6, i7, i8, i9, i10);
            }
            i3 = 262144;
        }
        i2 = i3;
        return new PasswordMetrics(i2, length, i5, i6, i7, i8, i9, i10);
    }

    private static int maxDiffCategory(int i2) {
        if (i2 == 0 || i2 == 1) {
            return 1;
        }
        return i2 != 2 ? 0 : 10;
    }

    public static int maxLengthSequence(String str) {
        if (str.length() == 0) {
            return 0;
        }
        char cCharAt = str.charAt(0);
        int iCategoryChar = categoryChar(cCharAt);
        int iMax = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 1;
        while (i4 < str.length()) {
            char cCharAt2 = str.charAt(i4);
            int iCategoryChar2 = categoryChar(cCharAt2);
            int i5 = cCharAt2 - cCharAt;
            if (iCategoryChar2 != iCategoryChar || Math.abs(i5) > maxDiffCategory(iCategoryChar)) {
                iMax = Math.max(iMax, i4 - i2);
                z2 = false;
                i2 = i4;
                iCategoryChar = iCategoryChar2;
            } else {
                if (z2 && i5 != i3) {
                    iMax = Math.max(iMax, i4 - i2);
                    i2 = i4 - 1;
                }
                i3 = i5;
                z2 = true;
            }
            i4++;
            cCharAt = cCharAt2;
        }
        return Math.max(iMax, str.length() - i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PasswordMetrics)) {
            return false;
        }
        PasswordMetrics passwordMetrics = (PasswordMetrics) obj;
        return this.quality == passwordMetrics.quality && this.length == passwordMetrics.length && this.letters == passwordMetrics.letters && this.upperCase == passwordMetrics.upperCase && this.lowerCase == passwordMetrics.lowerCase && this.numeric == passwordMetrics.numeric && this.symbols == passwordMetrics.symbols && this.nonLetter == passwordMetrics.nonLetter;
    }

    public boolean isDefault() {
        return this.quality == 0 && this.length == 0 && this.letters == 0 && this.upperCase == 0 && this.lowerCase == 0 && this.numeric == 0 && this.symbols == 0 && this.nonLetter == 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.quality);
        parcel.writeInt(this.length);
        parcel.writeInt(this.letters);
        parcel.writeInt(this.upperCase);
        parcel.writeInt(this.lowerCase);
        parcel.writeInt(this.numeric);
        parcel.writeInt(this.symbols);
        parcel.writeInt(this.nonLetter);
    }

    public PasswordMetrics() {
        this.quality = 0;
        this.length = 0;
        this.letters = 0;
        this.upperCase = 0;
        this.lowerCase = 0;
        this.numeric = 0;
        this.symbols = 0;
        this.nonLetter = 0;
    }

    public PasswordMetrics(int i2, int i3) {
        this.letters = 0;
        this.upperCase = 0;
        this.lowerCase = 0;
        this.numeric = 0;
        this.symbols = 0;
        this.nonLetter = 0;
        this.quality = i2;
        this.length = i3;
    }

    public PasswordMetrics(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this(i2, i3);
        this.letters = i4;
        this.upperCase = i5;
        this.lowerCase = i6;
        this.numeric = i7;
        this.symbols = i8;
        this.nonLetter = i9;
    }

    private PasswordMetrics(Parcel parcel) {
        this.quality = 0;
        this.length = 0;
        this.letters = 0;
        this.upperCase = 0;
        this.lowerCase = 0;
        this.numeric = 0;
        this.symbols = 0;
        this.nonLetter = 0;
        this.quality = parcel.readInt();
        this.length = parcel.readInt();
        this.letters = parcel.readInt();
        this.upperCase = parcel.readInt();
        this.lowerCase = parcel.readInt();
        this.numeric = parcel.readInt();
        this.symbols = parcel.readInt();
        this.nonLetter = parcel.readInt();
    }
}
