package android.text;

import android.app.backup.FullBackup;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class Hyphenator {
    private static final int DEFAULT_MIN_PREFIX = 2;
    private static final int DEFAULT_MIN_SUFFIX = 2;
    private static final int INDIC_MIN_PREFIX = 2;
    private static final int INDIC_MIN_SUFFIX = 2;
    private static String TAG = "Hyphenator";
    private final ByteBuffer mBuffer;
    private final long mNativePtr;
    private static final Object sLock = new Object();

    @GuardedBy("sLock")
    static final HashMap<Locale, Hyphenator> sMap = new HashMap<>();
    static final Hyphenator sEmptyHyphenator = new Hyphenator(StaticLayout.nLoadHyphenator(null, 0, 2, 2), null);
    private static final String[][] LOCALE_FALLBACK_DATA = {new String[]{"en-AS", "en-US"}, new String[]{"en-GU", "en-US"}, new String[]{"en-MH", "en-US"}, new String[]{"en-MP", "en-US"}, new String[]{"en-PR", "en-US"}, new String[]{"en-UM", "en-US"}, new String[]{"en-VI", "en-US"}, new String[]{"en", "en-GB"}, new String[]{"de", "de-1996"}, new String[]{"de-LI-1901", "de-CH-1901"}, new String[]{"no", FullBackup.NO_BACKUP_TREE_TOKEN}, new String[]{"mn", "mn-Cyrl"}, new String[]{"am", "und-Ethi"}, new String[]{"byn", "und-Ethi"}, new String[]{"gez", "und-Ethi"}, new String[]{"ti", "und-Ethi"}, new String[]{"wal", "und-Ethi"}};
    private static final HyphenationData[] AVAILABLE_LANGUAGES = {new HyphenationData("as", 2, 2), new HyphenationData("bg", 2, 2), new HyphenationData("bn", 2, 2), new HyphenationData("cu", 1, 2), new HyphenationData("cy", 2, 3), new HyphenationData("da", 2, 2), new HyphenationData("de-1901", 2, 2), new HyphenationData("de-1996", 2, 2), new HyphenationData("de-CH-1901", 2, 2), new HyphenationData("en-GB", 2, 3), new HyphenationData("en-US", 2, 3), new HyphenationData("es", 2, 2), new HyphenationData(WifiManager.EXTRA_WIFI_CREDENTIAL_EVENT_TYPE, 2, 3), new HyphenationData("eu", 2, 2), new HyphenationData("fr", 2, 3), new HyphenationData("ga", 2, 3), new HyphenationData("gu", 2, 2), new HyphenationData("hi", 2, 2), new HyphenationData("hr", 2, 2), new HyphenationData("hu", 2, 2), new HyphenationData("hy", 2, 2), new HyphenationData("kn", 2, 2), new HyphenationData("ml", 2, 2), new HyphenationData("mn-Cyrl", 2, 2), new HyphenationData("mr", 2, 2), new HyphenationData(FullBackup.NO_BACKUP_TREE_TOKEN, 2, 2), new HyphenationData("nn", 2, 2), new HyphenationData("or", 2, 2), new HyphenationData("pa", 2, 2), new HyphenationData("pt", 2, 3), new HyphenationData("sl", 2, 2), new HyphenationData("ta", 2, 2), new HyphenationData("te", 2, 2), new HyphenationData("tk", 2, 2), new HyphenationData("und-Ethi", 1, 1)};

    public static class HyphenationData {
        final String mLanguageTag;
        final int mMinPrefix;
        final int mMinSuffix;

        public HyphenationData(String str, int i2, int i3) {
            this.mLanguageTag = str;
            this.mMinPrefix = i2;
            this.mMinSuffix = i3;
        }
    }

    private Hyphenator(long j2, ByteBuffer byteBuffer) {
        this.mNativePtr = j2;
        this.mBuffer = byteBuffer;
    }

    public static Hyphenator get(Locale locale) {
        Hyphenator hyphenator;
        Hyphenator hyphenator2;
        synchronized (sLock) {
            HashMap<Locale, Hyphenator> map = sMap;
            Hyphenator hyphenator3 = map.get(locale);
            if (hyphenator3 != null) {
                return hyphenator3;
            }
            String variant = locale.getVariant();
            if (!variant.isEmpty() && (hyphenator2 = map.get(new Locale(locale.getLanguage(), "", variant))) != null) {
                map.put(locale, hyphenator2);
                return hyphenator2;
            }
            Hyphenator hyphenator4 = map.get(new Locale(locale.getLanguage()));
            if (hyphenator4 != null) {
                map.put(locale, hyphenator4);
                return hyphenator4;
            }
            String script = locale.getScript();
            if (!script.equals("") && (hyphenator = map.get(new Locale.Builder().setLanguage("und").setScript(script).build())) != null) {
                map.put(locale, hyphenator);
                return hyphenator;
            }
            Hyphenator hyphenator5 = sEmptyHyphenator;
            map.put(locale, hyphenator5);
            return hyphenator5;
        }
    }

    private static File getSystemHyphenatorLocation() {
        return new File("/system/usr/hyphen-data");
    }

    public static void init() {
        sMap.put(null, null);
        int i2 = 0;
        while (true) {
            HyphenationData[] hyphenationDataArr = AVAILABLE_LANGUAGES;
            if (i2 >= hyphenationDataArr.length) {
                break;
            }
            HyphenationData hyphenationData = hyphenationDataArr[i2];
            Hyphenator hyphenatorLoadHyphenator = loadHyphenator(hyphenationData);
            if (hyphenatorLoadHyphenator != null) {
                sMap.put(Locale.forLanguageTag(hyphenationData.mLanguageTag), hyphenatorLoadHyphenator);
            }
            i2++;
        }
        int i3 = 0;
        while (true) {
            String[][] strArr = LOCALE_FALLBACK_DATA;
            if (i3 >= strArr.length) {
                return;
            }
            String[] strArr2 = strArr[i3];
            String str = strArr2[0];
            String str2 = strArr2[1];
            HashMap<Locale, Hyphenator> map = sMap;
            map.put(Locale.forLanguageTag(str), map.get(Locale.forLanguageTag(str2)));
            i3++;
        }
    }

    private static Hyphenator loadHyphenator(HyphenationData hyphenationData) {
        File file = new File(getSystemHyphenatorLocation(), "hyph-" + hyphenationData.mLanguageTag.toLowerCase(Locale.US) + ".hyb");
        if (!file.canRead()) {
            Log.e(TAG, "hyphenation patterns for " + file + " not found or unreadable");
            return null;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, FullBackup.ROOT_TREE_TOKEN);
            try {
                FileChannel channel = randomAccessFile.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                return new Hyphenator(StaticLayout.nLoadHyphenator(map, 0, hyphenationData.mMinPrefix, hyphenationData.mMinSuffix), map);
            } finally {
                randomAccessFile.close();
            }
        } catch (IOException e2) {
            Log.e(TAG, "error loading hyphenation " + file, e2);
            return null;
        }
    }

    public long getNativePtr() {
        return this.mNativePtr;
    }
}
