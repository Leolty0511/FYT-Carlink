package android.provider;

import android.accessibilityservice.e;
import android.app.backup.FullBackup;
import android.app.job.JobInfo;
import android.app.r;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.LruCache;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class FontsContract {
    private static final long SYNC_FONT_FETCH_TIMEOUT_MS = 500;
    private static final String TAG = "FontsContract";
    private static final int THREAD_RENEWAL_THRESHOLD_MS = 10000;
    private static volatile Context sContext;

    @GuardedBy("sLock")
    private static Handler sHandler;

    @GuardedBy("sLock")
    private static Set<String> sInQueueSet;

    @GuardedBy("sLock")
    private static HandlerThread sThread;
    private static final Object sLock = new Object();
    private static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final Runnable sReplaceDispatcherThreadRunnable = new Runnable() { // from class: android.provider.FontsContract.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (FontsContract.sLock) {
                if (FontsContract.sThread != null) {
                    FontsContract.sThread.quitSafely();
                    HandlerThread unused = FontsContract.sThread = null;
                    Handler unused2 = FontsContract.sHandler = null;
                }
            }
        }
    };
    private static final Comparator<byte[]> sByteArrayComparator = new r(1);

    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";

        private Columns() {
        }
    }

    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_REJECTED = 3;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;
        private final FontInfo[] mFonts;
        private final int mStatusCode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface FontResultStatus {
        }

        public FontFamilyResult(int i2, FontInfo[] fontInfoArr) {
            this.mStatusCode = i2;
            this.mFonts = fontInfoArr;
        }

        public FontInfo[] getFonts() {
            return this.mFonts;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }
    }

    public static class FontInfo {
        private final FontVariationAxis[] mAxes;
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final int mWeight;

        public FontInfo(Uri uri, int i2, FontVariationAxis[] fontVariationAxisArr, int i3, boolean z2, int i4) {
            this.mUri = (Uri) Preconditions.checkNotNull(uri);
            this.mTtcIndex = i2;
            this.mAxes = fontVariationAxisArr;
            this.mWeight = i3;
            this.mItalic = z2;
            this.mResultCode = i4;
        }

        public FontVariationAxis[] getAxes() {
            return this.mAxes;
        }

        public int getResultCode() {
            return this.mResultCode;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mItalic;
        }
    }

    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

        @Retention(RetentionPolicy.SOURCE)
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRequestFailed(int i2) {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }
    }

    private FontsContract() {
    }

    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, FontInfo[] fontInfoArr) {
        if (context.isRestricted()) {
            return null;
        }
        Map<Uri, ByteBuffer> mapPrepareFontData = prepareFontData(context, fontInfoArr, cancellationSignal);
        if (mapPrepareFontData.isEmpty()) {
            return null;
        }
        return new Typeface.Builder(fontInfoArr, mapPrepareFontData).build();
    }

    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static FontFamilyResult fetchFonts(Context context, CancellationSignal cancellationSignal, FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        if (context.isRestricted()) {
            return new FontFamilyResult(3, null);
        }
        ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest);
        if (provider == null) {
            return new FontFamilyResult(1, null);
        }
        try {
            return new FontFamilyResult(0, getFontFromProvider(context, fontRequest, provider.authority, cancellationSignal));
        } catch (IllegalArgumentException unused) {
            return new FontFamilyResult(2, null);
        }
    }

    public static FontInfo[] getFontFromProvider(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        int i2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
        Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath(ContentResolver.SCHEME_FILE).build();
        int i3 = 0;
        Cursor cursorQuery = context.getContentResolver().query(uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.getCount() > 0) {
                    int columnIndex = cursorQuery.getColumnIndex("result_code");
                    ArrayList arrayList2 = new ArrayList();
                    int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_id");
                    int columnIndex2 = cursorQuery.getColumnIndex("file_id");
                    int columnIndex3 = cursorQuery.getColumnIndex("font_ttc_index");
                    int columnIndex4 = cursorQuery.getColumnIndex("font_variation_settings");
                    int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                    int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                    while (cursorQuery.moveToNext()) {
                        int i4 = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : i3;
                        int i5 = columnIndex3 != -1 ? cursorQuery.getInt(columnIndex3) : i3;
                        String string = columnIndex4 != -1 ? cursorQuery.getString(columnIndex4) : null;
                        Uri uriWithAppendedId = columnIndex2 == -1 ? ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndexOrThrow)) : ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex2));
                        int i6 = columnIndex6;
                        if (columnIndex5 == -1 || i6 == -1) {
                            i2 = 400;
                            z2 = false;
                        } else {
                            i2 = cursorQuery.getInt(columnIndex5);
                            z2 = cursorQuery.getInt(i6) == 1;
                        }
                        arrayList2.add(new FontInfo(uriWithAppendedId, i5, FontVariationAxis.fromFontVariationSettings(string), i2, z2, i4));
                        columnIndex6 = i6;
                        i3 = 0;
                    }
                    arrayList = arrayList2;
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        cursorQuery.close();
                        throw th2;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th2;
                    }
                }
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return (FontInfo[]) arrayList.toArray(new FontInfo[0]);
    }

    public static Typeface getFontSync(final FontRequest fontRequest) {
        final String identifier = fontRequest.getIdentifier();
        Typeface typeface = sTypefaceCache.get(identifier);
        if (typeface != null) {
            return typeface;
        }
        synchronized (sLock) {
            if (sHandler == null) {
                HandlerThread handlerThread = new HandlerThread("fonts", 10);
                sThread = handlerThread;
                handlerThread.start();
                sHandler = new Handler(sThread.getLooper());
            }
            final ReentrantLock reentrantLock = new ReentrantLock();
            final Condition conditionNewCondition = reentrantLock.newCondition();
            final AtomicReference atomicReference = new AtomicReference();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
            final AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
            sHandler.post(new Runnable() { // from class: android.provider.a
                @Override // java.lang.Runnable
                public final void run() {
                    FontsContract.lambda$getFontSync$0(fontRequest, identifier, atomicReference, reentrantLock, atomicBoolean2, atomicBoolean, conditionNewCondition);
                }
            });
            Handler handler = sHandler;
            Runnable runnable = sReplaceDispatcherThreadRunnable;
            handler.removeCallbacks(runnable);
            sHandler.postDelayed(runnable, JobInfo.MIN_BACKOFF_MILLIS);
            long nanos = TimeUnit.MILLISECONDS.toNanos(SYNC_FONT_FETCH_TIMEOUT_MS);
            reentrantLock.lock();
            try {
                if (!atomicBoolean.get()) {
                    Typeface typeface2 = (Typeface) atomicReference.get();
                    reentrantLock.unlock();
                    return typeface2;
                }
                do {
                    try {
                        nanos = conditionNewCondition.awaitNanos(nanos);
                    } catch (InterruptedException unused) {
                    }
                    if (!atomicBoolean.get()) {
                        Typeface typeface3 = (Typeface) atomicReference.get();
                        reentrantLock.unlock();
                        return typeface3;
                    }
                } while (nanos > 0);
                atomicBoolean2.set(true);
                Log.w(TAG, "Remote font fetch timed out: " + fontRequest.getProviderAuthority() + "/" + fontRequest.getQuery());
                reentrantLock.unlock();
                return null;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public static ProviderInfo getProvider(PackageManager packageManager, FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(android.accessibilityservice.c.j("No package found for authority: ", providerAuthority));
        }
        if (!providerInfoResolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
            StringBuilder sbV = android.accessibilityservice.c.v("Found content provider ", providerAuthority, ", but package was not ");
            sbV.append(fontRequest.getProviderPackage());
            throw new PackageManager.NameNotFoundException(sbV.toString());
        }
        if (providerInfoResolveContentProvider.applicationInfo.isSystemApp()) {
            return providerInfoResolveContentProvider;
        }
        List<byte[]> listConvertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listConvertToByteArrayList, sByteArrayComparator);
        List<List<byte[]>> certificates = fontRequest.getCertificates();
        for (int i2 = 0; i2 < certificates.size(); i2++) {
            ArrayList arrayList = new ArrayList(certificates.get(i2));
            Collections.sort(arrayList, sByteArrayComparator);
            if (equalsByteArrayList(listConvertToByteArrayList, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getFontSync$0(FontRequest fontRequest, String str, AtomicReference atomicReference, Lock lock, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, Condition condition) {
        try {
            FontFamilyResult fontFamilyResultFetchFonts = fetchFonts(sContext, null, fontRequest);
            if (fontFamilyResultFetchFonts.getStatusCode() == 0) {
                Typeface typefaceBuildTypeface = buildTypeface(sContext, null, fontFamilyResultFetchFonts.getFonts());
                if (typefaceBuildTypeface != null) {
                    sTypefaceCache.put(str, typefaceBuildTypeface);
                }
                atomicReference.set(typefaceBuildTypeface);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        lock.lock();
        try {
            if (!atomicBoolean.get()) {
                atomicBoolean2.set(false);
                condition.signal();
            }
        } finally {
            lock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestFonts$12(Context context, CancellationSignal cancellationSignal, FontRequest fontRequest, Handler handler, FontRequestCallback fontRequestCallback) {
        int i2 = 0;
        try {
            FontFamilyResult fontFamilyResultFetchFonts = fetchFonts(context, cancellationSignal, fontRequest);
            Typeface typeface = sTypefaceCache.get(fontRequest.getIdentifier());
            if (typeface != null) {
                handler.post(new c(fontRequestCallback, typeface, i2));
                return;
            }
            int i3 = 1;
            if (fontFamilyResultFetchFonts.getStatusCode() != 0) {
                int statusCode = fontFamilyResultFetchFonts.getStatusCode();
                if (statusCode == 1) {
                    handler.post(new b(fontRequestCallback, i3));
                    return;
                }
                int i4 = 2;
                if (statusCode != 2) {
                    handler.post(new b(fontRequestCallback, 3));
                    return;
                } else {
                    handler.post(new b(fontRequestCallback, i4));
                    return;
                }
            }
            FontInfo[] fonts = fontFamilyResultFetchFonts.getFonts();
            if (fonts == null || fonts.length == 0) {
                handler.post(new b(fontRequestCallback, 4));
                return;
            }
            int length = fonts.length;
            while (i2 < length) {
                FontInfo fontInfo = fonts[i2];
                if (fontInfo.getResultCode() != 0) {
                    int resultCode = fontInfo.getResultCode();
                    if (resultCode < 0) {
                        handler.post(new b(fontRequestCallback, 5));
                        return;
                    } else {
                        handler.post(new e(fontRequestCallback, resultCode, i3));
                        return;
                    }
                }
                i2++;
            }
            Typeface typefaceBuildTypeface = buildTypeface(context, cancellationSignal, fonts);
            if (typefaceBuildTypeface == null) {
                handler.post(new b(fontRequestCallback, 6));
            } else {
                sTypefaceCache.put(fontRequest.getIdentifier(), typefaceBuildTypeface);
                handler.post(new c(fontRequestCallback, typefaceBuildTypeface, i3));
            }
        } catch (PackageManager.NameNotFoundException unused) {
            handler.post(new b(fontRequestCallback, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$13(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            byte b3 = bArr2[i2];
            if (b2 != b3) {
                return b2 - b3;
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0018  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        ContentResolver contentResolver = context.getContentResolver();
        for (FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.getResultCode() == 0) {
                Uri uri = fontInfo.getUri();
                if (!map.containsKey(uri)) {
                    MappedByteBuffer map2 = null;
                    try {
                        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN, cancellationSignal);
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                            try {
                                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                                try {
                                    FileChannel channel = fileInputStream.getChannel();
                                    map2 = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                    fileInputStream.close();
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        try {
                                            fileInputStream.close();
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                        }
                                        throw th2;
                                    }
                                }
                            } catch (IOException unused) {
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    try {
                                        parcelFileDescriptorOpenFileDescriptor.close();
                                        throw th5;
                                    } catch (Throwable th6) {
                                        th4.addSuppressed(th6);
                                        throw th5;
                                    }
                                }
                            }
                        }
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        }
                    } catch (IOException unused2) {
                    }
                    map.put(uri, map2);
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public static void requestFonts(final Context context, final FontRequest fontRequest, Handler handler, final CancellationSignal cancellationSignal, final FontRequestCallback fontRequestCallback) {
        final Handler handler2 = new Handler();
        Typeface typeface = sTypefaceCache.get(fontRequest.getIdentifier());
        if (typeface != null) {
            handler2.post(new c(fontRequestCallback, typeface, 2));
        } else {
            handler.post(new Runnable() { // from class: android.provider.d
                @Override // java.lang.Runnable
                public final void run() {
                    FontsContract.lambda$requestFonts$12(context, cancellationSignal, fontRequest, handler2, fontRequestCallback);
                }
            });
        }
    }

    public static void setApplicationContextForResources(Context context) {
        sContext = context.getApplicationContext();
    }
}
