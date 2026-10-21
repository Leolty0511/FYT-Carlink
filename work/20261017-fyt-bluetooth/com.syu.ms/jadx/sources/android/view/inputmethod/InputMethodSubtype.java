package android.view.inputmethod;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ProxyProperties;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Slog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IllegalFormatException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class InputMethodSubtype implements Parcelable {
    public static final Parcelable.Creator<InputMethodSubtype> CREATOR = new Parcelable.Creator<InputMethodSubtype>() { // from class: android.view.inputmethod.InputMethodSubtype.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputMethodSubtype createFromParcel(Parcel parcel) {
            return new InputMethodSubtype(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputMethodSubtype[] newArray(int i2) {
            return new InputMethodSubtype[i2];
        }
    };
    private static final String EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME = "UntranslatableReplacementStringInSubtypeName";
    private static final String EXTRA_VALUE_KEY_VALUE_SEPARATOR = "=";
    private static final String EXTRA_VALUE_PAIR_SEPARATOR = ",";
    private static final String TAG = "InputMethodSubtype";
    private volatile HashMap<String, String> mExtraValueHashMapCache;
    private final boolean mIsAsciiCapable;
    private final boolean mIsAuxiliary;
    private final boolean mOverridesImplicitlyEnabledSubtype;
    private final String mSubtypeExtraValue;
    private final int mSubtypeHashCode;
    private final int mSubtypeIconResId;
    private final int mSubtypeId;
    private final String mSubtypeLocale;
    private final String mSubtypeMode;
    private final int mSubtypeNameResId;

    public static class InputMethodSubtypeBuilder {
        private boolean mIsAuxiliary = false;
        private boolean mOverridesImplicitlyEnabledSubtype = false;
        private boolean mIsAsciiCapable = false;
        private int mSubtypeIconResId = 0;
        private int mSubtypeNameResId = 0;
        private int mSubtypeId = 0;
        private String mSubtypeLocale = ProxyProperties.LOCAL_EXCL_LIST;
        private String mSubtypeMode = ProxyProperties.LOCAL_EXCL_LIST;
        private String mSubtypeExtraValue = ProxyProperties.LOCAL_EXCL_LIST;

        public InputMethodSubtype build() {
            return new InputMethodSubtype(this);
        }

        public InputMethodSubtypeBuilder setIsAsciiCapable(boolean z2) {
            this.mIsAsciiCapable = z2;
            return this;
        }

        public InputMethodSubtypeBuilder setIsAuxiliary(boolean z2) {
            this.mIsAuxiliary = z2;
            return this;
        }

        public InputMethodSubtypeBuilder setOverridesImplicitlyEnabledSubtype(boolean z2) {
            this.mOverridesImplicitlyEnabledSubtype = z2;
            return this;
        }

        public InputMethodSubtypeBuilder setSubtypeExtraValue(String str) {
            if (str == null) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            this.mSubtypeExtraValue = str;
            return this;
        }

        public InputMethodSubtypeBuilder setSubtypeIconResId(int i2) {
            this.mSubtypeIconResId = i2;
            return this;
        }

        public InputMethodSubtypeBuilder setSubtypeId(int i2) {
            this.mSubtypeId = i2;
            return this;
        }

        public InputMethodSubtypeBuilder setSubtypeLocale(String str) {
            if (str == null) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            this.mSubtypeLocale = str;
            return this;
        }

        public InputMethodSubtypeBuilder setSubtypeMode(String str) {
            if (str == null) {
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            this.mSubtypeMode = str;
            return this;
        }

        public InputMethodSubtypeBuilder setSubtypeNameResId(int i2) {
            this.mSubtypeNameResId = i2;
            return this;
        }
    }

    private static Locale constructLocaleFromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split("_", 3);
        if (strArrSplit.length == 1) {
            return new Locale(strArrSplit[0]);
        }
        if (strArrSplit.length == 2) {
            return new Locale(strArrSplit[0], strArrSplit[1]);
        }
        if (strArrSplit.length == 3) {
            return new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        }
        return null;
    }

    private static InputMethodSubtypeBuilder getBuilder(int i2, int i3, String str, String str2, String str3, boolean z2, boolean z3, int i4, boolean z4) {
        InputMethodSubtypeBuilder inputMethodSubtypeBuilder = new InputMethodSubtypeBuilder();
        inputMethodSubtypeBuilder.mSubtypeNameResId = i2;
        inputMethodSubtypeBuilder.mSubtypeIconResId = i3;
        inputMethodSubtypeBuilder.mSubtypeLocale = str;
        inputMethodSubtypeBuilder.mSubtypeMode = str2;
        inputMethodSubtypeBuilder.mSubtypeExtraValue = str3;
        inputMethodSubtypeBuilder.mIsAuxiliary = z2;
        inputMethodSubtypeBuilder.mOverridesImplicitlyEnabledSubtype = z3;
        inputMethodSubtypeBuilder.mSubtypeId = i4;
        inputMethodSubtypeBuilder.mIsAsciiCapable = z4;
        return inputMethodSubtypeBuilder;
    }

    private HashMap<String, String> getExtraValueHashMap() {
        if (this.mExtraValueHashMapCache == null) {
            synchronized (this) {
                if (this.mExtraValueHashMapCache == null) {
                    this.mExtraValueHashMapCache = new HashMap<>();
                    for (String str : this.mSubtypeExtraValue.split(EXTRA_VALUE_PAIR_SEPARATOR)) {
                        String[] strArrSplit = str.split(EXTRA_VALUE_KEY_VALUE_SEPARATOR);
                        if (strArrSplit.length == 1) {
                            this.mExtraValueHashMapCache.put(strArrSplit[0], null);
                        } else if (strArrSplit.length > 1) {
                            if (strArrSplit.length > 2) {
                                Slog.w(TAG, "ExtraValue has two or more '='s");
                            }
                            this.mExtraValueHashMapCache.put(strArrSplit[0], strArrSplit[1]);
                        }
                    }
                }
            }
        }
        return this.mExtraValueHashMapCache;
    }

    private static int hashCodeInternal(String str, String str2, String str3, boolean z2, boolean z3, boolean z4) {
        return z4 ^ true ? Arrays.hashCode(new Object[]{str, str2, str3, Boolean.valueOf(z2), Boolean.valueOf(z3)}) : Arrays.hashCode(new Object[]{str, str2, str3, Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4)});
    }

    public static List<InputMethodSubtype> sort(Context context, int i2, InputMethodInfo inputMethodInfo, List<InputMethodSubtype> list) {
        if (inputMethodInfo == null) {
            return list;
        }
        HashSet hashSet = new HashSet(list);
        ArrayList arrayList = new ArrayList();
        int subtypeCount = inputMethodInfo.getSubtypeCount();
        for (int i3 = 0; i3 < subtypeCount; i3++) {
            InputMethodSubtype subtypeAt = inputMethodInfo.getSubtypeAt(i3);
            if (hashSet.contains(subtypeAt)) {
                arrayList.add(subtypeAt);
                hashSet.remove(subtypeAt);
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            arrayList.add((InputMethodSubtype) it.next());
        }
        return arrayList;
    }

    public boolean containsExtraValueKey(String str) {
        return getExtraValueHashMap().containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InputMethodSubtype)) {
            return false;
        }
        InputMethodSubtype inputMethodSubtype = (InputMethodSubtype) obj;
        if (inputMethodSubtype.mSubtypeId == 0 && this.mSubtypeId == 0) {
            return inputMethodSubtype.hashCode() == hashCode() && inputMethodSubtype.getNameResId() == getNameResId() && inputMethodSubtype.getMode().equals(getMode()) && inputMethodSubtype.getIconResId() == getIconResId() && inputMethodSubtype.getLocale().equals(getLocale()) && inputMethodSubtype.getExtraValue().equals(getExtraValue()) && inputMethodSubtype.isAuxiliary() == isAuxiliary() && inputMethodSubtype.isAsciiCapable() == isAsciiCapable();
        }
        return inputMethodSubtype.hashCode() == hashCode();
    }

    public CharSequence getDisplayName(Context context, String str, ApplicationInfo applicationInfo) {
        Locale localeConstructLocaleFromString = constructLocaleFromString(this.mSubtypeLocale);
        String displayName = localeConstructLocaleFromString != null ? localeConstructLocaleFromString.getDisplayName() : this.mSubtypeLocale;
        if (this.mSubtypeNameResId == 0) {
            return displayName;
        }
        CharSequence text = context.getPackageManager().getText(str, this.mSubtypeNameResId, applicationInfo);
        if (TextUtils.isEmpty(text)) {
            return displayName;
        }
        if (containsExtraValueKey(EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME)) {
            displayName = getExtraValueOf(EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME);
        }
        try {
            String string = text.toString();
            Object[] objArr = new Object[1];
            if (displayName == null) {
                displayName = ProxyProperties.LOCAL_EXCL_LIST;
            }
            objArr[0] = displayName;
            return String.format(string, objArr);
        } catch (IllegalFormatException e2) {
            Slog.w(TAG, "Found illegal format in subtype name(" + ((Object) text) + "): " + e2);
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
    }

    public String getExtraValue() {
        return this.mSubtypeExtraValue;
    }

    public String getExtraValueOf(String str) {
        return getExtraValueHashMap().get(str);
    }

    public int getIconResId() {
        return this.mSubtypeIconResId;
    }

    public String getLocale() {
        return this.mSubtypeLocale;
    }

    public String getMode() {
        return this.mSubtypeMode;
    }

    public int getNameResId() {
        return this.mSubtypeNameResId;
    }

    public int hashCode() {
        return this.mSubtypeHashCode;
    }

    public boolean isAsciiCapable() {
        return this.mIsAsciiCapable;
    }

    public boolean isAuxiliary() {
        return this.mIsAuxiliary;
    }

    public boolean overridesImplicitlyEnabledSubtype() {
        return this.mOverridesImplicitlyEnabledSubtype;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSubtypeNameResId);
        parcel.writeInt(this.mSubtypeIconResId);
        parcel.writeString(this.mSubtypeLocale);
        parcel.writeString(this.mSubtypeMode);
        parcel.writeString(this.mSubtypeExtraValue);
        parcel.writeInt(this.mIsAuxiliary ? 1 : 0);
        parcel.writeInt(this.mOverridesImplicitlyEnabledSubtype ? 1 : 0);
        parcel.writeInt(this.mSubtypeHashCode);
        parcel.writeInt(this.mSubtypeId);
        parcel.writeInt(this.mIsAsciiCapable ? 1 : 0);
    }

    public InputMethodSubtype(int i2, int i3, String str, String str2, String str3, boolean z2) {
        this(i2, i3, str, str2, str3, z2, false);
    }

    public InputMethodSubtype(int i2, int i3, String str, String str2, String str3, boolean z2, boolean z3) {
        this(i2, i3, str, str2, str3, z2, z3, 0);
    }

    public InputMethodSubtype(int i2, int i3, String str, String str2, String str3, boolean z2, boolean z3, int i4) {
        this(getBuilder(i2, i3, str, str2, str3, z2, z3, i4, false));
    }

    private InputMethodSubtype(InputMethodSubtypeBuilder inputMethodSubtypeBuilder) {
        this.mSubtypeNameResId = inputMethodSubtypeBuilder.mSubtypeNameResId;
        this.mSubtypeIconResId = inputMethodSubtypeBuilder.mSubtypeIconResId;
        String str = inputMethodSubtypeBuilder.mSubtypeLocale;
        this.mSubtypeLocale = str;
        String str2 = inputMethodSubtypeBuilder.mSubtypeMode;
        this.mSubtypeMode = str2;
        String str3 = inputMethodSubtypeBuilder.mSubtypeExtraValue;
        this.mSubtypeExtraValue = str3;
        boolean z2 = inputMethodSubtypeBuilder.mIsAuxiliary;
        this.mIsAuxiliary = z2;
        boolean z3 = inputMethodSubtypeBuilder.mOverridesImplicitlyEnabledSubtype;
        this.mOverridesImplicitlyEnabledSubtype = z3;
        int i2 = inputMethodSubtypeBuilder.mSubtypeId;
        this.mSubtypeId = i2;
        boolean z4 = inputMethodSubtypeBuilder.mIsAsciiCapable;
        this.mIsAsciiCapable = z4;
        this.mSubtypeHashCode = i2 == 0 ? hashCodeInternal(str, str2, str3, z2, z3, z4) : i2;
    }

    public InputMethodSubtype(Parcel parcel) {
        this.mSubtypeNameResId = parcel.readInt();
        this.mSubtypeIconResId = parcel.readInt();
        String string = parcel.readString();
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        this.mSubtypeLocale = string == null ? ProxyProperties.LOCAL_EXCL_LIST : string;
        String string2 = parcel.readString();
        this.mSubtypeMode = string2 == null ? ProxyProperties.LOCAL_EXCL_LIST : string2;
        String string3 = parcel.readString();
        this.mSubtypeExtraValue = string3 != null ? string3 : str;
        this.mIsAuxiliary = parcel.readInt() == 1;
        this.mOverridesImplicitlyEnabledSubtype = parcel.readInt() == 1;
        this.mSubtypeHashCode = parcel.readInt();
        this.mSubtypeId = parcel.readInt();
        this.mIsAsciiCapable = parcel.readInt() == 1;
    }
}
