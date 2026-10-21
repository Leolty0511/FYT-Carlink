package android.content;

import android.app.AppOpsManager;
import android.app.backup.FullBackup;
import android.content.pm.PathPermission;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ICancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentProvider implements ComponentCallbacks2 {
    private static final String TAG = "ContentProvider";
    private final ThreadLocal<String> mCallingPackage;
    private Context mContext;
    private boolean mExported;
    private int mMyUid;
    private boolean mNoPerms;
    private PathPermission[] mPathPermissions;
    private String mReadPermission;
    private Transport mTransport;
    private String mWritePermission;

    public interface PipeDataWriter<T> {
        void writeDataToPipe(ParcelFileDescriptor parcelFileDescriptor, Uri uri, String str, Bundle bundle, T t2);
    }

    public class Transport extends ContentProviderNative {
        public AppOpsManager mAppOpsManager = null;
        public int mReadOp = -1;
        public int mWriteOp = -1;

        public Transport() {
        }

        private void enforceFilePermission(String str, Uri uri, String str2) throws FileNotFoundException {
            if (str2 == null || str2.indexOf(119) == -1) {
                if (enforceReadPermission(str, uri) != 0) {
                    throw new FileNotFoundException("App op not allowed");
                }
            } else if (enforceWritePermission(str, uri) != 0) {
                throw new FileNotFoundException("App op not allowed");
            }
        }

        private int enforceReadPermission(String str, Uri uri) {
            ContentProvider.this.enforceReadPermissionInner(uri);
            int i2 = this.mReadOp;
            if (i2 != -1) {
                return this.mAppOpsManager.noteOp(i2, Binder.getCallingUid(), str);
            }
            return 0;
        }

        private int enforceWritePermission(String str, Uri uri) {
            ContentProvider.this.enforceWritePermissionInner(uri);
            int i2 = this.mWriteOp;
            if (i2 != -1) {
                return this.mAppOpsManager.noteOp(i2, Binder.getCallingUid(), str);
            }
            return 0;
        }

        @Override // android.content.IContentProvider
        public ContentProviderResult[] applyBatch(String str, ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
            for (ContentProviderOperation contentProviderOperation : arrayList) {
                if (contentProviderOperation.isReadOperation() && enforceReadPermission(str, contentProviderOperation.getUri()) != 0) {
                    throw new OperationApplicationException("App op not allowed", 0);
                }
                if (contentProviderOperation.isWriteOperation() && enforceWritePermission(str, contentProviderOperation.getUri()) != 0) {
                    throw new OperationApplicationException("App op not allowed", 0);
                }
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.applyBatch(arrayList);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public int bulkInsert(String str, Uri uri, ContentValues[] contentValuesArr) {
            if (enforceWritePermission(str, uri) != 0) {
                return 0;
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.bulkInsert(uri, contentValuesArr);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public Bundle call(String str, String str2, String str3, Bundle bundle) {
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.call(str2, str3, bundle);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public Uri canonicalize(String str, Uri uri) {
            if (enforceReadPermission(str, uri) != 0) {
                return null;
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.canonicalize(uri);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public ICancellationSignal createCancellationSignal() {
            return CancellationSignal.createTransport();
        }

        @Override // android.content.IContentProvider
        public int delete(String str, Uri uri, String str2, String[] strArr) {
            if (enforceWritePermission(str, uri) != 0) {
                return 0;
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.delete(uri, str2, strArr);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        public ContentProvider getContentProvider() {
            return ContentProvider.this;
        }

        @Override // android.content.ContentProviderNative
        public String getProviderName() {
            return getContentProvider().getClass().getName();
        }

        @Override // android.content.IContentProvider
        public String[] getStreamTypes(Uri uri, String str) {
            return ContentProvider.this.getStreamTypes(uri, str);
        }

        @Override // android.content.IContentProvider
        public String getType(Uri uri) {
            return ContentProvider.this.getType(uri);
        }

        @Override // android.content.IContentProvider
        public Uri insert(String str, Uri uri, ContentValues contentValues) {
            if (enforceWritePermission(str, uri) != 0) {
                return ContentProvider.this.rejectInsert(uri, contentValues);
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.insert(uri, contentValues);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public AssetFileDescriptor openAssetFile(String str, Uri uri, String str2, ICancellationSignal iCancellationSignal) throws FileNotFoundException {
            enforceFilePermission(str, uri, str2);
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.openAssetFile(uri, str2, CancellationSignal.fromTransport(iCancellationSignal));
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public ParcelFileDescriptor openFile(String str, Uri uri, String str2, ICancellationSignal iCancellationSignal) throws FileNotFoundException {
            enforceFilePermission(str, uri, str2);
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.openFile(uri, str2, CancellationSignal.fromTransport(iCancellationSignal));
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public AssetFileDescriptor openTypedAssetFile(String str, Uri uri, String str2, Bundle bundle, ICancellationSignal iCancellationSignal) throws FileNotFoundException {
            enforceFilePermission(str, uri, FullBackup.ROOT_TREE_TOKEN);
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.openTypedAssetFile(uri, str2, bundle, CancellationSignal.fromTransport(iCancellationSignal));
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public Cursor query(String str, Uri uri, String[] strArr, String str2, String[] strArr2, String str3, ICancellationSignal iCancellationSignal) {
            if (enforceReadPermission(str, uri) != 0) {
                return ContentProvider.this.rejectQuery(uri, strArr, str2, strArr2, str3, CancellationSignal.fromTransport(iCancellationSignal));
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.query(uri, strArr, str2, strArr2, str3, CancellationSignal.fromTransport(iCancellationSignal));
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public Uri uncanonicalize(String str, Uri uri) {
            if (enforceReadPermission(str, uri) != 0) {
                return null;
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.uncanonicalize(uri);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }

        @Override // android.content.IContentProvider
        public int update(String str, Uri uri, ContentValues contentValues, String str2, String[] strArr) {
            if (enforceWritePermission(str, uri) != 0) {
                return 0;
            }
            String callingPackage = ContentProvider.this.setCallingPackage(str);
            try {
                return ContentProvider.this.update(uri, contentValues, str2, strArr);
            } finally {
                ContentProvider.this.setCallingPackage(callingPackage);
            }
        }
    }

    public ContentProvider() {
        this.mContext = null;
        this.mCallingPackage = new ThreadLocal<>();
        this.mTransport = new Transport();
    }

    public static ContentProvider coerceToLocalContentProvider(IContentProvider iContentProvider) {
        if (iContentProvider instanceof Transport) {
            return ((Transport) iContentProvider).getContentProvider();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String setCallingPackage(String str) {
        String str2 = this.mCallingPackage.get();
        this.mCallingPackage.set(str);
        return str2;
    }

    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) {
        int size = arrayList.size();
        ContentProviderResult[] contentProviderResultArr = new ContentProviderResult[size];
        for (int i2 = 0; i2 < size; i2++) {
            contentProviderResultArr[i2] = arrayList.get(i2).apply(this, contentProviderResultArr, i2);
        }
        return contentProviderResultArr;
    }

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        attachInfo(context, providerInfo, false);
    }

    public void attachInfoForTesting(Context context, ProviderInfo providerInfo) {
        attachInfo(context, providerInfo, true);
    }

    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        int length = contentValuesArr.length;
        for (ContentValues contentValues : contentValuesArr) {
            insert(uri, contentValues);
        }
        return length;
    }

    public Bundle call(String str, String str2, Bundle bundle) {
        return null;
    }

    public Uri canonicalize(Uri uri) {
        return null;
    }

    public abstract int delete(Uri uri, String str, String[] strArr);

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("nothing to dump");
    }

    public void enforceReadPermissionInner(Uri uri) {
        Context context = getContext();
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        if (UserHandle.isSameApp(callingUid, this.mMyUid)) {
            return;
        }
        String str = null;
        if (this.mExported) {
            String readPermission = getReadPermission();
            if (readPermission != null) {
                if (context.checkPermission(readPermission, callingPid, callingUid) == 0) {
                    return;
                } else {
                    str = readPermission;
                }
            }
            boolean z2 = readPermission == null;
            PathPermission[] pathPermissions = getPathPermissions();
            if (pathPermissions != null) {
                String path = uri.getPath();
                for (PathPermission pathPermission : pathPermissions) {
                    String readPermission2 = pathPermission.getReadPermission();
                    if (readPermission2 != null && pathPermission.match(path)) {
                        if (context.checkPermission(readPermission2, callingPid, callingUid) == 0) {
                            return;
                        }
                        z2 = false;
                        str = readPermission2;
                    }
                }
            }
            if (z2) {
                return;
            }
        }
        if (context.checkUriPermission(uri, callingPid, callingUid, 1) == 0) {
            return;
        }
        throw new SecurityException("Permission Denial: reading " + getClass().getName() + " uri " + uri + " from pid=" + callingPid + ", uid=" + callingUid + (this.mExported ? " requires " + str + ", or grantUriPermission()" : " requires the provider be exported, or grantUriPermission()"));
    }

    public void enforceWritePermissionInner(Uri uri) {
        Context context = getContext();
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        if (UserHandle.isSameApp(callingUid, this.mMyUid)) {
            return;
        }
        String str = null;
        if (this.mExported) {
            String writePermission = getWritePermission();
            if (writePermission != null) {
                if (context.checkPermission(writePermission, callingPid, callingUid) == 0) {
                    return;
                } else {
                    str = writePermission;
                }
            }
            boolean z2 = writePermission == null;
            PathPermission[] pathPermissions = getPathPermissions();
            if (pathPermissions != null) {
                String path = uri.getPath();
                for (PathPermission pathPermission : pathPermissions) {
                    String writePermission2 = pathPermission.getWritePermission();
                    if (writePermission2 != null && pathPermission.match(path)) {
                        if (context.checkPermission(writePermission2, callingPid, callingUid) == 0) {
                            return;
                        }
                        z2 = false;
                        str = writePermission2;
                    }
                }
            }
            if (z2) {
                return;
            }
        }
        if (context.checkUriPermission(uri, callingPid, callingUid, 2) == 0) {
            return;
        }
        throw new SecurityException("Permission Denial: writing " + getClass().getName() + " uri " + uri + " from pid=" + callingPid + ", uid=" + callingUid + (this.mExported ? " requires " + str + ", or grantUriPermission()" : " requires the provider be exported, or grantUriPermission()"));
    }

    public AppOpsManager getAppOpsManager() {
        return this.mTransport.mAppOpsManager;
    }

    public final String getCallingPackage() {
        String str = this.mCallingPackage.get();
        if (str != null) {
            this.mTransport.mAppOpsManager.checkPackage(Binder.getCallingUid(), str);
        }
        return str;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public IContentProvider getIContentProvider() {
        return this.mTransport;
    }

    public final PathPermission[] getPathPermissions() {
        return this.mPathPermissions;
    }

    public final String getReadPermission() {
        return this.mReadPermission;
    }

    public String[] getStreamTypes(Uri uri, String str) {
        return null;
    }

    public abstract String getType(Uri uri);

    public final String getWritePermission() {
        return this.mWritePermission;
    }

    public abstract Uri insert(Uri uri, ContentValues contentValues);

    public boolean isTemporary() {
        return false;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    public abstract boolean onCreate();

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
    }

    public AssetFileDescriptor openAssetFile(Uri uri, String str) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFile = openFile(uri, str);
        if (parcelFileDescriptorOpenFile != null) {
            return new AssetFileDescriptor(parcelFileDescriptorOpenFile, 0L, -1L);
        }
        return null;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        throw new FileNotFoundException("No files supported by provider at " + uri);
    }

    public final ParcelFileDescriptor openFileHelper(Uri uri, String str) throws FileNotFoundException {
        Cursor cursorQuery = query(uri, new String[]{"_data"}, null, null, null);
        int count = cursorQuery != null ? cursorQuery.getCount() : 0;
        if (count == 1) {
            cursorQuery.moveToFirst();
            int columnIndex = cursorQuery.getColumnIndex("_data");
            String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : null;
            cursorQuery.close();
            if (string != null) {
                return ParcelFileDescriptor.open(new File(string), ParcelFileDescriptor.parseMode(str));
            }
            throw new FileNotFoundException("Column _data not found.");
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        if (count == 0) {
            throw new FileNotFoundException("No entry for " + uri);
        }
        throw new FileNotFoundException("Multiple items at " + uri);
    }

    public <T> ParcelFileDescriptor openPipeHelper(final Uri uri, final String str, final Bundle bundle, final T t2, final PipeDataWriter<T> pipeDataWriter) throws FileNotFoundException {
        try {
            final ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
            new AsyncTask<Object, Object, Object>() { // from class: android.content.ContentProvider.1
                @Override // android.os.AsyncTask
                public Object doInBackground(Object... objArr) {
                    pipeDataWriter.writeDataToPipe(parcelFileDescriptorArrCreatePipe[1], uri, str, bundle, t2);
                    try {
                        parcelFileDescriptorArrCreatePipe[1].close();
                        return null;
                    } catch (IOException e2) {
                        Log.w(ContentProvider.TAG, "Failure closing pipe", e2);
                        return null;
                    }
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return parcelFileDescriptorArrCreatePipe[0];
        } catch (IOException unused) {
            throw new FileNotFoundException("failure making pipe");
        }
    }

    public AssetFileDescriptor openTypedAssetFile(Uri uri, String str, Bundle bundle) throws FileNotFoundException {
        if ("*/*".equals(str)) {
            return openAssetFile(uri, FullBackup.ROOT_TREE_TOKEN);
        }
        String type = getType(uri);
        if (type != null && ClipDescription.compareMimeTypes(type, str)) {
            return openAssetFile(uri, FullBackup.ROOT_TREE_TOKEN);
        }
        throw new FileNotFoundException("Can't open " + uri + " as type " + str);
    }

    public abstract Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2);

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        return query(uri, strArr, str, strArr2, str2);
    }

    public Uri rejectInsert(Uri uri, ContentValues contentValues) {
        return uri.buildUpon().appendPath("0").build();
    }

    public Cursor rejectQuery(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        String str3;
        if (str == null || str.isEmpty()) {
            str3 = "'A' = 'B'";
        } else {
            str3 = "'A' = 'B' AND (" + str + ")";
        }
        return query(uri, strArr, str3, strArr2, str2, cancellationSignal);
    }

    public final void setAppOps(int i2, int i3) {
        if (this.mNoPerms) {
            return;
        }
        Transport transport = this.mTransport;
        transport.mReadOp = i2;
        transport.mWriteOp = i3;
    }

    public final void setPathPermissions(PathPermission[] pathPermissionArr) {
        this.mPathPermissions = pathPermissionArr;
    }

    public final void setReadPermission(String str) {
        this.mReadPermission = str;
    }

    public final void setWritePermission(String str) {
        this.mWritePermission = str;
    }

    public void shutdown() {
        Log.w(TAG, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown");
    }

    public Uri uncanonicalize(Uri uri) {
        return uri;
    }

    public abstract int update(Uri uri, ContentValues contentValues, String str, String[] strArr);

    private void attachInfo(Context context, ProviderInfo providerInfo, boolean z2) {
        AsyncTask.init();
        this.mNoPerms = z2;
        if (this.mContext == null) {
            this.mContext = context;
            if (context != null) {
                this.mTransport.mAppOpsManager = (AppOpsManager) context.getSystemService(Context.APP_OPS_SERVICE);
            }
            this.mMyUid = Process.myUid();
            if (providerInfo != null) {
                setReadPermission(providerInfo.readPermission);
                setWritePermission(providerInfo.writePermission);
                setPathPermissions(providerInfo.pathPermissions);
                this.mExported = providerInfo.exported;
            }
            onCreate();
        }
    }

    public ParcelFileDescriptor openFile(Uri uri, String str, CancellationSignal cancellationSignal) {
        return openFile(uri, str);
    }

    public AssetFileDescriptor openAssetFile(Uri uri, String str, CancellationSignal cancellationSignal) {
        return openAssetFile(uri, str);
    }

    public ContentProvider(Context context, String str, String str2, PathPermission[] pathPermissionArr) {
        this.mContext = null;
        this.mCallingPackage = new ThreadLocal<>();
        this.mTransport = new Transport();
        this.mContext = context;
        this.mReadPermission = str;
        this.mWritePermission = str2;
        this.mPathPermissions = pathPermissionArr;
    }

    public AssetFileDescriptor openTypedAssetFile(Uri uri, String str, Bundle bundle, CancellationSignal cancellationSignal) {
        return openTypedAssetFile(uri, str, bundle);
    }
}
