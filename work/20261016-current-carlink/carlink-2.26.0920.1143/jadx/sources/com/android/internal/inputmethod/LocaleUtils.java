package com.android.internal.inputmethod;

import android.icu.util.ULocale;
import android.os.LocaleList;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class LocaleUtils {

    public interface LocaleExtractor<T> {
        Locale get(T t2);
    }

    public static final class ScoreEntry implements Comparable<ScoreEntry> {
        public int mIndex = -1;
        public final byte[] mScore;

        public ScoreEntry(byte[] bArr, int i2) {
            this.mScore = new byte[bArr.length];
            set(bArr, i2);
        }

        private static int compare(byte[] bArr, byte[] bArr2) {
            for (int i2 = 0; i2 < bArr.length; i2++) {
                byte b2 = bArr[i2];
                byte b3 = bArr2[i2];
                if (b2 > b3) {
                    return 1;
                }
                if (b2 < b3) {
                    return -1;
                }
            }
            return 0;
        }

        private void set(byte[] bArr, int i2) {
            int i3 = 0;
            while (true) {
                byte[] bArr2 = this.mScore;
                if (i3 >= bArr2.length) {
                    this.mIndex = i2;
                    return;
                } else {
                    bArr2[i3] = bArr[i3];
                    i3++;
                }
            }
        }

        public void updateIfBetter(byte[] bArr, int i2) {
            if (compare(this.mScore, bArr) == -1) {
                set(bArr, i2);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(ScoreEntry scoreEntry) {
            return compare(this.mScore, scoreEntry.mScore) * (-1);
        }
    }

    private static byte calculateMatchingSubScore(ULocale uLocale, ULocale uLocale2) {
        if (uLocale.equals(uLocale2)) {
            return (byte) 3;
        }
        String script = uLocale.getScript();
        if (script.isEmpty() || !script.equals(uLocale2.getScript())) {
            return (byte) 1;
        }
        String country = uLocale.getCountry();
        return (country.isEmpty() || !country.equals(uLocale2.getCountry())) ? (byte) 2 : (byte) 3;
    }

    public static <T> void filterByLanguage(List<T> list, LocaleExtractor<T> localeExtractor, LocaleList localeList, ArrayList<T> arrayList) {
        if (localeList.isEmpty()) {
            return;
        }
        int size = localeList.size();
        HashMap map = new HashMap();
        byte[] bArr = new byte[size];
        ULocale[] uLocaleArr = new ULocale[size];
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Locale locale = localeExtractor.get(list.get(i2));
            if (locale != null) {
                boolean z2 = true;
                for (int i3 = 0; i3 < size; i3++) {
                    Locale locale2 = localeList.get(i3);
                    if (TextUtils.equals(locale.getLanguage(), locale2.getLanguage())) {
                        if (uLocaleArr[i3] == null) {
                            uLocaleArr[i3] = ULocale.addLikelySubtags(ULocale.forLocale(locale2));
                        }
                        byte bCalculateMatchingSubScore = calculateMatchingSubScore(uLocaleArr[i3], ULocale.addLikelySubtags(ULocale.forLocale(locale)));
                        bArr[i3] = bCalculateMatchingSubScore;
                        if (z2 && bCalculateMatchingSubScore != 0) {
                            z2 = false;
                        }
                    } else {
                        bArr[i3] = 0;
                    }
                }
                if (!z2) {
                    String language = locale.getLanguage();
                    ScoreEntry scoreEntry = (ScoreEntry) map.get(language);
                    if (scoreEntry == null) {
                        map.put(language, new ScoreEntry(bArr, i2));
                    } else {
                        scoreEntry.updateIfBetter(bArr, i2);
                    }
                }
            }
        }
        ScoreEntry[] scoreEntryArr = (ScoreEntry[]) map.values().toArray(new ScoreEntry[map.size()]);
        Arrays.sort(scoreEntryArr);
        for (ScoreEntry scoreEntry2 : scoreEntryArr) {
            arrayList.add(list.get(scoreEntry2.mIndex));
        }
    }
}
