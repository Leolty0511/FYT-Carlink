package com.android.internal.content;

import android.accessibilityservice.c;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Point;
import android.media.MediaFile;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.FileObserver;
import android.os.FileUtils;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.DocumentsProvider;
import android.provider.MediaStore;
import android.provider.MetadataReader;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.android.internal.annotations.GuardedBy;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FileSystemProvider extends DocumentsProvider {
    private static final boolean LOG_INOTIFY = false;
    private static final String MIMETYPE_JPEG = "image/jpeg";
    private static final String MIMETYPE_JPG = "image/jpg";
    private static final String TAG = "FileSystemProvider";
    private String[] mDefaultProjection;
    private Handler mHandler;

    @GuardedBy("mObservers")
    private final ArrayMap<File, DirectoryObserver> mObservers = new ArrayMap<>();

    public class DirectoryCursor extends MatrixCursor {
        private final File mFile;

        public DirectoryCursor(String[] strArr, String str, File file) {
            super(strArr);
            Uri uriBuildNotificationUri = FileSystemProvider.this.buildNotificationUri(str);
            setNotificationUri(FileSystemProvider.this.getContext().getContentResolver(), uriBuildNotificationUri);
            this.mFile = file;
            FileSystemProvider.this.startObserving(file, uriBuildNotificationUri);
        }

        @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            FileSystemProvider.this.stopObserving(this.mFile);
        }
    }

    public static class DirectoryObserver extends FileObserver {
        private static final int NOTIFY_EVENTS = 4044;
        private final File mFile;
        private final Uri mNotifyUri;
        private int mRefCount;
        private final ContentResolver mResolver;

        public DirectoryObserver(File file, ContentResolver contentResolver, Uri uri) {
            super(file.getAbsolutePath(), NOTIFY_EVENTS);
            this.mRefCount = 0;
            this.mFile = file;
            this.mResolver = contentResolver;
            this.mNotifyUri = uri;
        }

        public static /* synthetic */ int access$008(DirectoryObserver directoryObserver) {
            int i2 = directoryObserver.mRefCount;
            directoryObserver.mRefCount = i2 + 1;
            return i2;
        }

        public static /* synthetic */ int access$010(DirectoryObserver directoryObserver) {
            int i2 = directoryObserver.mRefCount;
            directoryObserver.mRefCount = i2 - 1;
            return i2;
        }

        @Override // android.os.FileObserver
        public void onEvent(int i2, String str) {
            if ((i2 & NOTIFY_EVENTS) != 0) {
                this.mResolver.notifyChange(this.mNotifyUri, (ContentObserver) null, false);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("DirectoryObserver{file=");
            sb.append(this.mFile.getAbsolutePath());
            sb.append(", ref=");
            return c.m(sb, this.mRefCount, "}");
        }
    }

    private void addFolderToMediaStore(final File file) {
        Log.d(TAG, "+addFolderToMediaStore");
        new AsyncTask<Void, Void, Void>() { // from class: com.android.internal.content.FileSystemProvider.1
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                if (file == null) {
                    return null;
                }
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    ContentResolver contentResolver = FileSystemProvider.this.getContext().getContentResolver();
                    Uri directoryUri = MediaStore.Files.getDirectoryUri("external");
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_data", file.getAbsolutePath());
                    contentResolver.insert(directoryUri, contentValues);
                    return null;
                } finally {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
        }.execute(new Void[0]);
        Log.d(TAG, "-addFolderToMediaStore");
    }

    private static String getTypeForFile(File file) {
        return file.isDirectory() ? DocumentsContract.Document.MIME_TYPE_DIR : getTypeForName(file.getName());
    }

    private static String getTypeForName(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(iLastIndexOf + 1).toLowerCase());
        if (mimeTypeFromExtension == null) {
            mimeTypeFromExtension = MediaFile.getMimeTypeForFile(str);
        }
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDocument$0(File file, IOException iOException) {
        scanFile(file);
    }

    private void moveInMediaStore(File file, File file2) {
        if (file == null || file2 == null) {
            return;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ContentResolver contentResolver = getContext().getContentResolver();
            Uri directoryUri = file2.isDirectory() ? MediaStore.Files.getDirectoryUri("external") : MediaStore.Files.getContentUri("external");
            ContentValues contentValues = new ContentValues();
            String name = file2.getName();
            String strSubstring = (file.isDirectory() || -1 == name.lastIndexOf(46)) ? name : name.substring(0, name.lastIndexOf(46));
            contentValues.put("_data", file2.getAbsolutePath());
            contentValues.put("_display_name", name);
            contentValues.put("title", strSubstring);
            String absolutePath = file.getAbsolutePath();
            contentResolver.update(directoryUri, contentValues, "_data LIKE ? AND lower(_data)=lower(?)", new String[]{absolutePath, absolutePath});
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private void removeFromMediaStore(File file, boolean z2) {
        if (file != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                ContentResolver contentResolver = getContext().getContentResolver();
                Uri contentUri = MediaStore.Files.getContentUri("external");
                if (z2) {
                    String str = file.getAbsolutePath() + "/";
                    contentResolver.delete(contentUri, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)", new String[]{str + "%", Integer.toString(str.length()), str});
                }
                String absolutePath = file.getAbsolutePath();
                contentResolver.delete(contentUri, "_data LIKE ?1 AND lower(_data)=lower(?2)", new String[]{absolutePath, absolutePath});
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    private String[] resolveProjection(String[] strArr) {
        return strArr == null ? this.mDefaultProjection : strArr;
    }

    private void scanFile(File file) {
        Intent intent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE);
        intent.setData(Uri.fromFile(file));
        getContext().sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startObserving(File file, Uri uri) {
        synchronized (this.mObservers) {
            DirectoryObserver directoryObserver = this.mObservers.get(file);
            if (directoryObserver == null) {
                directoryObserver = new DirectoryObserver(file, getContext().getContentResolver(), uri);
                directoryObserver.startWatching();
                this.mObservers.put(file, directoryObserver);
            }
            DirectoryObserver.access$008(directoryObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopObserving(File file) {
        synchronized (this.mObservers) {
            DirectoryObserver directoryObserver = this.mObservers.get(file);
            if (directoryObserver == null) {
                return;
            }
            DirectoryObserver.access$010(directoryObserver);
            if (directoryObserver.mRefCount == 0) {
                this.mObservers.remove(file);
                directoryObserver.stopWatching();
            }
        }
    }

    public abstract Uri buildNotificationUri(String str);

    @Override // android.provider.DocumentsProvider
    public String createDocument(String str, String str2, String str3) {
        String strBuildValidFatFilename = FileUtils.buildValidFatFilename(str3);
        File fileForDocId = getFileForDocId(str);
        if (!fileForDocId.isDirectory()) {
            throw new IllegalArgumentException("Parent document isn't a directory");
        }
        File fileBuildUniqueFile = (strBuildValidFatFilename.endsWith(".dcf") || strBuildValidFatFilename.endsWith(".DCF")) ? FileUtils.buildUniqueFile(fileForDocId, strBuildValidFatFilename) : FileUtils.buildUniqueFile(fileForDocId, str2, strBuildValidFatFilename);
        if (DocumentsContract.Document.MIME_TYPE_DIR.equals(str2)) {
            if (!fileBuildUniqueFile.mkdir()) {
                throw new IllegalStateException(c.i("Failed to mkdir ", fileBuildUniqueFile));
            }
            String docIdForFile = getDocIdForFile(fileBuildUniqueFile);
            addFolderToMediaStore(getFileForDocId(docIdForFile, true));
            return docIdForFile;
        }
        try {
            if (fileBuildUniqueFile.createNewFile()) {
                return getDocIdForFile(fileBuildUniqueFile);
            }
            throw new IllegalStateException("Failed to touch " + fileBuildUniqueFile);
        } catch (IOException e2) {
            throw new IllegalStateException("Failed to touch " + fileBuildUniqueFile + ": " + e2);
        }
    }

    @Override // android.provider.DocumentsProvider
    public void deleteDocument(String str) {
        File fileForDocId = getFileForDocId(str);
        File fileForDocId2 = getFileForDocId(str, true);
        boolean zIsDirectory = fileForDocId.isDirectory();
        if (zIsDirectory) {
            FileUtils.deleteContents(fileForDocId);
        }
        if (!fileForDocId.delete()) {
            throw new IllegalStateException(c.i("Failed to delete ", fileForDocId));
        }
        removeFromMediaStore(fileForDocId2, zIsDirectory);
    }

    public final List<String> findDocumentPath(File file, File file2) throws FileNotFoundException {
        if (!file2.exists()) {
            throw new FileNotFoundException(file2 + " is not found.");
        }
        if (!FileUtils.contains(file, file2)) {
            throw new FileNotFoundException(file2 + " is not found under " + file);
        }
        LinkedList linkedList = new LinkedList();
        while (file2 != null && FileUtils.contains(file, file2)) {
            linkedList.addFirst(getDocIdForFile(file2));
            file2 = file2.getParentFile();
        }
        return linkedList;
    }

    public abstract String getDocIdForFile(File file);

    @Override // android.provider.DocumentsProvider
    public Bundle getDocumentMetadata(String str, String[] strArr) {
        File fileForDocId = getFileForDocId(str);
        if (!fileForDocId.exists() || !fileForDocId.isFile() || !fileForDocId.canRead()) {
            return Bundle.EMPTY;
        }
        String absolutePath = fileForDocId.getAbsolutePath();
        Bundle bundle = new Bundle();
        if (!getTypeForFile(fileForDocId).equals(MIMETYPE_JPEG) && !getTypeForFile(fileForDocId).equals(MIMETYPE_JPG)) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(absolutePath);
        try {
            MetadataReader.getMetadata(bundle, fileInputStream, getTypeForFile(fileForDocId), strArr);
            return bundle;
        } catch (IOException e2) {
            Log.e(TAG, "An error occurred retrieving the metadata", e2);
            return null;
        } finally {
            IoUtils.closeQuietly(fileInputStream);
        }
    }

    @Override // android.provider.DocumentsProvider
    public String getDocumentType(String str) {
        return getTypeForFile(getFileForDocId(str));
    }

    public final File getFileForDocId(String str) {
        return getFileForDocId(str, false);
    }

    public abstract File getFileForDocId(String str, boolean z2);

    public MatrixCursor.RowBuilder includeFile(MatrixCursor matrixCursor, String str, File file) throws Throwable {
        int i2;
        if (str == null) {
            str = getDocIdForFile(file);
        } else {
            file = getFileForDocId(str);
        }
        if (file.canWrite()) {
            i2 = file.isDirectory() ? 332 : 326;
        } else {
            i2 = 0;
        }
        String strCheckMediaMimeType = MediaStore.checkMediaMimeType(getContext(), file.getAbsolutePath());
        if (strCheckMediaMimeType == null) {
            strCheckMediaMimeType = getTypeForFile(file);
        }
        String name = file.getName();
        if (strCheckMediaMimeType.startsWith("image/") || strCheckMediaMimeType.equals("application/vnd.oma.drm.content")) {
            i2 |= 1;
        }
        MatrixCursor.RowBuilder rowBuilderNewRow = matrixCursor.newRow();
        rowBuilderNewRow.add("document_id", str);
        rowBuilderNewRow.add("_display_name", name);
        rowBuilderNewRow.add("_size", Long.valueOf(file.length()));
        rowBuilderNewRow.add("mime_type", strCheckMediaMimeType);
        rowBuilderNewRow.add("flags", Integer.valueOf(i2));
        long jLastModified = file.lastModified();
        if (jLastModified > 31536000000L) {
            rowBuilderNewRow.add("last_modified", Long.valueOf(jLastModified));
        }
        return rowBuilderNewRow;
    }

    @Override // android.provider.DocumentsProvider
    public boolean isChildDocument(String str, String str2) {
        try {
            return FileUtils.contains(getFileForDocId(str).getCanonicalFile(), getFileForDocId(str2).getCanonicalFile());
        } catch (IOException e2) {
            StringBuilder sbW = c.w("Failed to determine if ", str2, " is child of ", str, ": ");
            sbW.append(e2);
            throw new IllegalArgumentException(sbW.toString());
        }
    }

    @Override // android.provider.DocumentsProvider
    public String moveDocument(String str, String str2, String str3) {
        File fileForDocId = getFileForDocId(str);
        File file = new File(getFileForDocId(str3), fileForDocId.getName());
        File fileForDocId2 = getFileForDocId(str, true);
        if (file.exists()) {
            throw new IllegalStateException(c.i("Already exists ", file));
        }
        if (!fileForDocId.renameTo(file)) {
            throw new IllegalStateException(c.i("Failed to move to ", file));
        }
        String docIdForFile = getDocIdForFile(file);
        moveInMediaStore(fileForDocId2, getFileForDocId(docIdForFile, true));
        return docIdForFile;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        throw new UnsupportedOperationException("Subclass should override this and call onCreate(defaultDocumentProjection)");
    }

    @Override // android.provider.DocumentsProvider
    public ParcelFileDescriptor openDocument(String str, String str2, CancellationSignal cancellationSignal) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        File fileForDocId2 = getFileForDocId(str, true);
        int mode = ParcelFileDescriptor.parseMode(str2);
        if (mode == 268435456 || fileForDocId2 == null) {
            return ParcelFileDescriptor.open(fileForDocId, mode);
        }
        try {
            return ParcelFileDescriptor.open(fileForDocId, mode, this.mHandler, new android.widget.c(this, fileForDocId2));
        } catch (IOException e2) {
            throw new FileNotFoundException("Failed to open for writing: " + e2);
        }
    }

    @Override // android.provider.DocumentsProvider
    public AssetFileDescriptor openDocumentThumbnail(String str, Point point, CancellationSignal cancellationSignal) {
        return DocumentsContract.openImageThumbnail(getFileForDocId(str));
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryChildDocuments(String str, String[] strArr, String str2) throws Throwable {
        File fileForDocId = getFileForDocId(str);
        DirectoryCursor directoryCursor = new DirectoryCursor(resolveProjection(strArr), str, fileForDocId);
        File[] fileArrListFiles = fileForDocId.listFiles();
        for (File file : fileArrListFiles) {
            includeFile(directoryCursor, null, file);
        }
        return directoryCursor;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryDocument(String str, String[] strArr) throws Throwable {
        MatrixCursor matrixCursor = new MatrixCursor(resolveProjection(strArr));
        includeFile(matrixCursor, str, null);
        return matrixCursor;
    }

    public final Cursor querySearchDocuments(File file, String str, String[] strArr, Set<String> set) throws Throwable {
        String lowerCase = str.toLowerCase();
        MatrixCursor matrixCursor = new MatrixCursor(resolveProjection(strArr));
        LinkedList linkedList = new LinkedList();
        linkedList.add(file);
        while (!linkedList.isEmpty() && matrixCursor.getCount() < 24) {
            File file2 = (File) linkedList.removeFirst();
            if (file2.isDirectory()) {
                for (File file3 : file2.listFiles()) {
                    linkedList.add(file3);
                }
            }
            if (file2.getName().toLowerCase().contains(lowerCase) && !set.contains(file2.getAbsolutePath())) {
                includeFile(matrixCursor, null, file2);
            }
        }
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public String renameDocument(String str, String str2) {
        String strBuildValidFatFilename = FileUtils.buildValidFatFilename(str2);
        File fileForDocId = getFileForDocId(str);
        File fileBuildUniqueFile = FileUtils.buildUniqueFile(fileForDocId.getParentFile(), strBuildValidFatFilename);
        File fileForDocId2 = getFileForDocId(str, true);
        if (!fileForDocId.renameTo(fileBuildUniqueFile)) {
            throw new IllegalStateException(c.i("Failed to rename to ", fileBuildUniqueFile));
        }
        String docIdForFile = getDocIdForFile(fileBuildUniqueFile);
        moveInMediaStore(fileForDocId2, getFileForDocId(docIdForFile, true));
        if (TextUtils.equals(str, docIdForFile)) {
            return null;
        }
        return docIdForFile;
    }

    public void onCreate(String[] strArr) {
        this.mHandler = new Handler();
        this.mDefaultProjection = strArr;
    }
}
