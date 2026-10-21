package android.content;

import android.accounts.Account;
import android.app.ActivityManagerNative;
import android.app.ActivityThread;
import android.app.backup.FullBackup;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.CrossProcessCursorWrapper;
import android.database.Cursor;
import android.database.IContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.DeadObjectException;
import android.os.ICancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentResolver {
    public static final String CONTENT_SERVICE_NAME = "content";
    public static final String CURSOR_DIR_BASE_TYPE = "vnd.android.cursor.dir";
    public static final String CURSOR_ITEM_BASE_TYPE = "vnd.android.cursor.item";
    private static final boolean ENABLE_CONTENT_SAMPLE = false;
    public static final String SCHEME_ANDROID_RESOURCE = "android.resource";
    public static final String SCHEME_CONTENT = "content";
    public static final String SCHEME_FILE = "file";
    private static final int SLOW_THRESHOLD_MILLIS = 500;
    public static final int SYNC_ERROR_AUTHENTICATION = 2;
    public static final int SYNC_ERROR_CONFLICT = 5;
    public static final int SYNC_ERROR_INTERNAL = 8;
    public static final int SYNC_ERROR_IO = 3;
    public static final int SYNC_ERROR_PARSE = 4;
    public static final int SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS = 1;
    public static final int SYNC_ERROR_TOO_MANY_DELETIONS = 6;
    public static final int SYNC_ERROR_TOO_MANY_RETRIES = 7;

    @Deprecated
    public static final String SYNC_EXTRAS_ACCOUNT = "account";
    public static final String SYNC_EXTRAS_DISALLOW_METERED = "disallow_metered";
    public static final String SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS = "discard_deletions";
    public static final String SYNC_EXTRAS_DO_NOT_RETRY = "do_not_retry";
    public static final String SYNC_EXTRAS_EXPECTED_DOWNLOAD = "expected_download";
    public static final String SYNC_EXTRAS_EXPECTED_UPLOAD = "expected_upload";
    public static final String SYNC_EXTRAS_EXPEDITED = "expedited";

    @Deprecated
    public static final String SYNC_EXTRAS_FORCE = "force";
    public static final String SYNC_EXTRAS_IGNORE_BACKOFF = "ignore_backoff";
    public static final String SYNC_EXTRAS_IGNORE_SETTINGS = "ignore_settings";
    public static final String SYNC_EXTRAS_INITIALIZE = "initialize";
    public static final String SYNC_EXTRAS_MANUAL = "force";
    public static final String SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS = "deletions_override";
    public static final String SYNC_EXTRAS_PRIORITY = "sync_priority";
    public static final String SYNC_EXTRAS_UPLOAD = "upload";
    public static final int SYNC_OBSERVER_TYPE_ACTIVE = 4;
    public static final int SYNC_OBSERVER_TYPE_ALL = Integer.MAX_VALUE;
    public static final int SYNC_OBSERVER_TYPE_PENDING = 2;
    public static final int SYNC_OBSERVER_TYPE_SETTINGS = 1;
    public static final int SYNC_OBSERVER_TYPE_STATUS = 8;
    private static final String TAG = "ContentResolver";
    private static IContentService sContentService;
    private final Context mContext;
    public final String mPackageName;
    private final Random mRandom = new Random();
    public static final Intent ACTION_SYNC_CONN_STATUS_CHANGED = new Intent("com.android.sync.SYNC_CONN_STATUS_CHANGED");
    private static final String[] SYNC_ERROR_NAMES = {"already-in-progress", "authentication-error", "io-error", "parse-error", "conflict", "too-many-deletions", "too-many-retries", "internal-error"};

    public final class CursorWrapperInner extends CrossProcessCursorWrapper {
        public static final String TAG = "CursorWrapperInner";
        private final CloseGuard mCloseGuard;
        private final IContentProvider mContentProvider;
        private boolean mProviderReleased;

        public CursorWrapperInner(Cursor cursor, IContentProvider iContentProvider) {
            super(cursor);
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            this.mContentProvider = iContentProvider;
            closeGuard.open("close");
        }

        @Override // android.database.CursorWrapper, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            ContentResolver.this.releaseProvider(this.mContentProvider);
            this.mProviderReleased = true;
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.close();
            }
        }

        public void finalize() throws Throwable {
            try {
                CloseGuard closeGuard = this.mCloseGuard;
                if (closeGuard != null) {
                    closeGuard.warnIfOpen();
                }
                if (!this.mProviderReleased && this.mContentProvider != null) {
                    Log.w(TAG, "Cursor finalized without prior close()");
                    ContentResolver.this.releaseProvider(this.mContentProvider);
                }
            } finally {
                super.finalize();
            }
        }
    }

    public class OpenResourceIdResult {
        public int id;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public Resources f125r;

        public OpenResourceIdResult() {
        }
    }

    public final class ParcelFileDescriptorInner extends ParcelFileDescriptor {
        private final IContentProvider mContentProvider;
        private boolean mProviderReleased;

        public ParcelFileDescriptorInner(ParcelFileDescriptor parcelFileDescriptor, IContentProvider iContentProvider) {
            super(parcelFileDescriptor);
            this.mContentProvider = iContentProvider;
        }

        @Override // android.os.ParcelFileDescriptor
        public void releaseResources() {
            if (this.mProviderReleased) {
                return;
            }
            ContentResolver.this.releaseProvider(this.mContentProvider);
            this.mProviderReleased = true;
        }
    }

    public ContentResolver(Context context) {
        context = context == null ? ActivityThread.currentApplication() : context;
        this.mContext = context;
        this.mPackageName = context.getOpPackageName();
    }

    public static void addPeriodicSync(Account account, String str, Bundle bundle, long j2) {
        validateSyncExtrasBundle(bundle);
        if (bundle.getBoolean("force", false) || bundle.getBoolean(SYNC_EXTRAS_DO_NOT_RETRY, false) || bundle.getBoolean(SYNC_EXTRAS_IGNORE_BACKOFF, false) || bundle.getBoolean(SYNC_EXTRAS_IGNORE_SETTINGS, false) || bundle.getBoolean(SYNC_EXTRAS_INITIALIZE, false) || bundle.getBoolean("force", false) || bundle.getBoolean(SYNC_EXTRAS_EXPEDITED, false)) {
            throw new IllegalArgumentException("illegal extras were set");
        }
        try {
            getContentService().addPeriodicSync(account, str, bundle, j2);
        } catch (RemoteException unused) {
        }
    }

    public static Object addStatusChangeListener(int i2, final SyncStatusObserver syncStatusObserver) {
        if (syncStatusObserver == null) {
            throw new IllegalArgumentException("you passed in a null callback");
        }
        try {
            ISyncStatusObserver.Stub stub = new ISyncStatusObserver.Stub() { // from class: android.content.ContentResolver.1
                @Override // android.content.ISyncStatusObserver
                public void onStatusChanged(int i3) {
                    syncStatusObserver.onStatusChanged(i3);
                }
            };
            getContentService().addStatusChangeListener(i2, stub);
            return stub;
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static IContentService getContentService() {
        IContentService iContentService = sContentService;
        if (iContentService != null) {
            return iContentService;
        }
        IContentService iContentServiceAsInterface = IContentService.Stub.asInterface(ServiceManager.getService("content"));
        sContentService = iContentServiceAsInterface;
        return iContentServiceAsInterface;
    }

    @Deprecated
    public static SyncInfo getCurrentSync() {
        try {
            List<SyncInfo> currentSyncs = getContentService().getCurrentSyncs();
            if (currentSyncs.isEmpty()) {
                return null;
            }
            return currentSyncs.get(0);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static List<SyncInfo> getCurrentSyncs() {
        try {
            return getContentService().getCurrentSyncs();
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static int getIsSyncable(Account account, String str) {
        try {
            return getContentService().getIsSyncable(account, str);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static boolean getMasterSyncAutomatically() {
        try {
            return getContentService().getMasterSyncAutomatically();
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static List<PeriodicSync> getPeriodicSyncs(Account account, String str) {
        try {
            return getContentService().getPeriodicSyncs(account, str);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static SyncAdapterType[] getSyncAdapterTypes() {
        try {
            return getContentService().getSyncAdapterTypes();
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static boolean getSyncAutomatically(Account account, String str) {
        try {
            return getContentService().getSyncAutomatically(account, str);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static SyncStatusInfo getSyncStatus(Account account, String str) {
        try {
            return getContentService().getSyncStatus(account, str);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static boolean isSyncActive(Account account, String str) {
        try {
            return getContentService().isSyncActive(account, str);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static boolean isSyncPending(Account account, String str) {
        try {
            return getContentService().isSyncPending(account, str);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    private void maybeLogQueryToEventLog(long j2, Uri uri, String[] strArr, String str, String str2) {
    }

    private void maybeLogUpdateToEventLog(long j2, Uri uri, String str, String str2) {
    }

    public static void removePeriodicSync(Account account, String str, Bundle bundle) {
        validateSyncExtrasBundle(bundle);
        try {
            getContentService().removePeriodicSync(account, str, bundle);
        } catch (RemoteException e2) {
            throw new RuntimeException("the ContentService should always be reachable", e2);
        }
    }

    public static void removeStatusChangeListener(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("you passed in a null handle");
        }
        try {
            getContentService().removeStatusChangeListener((ISyncStatusObserver.Stub) obj);
        } catch (RemoteException unused) {
        }
    }

    public static void requestSync(Account account, String str, Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("Must specify extras.");
        }
        requestSync(new SyncRequest.Builder().setSyncAdapter(account, str).setExtras(bundle).syncOnce().build());
    }

    private int samplePercentForDuration(long j2) {
        if (j2 >= 500) {
            return 100;
        }
        return ((int) ((j2 * 100) / 500)) + 1;
    }

    public static void setIsSyncable(Account account, String str, int i2) {
        try {
            getContentService().setIsSyncable(account, str, i2);
        } catch (RemoteException unused) {
        }
    }

    public static void setMasterSyncAutomatically(boolean z2) {
        try {
            getContentService().setMasterSyncAutomatically(z2);
        } catch (RemoteException unused) {
        }
    }

    public static void setSyncAutomatically(Account account, String str, boolean z2) {
        try {
            getContentService().setSyncAutomatically(account, str, z2);
        } catch (RemoteException unused) {
        }
    }

    public static int syncErrorStringToInt(String str) {
        int length = SYNC_ERROR_NAMES.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (SYNC_ERROR_NAMES[i2].equals(str)) {
                return i2 + 1;
            }
        }
        if (str != null) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                Log.d(TAG, "error parsing sync error: " + str);
            }
        }
        return 0;
    }

    public static String syncErrorToString(int i2) {
        if (i2 >= 1) {
            String[] strArr = SYNC_ERROR_NAMES;
            if (i2 <= strArr.length) {
                return strArr[i2 - 1];
            }
        }
        return String.valueOf(i2);
    }

    public static void validateSyncExtrasBundle(Bundle bundle) {
        try {
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                if (obj != null && !(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Boolean) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof String) && !(obj instanceof Account)) {
                    throw new IllegalArgumentException("unexpected value type: " + obj.getClass().getName());
                }
            }
        } catch (IllegalArgumentException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw new IllegalArgumentException("error unparceling Bundle", e3);
        }
    }

    public final ContentProviderClient acquireContentProviderClient(Uri uri) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider != null) {
            return new ContentProviderClient(this, iContentProviderAcquireProvider, true);
        }
        return null;
    }

    public IContentProvider acquireExistingProvider(Context context, String str) {
        return acquireProvider(context, str);
    }

    public abstract IContentProvider acquireProvider(Context context, String str);

    public final IContentProvider acquireProvider(Uri uri) {
        String authority;
        if ("content".equals(uri.getScheme()) && (authority = uri.getAuthority()) != null) {
            return acquireProvider(this.mContext, authority);
        }
        return null;
    }

    public final ContentProviderClient acquireUnstableContentProviderClient(Uri uri) {
        IContentProvider iContentProviderAcquireUnstableProvider = acquireUnstableProvider(uri);
        if (iContentProviderAcquireUnstableProvider != null) {
            return new ContentProviderClient(this, iContentProviderAcquireUnstableProvider, false);
        }
        return null;
    }

    public abstract IContentProvider acquireUnstableProvider(Context context, String str);

    public final IContentProvider acquireUnstableProvider(Uri uri) {
        if ("content".equals(uri.getScheme()) && uri.getAuthority() != null) {
            return acquireUnstableProvider(this.mContext, uri.getAuthority());
        }
        return null;
    }

    public void appNotRespondingViaProvider(IContentProvider iContentProvider) {
        throw new UnsupportedOperationException("appNotRespondingViaProvider");
    }

    public ContentProviderResult[] applyBatch(String str, ArrayList<ContentProviderOperation> arrayList) {
        ContentProviderClient contentProviderClientAcquireContentProviderClient = acquireContentProviderClient(str);
        if (contentProviderClientAcquireContentProviderClient != null) {
            try {
                return contentProviderClientAcquireContentProviderClient.applyBatch(arrayList);
            } finally {
                contentProviderClientAcquireContentProviderClient.release();
            }
        }
        throw new IllegalArgumentException("Unknown authority " + str);
    }

    public final int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            throw new IllegalArgumentException("Unknown URL " + uri);
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int iBulkInsert = iContentProviderAcquireProvider.bulkInsert(this.mPackageName, uri, contentValuesArr);
            maybeLogUpdateToEventLog(SystemClock.uptimeMillis() - jUptimeMillis, uri, "bulkinsert", null);
            return iBulkInsert;
        } catch (RemoteException unused) {
            return 0;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public final Bundle call(Uri uri, String str, String str2, Bundle bundle) {
        Objects.requireNonNull(uri, "uri == null");
        Objects.requireNonNull(str, "method == null");
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider != null) {
            try {
                return iContentProviderAcquireProvider.call(this.mPackageName, str, str2, bundle);
            } catch (RemoteException unused) {
                return null;
            } finally {
                releaseProvider(iContentProviderAcquireProvider);
            }
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Deprecated
    public void cancelSync(Uri uri) {
        cancelSync(null, uri != null ? uri.getAuthority() : null);
    }

    public final Uri canonicalize(Uri uri) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            return null;
        }
        try {
            return iContentProviderAcquireProvider.canonicalize(this.mPackageName, uri);
        } catch (RemoteException unused) {
            return null;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public final int delete(Uri uri, String str, String[] strArr) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            throw new IllegalArgumentException("Unknown URL " + uri);
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int iDelete = iContentProviderAcquireProvider.delete(this.mPackageName, uri, str, strArr);
            maybeLogUpdateToEventLog(SystemClock.uptimeMillis() - jUptimeMillis, uri, "delete", str);
            return iDelete;
        } catch (RemoteException unused) {
            return -1;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public List<UriPermission> getOutgoingPersistedUriPermissions() {
        try {
            return ActivityManagerNative.getDefault().getPersistedUriPermissions(this.mPackageName, false).getList();
        } catch (RemoteException e2) {
            throw new RuntimeException("Activity manager has died", e2);
        }
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public List<UriPermission> getPersistedUriPermissions() {
        try {
            return ActivityManagerNative.getDefault().getPersistedUriPermissions(this.mPackageName, true).getList();
        } catch (RemoteException e2) {
            throw new RuntimeException("Activity manager has died", e2);
        }
    }

    public OpenResourceIdResult getResourceId(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.mContext.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                OpenResourceIdResult openResourceIdResult = new OpenResourceIdResult();
                openResourceIdResult.f125r = resourcesForApplication;
                openResourceIdResult.id = identifier;
                return openResourceIdResult;
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    public String[] getStreamTypes(Uri uri, String str) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            return null;
        }
        try {
            return iContentProviderAcquireProvider.getStreamTypes(uri, str);
        } catch (RemoteException unused) {
            return null;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public final String getType(Uri uri) {
        IContentProvider iContentProviderAcquireExistingProvider = acquireExistingProvider(uri);
        try {
            if (iContentProviderAcquireExistingProvider != null) {
                return iContentProviderAcquireExistingProvider.getType(uri);
            }
            if (!"content".equals(uri.getScheme())) {
                return null;
            }
            try {
                return ActivityManagerNative.getDefault().getProviderMimeType(uri, UserHandle.myUserId());
            } catch (RemoteException unused) {
                return null;
            } catch (Exception e2) {
                Log.w(TAG, "Failed to get type for: " + uri + " (" + e2.getMessage() + ")");
                return null;
            }
        } catch (RemoteException unused2) {
            return null;
        } catch (Exception e3) {
            Log.w(TAG, "Failed to get type for: " + uri + " (" + e3.getMessage() + ")");
            return null;
        } finally {
            releaseProvider(iContentProviderAcquireExistingProvider);
        }
    }

    public final Uri insert(Uri uri, ContentValues contentValues) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            throw new IllegalArgumentException("Unknown URL " + uri);
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            Uri uriInsert = iContentProviderAcquireProvider.insert(this.mPackageName, uri, contentValues);
            maybeLogUpdateToEventLog(SystemClock.uptimeMillis() - jUptimeMillis, uri, "insert", null);
            return uriInsert;
        } catch (RemoteException unused) {
            return null;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public void notifyChange(Uri uri, ContentObserver contentObserver) {
        notifyChange(uri, contentObserver, true);
    }

    public final AssetFileDescriptor openAssetFileDescriptor(Uri uri, String str) {
        return openAssetFileDescriptor(uri, str, null);
    }

    public final ParcelFileDescriptor openFileDescriptor(Uri uri, String str) {
        return openFileDescriptor(uri, str, null);
    }

    public final InputStream openInputStream(Uri uri) throws Throwable {
        String scheme = uri.getScheme();
        if (SCHEME_ANDROID_RESOURCE.equals(scheme)) {
            OpenResourceIdResult resourceId = getResourceId(uri);
            try {
                return resourceId.f125r.openRawResource(resourceId.id);
            } catch (Resources.NotFoundException unused) {
                throw new FileNotFoundException("Resource does not exist: " + uri);
            }
        }
        if (SCHEME_FILE.equals(scheme)) {
            return new FileInputStream(uri.getPath());
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN, null);
        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
            return null;
        }
        try {
            return assetFileDescriptorOpenAssetFileDescriptor.createInputStream();
        } catch (IOException unused2) {
            throw new FileNotFoundException("Unable to create stream");
        }
    }

    public final OutputStream openOutputStream(Uri uri) {
        return openOutputStream(uri, "w");
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String str, Bundle bundle) {
        return openTypedAssetFileDescriptor(uri, str, bundle, null);
    }

    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return query(uri, strArr, str, strArr2, str2, null);
    }

    public final void registerContentObserver(Uri uri, boolean z2, ContentObserver contentObserver) {
        registerContentObserver(uri, z2, contentObserver, UserHandle.myUserId());
    }

    public void releasePersistableUriPermission(Uri uri, int i2) {
        try {
            ActivityManagerNative.getDefault().releasePersistableUriPermission(uri, i2);
        } catch (RemoteException unused) {
        }
    }

    public abstract boolean releaseProvider(IContentProvider iContentProvider);

    public abstract boolean releaseUnstableProvider(IContentProvider iContentProvider);

    @Deprecated
    public void startSync(Uri uri, Bundle bundle) {
        Account account;
        if (bundle != null) {
            String string = bundle.getString("account");
            account = !TextUtils.isEmpty(string) ? new Account(string, "com.google") : null;
            bundle.remove("account");
        } else {
            account = null;
        }
        requestSync(account, uri != null ? uri.getAuthority() : null, bundle);
    }

    public void takePersistableUriPermission(Uri uri, int i2) {
        try {
            ActivityManagerNative.getDefault().takePersistableUriPermission(uri, i2);
        } catch (RemoteException unused) {
        }
    }

    public final Uri uncanonicalize(Uri uri) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            return null;
        }
        try {
            return iContentProviderAcquireProvider.uncanonicalize(this.mPackageName, uri);
        } catch (RemoteException unused) {
            return null;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public final void unregisterContentObserver(ContentObserver contentObserver) {
        try {
            IContentObserver iContentObserverReleaseContentObserver = contentObserver.releaseContentObserver();
            if (iContentObserverReleaseContentObserver != null) {
                getContentService().unregisterContentObserver(iContentObserverReleaseContentObserver);
            }
        } catch (RemoteException unused) {
        }
    }

    public abstract void unstableProviderDied(IContentProvider iContentProvider);

    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
        if (iContentProviderAcquireProvider == null) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int iUpdate = iContentProviderAcquireProvider.update(this.mPackageName, uri, contentValues, str, strArr);
            maybeLogUpdateToEventLog(SystemClock.uptimeMillis() - jUptimeMillis, uri, "update", str);
            return iUpdate;
        } catch (RemoteException unused) {
            return -1;
        } finally {
            releaseProvider(iContentProviderAcquireProvider);
        }
    }

    public static void cancelSync(Account account, String str) {
        try {
            getContentService().cancelSync(account, str);
        } catch (RemoteException unused) {
        }
    }

    public final IContentProvider acquireExistingProvider(Uri uri) {
        String authority;
        if ("content".equals(uri.getScheme()) && (authority = uri.getAuthority()) != null) {
            return acquireExistingProvider(this.mContext, authority);
        }
        return null;
    }

    public void notifyChange(Uri uri, ContentObserver contentObserver, boolean z2) {
        notifyChange(uri, contentObserver, z2, UserHandle.getCallingUserId());
    }

    public final AssetFileDescriptor openAssetFileDescriptor(Uri uri, String str, CancellationSignal cancellationSignal) throws Throwable {
        ICancellationSignal iCancellationSignalCreateCancellationSignal;
        IContentProvider iContentProviderAcquireProvider;
        AssetFileDescriptor assetFileDescriptorOpenAssetFile;
        String scheme = uri.getScheme();
        if (SCHEME_ANDROID_RESOURCE.equals(scheme)) {
            if (!FullBackup.ROOT_TREE_TOKEN.equals(str)) {
                throw new FileNotFoundException("Can't write resources: " + uri);
            }
            OpenResourceIdResult resourceId = getResourceId(uri);
            try {
                return resourceId.f125r.openRawResourceFd(resourceId.id);
            } catch (Resources.NotFoundException unused) {
                throw new FileNotFoundException("Resource does not exist: " + uri);
            }
        }
        if (SCHEME_FILE.equals(scheme)) {
            return new AssetFileDescriptor(ParcelFileDescriptor.open(new File(uri.getPath()), ParcelFileDescriptor.parseMode(str)), 0L, -1L);
        }
        if (FullBackup.ROOT_TREE_TOKEN.equals(str)) {
            return openTypedAssetFileDescriptor(uri, "*/*", null, cancellationSignal);
        }
        IContentProvider iContentProviderAcquireUnstableProvider = acquireUnstableProvider(uri);
        if (iContentProviderAcquireUnstableProvider == null) {
            throw new FileNotFoundException("No content provider: " + uri);
        }
        try {
            if (cancellationSignal != null) {
                try {
                    cancellationSignal.throwIfCanceled();
                    iCancellationSignalCreateCancellationSignal = iContentProviderAcquireUnstableProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                } catch (RemoteException unused2) {
                    throw new FileNotFoundException("Failed opening content provider: " + uri);
                } catch (FileNotFoundException e2) {
                    throw e2;
                } catch (Throwable th) {
                    th = th;
                    if (cancellationSignal != null) {
                        cancellationSignal.setRemote(null);
                    }
                    if (0 != 0) {
                        releaseProvider(null);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    throw th;
                }
            } else {
                iCancellationSignalCreateCancellationSignal = null;
            }
            try {
                try {
                    assetFileDescriptorOpenAssetFile = iContentProviderAcquireUnstableProvider.openAssetFile(this.mPackageName, uri, str, iCancellationSignalCreateCancellationSignal);
                    if (assetFileDescriptorOpenAssetFile == null) {
                        if (cancellationSignal != null) {
                            cancellationSignal.setRemote(null);
                        }
                        releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                        return null;
                    }
                    iContentProviderAcquireProvider = null;
                    if (iContentProviderAcquireProvider == null) {
                        iContentProviderAcquireProvider = acquireProvider(uri);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    AssetFileDescriptor assetFileDescriptor = new AssetFileDescriptor(new ParcelFileDescriptorInner(assetFileDescriptorOpenAssetFile.getParcelFileDescriptor(), iContentProviderAcquireProvider), assetFileDescriptorOpenAssetFile.getStartOffset(), assetFileDescriptorOpenAssetFile.getDeclaredLength());
                    if (cancellationSignal != null) {
                        cancellationSignal.setRemote(null);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    return assetFileDescriptor;
                } catch (DeadObjectException unused3) {
                    unstableProviderDied(iContentProviderAcquireUnstableProvider);
                    iContentProviderAcquireProvider = acquireProvider(uri);
                    if (iContentProviderAcquireProvider == null) {
                        throw new FileNotFoundException("No content provider: " + uri);
                    }
                    assetFileDescriptorOpenAssetFile = iContentProviderAcquireProvider.openAssetFile(this.mPackageName, uri, str, iCancellationSignalCreateCancellationSignal);
                    if (assetFileDescriptorOpenAssetFile == null) {
                        if (cancellationSignal != null) {
                            cancellationSignal.setRemote(null);
                        }
                        releaseProvider(iContentProviderAcquireProvider);
                        releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                        return null;
                    }
                }
            } catch (RemoteException unused4) {
                throw new FileNotFoundException("Failed opening content provider: " + uri);
            } catch (FileNotFoundException e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final ParcelFileDescriptor openFileDescriptor(Uri uri, String str, CancellationSignal cancellationSignal) throws Throwable {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = openAssetFileDescriptor(uri, str, cancellationSignal);
        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
            return null;
        }
        if (assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength() < 0) {
            return assetFileDescriptorOpenAssetFileDescriptor.getParcelFileDescriptor();
        }
        try {
            assetFileDescriptorOpenAssetFileDescriptor.close();
        } catch (IOException unused) {
        }
        throw new FileNotFoundException("Not a whole file");
    }

    public final OutputStream openOutputStream(Uri uri, String str) throws Throwable {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = openAssetFileDescriptor(uri, str, null);
        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
            return null;
        }
        try {
            return assetFileDescriptorOpenAssetFileDescriptor.createOutputStream();
        } catch (IOException unused) {
            throw new FileNotFoundException("Unable to create stream");
        }
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String str, Bundle bundle, CancellationSignal cancellationSignal) throws Throwable {
        ICancellationSignal iCancellationSignal;
        IContentProvider iContentProviderAcquireProvider;
        AssetFileDescriptor assetFileDescriptorOpenTypedAssetFile;
        IContentProvider iContentProviderAcquireUnstableProvider = acquireUnstableProvider(uri);
        if (iContentProviderAcquireUnstableProvider == null) {
            throw new FileNotFoundException("No content provider: " + uri);
        }
        try {
            if (cancellationSignal != null) {
                try {
                    cancellationSignal.throwIfCanceled();
                    ICancellationSignal iCancellationSignalCreateCancellationSignal = iContentProviderAcquireUnstableProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                    iCancellationSignal = iCancellationSignalCreateCancellationSignal;
                } catch (RemoteException unused) {
                    throw new FileNotFoundException("Failed opening content provider: " + uri);
                } catch (FileNotFoundException e2) {
                    throw e2;
                } catch (Throwable th) {
                    th = th;
                    if (cancellationSignal != null) {
                        cancellationSignal.setRemote(null);
                    }
                    if (0 != 0) {
                        releaseProvider(null);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    throw th;
                }
            } else {
                iCancellationSignal = null;
            }
            try {
                try {
                    assetFileDescriptorOpenTypedAssetFile = iContentProviderAcquireUnstableProvider.openTypedAssetFile(this.mPackageName, uri, str, bundle, iCancellationSignal);
                    if (assetFileDescriptorOpenTypedAssetFile == null) {
                        if (cancellationSignal != null) {
                            cancellationSignal.setRemote(null);
                        }
                        releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                        return null;
                    }
                    iContentProviderAcquireProvider = null;
                    if (iContentProviderAcquireProvider == null) {
                        iContentProviderAcquireProvider = acquireProvider(uri);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    AssetFileDescriptor assetFileDescriptor = new AssetFileDescriptor(new ParcelFileDescriptorInner(assetFileDescriptorOpenTypedAssetFile.getParcelFileDescriptor(), iContentProviderAcquireProvider), assetFileDescriptorOpenTypedAssetFile.getStartOffset(), assetFileDescriptorOpenTypedAssetFile.getDeclaredLength());
                    if (cancellationSignal != null) {
                        cancellationSignal.setRemote(null);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    return assetFileDescriptor;
                } catch (DeadObjectException unused2) {
                    unstableProviderDied(iContentProviderAcquireUnstableProvider);
                    iContentProviderAcquireProvider = acquireProvider(uri);
                    if (iContentProviderAcquireProvider == null) {
                        throw new FileNotFoundException("No content provider: " + uri);
                    }
                    assetFileDescriptorOpenTypedAssetFile = iContentProviderAcquireProvider.openTypedAssetFile(this.mPackageName, uri, str, bundle, iCancellationSignal);
                    if (assetFileDescriptorOpenTypedAssetFile == null) {
                        if (cancellationSignal != null) {
                            cancellationSignal.setRemote(null);
                        }
                        releaseProvider(iContentProviderAcquireProvider);
                        releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                        return null;
                    }
                }
            } catch (RemoteException unused3) {
                throw new FileNotFoundException("Failed opening content provider: " + uri);
            } catch (FileNotFoundException e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ea  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v3, types: [android.database.Cursor, android.os.ICancellationSignal] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) throws Throwable {
        ICancellationSignal iCancellationSignal;
        IContentProvider iContentProvider;
        IContentProvider iContentProvider2;
        ?? r12;
        ICancellationSignal iCancellationSignalCreateCancellationSignal;
        Cursor cursorQuery;
        ICancellationSignal iCancellationSignal2;
        IContentProvider iContentProviderAcquireUnstableProvider = acquireUnstableProvider(uri);
        Cursor cursor = null;
        if (iContentProviderAcquireUnstableProvider == null) {
            return null;
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (cancellationSignal != 0) {
                try {
                    cancellationSignal.throwIfCanceled();
                    iCancellationSignalCreateCancellationSignal = iContentProviderAcquireUnstableProvider.createCancellationSignal();
                    cancellationSignal.setRemote(iCancellationSignalCreateCancellationSignal);
                } catch (RemoteException unused) {
                    iContentProvider2 = null;
                    r12 = 0;
                    iContentProvider = iContentProviderAcquireUnstableProvider;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(r12);
                    }
                    releaseUnstableProvider(iContentProvider);
                    if (iContentProvider2 != null) {
                        releaseProvider(iContentProvider2);
                    }
                    return r12;
                } catch (Throwable th) {
                    th = th;
                    iContentProvider2 = null;
                    iCancellationSignal = null;
                    iContentProvider = iContentProviderAcquireUnstableProvider;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(iCancellationSignal);
                    }
                    releaseUnstableProvider(iContentProvider);
                    if (iContentProvider2 != null) {
                        releaseProvider(iContentProvider2);
                    }
                    throw th;
                }
            } else {
                iCancellationSignalCreateCancellationSignal = null;
            }
            try {
                cursorQuery = iContentProviderAcquireUnstableProvider.query(this.mPackageName, uri, strArr, str, strArr2, str2, iCancellationSignalCreateCancellationSignal);
                iContentProvider2 = null;
            } catch (DeadObjectException unused2) {
                unstableProviderDied(iContentProviderAcquireUnstableProvider);
                IContentProvider iContentProviderAcquireProvider = acquireProvider(uri);
                if (iContentProviderAcquireProvider == null) {
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(null);
                    }
                    releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                    if (iContentProviderAcquireProvider != null) {
                        releaseProvider(iContentProviderAcquireProvider);
                    }
                    return null;
                }
                try {
                    cursorQuery = iContentProviderAcquireProvider.query(this.mPackageName, uri, strArr, str, strArr2, str2, iCancellationSignalCreateCancellationSignal);
                    iContentProvider2 = iContentProviderAcquireProvider;
                } catch (RemoteException unused3) {
                    r12 = 0;
                    iContentProvider = iContentProviderAcquireUnstableProvider;
                    iContentProvider2 = iContentProviderAcquireProvider;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(r12);
                    }
                    releaseUnstableProvider(iContentProvider);
                    if (iContentProvider2 != null) {
                        releaseProvider(iContentProvider2);
                    }
                    return r12;
                } catch (Throwable th2) {
                    th = th2;
                    iCancellationSignal = null;
                    iContentProvider = iContentProviderAcquireUnstableProvider;
                    iContentProvider2 = iContentProviderAcquireProvider;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(iCancellationSignal);
                    }
                    releaseUnstableProvider(iContentProvider);
                    if (iContentProvider2 != null) {
                        releaseProvider(iContentProvider2);
                    }
                    throw th;
                }
            }
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (cancellationSignal != 0) {
                    cancellationSignal.setRemote(null);
                }
                releaseUnstableProvider(iContentProviderAcquireUnstableProvider);
                if (iContentProvider2 != null) {
                    releaseProvider(iContentProvider2);
                }
                return null;
            }
            try {
                cursorQuery.getCount();
                iCancellationSignal2 = null;
                iContentProvider = iContentProviderAcquireUnstableProvider;
                try {
                    maybeLogQueryToEventLog(SystemClock.uptimeMillis() - jUptimeMillis, uri, strArr, str, str2);
                    CursorWrapperInner cursorWrapperInner = new CursorWrapperInner(cursorQuery, iContentProvider2 != null ? iContentProvider2 : acquireProvider(uri));
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(null);
                    }
                    releaseUnstableProvider(iContentProvider);
                    return cursorWrapperInner;
                } catch (RemoteException unused4) {
                    cursor = cursorQuery;
                    r12 = iCancellationSignal2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(r12);
                    }
                    releaseUnstableProvider(iContentProvider);
                    if (iContentProvider2 != null) {
                        releaseProvider(iContentProvider2);
                    }
                    return r12;
                } catch (Throwable th3) {
                    th = th3;
                    cursor = cursorQuery;
                    iCancellationSignal = iCancellationSignal2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cancellationSignal != 0) {
                        cancellationSignal.setRemote(iCancellationSignal);
                    }
                    releaseUnstableProvider(iContentProvider);
                    if (iContentProvider2 != null) {
                        releaseProvider(iContentProvider2);
                    }
                    throw th;
                }
            } catch (RemoteException unused5) {
                iCancellationSignal2 = null;
                iContentProvider = iContentProviderAcquireUnstableProvider;
            } catch (Throwable th4) {
                th = th4;
                iCancellationSignal2 = null;
                iContentProvider = iContentProviderAcquireUnstableProvider;
            }
        } catch (RemoteException unused6) {
            r12 = 0;
            iContentProvider = iContentProviderAcquireUnstableProvider;
            iContentProvider2 = null;
            if (cursor != null) {
                cursor.close();
            }
            if (cancellationSignal != 0) {
                cancellationSignal.setRemote(r12);
            }
            releaseUnstableProvider(iContentProvider);
            if (iContentProvider2 != null) {
                releaseProvider(iContentProvider2);
            }
            return r12;
        } catch (Throwable th5) {
            th = th5;
            iCancellationSignal = null;
            iContentProvider = iContentProviderAcquireUnstableProvider;
            iContentProvider2 = null;
            if (cursor != null) {
                cursor.close();
            }
            if (cancellationSignal != 0) {
                cancellationSignal.setRemote(iCancellationSignal);
            }
            releaseUnstableProvider(iContentProvider);
            if (iContentProvider2 != null) {
                releaseProvider(iContentProvider2);
            }
            throw th;
        }
    }

    public final void registerContentObserver(Uri uri, boolean z2, ContentObserver contentObserver, int i2) {
        try {
            getContentService().registerContentObserver(uri, z2, contentObserver.getContentObserver(), i2);
        } catch (RemoteException unused) {
        }
    }

    public final ContentProviderClient acquireContentProviderClient(String str) {
        IContentProvider iContentProviderAcquireProvider = acquireProvider(str);
        if (iContentProviderAcquireProvider != null) {
            return new ContentProviderClient(this, iContentProviderAcquireProvider, true);
        }
        return null;
    }

    public final ContentProviderClient acquireUnstableContentProviderClient(String str) {
        IContentProvider iContentProviderAcquireUnstableProvider = acquireUnstableProvider(str);
        if (iContentProviderAcquireUnstableProvider != null) {
            return new ContentProviderClient(this, iContentProviderAcquireUnstableProvider, false);
        }
        return null;
    }

    public void notifyChange(Uri uri, ContentObserver contentObserver, boolean z2, int i2) {
        try {
            getContentService().notifyChange(uri, contentObserver == null ? null : contentObserver.getContentObserver(), contentObserver != null && contentObserver.deliverSelfNotifications(), z2, i2);
        } catch (RemoteException unused) {
        }
    }

    public static void requestSync(SyncRequest syncRequest) {
        try {
            getContentService().sync(syncRequest);
        } catch (RemoteException unused) {
        }
    }

    public final IContentProvider acquireProvider(String str) {
        if (str == null) {
            return null;
        }
        return acquireProvider(this.mContext, str);
    }

    public final IContentProvider acquireUnstableProvider(String str) {
        if (str == null) {
            return null;
        }
        return acquireUnstableProvider(this.mContext, str);
    }
}
