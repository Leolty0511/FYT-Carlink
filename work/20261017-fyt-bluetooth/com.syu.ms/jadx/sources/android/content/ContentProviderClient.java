package android.content;

import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.ICancellationSignal;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.syu.jni.BuildConfig;
import dalvik.system.CloseGuard;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ContentProviderClient {
    private static final String TAG = "ContentProviderClient";

    @GuardedBy("ContentProviderClient.class")
    private static Handler sAnrHandler;
    private NotRespondingRunnable mAnrRunnable;
    private long mAnrTimeout;
    private final IContentProvider mContentProvider;
    private final ContentResolver mContentResolver;
    private final CloseGuard mGuard;
    private final String mPackageName;
    private boolean mReleased;
    private final boolean mStable;

    public class NotRespondingRunnable implements Runnable {
        private NotRespondingRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.w(ContentProviderClient.TAG, "Detected provider not responding: " + ContentProviderClient.this.mContentProvider);
            ContentProviderClient.this.mContentResolver.appNotRespondingViaProvider(ContentProviderClient.this.mContentProvider);
        }
    }

    public ContentProviderClient(ContentResolver contentResolver, IContentProvider iContentProvider, boolean z2) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mGuard = closeGuard;
        this.mContentResolver = contentResolver;
        this.mContentProvider = iContentProvider;
        this.mPackageName = contentResolver.mPackageName;
        this.mStable = z2;
        closeGuard.open(BuildConfig.BUILD_TYPE);
    }

    private void afterRemote() {
        NotRespondingRunnable notRespondingRunnable = this.mAnrRunnable;
        if (notRespondingRunnable != null) {
            sAnrHandler.removeCallbacks(notRespondingRunnable);
        }
    }

    private void beforeRemote() {
        NotRespondingRunnable notRespondingRunnable = this.mAnrRunnable;
        if (notRespondingRunnable != null) {
            sAnrHandler.postDelayed(notRespondingRunnable, this.mAnrTimeout);
        }
    }

    public static void releaseQuietly(ContentProviderClient contentProviderClient) {
        if (contentProviderClient != null) {
            try {
                contentProviderClient.release();
            } catch (Exception unused) {
            }
        }
    }

    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) {
        beforeRemote();
        try {
            try {
                ContentProviderResult[] contentProviderResultArrApplyBatch = this.mContentProvider.applyBatch(this.mPackageName, arrayList);
                afterRemote();
                return contentProviderResultArrApplyBatch;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        beforeRemote();
        try {
            try {
                int iBulkInsert = this.mContentProvider.bulkInsert(this.mPackageName, uri, contentValuesArr);
                afterRemote();
                return iBulkInsert;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public Bundle call(String str, String str2, Bundle bundle) {
        beforeRemote();
        try {
            try {
                Bundle bundleCall = this.mContentProvider.call(this.mPackageName, str, str2, bundle);
                afterRemote();
                return bundleCall;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public final Uri canonicalize(Uri uri) {
        beforeRemote();
        try {
            try {
                Uri uriCanonicalize = this.mContentProvider.canonicalize(this.mPackageName, uri);
                afterRemote();
                return uriCanonicalize;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        beforeRemote();
        try {
            try {
                int iDelete = this.mContentProvider.delete(this.mPackageName, uri, str, strArr);
                afterRemote();
                return iDelete;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public void finalize() {
        CloseGuard closeGuard = this.mGuard;
        if (closeGuard != null) {
            closeGuard.warnIfOpen();
        }
    }

    public ContentProvider getLocalContentProvider() {
        return ContentProvider.coerceToLocalContentProvider(this.mContentProvider);
    }

    public String[] getStreamTypes(Uri uri, String str) {
        beforeRemote();
        try {
            try {
                String[] streamTypes = this.mContentProvider.getStreamTypes(uri, str);
                afterRemote();
                return streamTypes;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public String getType(Uri uri) {
        beforeRemote();
        try {
            try {
                String type = this.mContentProvider.getType(uri);
                afterRemote();
                return type;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        beforeRemote();
        try {
            try {
                Uri uriInsert = this.mContentProvider.insert(this.mPackageName, uri, contentValues);
                afterRemote();
                return uriInsert;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public AssetFileDescriptor openAssetFile(Uri uri, String str) {
        return openAssetFile(uri, str, null);
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) {
        return openFile(uri, str, null);
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String str, Bundle bundle) {
        return openTypedAssetFileDescriptor(uri, str, bundle, null);
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return query(uri, strArr, str, strArr2, str2, null);
    }

    public boolean release() {
        synchronized (this) {
            if (this.mReleased) {
                throw new IllegalStateException("Already released");
            }
            this.mReleased = true;
            this.mGuard.close();
            if (this.mStable) {
                return this.mContentResolver.releaseProvider(this.mContentProvider);
            }
            return this.mContentResolver.releaseUnstableProvider(this.mContentProvider);
        }
    }

    public void setDetectNotResponding(long j2) {
        synchronized (ContentProviderClient.class) {
            this.mAnrTimeout = j2;
            if (j2 > 0) {
                if (this.mAnrRunnable == null) {
                    this.mAnrRunnable = new NotRespondingRunnable();
                }
                if (sAnrHandler == null) {
                    sAnrHandler = new Handler(Looper.getMainLooper(), null, true);
                }
            } else {
                this.mAnrRunnable = null;
            }
        }
    }

    public final Uri uncanonicalize(Uri uri) {
        beforeRemote();
        try {
            try {
                Uri uriUncanonicalize = this.mContentProvider.uncanonicalize(this.mPackageName, uri);
                afterRemote();
                return uriUncanonicalize;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        beforeRemote();
        try {
            try {
                int iUpdate = this.mContentProvider.update(this.mPackageName, uri, contentValues, str, strArr);
                afterRemote();
                return iUpdate;
            } catch (DeadObjectException e2) {
                if (!this.mStable) {
                    this.mContentResolver.unstableProviderDied(this.mContentProvider);
                }
                throw e2;
            }
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public AssetFileDescriptor openAssetFile(Uri uri, String str, CancellationSignal cancellationSignal) {
        beforeRemote();
        ICancellationSignal iCancellationSignalCreateCancellationSignal = null;
        if (cancellationSignal != null) {
            try {
                try {
                    cancellationSignal.throwIfCanceled();
                    iCancellationSignalCreateCancellationSignal = this.mContentProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                } catch (DeadObjectException e2) {
                    if (!this.mStable) {
                        this.mContentResolver.unstableProviderDied(this.mContentProvider);
                    }
                    throw e2;
                }
            } catch (Throwable th) {
                afterRemote();
                throw th;
            }
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFile = this.mContentProvider.openAssetFile(this.mPackageName, uri, str, iCancellationSignalCreateCancellationSignal);
        afterRemote();
        return assetFileDescriptorOpenAssetFile;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str, CancellationSignal cancellationSignal) {
        beforeRemote();
        ICancellationSignal iCancellationSignalCreateCancellationSignal = null;
        if (cancellationSignal != null) {
            try {
                try {
                    cancellationSignal.throwIfCanceled();
                    iCancellationSignalCreateCancellationSignal = this.mContentProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                } catch (DeadObjectException e2) {
                    if (!this.mStable) {
                        this.mContentResolver.unstableProviderDied(this.mContentProvider);
                    }
                    throw e2;
                }
            } catch (Throwable th) {
                afterRemote();
                throw th;
            }
        }
        ParcelFileDescriptor parcelFileDescriptorOpenFile = this.mContentProvider.openFile(this.mPackageName, uri, str, iCancellationSignalCreateCancellationSignal);
        afterRemote();
        return parcelFileDescriptorOpenFile;
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String str, Bundle bundle, CancellationSignal cancellationSignal) {
        beforeRemote();
        ICancellationSignal iCancellationSignalCreateCancellationSignal = null;
        try {
            if (cancellationSignal != null) {
                try {
                    cancellationSignal.throwIfCanceled();
                    iCancellationSignalCreateCancellationSignal = this.mContentProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                } catch (DeadObjectException e2) {
                    if (!this.mStable) {
                        this.mContentResolver.unstableProviderDied(this.mContentProvider);
                    }
                    throw e2;
                }
            }
            AssetFileDescriptor assetFileDescriptorOpenTypedAssetFile = this.mContentProvider.openTypedAssetFile(this.mPackageName, uri, str, bundle, iCancellationSignalCreateCancellationSignal);
            afterRemote();
            return assetFileDescriptorOpenTypedAssetFile;
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        beforeRemote();
        ICancellationSignal iCancellationSignalCreateCancellationSignal = null;
        try {
            if (cancellationSignal != null) {
                try {
                    cancellationSignal.throwIfCanceled();
                    iCancellationSignalCreateCancellationSignal = this.mContentProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                } catch (DeadObjectException e2) {
                    if (!this.mStable) {
                        this.mContentResolver.unstableProviderDied(this.mContentProvider);
                    }
                    throw e2;
                }
            }
            Cursor cursorQuery = this.mContentProvider.query(this.mPackageName, uri, strArr, str, strArr2, str2, iCancellationSignalCreateCancellationSignal);
            afterRemote();
            return cursorQuery;
        } catch (Throwable th) {
            afterRemote();
            throw th;
        }
    }
}
