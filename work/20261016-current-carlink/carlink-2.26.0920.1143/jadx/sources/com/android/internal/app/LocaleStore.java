package com.android.internal.app;

import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.android.internal.content.NativeLibraryHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IllformedLocaleException;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class LocaleStore {
    private static final HashMap<String, LocaleInfo> sLocaleCache = new HashMap<>();
    private static boolean sFullyInitialized = false;

    private static void addSuggestedLocalesForRegion(Locale locale) {
        if (locale == null) {
            return;
        }
        String country = locale.getCountry();
        if (country.isEmpty()) {
            return;
        }
        for (LocaleInfo localeInfo : sLocaleCache.values()) {
            if (country.equals(localeInfo.getLocale().getCountry())) {
                localeInfo.mSuggestionFlags |= 1;
            }
        }
    }

    public static void fillCache(Context context) {
        LocaleInfo localeInfo;
        if (sFullyInitialized) {
            return;
        }
        Set<String> simCountries = getSimCountries(context);
        String[] supportedLocales = LocalePicker.getSupportedLocales(context);
        int length = supportedLocales.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                boolean z2 = Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
                for (String str : LocalePicker.getPseudoLocales()) {
                    LocaleInfo localeInfo2 = getLocaleInfo(Locale.forLanguageTag(str));
                    if (z2) {
                        localeInfo2.setTranslated(true);
                        localeInfo2.mIsPseudo = true;
                        localeInfo2.mSuggestionFlags |= 1;
                    } else {
                        sLocaleCache.remove(localeInfo2.getId());
                    }
                }
                HashSet hashSet = new HashSet();
                for (String str2 : LocalePicker.getSystemAssetLocales()) {
                    LocaleInfo localeInfo3 = new LocaleInfo(str2);
                    String country = localeInfo3.getLocale().getCountry();
                    if (!country.isEmpty()) {
                        HashMap<String, LocaleInfo> map = sLocaleCache;
                        if (map.containsKey(localeInfo3.getId())) {
                            localeInfo = map.get(localeInfo3.getId());
                        } else {
                            String str3 = localeInfo3.getLangScriptKey() + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + country;
                            localeInfo = map.containsKey(str3) ? map.get(str3) : null;
                        }
                        if (localeInfo != null) {
                            localeInfo.mSuggestionFlags |= 2;
                        }
                    }
                    hashSet.add(localeInfo3.getLangScriptKey());
                }
                for (LocaleInfo localeInfo4 : sLocaleCache.values()) {
                    localeInfo4.setTranslated(hashSet.contains(localeInfo4.getLangScriptKey()));
                }
                addSuggestedLocalesForRegion(Locale.getDefault());
                sFullyInitialized = true;
                return;
            }
            String str4 = supportedLocales[i2];
            if (str4.isEmpty()) {
                throw new IllformedLocaleException("Bad locale entry in locale_config.xml");
            }
            LocaleInfo localeInfo5 = new LocaleInfo(str4);
            if (simCountries.contains(localeInfo5.getLocale().getCountry())) {
                localeInfo5.mSuggestionFlags = 1 | localeInfo5.mSuggestionFlags;
            }
            HashMap<String, LocaleInfo> map2 = sLocaleCache;
            map2.put(localeInfo5.getId(), localeInfo5);
            Locale parent = localeInfo5.getParent();
            if (parent != null) {
                String languageTag = parent.toLanguageTag();
                if (!map2.containsKey(languageTag)) {
                    map2.put(languageTag, new LocaleInfo(parent));
                }
            }
            i2++;
        }
    }

    private static int getLevel(Set<String> set, LocaleInfo localeInfo, boolean z2) {
        if (set.contains(localeInfo.getId())) {
            return 0;
        }
        if (localeInfo.mIsPseudo) {
            return 2;
        }
        return ((!z2 || localeInfo.isTranslated()) && localeInfo.getParent() != null) ? 2 : 0;
    }

    public static Set<LocaleInfo> getLevelLocales(Context context, Set<String> set, LocaleInfo localeInfo, boolean z2) {
        fillCache(context);
        String id = localeInfo == null ? null : localeInfo.getId();
        HashSet hashSet = new HashSet();
        for (LocaleInfo localeInfo2 : new ArrayList(sLocaleCache.values())) {
            if (getLevel(set, localeInfo2, z2) == 2) {
                if (localeInfo != null) {
                    if (id.equals(localeInfo2.getParent().toLanguageTag())) {
                        hashSet.add(localeInfo2);
                    }
                } else if (localeInfo2.isSuggestionOfType(1)) {
                    hashSet.add(localeInfo2);
                } else {
                    hashSet.add(getLocaleInfo(localeInfo2.getParent()));
                }
            }
        }
        return hashSet;
    }

    public static LocaleInfo getLocaleInfo(Locale locale) {
        String languageTag = locale.toLanguageTag();
        HashMap<String, LocaleInfo> map = sLocaleCache;
        if (map.containsKey(languageTag)) {
            return map.get(languageTag);
        }
        LocaleInfo localeInfo = new LocaleInfo(locale);
        map.put(languageTag, localeInfo);
        return localeInfo;
    }

    private static Set<String> getSimCountries(Context context) {
        HashSet hashSet = new HashSet();
        TelephonyManager telephonyManagerFrom = TelephonyManager.from(context);
        if (telephonyManagerFrom != null) {
            String simCountryIso = telephonyManagerFrom.getSimCountryIso();
            Locale locale = Locale.US;
            String upperCase = simCountryIso.toUpperCase(locale);
            if (!upperCase.isEmpty()) {
                hashSet.add(upperCase);
            }
            String upperCase2 = telephonyManagerFrom.getNetworkCountryIso().toUpperCase(locale);
            if (!upperCase2.isEmpty()) {
                hashSet.add(upperCase2);
            }
        }
        return hashSet;
    }

    public static void updateSimCountries(Context context) {
        Set<String> simCountries = getSimCountries(context);
        for (LocaleInfo localeInfo : sLocaleCache.values()) {
            if (simCountries.contains(localeInfo.getLocale().getCountry())) {
                localeInfo.mSuggestionFlags |= 1;
            }
        }
    }

    public static class LocaleInfo {
        private static final int SUGGESTION_TYPE_CFG = 2;
        private static final int SUGGESTION_TYPE_NONE = 0;
        private static final int SUGGESTION_TYPE_SIM = 1;
        private String mFullCountryNameNative;
        private String mFullNameNative;
        private final String mId;
        private boolean mIsChecked;
        private boolean mIsPseudo;
        private boolean mIsTranslated;
        private String mLangScriptKey;
        private final Locale mLocale;
        private final Locale mParent;
        private int mSuggestionFlags;

        /* JADX INFO: Access modifiers changed from: private */
        public String getLangScriptKey() {
            if (this.mLangScriptKey == null) {
                Locale parent = getParent(LocaleHelper.addLikelySubtags(this.mLocale));
                this.mLangScriptKey = parent == null ? this.mLocale.toLanguageTag() : parent.toLanguageTag();
            }
            return this.mLangScriptKey;
        }

        private static Locale getParent(Locale locale) {
            if (locale.getCountry().isEmpty()) {
                return null;
            }
            return new Locale.Builder().setLocale(locale).setRegion("").build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isSuggestionOfType(int i2) {
            return this.mIsTranslated && (this.mSuggestionFlags & i2) == i2;
        }

        public boolean getChecked() {
            return this.mIsChecked;
        }

        public String getContentDescription(boolean z2) {
            return z2 ? getFullCountryNameInUiLanguage() : getFullNameInUiLanguage();
        }

        public String getFullCountryNameInUiLanguage() {
            return LocaleHelper.getDisplayCountry(this.mLocale);
        }

        public String getFullCountryNameNative() {
            if (this.mFullCountryNameNative == null) {
                Locale locale = this.mLocale;
                this.mFullCountryNameNative = LocaleHelper.getDisplayCountry(locale, locale);
            }
            return this.mFullCountryNameNative;
        }

        public String getFullNameInUiLanguage() {
            return LocaleHelper.getDisplayName(this.mLocale, true);
        }

        public String getFullNameNative() {
            if (this.mFullNameNative == null) {
                Locale locale = this.mLocale;
                this.mFullNameNative = LocaleHelper.getDisplayName(locale, locale, true);
            }
            return this.mFullNameNative;
        }

        public String getId() {
            return this.mId;
        }

        public String getLabel(boolean z2) {
            return z2 ? getFullCountryNameNative() : getFullNameNative();
        }

        public Locale getLocale() {
            return this.mLocale;
        }

        public boolean isSuggested() {
            return this.mIsTranslated && this.mSuggestionFlags != 0;
        }

        public boolean isTranslated() {
            return this.mIsTranslated;
        }

        public void setChecked(boolean z2) {
            this.mIsChecked = z2;
        }

        public void setTranslated(boolean z2) {
            this.mIsTranslated = z2;
        }

        public String toString() {
            return this.mId;
        }

        private LocaleInfo(Locale locale) {
            this.mLocale = locale;
            this.mId = locale.toLanguageTag();
            this.mParent = getParent(locale);
            this.mIsChecked = false;
            this.mSuggestionFlags = 0;
            this.mIsTranslated = false;
            this.mIsPseudo = false;
        }

        public Locale getParent() {
            return this.mParent;
        }

        private LocaleInfo(String str) {
            this(Locale.forLanguageTag(str));
        }
    }
}
