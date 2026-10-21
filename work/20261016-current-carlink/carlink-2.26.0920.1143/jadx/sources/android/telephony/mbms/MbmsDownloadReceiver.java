package android.telephony.mbms;

import android.app.m;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.telephony.MbmsDownloadSession;
import android.telephony.mbms.vendor.VendorUtils;
import android.util.Log;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class MbmsDownloadReceiver extends BroadcastReceiver {
    public static final String DOWNLOAD_TOKEN_SUFFIX = ".download_token";
    private static final String LOG_TAG = "MbmsDownloadReceiver";
    private static final int MAX_TEMP_FILE_RETRIES = 5;
    public static final String MBMS_FILE_PROVIDER_META_DATA_KEY = "mbms-file-provider-authority";
    public static final int RESULT_APP_NOTIFICATION_ERROR = 6;
    public static final int RESULT_BAD_TEMP_FILE_ROOT = 3;
    public static final int RESULT_DOWNLOAD_FINALIZATION_ERROR = 4;
    public static final int RESULT_INVALID_ACTION = 1;
    public static final int RESULT_MALFORMED_INTENT = 2;
    public static final int RESULT_OK = 0;
    public static final int RESULT_TEMP_FILE_GENERATION_ERROR = 5;
    private static final String TEMP_FILE_STAGING_LOCATION = "staged_completed_files";
    private static final String TEMP_FILE_SUFFIX = ".embms.temp";
    private String mFileProviderAuthorityCache = null;
    private String mMiddlewarePackageNameCache = null;

    private void cleanupPostMove(Context context, Intent intent) {
        DownloadRequest downloadRequest = (DownloadRequest) intent.getParcelableExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_REQUEST);
        if (downloadRequest == null) {
            Log.w(LOG_TAG, "Intent does not include a DownloadRequest. Ignoring.");
            return;
        }
        ArrayList<Uri> parcelableArrayListExtra = intent.getParcelableArrayListExtra(VendorUtils.EXTRA_TEMP_LIST);
        if (parcelableArrayListExtra == null) {
            return;
        }
        for (Uri uri : parcelableArrayListExtra) {
            if (verifyTempFilePath(context, downloadRequest.getFileServiceId(), uri)) {
                new File(uri.getSchemeSpecificPart()).delete();
            }
        }
    }

    private void cleanupTempFiles(Context context, Intent intent) {
        File embmsTempFileDirForService = MbmsUtils.getEmbmsTempFileDirForService(context, intent.getStringExtra(VendorUtils.EXTRA_SERVICE_ID));
        final ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(VendorUtils.EXTRA_TEMP_FILES_IN_USE);
        for (File file : embmsTempFileDirForService.listFiles(new FileFilter() { // from class: android.telephony.mbms.MbmsDownloadReceiver.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (!canonicalFile.getName().endsWith(MbmsDownloadReceiver.TEMP_FILE_SUFFIX)) {
                        return false;
                    }
                    return !parcelableArrayListExtra.contains(Uri.fromFile(canonicalFile));
                } catch (IOException unused) {
                    Log.w(MbmsDownloadReceiver.LOG_TAG, "Got IOException canonicalizing " + file2 + ", not deleting.");
                    return false;
                }
            }
        })) {
            file.delete();
        }
    }

    private ArrayList<UriPathPair> generateFreshTempFiles(Context context, String str, int i2) {
        File embmsTempFileDirForService = MbmsUtils.getEmbmsTempFileDirForService(context, str);
        if (!embmsTempFileDirForService.exists()) {
            embmsTempFileDirForService.mkdirs();
        }
        ArrayList<UriPathPair> arrayList = new ArrayList<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            File fileGenerateSingleTempFile = generateSingleTempFile(embmsTempFileDirForService);
            if (fileGenerateSingleTempFile == null) {
                setResultCode(5);
                Log.w(LOG_TAG, "Failed to generate a temp file. Moving on.");
            } else {
                Uri uriFromFile = Uri.fromFile(fileGenerateSingleTempFile);
                Uri uriForFile = MbmsTempFileProvider.getUriForFile(context, getFileProviderAuthorityCached(context), fileGenerateSingleTempFile);
                context.grantUriPermission(getMiddlewarePackageCached(context), uriForFile, 3);
                arrayList.add(new UriPathPair(uriFromFile, uriForFile));
            }
        }
        return arrayList;
    }

    private static File generateSingleTempFile(File file) {
        int i2 = 0;
        while (i2 < 5) {
            i2++;
            File file2 = new File(file, UUID.randomUUID() + TEMP_FILE_SUFFIX);
            try {
                if (file2.createNewFile()) {
                    return file2.getCanonicalFile();
                }
                continue;
            } catch (IOException unused) {
            }
        }
        return null;
    }

    private void generateTempFiles(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(VendorUtils.EXTRA_SERVICE_ID);
        if (stringExtra == null) {
            Log.w(LOG_TAG, "Temp file request did not include the associated service id. Ignoring.");
            setResultCode(2);
            return;
        }
        int intExtra = intent.getIntExtra(VendorUtils.EXTRA_FD_COUNT, 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(VendorUtils.EXTRA_PAUSED_LIST);
        if (intExtra == 0 && (parcelableArrayListExtra == null || parcelableArrayListExtra.size() == 0)) {
            Log.i(LOG_TAG, "No temp files actually requested. Ending.");
            setResultCode(0);
            setResultExtras(Bundle.EMPTY);
            return;
        }
        ArrayList<UriPathPair> arrayListGenerateFreshTempFiles = generateFreshTempFiles(context, stringExtra, intExtra);
        ArrayList<UriPathPair> arrayListGenerateUrisForPausedFiles = generateUrisForPausedFiles(context, stringExtra, parcelableArrayListExtra);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(VendorUtils.EXTRA_FREE_URI_LIST, arrayListGenerateFreshTempFiles);
        bundle.putParcelableArrayList(VendorUtils.EXTRA_PAUSED_URI_LIST, arrayListGenerateUrisForPausedFiles);
        setResultCode(0);
        setResultExtras(bundle);
    }

    private ArrayList<UriPathPair> generateUrisForPausedFiles(Context context, String str, List<Uri> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<UriPathPair> arrayList = new ArrayList<>(list.size());
        for (Uri uri : list) {
            if (verifyTempFilePath(context, str, uri)) {
                File file = new File(uri.getSchemeSpecificPart());
                if (file.exists()) {
                    Uri uriForFile = MbmsTempFileProvider.getUriForFile(context, getFileProviderAuthorityCached(context), file);
                    context.grantUriPermission(getMiddlewarePackageCached(context), uriForFile, 3);
                    arrayList.add(new UriPathPair(uri, uriForFile));
                } else {
                    Log.w(LOG_TAG, "Supplied file " + uri + " does not exist.");
                    setResultCode(5);
                }
            } else {
                Log.w(LOG_TAG, "Supplied file " + uri + " is not a valid temp file to resume");
                setResultCode(5);
            }
        }
        return arrayList;
    }

    private static String getFileProviderAuthority(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                throw new RuntimeException("App must declare the file provider authority as metadata in the manifest.");
            }
            String string = bundle.getString(MBMS_FILE_PROVIDER_META_DATA_KEY);
            if (string != null) {
                return string;
            }
            throw new RuntimeException("App must declare the file provider authority as metadata in the manifest.");
        } catch (PackageManager.NameNotFoundException unused) {
            throw new RuntimeException("Package manager couldn't find " + context.getPackageName());
        }
    }

    private String getFileProviderAuthorityCached(Context context) {
        String str = this.mFileProviderAuthorityCache;
        if (str != null) {
            return str;
        }
        String fileProviderAuthority = getFileProviderAuthority(context);
        this.mFileProviderAuthorityCache = fileProviderAuthority;
        return fileProviderAuthority;
    }

    private String getMiddlewarePackageCached(Context context) {
        if (this.mMiddlewarePackageNameCache == null) {
            this.mMiddlewarePackageNameCache = MbmsUtils.getMiddlewareServiceInfo(context, MbmsDownloadSession.MBMS_DOWNLOAD_SERVICE_ACTION).packageName;
        }
        return this.mMiddlewarePackageNameCache;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x007f A[Catch: IOException -> 0x007b, TRY_LEAVE, TryCatch #8 {IOException -> 0x007b, blocks: (B:35:0x0077, B:39:0x007f), top: B:59:0x0077 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x009e A[Catch: IOException -> 0x009a, TRY_LEAVE, TryCatch #0 {IOException -> 0x009a, blocks: (B:45:0x0096, B:49:0x009e), top: B:53:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        android.util.Log.w(android.telephony.mbms.MbmsDownloadReceiver.LOG_TAG, "Error closing streams: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean manualMove(java.io.File r8, java.io.File r9) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "Error closing streams: "
            java.lang.String r1 = "MbmsDownloadReceiver"
            r2 = 0
            r3 = 0
            boolean r4 = r9.exists()     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L56
            if (r4 != 0) goto Lf
            r9.createNewFile()     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L56
        Lf:
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L56
            r4.<init>(r8)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L56
            java.io.FileOutputStream r8 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4e
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L49 java.io.IOException -> L4e
            r3 = 2048(0x800, float:2.87E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L44
        L1d:
            int r5 = r4.read(r3)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L44
            r8.write(r3, r2, r5)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L44
            if (r5 > 0) goto L1d
            r4.close()     // Catch: java.io.IOException -> L2d
            r8.close()     // Catch: java.io.IOException -> L2d
            goto L3d
        L2d:
            r8 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>(r0)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            android.util.Log.w(r1, r8)
        L3d:
            r8 = 1
            return r8
        L3f:
            r9 = move-exception
            r3 = r4
            r4 = r8
            r8 = r9
            goto L94
        L44:
            r3 = move-exception
            r7 = r4
            r4 = r8
            r8 = r3
            goto L51
        L49:
            r8 = move-exception
            r7 = r4
            r4 = r3
            r3 = r7
            goto L94
        L4e:
            r8 = move-exception
            r7 = r4
            r4 = r3
        L51:
            r3 = r7
            goto L58
        L53:
            r8 = move-exception
            r4 = r3
            goto L94
        L56:
            r8 = move-exception
            r4 = r3
        L58:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L93
            r5.<init>()     // Catch: java.lang.Throwable -> L93
            java.lang.String r6 = "Manual file move failed due to exception "
            r5.append(r6)     // Catch: java.lang.Throwable -> L93
            r5.append(r8)     // Catch: java.lang.Throwable -> L93
            java.lang.String r8 = r5.toString()     // Catch: java.lang.Throwable -> L93
            android.util.Log.w(r1, r8)     // Catch: java.lang.Throwable -> L93
            boolean r8 = r9.exists()     // Catch: java.lang.Throwable -> L93
            if (r8 == 0) goto L75
            r9.delete()     // Catch: java.lang.Throwable -> L93
        L75:
            if (r3 == 0) goto L7d
            r3.close()     // Catch: java.io.IOException -> L7b
            goto L7d
        L7b:
            r8 = move-exception
            goto L83
        L7d:
            if (r4 == 0) goto L92
            r4.close()     // Catch: java.io.IOException -> L7b
            goto L92
        L83:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>(r0)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            android.util.Log.w(r1, r8)
        L92:
            return r2
        L93:
            r8 = move-exception
        L94:
            if (r3 == 0) goto L9c
            r3.close()     // Catch: java.io.IOException -> L9a
            goto L9c
        L9a:
            r9 = move-exception
            goto La2
        L9c:
            if (r4 == 0) goto Lb1
            r4.close()     // Catch: java.io.IOException -> L9a
            goto Lb1
        La2:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r0)
            r2.append(r9)
            java.lang.String r9 = r2.toString()
            android.util.Log.w(r1, r9)
        Lb1:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: android.telephony.mbms.MbmsDownloadReceiver.manualMove(java.io.File, java.io.File):boolean");
    }

    private void moveDownloadedFile(Context context, Intent intent) {
        DownloadRequest downloadRequest = (DownloadRequest) intent.getParcelableExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_REQUEST);
        Intent intentForApp = downloadRequest.getIntentForApp();
        if (intentForApp == null) {
            Log.i(LOG_TAG, "Malformed app notification intent");
            setResultCode(6);
            return;
        }
        int intExtra = intent.getIntExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_RESULT, 2);
        intentForApp.putExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_RESULT, intExtra);
        if (intExtra != 1) {
            Log.i(LOG_TAG, "Download request indicated a failed download. Aborting.");
            context.sendBroadcast(intentForApp);
            return;
        }
        Uri uri = (Uri) intent.getParcelableExtra(VendorUtils.EXTRA_FINAL_URI);
        if (!verifyTempFilePath(context, downloadRequest.getFileServiceId(), uri)) {
            Log.w(LOG_TAG, "Download result specified an invalid temp file " + uri);
            setResultCode(4);
            return;
        }
        Parcelable parcelable = (FileInfo) intent.getParcelableExtra(MbmsDownloadSession.EXTRA_MBMS_FILE_INFO);
        try {
            intentForApp.putExtra(MbmsDownloadSession.EXTRA_MBMS_COMPLETED_FILE_URI, stageTempFile(uri, FileSystems.getDefault().getPath(MbmsTempFileProvider.getEmbmsTempFileDir(context).getPath(), TEMP_FILE_STAGING_LOCATION)));
            intentForApp.putExtra(MbmsDownloadSession.EXTRA_MBMS_FILE_INFO, parcelable);
            intentForApp.putExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_REQUEST, downloadRequest);
            context.sendBroadcast(intentForApp);
            setResultCode(0);
        } catch (IOException unused) {
            Log.w(LOG_TAG, "Failed to move temp file to final destination");
            setResultCode(4);
        }
    }

    private static Uri stageTempFile(Uri uri, Path path) throws IOException {
        if (ContentResolver.SCHEME_FILE.equals(uri.getScheme())) {
            Path path2 = FileSystems.getDefault().getPath(uri.getPath(), new String[0]);
            if (!Files.isDirectory(path, new LinkOption[0])) {
                Files.createDirectory(path, new FileAttribute[0]);
            }
            return Uri.fromFile(Files.move(path2, path.resolve(path2.getFileName()), new CopyOption[0]).toFile());
        }
        Log.w(LOG_TAG, "Moving source uri " + uri + " does not have a file scheme");
        return null;
    }

    private boolean verifyIntentContents(Context context, Intent intent) {
        if (VendorUtils.ACTION_DOWNLOAD_RESULT_INTERNAL.equals(intent.getAction())) {
            if (!intent.hasExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_RESULT)) {
                Log.w(LOG_TAG, "Download result did not include a result code. Ignoring.");
                return false;
            }
            if (1 != intent.getIntExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_RESULT, 2)) {
                return true;
            }
            if (!intent.hasExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_REQUEST)) {
                Log.w(LOG_TAG, "Download result did not include the associated request. Ignoring.");
                return false;
            }
            if (!intent.hasExtra(VendorUtils.EXTRA_TEMP_FILE_ROOT)) {
                Log.w(LOG_TAG, "Download result did not include the temp file root. Ignoring.");
                return false;
            }
            if (!intent.hasExtra(MbmsDownloadSession.EXTRA_MBMS_FILE_INFO)) {
                Log.w(LOG_TAG, "Download result did not include the associated file info. Ignoring.");
                return false;
            }
            if (!intent.hasExtra(VendorUtils.EXTRA_FINAL_URI)) {
                Log.w(LOG_TAG, "Download result did not include the path to the final temp file. Ignoring.");
                return false;
            }
            DownloadRequest downloadRequest = (DownloadRequest) intent.getParcelableExtra(MbmsDownloadSession.EXTRA_MBMS_DOWNLOAD_REQUEST);
            File file = new File(MbmsUtils.getEmbmsTempFileDirForService(context, downloadRequest.getFileServiceId()), downloadRequest.getHash() + DOWNLOAD_TOKEN_SUFFIX);
            if (!file.exists()) {
                Log.w(LOG_TAG, "Supplied download request does not match a token that we have. Expected " + file);
                return false;
            }
        } else if (VendorUtils.ACTION_FILE_DESCRIPTOR_REQUEST.equals(intent.getAction())) {
            if (!intent.hasExtra(VendorUtils.EXTRA_SERVICE_ID)) {
                Log.w(LOG_TAG, "Temp file request did not include the associated service id. Ignoring.");
                return false;
            }
            if (!intent.hasExtra(VendorUtils.EXTRA_TEMP_FILE_ROOT)) {
                Log.w(LOG_TAG, "Download result did not include the temp file root. Ignoring.");
                return false;
            }
        } else if (VendorUtils.ACTION_CLEANUP.equals(intent.getAction())) {
            if (!intent.hasExtra(VendorUtils.EXTRA_SERVICE_ID)) {
                Log.w(LOG_TAG, "Cleanup request did not include the associated service id. Ignoring.");
                return false;
            }
            if (!intent.hasExtra(VendorUtils.EXTRA_TEMP_FILE_ROOT)) {
                Log.w(LOG_TAG, "Cleanup request did not include the temp file root. Ignoring.");
                return false;
            }
            if (!intent.hasExtra(VendorUtils.EXTRA_TEMP_FILES_IN_USE)) {
                Log.w(LOG_TAG, "Cleanup request did not include the list of temp files in use. Ignoring.");
                return false;
            }
        }
        return true;
    }

    private static boolean verifyTempFilePath(Context context, String str, Uri uri) {
        if (!ContentResolver.SCHEME_FILE.equals(uri.getScheme())) {
            Log.w(LOG_TAG, "Uri " + uri + " does not have a file scheme");
            return false;
        }
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        File file = new File(schemeSpecificPart);
        if (file.exists()) {
            return MbmsUtils.isContainedIn(MbmsUtils.getEmbmsTempFileDirForService(context, str), file);
        }
        m.s("File at ", schemeSpecificPart, " does not exist.", LOG_TAG);
        return false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!verifyIntentContents(context, intent)) {
            setResultCode(2);
            return;
        }
        if (!Objects.equals(intent.getStringExtra(VendorUtils.EXTRA_TEMP_FILE_ROOT), MbmsTempFileProvider.getEmbmsTempFileDir(context).getPath())) {
            setResultCode(3);
            return;
        }
        if (VendorUtils.ACTION_DOWNLOAD_RESULT_INTERNAL.equals(intent.getAction())) {
            moveDownloadedFile(context, intent);
            cleanupPostMove(context, intent);
        } else if (VendorUtils.ACTION_FILE_DESCRIPTOR_REQUEST.equals(intent.getAction())) {
            generateTempFiles(context, intent);
        } else if (VendorUtils.ACTION_CLEANUP.equals(intent.getAction())) {
            cleanupTempFiles(context, intent);
        } else {
            setResultCode(1);
        }
    }
}
