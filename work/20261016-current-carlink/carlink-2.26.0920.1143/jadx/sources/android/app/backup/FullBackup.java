package android.app.backup;

import android.app.m;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.system.ErrnoException;
import android.system.Os;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class FullBackup {
    public static final String APK_TREE_TOKEN = "a";
    public static final String APPS_PREFIX = "apps/";
    public static final String CACHE_TREE_TOKEN = "c";
    public static final String CONF_TOKEN_INTENT_EXTRA = "conftoken";
    public static final String DATABASE_TREE_TOKEN = "db";
    public static final String DEVICE_CACHE_TREE_TOKEN = "d_c";
    public static final String DEVICE_DATABASE_TREE_TOKEN = "d_db";
    public static final String DEVICE_FILES_TREE_TOKEN = "d_f";
    public static final String DEVICE_NO_BACKUP_TREE_TOKEN = "d_nb";
    public static final String DEVICE_ROOT_TREE_TOKEN = "d_r";
    public static final String DEVICE_SHAREDPREFS_TREE_TOKEN = "d_sp";
    public static final String FILES_TREE_TOKEN = "f";
    public static final String FULL_BACKUP_INTENT_ACTION = "fullback";
    public static final String FULL_RESTORE_INTENT_ACTION = "fullrest";
    public static final String KEY_VALUE_DATA_TOKEN = "k";
    public static final String MANAGED_EXTERNAL_TREE_TOKEN = "ef";
    public static final String NO_BACKUP_TREE_TOKEN = "nb";
    public static final String OBB_TREE_TOKEN = "obb";
    public static final String ROOT_TREE_TOKEN = "r";
    public static final String SHAREDPREFS_TREE_TOKEN = "sp";
    public static final String SHARED_PREFIX = "shared/";
    public static final String SHARED_STORAGE_TOKEN = "shared";
    static final String TAG = "FullBackup";
    static final String TAG_XML_PARSER = "BackupXmlParserLogging";
    private static final Map<String, BackupScheme> kPackageBackupSchemeMap = new ArrayMap();

    public static class BackupScheme {
        private final File CACHE_DIR;
        private final File DATABASE_DIR;
        private final File DEVICE_CACHE_DIR;
        private final File DEVICE_DATABASE_DIR;
        private final File DEVICE_FILES_DIR;
        private final File DEVICE_NOBACKUP_DIR;
        private final File DEVICE_ROOT_DIR;
        private final File DEVICE_SHAREDPREF_DIR;
        private final File EXTERNAL_DIR;
        private final File FILES_DIR;
        private final File NOBACKUP_DIR;
        private final File ROOT_DIR;
        private final File SHAREDPREF_DIR;
        ArraySet<String> mExcludes;
        final int mFullBackupContent;
        Map<String, Set<String>> mIncludes;
        final PackageManager mPackageManager;
        final String mPackageName;
        final StorageManager mStorageManager;
        private StorageVolume[] mVolumes = null;

        public BackupScheme(Context context) {
            this.mFullBackupContent = context.getApplicationInfo().fullBackupContent;
            this.mStorageManager = (StorageManager) context.getSystemService(Context.STORAGE_SERVICE);
            this.mPackageManager = context.getPackageManager();
            this.mPackageName = context.getPackageName();
            Context contextCreateCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
            this.FILES_DIR = contextCreateCredentialProtectedStorageContext.getFilesDir();
            this.DATABASE_DIR = contextCreateCredentialProtectedStorageContext.getDatabasePath("foo").getParentFile();
            this.ROOT_DIR = contextCreateCredentialProtectedStorageContext.getDataDir();
            this.SHAREDPREF_DIR = contextCreateCredentialProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile();
            this.CACHE_DIR = contextCreateCredentialProtectedStorageContext.getCacheDir();
            this.NOBACKUP_DIR = contextCreateCredentialProtectedStorageContext.getNoBackupFilesDir();
            Context contextCreateDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            this.DEVICE_FILES_DIR = contextCreateDeviceProtectedStorageContext.getFilesDir();
            this.DEVICE_DATABASE_DIR = contextCreateDeviceProtectedStorageContext.getDatabasePath("foo").getParentFile();
            this.DEVICE_ROOT_DIR = contextCreateDeviceProtectedStorageContext.getDataDir();
            this.DEVICE_SHAREDPREF_DIR = contextCreateDeviceProtectedStorageContext.getSharedPreferencesPath("foo").getParentFile();
            this.DEVICE_CACHE_DIR = contextCreateDeviceProtectedStorageContext.getCacheDir();
            this.DEVICE_NOBACKUP_DIR = contextCreateDeviceProtectedStorageContext.getNoBackupFilesDir();
            if (Process.myUid() != 1000) {
                this.EXTERNAL_DIR = context.getExternalFilesDir(null);
            } else {
                this.EXTERNAL_DIR = null;
            }
        }

        private File extractCanonicalFile(File file, String str) {
            if (str == null) {
                str = "";
            }
            if (str.contains("..")) {
                if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                    Log.v(FullBackup.TAG_XML_PARSER, "...resolved \"" + file.getPath() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str + "\", but the \"..\" path is not permitted; skipping.");
                }
                return null;
            }
            if (!str.contains("//")) {
                return new File(file, str);
            }
            if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                Log.v(FullBackup.TAG_XML_PARSER, "...resolved \"" + file.getPath() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str + "\", which contains the invalid \"//\" sequence; skipping.");
            }
            return null;
        }

        private File getDirectoryForCriteriaDomain(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (ContentResolver.SCHEME_FILE.equals(str)) {
                return this.FILES_DIR;
            }
            if ("database".equals(str)) {
                return this.DATABASE_DIR;
            }
            if ("root".equals(str)) {
                return this.ROOT_DIR;
            }
            if ("sharedpref".equals(str)) {
                return this.SHAREDPREF_DIR;
            }
            if ("device_file".equals(str)) {
                return this.DEVICE_FILES_DIR;
            }
            if ("device_database".equals(str)) {
                return this.DEVICE_DATABASE_DIR;
            }
            if ("device_root".equals(str)) {
                return this.DEVICE_ROOT_DIR;
            }
            if ("device_sharedpref".equals(str)) {
                return this.DEVICE_SHAREDPREF_DIR;
            }
            if ("external".equals(str)) {
                return this.EXTERNAL_DIR;
            }
            return null;
        }

        private String getTokenForXmlDomain(String str) {
            if ("root".equals(str)) {
                return FullBackup.ROOT_TREE_TOKEN;
            }
            if (ContentResolver.SCHEME_FILE.equals(str)) {
                return FullBackup.FILES_TREE_TOKEN;
            }
            if ("database".equals(str)) {
                return FullBackup.DATABASE_TREE_TOKEN;
            }
            if ("sharedpref".equals(str)) {
                return FullBackup.SHAREDPREFS_TREE_TOKEN;
            }
            if ("device_root".equals(str)) {
                return FullBackup.DEVICE_ROOT_TREE_TOKEN;
            }
            if ("device_file".equals(str)) {
                return FullBackup.DEVICE_FILES_TREE_TOKEN;
            }
            if ("device_database".equals(str)) {
                return FullBackup.DEVICE_DATABASE_TREE_TOKEN;
            }
            if ("device_sharedpref".equals(str)) {
                return FullBackup.DEVICE_SHAREDPREFS_TREE_TOKEN;
            }
            if ("external".equals(str)) {
                return FullBackup.MANAGED_EXTERNAL_TREE_TOKEN;
            }
            return null;
        }

        private StorageVolume[] getVolumeList() {
            StorageManager storageManager = this.mStorageManager;
            if (storageManager == null) {
                Log.e(FullBackup.TAG, "Unable to access Storage Manager");
            } else if (this.mVolumes == null) {
                this.mVolumes = storageManager.getVolumeList();
            }
            return this.mVolumes;
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0048 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void maybeParseBackupSchemeLocked() {
            /*
                r3 = this;
                android.util.ArrayMap r0 = new android.util.ArrayMap
                r0.<init>()
                r3.mIncludes = r0
                android.util.ArraySet r0 = new android.util.ArraySet
                r0.<init>()
                r3.mExcludes = r0
                int r0 = r3.mFullBackupContent
                r1 = 2
                java.lang.String r2 = "BackupXmlParserLogging"
                if (r0 != 0) goto L21
                boolean r0 = android.util.Log.isLoggable(r2, r1)
                if (r0 == 0) goto L47
                java.lang.String r0 = "android:fullBackupContent - \"true\""
                android.util.Log.v(r2, r0)
                goto L47
            L21:
                boolean r0 = android.util.Log.isLoggable(r2, r1)
                if (r0 == 0) goto L2c
                java.lang.String r0 = "android:fullBackupContent - found xml resource"
                android.util.Log.v(r2, r0)
            L2c:
                r0 = 0
                android.content.pm.PackageManager r1 = r3.mPackageManager     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                java.lang.String r2 = r3.mPackageName     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                android.content.res.Resources r1 = r1.getResourcesForApplication(r2)     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                int r2 = r3.mFullBackupContent     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                android.content.res.XmlResourceParser r0 = r1.getXml(r2)     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                android.util.ArraySet<java.lang.String> r1 = r3.mExcludes     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                java.util.Map<java.lang.String, java.util.Set<java.lang.String>> r2 = r3.mIncludes     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                r3.parseBackupSchemeFromXmlLocked(r0, r1, r2)     // Catch: java.lang.Throwable -> L48 android.content.pm.PackageManager.NameNotFoundException -> L4a
                if (r0 == 0) goto L47
                r0.close()
            L47:
                return
            L48:
                r1 = move-exception
                goto L51
            L4a:
                r1 = move-exception
                java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L48
                r2.<init>(r1)     // Catch: java.lang.Throwable -> L48
                throw r2     // Catch: java.lang.Throwable -> L48
            L51:
                if (r0 == 0) goto L56
                r0.close()
            L56:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: android.app.backup.FullBackup.BackupScheme.maybeParseBackupSchemeLocked():void");
        }

        private Set<String> parseCurrentTagForDomain(XmlPullParser xmlPullParser, Set<String> set, Map<String, Set<String>> map, String str) throws XmlPullParserException {
            if ("include".equals(xmlPullParser.getName())) {
                String tokenForXmlDomain = getTokenForXmlDomain(str);
                Set<String> set2 = map.get(tokenForXmlDomain);
                if (set2 != null) {
                    return set2;
                }
                ArraySet arraySet = new ArraySet();
                map.put(tokenForXmlDomain, arraySet);
                return arraySet;
            }
            if ("exclude".equals(xmlPullParser.getName())) {
                return set;
            }
            if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                Log.v(FullBackup.TAG_XML_PARSER, "Invalid tag found in xml \"" + xmlPullParser.getName() + "\"; aborting operation.");
            }
            throw new XmlPullParserException("Unrecognised tag in backup criteria xml (" + xmlPullParser.getName() + ")");
        }

        private String sharedDomainToPath(String str) {
            String strSubstring = str.substring(7);
            StorageVolume[] volumeList = getVolumeList();
            int i2 = Integer.parseInt(strSubstring);
            if (i2 < this.mVolumes.length) {
                return volumeList[i2].getPathFile().getCanonicalPath();
            }
            return null;
        }

        private void validateInnerTagContents(XmlPullParser xmlPullParser) throws XmlPullParserException {
            if (xmlPullParser.getAttributeCount() > 2) {
                throw new XmlPullParserException("At most 2 tag attributes allowed for \"" + xmlPullParser.getName() + "\" tag (\"domain\" & \"path\".");
            }
            if ("include".equals(xmlPullParser.getName()) || "exclude".equals(xmlPullParser.getName())) {
                return;
            }
            throw new XmlPullParserException("A valid tag is one of \"<include/>\" or \"<exclude/>. You provided \"" + xmlPullParser.getName() + "\"");
        }

        public boolean isFullBackupContentEnabled() {
            if (this.mFullBackupContent >= 0) {
                return true;
            }
            if (!Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                return false;
            }
            Log.v(FullBackup.TAG_XML_PARSER, "android:fullBackupContent - \"false\"");
            return false;
        }

        public synchronized ArraySet<String> maybeParseAndGetCanonicalExcludePaths() {
            if (this.mExcludes == null) {
                maybeParseBackupSchemeLocked();
            }
            return this.mExcludes;
        }

        public synchronized Map<String, Set<String>> maybeParseAndGetCanonicalIncludePaths() {
            if (this.mIncludes == null) {
                maybeParseBackupSchemeLocked();
            }
            return this.mIncludes;
        }

        public void parseBackupSchemeFromXmlLocked(XmlPullParser xmlPullParser, Set<String> set, Map<String, Set<String>> map) throws XmlPullParserException, IOException {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 2) {
                eventType = xmlPullParser.next();
            }
            if (!"full-backup-content".equals(xmlPullParser.getName())) {
                throw new XmlPullParserException("Xml file didn't start with correct tag (<full-backup-content>). Found \"" + xmlPullParser.getName() + "\"");
            }
            if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                Log.v(FullBackup.TAG_XML_PARSER, "\n");
                Log.v(FullBackup.TAG_XML_PARSER, "====================================================");
                Log.v(FullBackup.TAG_XML_PARSER, "Found valid fullBackupContent; parsing xml resource.");
                Log.v(FullBackup.TAG_XML_PARSER, "====================================================");
                Log.v(FullBackup.TAG_XML_PARSER, "");
            }
            while (true) {
                int next = xmlPullParser.next();
                if (next == 1) {
                    break;
                }
                if (next == 2) {
                    validateInnerTagContents(xmlPullParser);
                    String attributeValue = xmlPullParser.getAttributeValue(null, "domain");
                    File directoryForCriteriaDomain = getDirectoryForCriteriaDomain(attributeValue);
                    if (directoryForCriteriaDomain != null) {
                        File fileExtractCanonicalFile = extractCanonicalFile(directoryForCriteriaDomain, xmlPullParser.getAttributeValue(null, "path"));
                        if (fileExtractCanonicalFile != null) {
                            Set<String> currentTagForDomain = parseCurrentTagForDomain(xmlPullParser, set, map, attributeValue);
                            currentTagForDomain.add(fileExtractCanonicalFile.getCanonicalPath());
                            if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                                Log.v(FullBackup.TAG_XML_PARSER, "...parsed " + fileExtractCanonicalFile.getCanonicalPath() + " for domain \"" + attributeValue + "\"");
                            }
                            if ("database".equals(attributeValue) && !fileExtractCanonicalFile.isDirectory()) {
                                String str = fileExtractCanonicalFile.getCanonicalPath() + "-journal";
                                currentTagForDomain.add(str);
                                if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                                    Log.v(FullBackup.TAG_XML_PARSER, "...automatically generated " + str + ". Ignore if nonexistent.");
                                }
                                String str2 = fileExtractCanonicalFile.getCanonicalPath() + "-wal";
                                currentTagForDomain.add(str2);
                                if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                                    Log.v(FullBackup.TAG_XML_PARSER, "...automatically generated " + str2 + ". Ignore if nonexistent.");
                                }
                            }
                            if ("sharedpref".equals(attributeValue) && !fileExtractCanonicalFile.isDirectory() && !fileExtractCanonicalFile.getCanonicalPath().endsWith(".xml")) {
                                String str3 = fileExtractCanonicalFile.getCanonicalPath() + ".xml";
                                currentTagForDomain.add(str3);
                                if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                                    Log.v(FullBackup.TAG_XML_PARSER, "...automatically generated " + str3 + ". Ignore if nonexistent.");
                                }
                            }
                        }
                    } else if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                        Log.v(FullBackup.TAG_XML_PARSER, "...parsing \"" + xmlPullParser.getName() + "\": domain=\"" + attributeValue + "\" invalid; skipping");
                    }
                }
            }
            if (Log.isLoggable(FullBackup.TAG_XML_PARSER, 2)) {
                Log.v(FullBackup.TAG_XML_PARSER, "\n");
                Log.v(FullBackup.TAG_XML_PARSER, "Xml resource parsing complete.");
                Log.v(FullBackup.TAG_XML_PARSER, "Final tally.");
                Log.v(FullBackup.TAG_XML_PARSER, "Includes:");
                if (map.isEmpty()) {
                    Log.v(FullBackup.TAG_XML_PARSER, "  ...nothing specified (This means the entirety of app data minus excludes)");
                } else {
                    for (Map.Entry<String, Set<String>> entry : map.entrySet()) {
                        Log.v(FullBackup.TAG_XML_PARSER, "  domain=" + entry.getKey());
                        Iterator<String> it = entry.getValue().iterator();
                        while (it.hasNext()) {
                            Log.v(FullBackup.TAG_XML_PARSER, "  " + it.next());
                        }
                    }
                }
                Log.v(FullBackup.TAG_XML_PARSER, "Excludes:");
                if (set.isEmpty()) {
                    Log.v(FullBackup.TAG_XML_PARSER, "  ...nothing to exclude.");
                } else {
                    Iterator<String> it2 = set.iterator();
                    while (it2.hasNext()) {
                        Log.v(FullBackup.TAG_XML_PARSER, "  " + it2.next());
                    }
                }
                Log.v(FullBackup.TAG_XML_PARSER, "  ");
                Log.v(FullBackup.TAG_XML_PARSER, "====================================================");
                Log.v(FullBackup.TAG_XML_PARSER, "\n");
            }
        }

        public String tokenToDirectoryPath(String str) {
            try {
                if (str.equals(FullBackup.FILES_TREE_TOKEN)) {
                    return this.FILES_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DATABASE_TREE_TOKEN)) {
                    return this.DATABASE_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.ROOT_TREE_TOKEN)) {
                    return this.ROOT_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.SHAREDPREFS_TREE_TOKEN)) {
                    return this.SHAREDPREF_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.CACHE_TREE_TOKEN)) {
                    return this.CACHE_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.NO_BACKUP_TREE_TOKEN)) {
                    return this.NOBACKUP_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DEVICE_FILES_TREE_TOKEN)) {
                    return this.DEVICE_FILES_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DEVICE_DATABASE_TREE_TOKEN)) {
                    return this.DEVICE_DATABASE_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DEVICE_ROOT_TREE_TOKEN)) {
                    return this.DEVICE_ROOT_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DEVICE_SHAREDPREFS_TREE_TOKEN)) {
                    return this.DEVICE_SHAREDPREF_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DEVICE_CACHE_TREE_TOKEN)) {
                    return this.DEVICE_CACHE_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.DEVICE_NO_BACKUP_TREE_TOKEN)) {
                    return this.DEVICE_NOBACKUP_DIR.getCanonicalPath();
                }
                if (str.equals(FullBackup.MANAGED_EXTERNAL_TREE_TOKEN)) {
                    File file = this.EXTERNAL_DIR;
                    if (file != null) {
                        return file.getCanonicalPath();
                    }
                    return null;
                }
                if (str.startsWith(FullBackup.SHARED_PREFIX)) {
                    return sharedDomainToPath(str);
                }
                Log.i(FullBackup.TAG, "Unrecognized domain ".concat(str));
                return null;
            } catch (Exception unused) {
                Log.i(FullBackup.TAG, "Error reading directory for domain: " + str);
                return null;
            }
        }
    }

    public static native int backupToTar(String str, String str2, String str3, String str4, String str5, FullBackupDataOutput fullBackupDataOutput);

    public static synchronized BackupScheme getBackupScheme(Context context) {
        BackupScheme backupScheme;
        Map<String, BackupScheme> map = kPackageBackupSchemeMap;
        backupScheme = map.get(context.getPackageName());
        if (backupScheme == null) {
            backupScheme = new BackupScheme(context);
            map.put(context.getPackageName(), backupScheme);
        }
        return backupScheme;
    }

    public static BackupScheme getBackupSchemeForTest(Context context) {
        BackupScheme backupScheme = new BackupScheme(context);
        backupScheme.mExcludes = new ArraySet<>();
        backupScheme.mIncludes = new ArrayMap();
        return backupScheme;
    }

    public static void restoreFile(ParcelFileDescriptor parcelFileDescriptor, long j2, int i2, long j3, long j4, File file) throws IOException {
        FileOutputStream fileOutputStream;
        if (i2 != 2) {
            if (file != null) {
                try {
                    File parentFile = file.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException e2) {
                    Log.e(TAG, "Unable to create/open file " + file.getPath(), e2);
                    fileOutputStream = null;
                }
            } else {
                fileOutputStream = null;
            }
            byte[] bArr = new byte[32768];
            FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptor.getFileDescriptor());
            long j5 = j2;
            FileOutputStream fileOutputStream2 = fileOutputStream;
            while (j5 > 0) {
                int i3 = fileInputStream.read(bArr, 0, j5 > ((long) 32768) ? 32768 : (int) j5);
                if (i3 <= 0) {
                    StringBuilder sbL = m.l("Incomplete read: expected ", j5, " but got ");
                    sbL.append(j2 - j5);
                    Log.w(TAG, sbL.toString());
                    break;
                }
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.write(bArr, 0, i3);
                    } catch (IOException e3) {
                        Log.e(TAG, "Unable to write to file " + file.getPath(), e3);
                        fileOutputStream2.close();
                        file.delete();
                        fileOutputStream2 = null;
                    }
                }
                j5 -= (long) i3;
            }
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        } else if (file != null) {
            file.mkdirs();
        }
        if (j3 < 0 || file == null) {
            return;
        }
        try {
            Os.chmod(file.getPath(), (int) (j3 & 448));
        } catch (ErrnoException e4) {
            e4.rethrowAsIOException();
        }
        file.setLastModified(j4);
    }
}
