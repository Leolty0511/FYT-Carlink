package android.os;

import android.app.m;
import android.provider.DocumentsContract;
import android.system.ErrnoException;
import android.system.Os;
import android.system.StructStat;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.webkit.MimeTypeMap;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class FileUtils {
    private static final File[] EMPTY = new File[0];
    public static final int S_IRGRP = 32;
    public static final int S_IROTH = 4;
    public static final int S_IRUSR = 256;
    public static final int S_IRWXG = 56;
    public static final int S_IRWXO = 7;
    public static final int S_IRWXU = 448;
    public static final int S_IWGRP = 16;
    public static final int S_IWOTH = 2;
    public static final int S_IWUSR = 128;
    public static final int S_IXGRP = 8;
    public static final int S_IXOTH = 1;
    public static final int S_IXUSR = 64;
    private static final String TAG = "FileUtils";

    public static class NoImagePreloadHolder {
        public static final Pattern SAFE_FILENAME_PATTERN = Pattern.compile("[\\w%+,./=_-]+");

        private NoImagePreloadHolder() {
        }
    }

    private static File buildFile(File file, String str, String str2) {
        return TextUtils.isEmpty(str2) ? new File(file, str) : new File(file, m.h(str, ".", str2));
    }

    public static File buildUniqueFile(File file, String str, String str2) {
        String[] strArrSplitFileName = splitFileName(str, str2);
        return buildUniqueFileWithExtension(file, strArrSplitFileName[0], strArrSplitFileName[1]);
    }

    private static File buildUniqueFileWithExtension(File file, String str, String str2) throws FileNotFoundException {
        File fileBuildFile = buildFile(file, str, str2);
        int i2 = 0;
        while (fileBuildFile.exists()) {
            int i3 = i2 + 1;
            if (i2 >= 32) {
                throw new FileNotFoundException("Failed to create unique file");
            }
            i2 = i3;
            fileBuildFile = buildFile(file, str + " (" + i3 + ")", str2);
        }
        return fileBuildFile;
    }

    public static String buildValidExtFilename(String str) {
        if (TextUtils.isEmpty(str) || ".".equals(str) || "..".equals(str)) {
            return "(invalid)";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (isValidExtFilenameChar(cCharAt)) {
                sb.append(cCharAt);
            } else {
                sb.append('_');
            }
        }
        trimFilename(sb, 255);
        return sb.toString();
    }

    public static String buildValidFatFilename(String str) {
        if (TextUtils.isEmpty(str) || ".".equals(str) || "..".equals(str)) {
            return "(invalid)";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (isValidFatFilenameChar(cCharAt)) {
                sb.append(cCharAt);
            } else {
                sb.append('_');
            }
        }
        trimFilename(sb, 255);
        return sb.toString();
    }

    public static void bytesToFile(String str, byte[] bArr) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static long checksumCrc32(File file) throws Throwable {
        CRC32 crc32 = new CRC32();
        CheckedInputStream checkedInputStream = null;
        try {
            CheckedInputStream checkedInputStream2 = new CheckedInputStream(new FileInputStream(file), crc32);
            try {
                while (checkedInputStream2.read(new byte[128]) >= 0) {
                }
                long value = crc32.getValue();
                try {
                    checkedInputStream2.close();
                } catch (IOException unused) {
                }
                return value;
            } catch (Throwable th) {
                th = th;
                checkedInputStream = checkedInputStream2;
                if (checkedInputStream != null) {
                    try {
                        checkedInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean contains(File[] fileArr, File file) {
        for (File file2 : fileArr) {
            if (contains(file2, file)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static boolean copyFile(File file, File file2) {
        try {
            copyFileOrThrow(file, file2);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static void copyFileOrThrow(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            copyToFileOrThrow(fileInputStream, file2);
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
    }

    public static void copyPermissions(File file, File file2) throws IOException {
        try {
            StructStat structStatStat = Os.stat(file.getAbsolutePath());
            Os.chmod(file2.getAbsolutePath(), structStatStat.st_mode);
            Os.chown(file2.getAbsolutePath(), structStatStat.st_uid, structStatStat.st_gid);
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
    }

    @Deprecated
    public static boolean copyToFile(InputStream inputStream, File file) {
        try {
            copyToFileOrThrow(inputStream, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static void copyToFileOrThrow(InputStream inputStream, File file) throws IOException {
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 < 0) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i2);
                }
            }
            fileOutputStream.flush();
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException unused) {
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            fileOutputStream.flush();
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException unused2) {
            }
            fileOutputStream.close();
            throw th;
        }
    }

    public static File createDir(File file, String str) {
        File file2 = new File(file, str);
        if (file2.exists()) {
            if (file2.isDirectory()) {
                return file2;
            }
            return null;
        }
        if (file2.mkdir()) {
            return file2;
        }
        return null;
    }

    public static boolean deleteContents(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zDeleteContents = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zDeleteContents &= deleteContents(file2);
                }
                if (!file2.delete()) {
                    Log.w(TAG, "Failed to delete " + file2);
                    zDeleteContents = false;
                }
            }
        }
        return zDeleteContents;
    }

    public static boolean deleteContentsAndDir(File file) {
        if (deleteContents(file)) {
            return file.delete();
        }
        return false;
    }

    public static boolean deleteOlderFiles(File file, int i2, long j2) {
        if (i2 < 0 || j2 < 0) {
            throw new IllegalArgumentException("Constraints must be positive or 0");
        }
        File[] fileArrListFiles = file.listFiles();
        boolean z2 = false;
        if (fileArrListFiles == null) {
            return false;
        }
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: android.os.FileUtils.1
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return Long.compare(file3.lastModified(), file2.lastModified());
            }
        });
        while (i2 < fileArrListFiles.length) {
            File file2 = fileArrListFiles[i2];
            if (System.currentTimeMillis() - file2.lastModified() > j2 && file2.delete()) {
                Log.d(TAG, "Deleted old file " + file2);
                z2 = true;
            }
            i2++;
        }
        return z2;
    }

    public static int getUid(String str) {
        try {
            return Os.stat(str).st_uid;
        } catch (ErrnoException unused) {
            return -1;
        }
    }

    public static boolean isFilenameSafe(File file) {
        return NoImagePreloadHolder.SAFE_FILENAME_PATTERN.matcher(file.getPath()).matches();
    }

    public static boolean isValidExtFilename(String str) {
        return str != null && str.equals(buildValidExtFilename(str));
    }

    private static boolean isValidExtFilenameChar(char c) {
        return (c == 0 || c == '/') ? false : true;
    }

    public static boolean isValidFatFilename(String str) {
        return str != null && str.equals(buildValidFatFilename(str));
    }

    private static boolean isValidFatFilenameChar(char c) {
        return ((c >= 0 && c <= 31) || c == '\"' || c == '*' || c == '/' || c == ':' || c == '<' || c == '\\' || c == '|' || c == 127 || c == '>' || c == '?') ? false : true;
    }

    public static File[] listFilesOrEmpty(File file) {
        if (file == null) {
            return EMPTY;
        }
        File[] fileArrListFiles = file.listFiles();
        return fileArrListFiles != null ? fileArrListFiles : EMPTY;
    }

    public static String[] listOrEmpty(File file) {
        if (file == null) {
            return EmptyArray.STRING;
        }
        String[] list = file.list();
        return list != null ? list : EmptyArray.STRING;
    }

    public static File newFileOrNull(String str) {
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public static String readTextFile(File file, int i2, String str) throws IOException {
        int i3;
        boolean z2;
        int i4;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            long length = file.length();
            String str2 = "";
            if (i2 > 0 || (length > 0 && i2 == 0)) {
                if (length > 0 && (i2 == 0 || length < i2)) {
                    i2 = (int) length;
                }
                byte[] bArr = new byte[i2 + 1];
                int i5 = bufferedInputStream.read(bArr);
                if (i5 > 0) {
                    if (i5 <= i2) {
                        str2 = new String(bArr, 0, i5);
                    } else {
                        str2 = str == null ? new String(bArr, 0, i2) : new String(bArr, 0, i2).concat(str);
                    }
                }
            } else if (i2 < 0) {
                byte[] bArr2 = null;
                byte[] bArr3 = null;
                boolean z3 = false;
                while (true) {
                    z2 = true;
                    if (bArr2 != null) {
                        z3 = true;
                    }
                    if (bArr2 == null) {
                        bArr2 = new byte[-i2];
                    }
                    i4 = bufferedInputStream.read(bArr2);
                    if (i4 != bArr2.length) {
                        break;
                    }
                    byte[] bArr4 = bArr3;
                    bArr3 = bArr2;
                    bArr2 = bArr4;
                }
                if (bArr3 != null || i4 > 0) {
                    if (bArr3 == null) {
                        str2 = new String(bArr2, 0, i4);
                    } else {
                        if (i4 > 0) {
                            System.arraycopy(bArr3, i4, bArr3, 0, bArr3.length - i4);
                            System.arraycopy(bArr2, 0, bArr3, bArr3.length - i4, i4);
                        } else {
                            z2 = z3;
                        }
                        if (str == null || !z2) {
                            str2 = new String(bArr3);
                        } else {
                            str2 = str + new String(bArr3);
                        }
                    }
                }
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr5 = new byte[1024];
                do {
                    i3 = bufferedInputStream.read(bArr5);
                    if (i3 > 0) {
                        byteArrayOutputStream.write(bArr5, 0, i3);
                    }
                } while (i3 == 1024);
                str2 = byteArrayOutputStream.toString();
            }
            return str2;
        } finally {
            bufferedInputStream.close();
            fileInputStream.close();
        }
    }

    public static String rewriteAfterRename(File file, File file2, String str) {
        File fileRewriteAfterRename;
        if (str == null || (fileRewriteAfterRename = rewriteAfterRename(file, file2, new File(str))) == null) {
            return null;
        }
        return fileRewriteAfterRename.getAbsolutePath();
    }

    public static long roundStorageSize(long j2) {
        long j3 = 1;
        long j4 = 1;
        while (true) {
            long j5 = j3 * j4;
            if (j5 >= j2) {
                return j5;
            }
            j3 <<= 1;
            if (j3 > 512) {
                j4 *= 1000;
                j3 = 1;
            }
        }
    }

    public static int setPermissions(File file, int i2, int i3, int i4) {
        return setPermissions(file.getAbsolutePath(), i2, i3, i4);
    }

    public static String[] splitFileName(String str, String str2) {
        String str3;
        String strSubstring;
        String mimeTypeFromExtension = null;
        if (!DocumentsContract.Document.MIME_TYPE_DIR.equals(str)) {
            int iLastIndexOf = str2.lastIndexOf(46);
            if (iLastIndexOf >= 0) {
                String strSubstring2 = str2.substring(0, iLastIndexOf);
                strSubstring = str2.substring(iLastIndexOf + 1);
                str3 = strSubstring2;
                mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strSubstring.toLowerCase());
            } else {
                str3 = str2;
                strSubstring = null;
            }
            if (mimeTypeFromExtension == null) {
                mimeTypeFromExtension = "application/octet-stream";
            }
            String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
            if (Objects.equals(str, mimeTypeFromExtension) || Objects.equals(strSubstring, extensionFromMimeType)) {
                mimeTypeFromExtension = strSubstring;
                str2 = str3;
            } else {
                mimeTypeFromExtension = extensionFromMimeType;
            }
        }
        if (mimeTypeFromExtension == null) {
            mimeTypeFromExtension = "";
        }
        return new String[]{str2, mimeTypeFromExtension};
    }

    public static void stringToFile(File file, String str) throws IOException {
        stringToFile(file.getAbsolutePath(), str);
    }

    public static boolean sync(FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return true;
        }
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static String trimFilename(String str, int i2) {
        StringBuilder sb = new StringBuilder(str);
        trimFilename(sb, i2);
        return sb.toString();
    }

    public static int setPermissions(String str, int i2, int i3, int i4) {
        try {
            Os.chmod(str, i2);
            if (i3 < 0 && i4 < 0) {
                return 0;
            }
            try {
                Os.chown(str, i3, i4);
                return 0;
            } catch (ErrnoException e2) {
                Slog.w(TAG, "Failed to chown(" + str + "): " + e2);
                return e2.errno;
            }
        } catch (ErrnoException e3) {
            Slog.w(TAG, "Failed to chmod(" + str + "): " + e3);
            return e3.errno;
        }
    }

    public static void stringToFile(String str, String str2) throws IOException {
        bytesToFile(str, str2.getBytes(StandardCharsets.UTF_8));
    }

    public static File buildUniqueFile(File file, String str) {
        String strSubstring;
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String strSubstring2 = str.substring(0, iLastIndexOf);
            strSubstring = str.substring(iLastIndexOf + 1);
            str = strSubstring2;
        } else {
            strSubstring = null;
        }
        return buildUniqueFileWithExtension(file, str, strSubstring);
    }

    public static boolean contains(File file, File file2) {
        if (file == null || file2 == null) {
            return false;
        }
        return contains(file.getAbsolutePath(), file2.getAbsolutePath());
    }

    public static String[] rewriteAfterRename(File file, File file2, String[] strArr) {
        if (strArr == null) {
            return null;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr2[i2] = rewriteAfterRename(file, file2, strArr[i2]);
        }
        return strArr2;
    }

    public static boolean contains(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        return str2.startsWith(str);
    }

    public static File[] listFilesOrEmpty(File file, FilenameFilter filenameFilter) {
        if (file == null) {
            return EMPTY;
        }
        File[] fileArrListFiles = file.listFiles(filenameFilter);
        return fileArrListFiles != null ? fileArrListFiles : EMPTY;
    }

    private static void trimFilename(StringBuilder sb, int i2) {
        byte[] bytes = sb.toString().getBytes(StandardCharsets.UTF_8);
        if (bytes.length > i2) {
            int i3 = i2 - 3;
            while (bytes.length > i3) {
                sb.deleteCharAt(sb.length() / 2);
                bytes = sb.toString().getBytes(StandardCharsets.UTF_8);
            }
            sb.insert(sb.length() / 2, Session.TRUNCATE_STRING);
        }
    }

    public static File rewriteAfterRename(File file, File file2, File file3) {
        if (file3 == null || file == null || file2 == null || !contains(file, file3)) {
            return null;
        }
        return new File(file2, file3.getAbsolutePath().substring(file.getAbsolutePath().length()));
    }

    public static int setPermissions(FileDescriptor fileDescriptor, int i2, int i3, int i4) {
        try {
            Os.fchmod(fileDescriptor, i2);
            if (i3 < 0 && i4 < 0) {
                return 0;
            }
            try {
                Os.fchown(fileDescriptor, i3, i4);
                return 0;
            } catch (ErrnoException e2) {
                Slog.w(TAG, "Failed to fchown(): " + e2);
                return e2.errno;
            }
        } catch (ErrnoException e3) {
            Slog.w(TAG, "Failed to fchmod(): " + e3);
            return e3.errno;
        }
    }
}
