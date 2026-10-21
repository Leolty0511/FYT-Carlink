package com.android.internal.util;

import android.accessibilityservice.c;
import android.os.FileUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes3.dex */
public class FileRotator {
    private static final boolean LOGD = false;
    private static final String SUFFIX_BACKUP = ".backup";
    private static final String SUFFIX_NO_BACKUP = ".no_backup";
    private static final String TAG = "FileRotator";
    private final File mBasePath;
    private final long mDeleteAgeMillis;
    private final String mPrefix;
    private final long mRotateAgeMillis;

    public static class FileInfo {
        public long endMillis;
        public final String prefix;
        public long startMillis;

        public FileInfo(String str) {
            this.prefix = (String) Preconditions.checkNotNull(str);
        }

        public String build() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.prefix);
            sb.append('.');
            sb.append(this.startMillis);
            sb.append('-');
            long j2 = this.endMillis;
            if (j2 != Long.MAX_VALUE) {
                sb.append(j2);
            }
            return sb.toString();
        }

        public boolean isActive() {
            return this.endMillis == Long.MAX_VALUE;
        }

        public boolean parse(String str) {
            this.endMillis = -1L;
            this.startMillis = -1L;
            int iLastIndexOf = str.lastIndexOf(46);
            int iLastIndexOf2 = str.lastIndexOf(45);
            if (iLastIndexOf == -1 || iLastIndexOf2 == -1 || !this.prefix.equals(str.substring(0, iLastIndexOf))) {
                return false;
            }
            try {
                this.startMillis = Long.parseLong(str.substring(iLastIndexOf + 1, iLastIndexOf2));
                if (str.length() - iLastIndexOf2 == 1) {
                    this.endMillis = Long.MAX_VALUE;
                } else {
                    this.endMillis = Long.parseLong(str.substring(iLastIndexOf2 + 1));
                }
                return true;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
    }

    public interface Reader {
        void read(InputStream inputStream);
    }

    public interface Rewriter extends Reader, Writer {
        void reset();

        boolean shouldWrite();
    }

    public interface Writer {
        void write(OutputStream outputStream);
    }

    public FileRotator(File file, String str, long j2, long j3) {
        File file2 = (File) Preconditions.checkNotNull(file);
        this.mBasePath = file2;
        this.mPrefix = (String) Preconditions.checkNotNull(str);
        this.mRotateAgeMillis = j2;
        this.mDeleteAgeMillis = j3;
        file2.mkdirs();
        for (String str2 : file2.list()) {
            if (str2.startsWith(this.mPrefix)) {
                if (str2.endsWith(SUFFIX_BACKUP)) {
                    new File(this.mBasePath, str2).renameTo(new File(this.mBasePath, str2.substring(0, str2.length() - 7)));
                } else if (str2.endsWith(SUFFIX_NO_BACKUP)) {
                    File file3 = new File(this.mBasePath, str2);
                    File file4 = new File(this.mBasePath, str2.substring(0, str2.length() - 10));
                    file3.delete();
                    file4.delete();
                }
            }
        }
    }

    private String getActiveName(long j2) {
        FileInfo fileInfo = new FileInfo(this.mPrefix);
        String str = null;
        long j3 = Long.MAX_VALUE;
        for (String str2 : this.mBasePath.list()) {
            if (fileInfo.parse(str2) && fileInfo.isActive()) {
                long j4 = fileInfo.startMillis;
                if (j4 < j2 && j4 < j3) {
                    str = str2;
                    j3 = j4;
                }
            }
        }
        if (str != null) {
            return str;
        }
        fileInfo.startMillis = j2;
        fileInfo.endMillis = Long.MAX_VALUE;
        return fileInfo.build();
    }

    private static void readFile(File file, Reader reader) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            reader.read(bufferedInputStream);
        } finally {
            IoUtils.closeQuietly(bufferedInputStream);
        }
    }

    private static IOException rethrowAsIoException(Throwable th) throws IOException {
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        throw new IOException(th.getMessage(), th);
    }

    private void rewriteSingle(Rewriter rewriter, String str) throws IOException {
        File file = new File(this.mBasePath, str);
        rewriter.reset();
        if (!file.exists()) {
            File file2 = new File(this.mBasePath, c.D(str, SUFFIX_NO_BACKUP));
            file2.createNewFile();
            try {
                writeFile(file, rewriter);
                file2.delete();
                return;
            } catch (Throwable th) {
                file.delete();
                file2.delete();
                throw rethrowAsIoException(th);
            }
        }
        readFile(file, rewriter);
        if (rewriter.shouldWrite()) {
            File file3 = new File(this.mBasePath, c.D(str, SUFFIX_BACKUP));
            file.renameTo(file3);
            try {
                writeFile(file, rewriter);
                file3.delete();
            } catch (Throwable th2) {
                file.delete();
                file3.renameTo(file);
                throw rethrowAsIoException(th2);
            }
        }
    }

    private static void writeFile(File file, Writer writer) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        try {
            writer.write(bufferedOutputStream);
            bufferedOutputStream.flush();
        } finally {
            FileUtils.sync(fileOutputStream);
            IoUtils.closeQuietly(bufferedOutputStream);
        }
    }

    @Deprecated
    public void combineActive(final Reader reader, final Writer writer, long j2) throws IOException {
        rewriteActive(new Rewriter() { // from class: com.android.internal.util.FileRotator.1
            @Override // com.android.internal.util.FileRotator.Reader
            public void read(InputStream inputStream) {
                reader.read(inputStream);
            }

            @Override // com.android.internal.util.FileRotator.Rewriter
            public void reset() {
            }

            @Override // com.android.internal.util.FileRotator.Rewriter
            public boolean shouldWrite() {
                return true;
            }

            @Override // com.android.internal.util.FileRotator.Writer
            public void write(OutputStream outputStream) {
                writer.write(outputStream);
            }
        }, j2);
    }

    public void deleteAll() {
        FileInfo fileInfo = new FileInfo(this.mPrefix);
        for (String str : this.mBasePath.list()) {
            if (fileInfo.parse(str)) {
                new File(this.mBasePath, str).delete();
            }
        }
    }

    public void dumpAll(OutputStream outputStream) {
        ZipOutputStream zipOutputStream = new ZipOutputStream(outputStream);
        try {
            FileInfo fileInfo = new FileInfo(this.mPrefix);
            for (String str : this.mBasePath.list()) {
                if (fileInfo.parse(str)) {
                    zipOutputStream.putNextEntry(new ZipEntry(str));
                    FileInputStream fileInputStream = new FileInputStream(new File(this.mBasePath, str));
                    try {
                        Streams.copy(fileInputStream, zipOutputStream);
                        IoUtils.closeQuietly(fileInputStream);
                        zipOutputStream.closeEntry();
                    } catch (Throwable th) {
                        IoUtils.closeQuietly(fileInputStream);
                        throw th;
                    }
                }
            }
            IoUtils.closeQuietly(zipOutputStream);
        } catch (Throwable th2) {
            IoUtils.closeQuietly(zipOutputStream);
            throw th2;
        }
    }

    public void maybeRotate(long j2) {
        long j3 = j2 - this.mRotateAgeMillis;
        long j4 = j2 - this.mDeleteAgeMillis;
        FileInfo fileInfo = new FileInfo(this.mPrefix);
        String[] list = this.mBasePath.list();
        if (list == null) {
            return;
        }
        for (String str : list) {
            if (fileInfo.parse(str)) {
                if (fileInfo.isActive()) {
                    if (fileInfo.startMillis <= j3) {
                        fileInfo.endMillis = j2;
                        new File(this.mBasePath, str).renameTo(new File(this.mBasePath, fileInfo.build()));
                    }
                } else if (fileInfo.endMillis <= j4) {
                    new File(this.mBasePath, str).delete();
                }
            }
        }
    }

    public void readMatching(Reader reader, long j2, long j3) {
        FileInfo fileInfo = new FileInfo(this.mPrefix);
        for (String str : this.mBasePath.list()) {
            if (fileInfo.parse(str) && fileInfo.startMillis <= j3 && j2 <= fileInfo.endMillis) {
                readFile(new File(this.mBasePath, str), reader);
            }
        }
    }

    public void rewriteActive(Rewriter rewriter, long j2) throws IOException {
        rewriteSingle(rewriter, getActiveName(j2));
    }

    public void rewriteAll(Rewriter rewriter) throws IOException {
        FileInfo fileInfo = new FileInfo(this.mPrefix);
        for (String str : this.mBasePath.list()) {
            if (fileInfo.parse(str)) {
                rewriteSingle(rewriter, str);
            }
        }
    }
}
