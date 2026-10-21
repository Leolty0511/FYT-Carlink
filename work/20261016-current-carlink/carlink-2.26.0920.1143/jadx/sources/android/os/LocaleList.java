package android.os;

import android.icu.util.ULocale;
import com.android.internal.annotations.GuardedBy;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class LocaleList implements Parcelable {
    private static final int NUM_PSEUDO_LOCALES = 2;
    private static final String STRING_AR_XB = "ar-XB";
    private static final String STRING_EN_XA = "en-XA";
    private final Locale[] mList;
    private final String mStringRepresentation;
    private static final Locale[] sEmptyList = new Locale[0];
    private static final LocaleList sEmptyLocaleList = new LocaleList(new Locale[0]);
    public static final Parcelable.Creator<LocaleList> CREATOR = new Parcelable.Creator<LocaleList>() { // from class: android.os.LocaleList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocaleList createFromParcel(Parcel parcel) {
            return LocaleList.forLanguageTags(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocaleList[] newArray(int i2) {
            return new LocaleList[i2];
        }
    };
    private static final Locale LOCALE_EN_XA = new Locale("en", "XA");
    private static final Locale LOCALE_AR_XB = new Locale("ar", "XB");
    private static final Locale EN_LATN = Locale.forLanguageTag("en-Latn");
    private static final Object sLock = new Object();

    @GuardedBy("sLock")
    private static LocaleList sLastExplicitlySetLocaleList = null;

    @GuardedBy("sLock")
    private static LocaleList sDefaultLocaleList = null;

    @GuardedBy("sLock")
    private static LocaleList sDefaultAdjustedLocaleList = null;

    @GuardedBy("sLock")
    private static Locale sLastDefaultLocale = null;

    public LocaleList(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.mList = sEmptyList;
            this.mStringRepresentation = "";
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < localeArr.length; i2++) {
            Locale locale = localeArr[i2];
            if (locale == null) {
                throw new NullPointerException(android.accessibilityservice.c.e("list[", i2, "] is null"));
            }
            if (hashSet.contains(locale)) {
                throw new IllegalArgumentException(android.accessibilityservice.c.e("list[", i2, "] is a repetition"));
            }
            Locale locale2 = (Locale) locale.clone();
            localeArr2[i2] = locale2;
            sb.append(locale2.toLanguageTag());
            if (i2 < localeArr.length - 1) {
                sb.append(',');
            }
            hashSet.add(locale2);
        }
        this.mList = localeArr2;
        this.mStringRepresentation = sb.toString();
    }

    private Locale computeFirstMatch(Collection<String> collection, boolean z2) {
        int iComputeFirstMatchIndex = computeFirstMatchIndex(collection, z2);
        if (iComputeFirstMatchIndex == -1) {
            return null;
        }
        return this.mList[iComputeFirstMatchIndex];
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001e  */
    private int computeFirstMatchIndex(Collection<String> collection, boolean z2) {
        int iFindFirstMatchIndex;
        Locale[] localeArr = this.mList;
        if (localeArr.length == 1) {
            return 0;
        }
        if (localeArr.length == 0) {
            return -1;
        }
        if (z2) {
            iFindFirstMatchIndex = findFirstMatchIndex(EN_LATN);
            if (iFindFirstMatchIndex == 0) {
                return 0;
            }
            if (iFindFirstMatchIndex >= Integer.MAX_VALUE) {
                iFindFirstMatchIndex = Integer.MAX_VALUE;
            }
        } else {
            iFindFirstMatchIndex = Integer.MAX_VALUE;
        }
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            int iFindFirstMatchIndex2 = findFirstMatchIndex(Locale.forLanguageTag(it.next()));
            if (iFindFirstMatchIndex2 == 0) {
                return 0;
            }
            if (iFindFirstMatchIndex2 < iFindFirstMatchIndex) {
                iFindFirstMatchIndex = iFindFirstMatchIndex2;
            }
        }
        if (iFindFirstMatchIndex == Integer.MAX_VALUE) {
            return 0;
        }
        return iFindFirstMatchIndex;
    }

    private int findFirstMatchIndex(Locale locale) {
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i2 >= localeArr.length) {
                return Integer.MAX_VALUE;
            }
            if (matchScore(locale, localeArr[i2]) > 0) {
                return i2;
            }
            i2++;
        }
    }

    public static LocaleList forLanguageTags(String str) {
        if (str == null || str.equals("")) {
            return getEmptyLocaleList();
        }
        String[] strArrSplit = str.split(",");
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i2 = 0; i2 < length; i2++) {
            localeArr[i2] = Locale.forLanguageTag(strArrSplit[i2]);
        }
        return new LocaleList(localeArr);
    }

    public static LocaleList getAdjustedDefault() {
        LocaleList localeList;
        getDefault();
        synchronized (sLock) {
            localeList = sDefaultAdjustedLocaleList;
        }
        return localeList;
    }

    public static LocaleList getDefault() {
        Locale locale = Locale.getDefault();
        synchronized (sLock) {
            if (!locale.equals(sLastDefaultLocale)) {
                sLastDefaultLocale = locale;
                LocaleList localeList = sDefaultLocaleList;
                if (localeList != null && locale.equals(localeList.get(0))) {
                    return sDefaultLocaleList;
                }
                LocaleList localeList2 = new LocaleList(locale, sLastExplicitlySetLocaleList);
                sDefaultLocaleList = localeList2;
                sDefaultAdjustedLocaleList = localeList2;
            }
            return sDefaultLocaleList;
        }
    }

    public static LocaleList getEmptyLocaleList() {
        return sEmptyLocaleList;
    }

    private static String getLikelyScript(Locale locale) {
        String script = locale.getScript();
        return !script.isEmpty() ? script : ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
    }

    private static boolean isPseudoLocale(String str) {
        return STRING_EN_XA.equals(str) || STRING_AR_XB.equals(str);
    }

    public static boolean isPseudoLocalesOnly(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        if (strArr.length > 3) {
            return false;
        }
        for (String str : strArr) {
            if (!str.isEmpty() && !isPseudoLocale(str)) {
                return false;
            }
        }
        return true;
    }

    private static int matchScore(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return 1;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage()) || isPseudoLocale(locale) || isPseudoLocale(locale2)) {
            return 0;
        }
        String likelyScript = getLikelyScript(locale);
        if (!likelyScript.isEmpty()) {
            return likelyScript.equals(getLikelyScript(locale2)) ? 1 : 0;
        }
        String country = locale.getCountry();
        return (country.isEmpty() || country.equals(locale2.getCountry())) ? 1 : 0;
    }

    public static void setDefault(LocaleList localeList) {
        setDefault(localeList, 0);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocaleList)) {
            return false;
        }
        Locale[] localeArr = ((LocaleList) obj).mList;
        if (this.mList.length != localeArr.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            Locale[] localeArr2 = this.mList;
            if (i2 >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i2].equals(localeArr[i2])) {
                return false;
            }
            i2++;
        }
    }

    public Locale get(int i2) {
        if (i2 >= 0) {
            Locale[] localeArr = this.mList;
            if (i2 < localeArr.length) {
                return localeArr[i2];
            }
        }
        return null;
    }

    public Locale getFirstMatch(String[] strArr) {
        return computeFirstMatch(Arrays.asList(strArr), false);
    }

    public int getFirstMatchIndex(String[] strArr) {
        return computeFirstMatchIndex(Arrays.asList(strArr), false);
    }

    public int getFirstMatchIndexWithEnglishSupported(Collection<String> collection) {
        return computeFirstMatchIndex(collection, true);
    }

    public Locale getFirstMatchWithEnglishSupported(String[] strArr) {
        return computeFirstMatch(Arrays.asList(strArr), true);
    }

    public int hashCode() {
        int iHashCode = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i2 >= localeArr.length) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + localeArr[i2].hashCode();
            i2++;
        }
    }

    public int indexOf(Locale locale) {
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i2 >= localeArr.length) {
                return -1;
            }
            if (localeArr[i2].equals(locale)) {
                return i2;
            }
            i2++;
        }
    }

    public boolean isEmpty() {
        return this.mList.length == 0;
    }

    public int size() {
        return this.mList.length;
    }

    public String toLanguageTags() {
        return this.mStringRepresentation;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i2 >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i2]);
            if (i2 < this.mList.length - 1) {
                sb.append(',');
            }
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mStringRepresentation);
    }

    private static boolean isPseudoLocale(Locale locale) {
        return LOCALE_EN_XA.equals(locale) || LOCALE_AR_XB.equals(locale);
    }

    public static void setDefault(LocaleList localeList, int i2) {
        if (localeList == null) {
            throw new NullPointerException("locales is null");
        }
        if (localeList.isEmpty()) {
            throw new IllegalArgumentException("locales is empty");
        }
        synchronized (sLock) {
            Locale locale = localeList.get(i2);
            sLastDefaultLocale = locale;
            Locale.setDefault(locale);
            sLastExplicitlySetLocaleList = localeList;
            sDefaultLocaleList = localeList;
            if (i2 == 0) {
                sDefaultAdjustedLocaleList = localeList;
            } else {
                sDefaultAdjustedLocaleList = new LocaleList(sLastDefaultLocale, localeList);
            }
        }
    }

    public int getFirstMatchIndexWithEnglishSupported(String[] strArr) {
        return getFirstMatchIndexWithEnglishSupported(Arrays.asList(strArr));
    }

    public LocaleList(Locale locale, LocaleList localeList) {
        if (locale != null) {
            int length = localeList == null ? 0 : localeList.mList.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (locale.equals(localeList.mList[i2])) {
                    break;
                } else {
                    i2++;
                }
            }
            int i3 = (i2 == -1 ? 1 : 0) + length;
            Locale[] localeArr = new Locale[i3];
            localeArr[0] = (Locale) locale.clone();
            if (i2 == -1) {
                int i4 = 0;
                while (i4 < length) {
                    int i5 = i4 + 1;
                    localeArr[i5] = (Locale) localeList.mList[i4].clone();
                    i4 = i5;
                }
            } else {
                int i6 = 0;
                while (i6 < i2) {
                    int i7 = i6 + 1;
                    localeArr[i7] = (Locale) localeList.mList[i6].clone();
                    i6 = i7;
                }
                for (int i8 = i2 + 1; i8 < length; i8++) {
                    localeArr[i8] = (Locale) localeList.mList[i8].clone();
                }
            }
            StringBuilder sb = new StringBuilder();
            for (int i9 = 0; i9 < i3; i9++) {
                sb.append(localeArr[i9].toLanguageTag());
                if (i9 < i3 - 1) {
                    sb.append(',');
                }
            }
            this.mList = localeArr;
            this.mStringRepresentation = sb.toString();
            return;
        }
        throw new NullPointerException("topLocale is null");
    }
}
