package com.android.internal.app;

import android.icu.text.ListFormatter;
import android.icu.util.ULocale;
import android.os.LocaleList;
import android.text.TextUtils;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
import libcore.icu.ICU;

/* JADX INFO: loaded from: classes2.dex */
public class LocaleHelper {

    public static final class LocaleInfoComparator implements Comparator<LocaleStore.LocaleInfo> {
        private static final String PREFIX_ARABIC = "ال";
        private final Collator mCollator;
        private final boolean mCountryMode;

        public LocaleInfoComparator(Locale locale, boolean z2) {
            this.mCollator = Collator.getInstance(locale);
            this.mCountryMode = z2;
        }

        private String removePrefixForCompare(Locale locale, String str) {
            return ("ar".equals(locale.getLanguage()) && str.startsWith(PREFIX_ARABIC)) ? str.substring(2) : str;
        }

        @Override // java.util.Comparator
        public int compare(LocaleStore.LocaleInfo localeInfo, LocaleStore.LocaleInfo localeInfo2) {
            if (localeInfo.isSuggested() == localeInfo2.isSuggested()) {
                return this.mCollator.compare(removePrefixForCompare(localeInfo.getLocale(), localeInfo.getLabel(this.mCountryMode)), removePrefixForCompare(localeInfo2.getLocale(), localeInfo2.getLabel(this.mCountryMode)));
            }
            return localeInfo.isSuggested() ? -1 : 1;
        }
    }

    public static Locale addLikelySubtags(Locale locale) {
        return ICU.addLikelySubtags(locale);
    }

    public static String getDisplayCountry(Locale locale, Locale locale2) {
        return ULocale.getDisplayCountry(locale.toLanguageTag(), ULocale.forLocale(locale2));
    }

    public static String getDisplayLocaleList(LocaleList localeList, Locale locale, int i2) {
        int size;
        int i3;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        boolean z2 = localeList.size() > i2;
        if (z2) {
            size = i2 + 1;
            i3 = i2;
        } else {
            size = localeList.size();
            i3 = size;
        }
        String[] strArr = new String[size];
        for (int i4 = 0; i4 < i3; i4++) {
            strArr[i4] = getDisplayName(localeList.get(i4), locale, false);
        }
        if (z2) {
            strArr[i2] = TextUtils.ELLIPSIS_STRING;
        }
        return ListFormatter.getInstance(locale).format(strArr);
    }

    public static String getDisplayName(Locale locale, Locale locale2, boolean z2) {
        ULocale uLocaleForLocale = ULocale.forLocale(locale2);
        String displayNameWithDialect = shouldUseDialectName(locale) ? ULocale.getDisplayNameWithDialect(locale.toLanguageTag(), uLocaleForLocale) : ULocale.getDisplayName(locale.toLanguageTag(), uLocaleForLocale);
        return z2 ? toSentenceCase(displayNameWithDialect, locale2) : displayNameWithDialect;
    }

    public static String normalizeForSearch(String str, Locale locale) {
        return str.toUpperCase();
    }

    private static boolean shouldUseDialectName(Locale locale) {
        String language = locale.getLanguage();
        return "fa".equals(language) || "ro".equals(language) || "zh".equals(language);
    }

    public static String toSentenceCase(String str, Locale locale) {
        if (str.isEmpty()) {
            return str;
        }
        int iOffsetByCodePoints = str.offsetByCodePoints(0, 1);
        return str.substring(0, iOffsetByCodePoints).toUpperCase(locale) + str.substring(iOffsetByCodePoints);
    }

    public static String getDisplayCountry(Locale locale) {
        return ULocale.getDisplayCountry(locale.toLanguageTag(), ULocale.getDefault());
    }

    public static String getDisplayName(Locale locale, boolean z2) {
        return getDisplayName(locale, Locale.getDefault(), z2);
    }
}
