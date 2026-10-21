package android.util.jar;

import android.accessibilityservice.c;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import dalvik.system.CloseGuard;
import java.io.FileDescriptor;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import java.util.zip.ZipEntry;
import libcore.io.IoBridge;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes2.dex */
public final class StrictJarFile {
    private boolean closed;
    private final FileDescriptor fd;
    private final CloseGuard guard;
    private final boolean isSigned;
    private final StrictJarManifest manifest;
    private final long nativeHandle;
    private final StrictJarVerifier verifier;

    public static final class EntryIterator implements Iterator<ZipEntry> {
        private final long iterationHandle;
        private ZipEntry nextEntry;

        public EntryIterator(long j2, String str) {
            this.iterationHandle = StrictJarFile.nativeStartIteration(j2, str);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextEntry != null) {
                return true;
            }
            ZipEntry zipEntryNativeNextEntry = StrictJarFile.nativeNextEntry(this.iterationHandle);
            if (zipEntryNativeNextEntry == null) {
                return false;
            }
            this.nextEntry = zipEntryNativeNextEntry;
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public ZipEntry next() {
            ZipEntry zipEntry = this.nextEntry;
            if (zipEntry == null) {
                return StrictJarFile.nativeNextEntry(this.iterationHandle);
            }
            this.nextEntry = null;
            return zipEntry;
        }
    }

    public static class FDStream extends InputStream {
        private long endOffset;
        private final FileDescriptor fd;
        private long offset;

        public FDStream(FileDescriptor fileDescriptor, long j2, long j3) {
            this.fd = fileDescriptor;
            this.offset = j2;
            this.endOffset = j3;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.offset < this.endOffset ? 1 : 0;
        }

        @Override // java.io.InputStream
        public int read() {
            return Streams.readSingleByte(this);
        }

        @Override // java.io.InputStream
        public long skip(long j2) {
            long j3 = this.endOffset;
            long j4 = this.offset;
            if (j2 > j3 - j4) {
                j2 = j3 - j4;
            }
            this.offset = j4 + j2;
            return j2;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            synchronized (this.fd) {
                long j2 = this.endOffset;
                long j3 = this.offset;
                long j4 = j2 - j3;
                if (i3 > j4) {
                    i3 = (int) j4;
                }
                try {
                    Os.lseek(this.fd, j3, OsConstants.SEEK_SET);
                    int i4 = IoBridge.read(this.fd, bArr, i2, i3);
                    if (i4 <= 0) {
                        return -1;
                    }
                    this.offset += (long) i4;
                    return i4;
                } catch (ErrnoException e2) {
                    throw new IOException(e2);
                }
            }
        }
    }

    public static class ZipInflaterInputStream extends InflaterInputStream {
        private long bytesRead;
        private final ZipEntry entry;

        public ZipInflaterInputStream(InputStream inputStream, Inflater inflater, int i2, ZipEntry zipEntry) {
            super(inputStream, inflater, i2);
            this.bytesRead = 0L;
            this.entry = zipEntry;
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
        public int available() {
            if (((InflaterInputStream) this).closed || super.available() == 0) {
                return 0;
            }
            return (int) (this.entry.getSize() - this.bytesRead);
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            try {
                int i4 = super.read(bArr, i2, i3);
                if (i4 != -1) {
                    this.bytesRead += (long) i4;
                } else if (this.entry.getSize() != this.bytesRead) {
                    throw new IOException("Size mismatch on inflated file: " + this.bytesRead + " vs " + this.entry.getSize());
                }
                return i4;
            } catch (IOException e2) {
                throw new IOException("Error reading data for " + this.entry.getName() + " near offset " + this.bytesRead, e2);
            }
        }
    }

    public StrictJarFile(String str) {
        this(str, true, true);
    }

    private HashMap<String, byte[]> getMetaEntries() {
        HashMap<String, byte[]> map = new HashMap<>();
        EntryIterator entryIterator = new EntryIterator(this.nativeHandle, "META-INF/");
        while (entryIterator.hasNext()) {
            ZipEntry next = entryIterator.next();
            map.put(next.getName(), Streams.readFully(getInputStream(next)));
        }
        return map;
    }

    private InputStream getZipInputStream(ZipEntry zipEntry) {
        if (zipEntry.getMethod() == 0) {
            return new FDStream(this.fd, zipEntry.getDataOffset(), zipEntry.getDataOffset() + zipEntry.getSize());
        }
        return new ZipInflaterInputStream(new FDStream(this.fd, zipEntry.getDataOffset(), zipEntry.getCompressedSize() + zipEntry.getDataOffset()), new Inflater(true), Math.max(1024, (int) Math.min(zipEntry.getSize(), 65535L)), zipEntry);
    }

    private static native void nativeClose(long j2);

    private static native ZipEntry nativeFindEntry(long j2, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native ZipEntry nativeNextEntry(long j2);

    private static native long nativeOpenJarFile(String str, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeStartIteration(long j2, String str);

    public void close() {
        if (this.closed) {
            return;
        }
        CloseGuard closeGuard = this.guard;
        if (closeGuard != null) {
            closeGuard.close();
        }
        nativeClose(this.nativeHandle);
        IoUtils.closeQuietly(this.fd);
        this.closed = true;
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.guard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public ZipEntry findEntry(String str) {
        return nativeFindEntry(this.nativeHandle, str);
    }

    public Certificate[][] getCertificateChains(ZipEntry zipEntry) {
        if (this.isSigned) {
            return this.verifier.getCertificateChains(zipEntry.getName());
        }
        return null;
    }

    @Deprecated
    public Certificate[] getCertificates(ZipEntry zipEntry) {
        if (!this.isSigned) {
            return null;
        }
        Certificate[][] certificateChains = this.verifier.getCertificateChains(zipEntry.getName());
        int length = 0;
        for (Certificate[] certificateArr : certificateChains) {
            length += certificateArr.length;
        }
        Certificate[] certificateArr2 = new Certificate[length];
        int length2 = 0;
        for (Certificate[] certificateArr3 : certificateChains) {
            System.arraycopy(certificateArr3, 0, certificateArr2, length2, certificateArr3.length);
            length2 += certificateArr3.length;
        }
        return certificateArr2;
    }

    public InputStream getInputStream(ZipEntry zipEntry) {
        StrictJarVerifier.VerifierEntry verifierEntryInitEntry;
        InputStream zipInputStream = getZipInputStream(zipEntry);
        return (!this.isSigned || (verifierEntryInitEntry = this.verifier.initEntry(zipEntry.getName())) == null) ? zipInputStream : new JarFileInputStream(zipInputStream, zipEntry.getSize(), verifierEntryInitEntry);
    }

    public StrictJarManifest getManifest() {
        return this.manifest;
    }

    public Iterator<ZipEntry> iterator() {
        return new EntryIterator(this.nativeHandle, "");
    }

    public StrictJarFile(FileDescriptor fileDescriptor) {
        this(fileDescriptor, true, true);
    }

    public StrictJarFile(FileDescriptor fileDescriptor, boolean z2, boolean z3) {
        this(c.m(new StringBuilder("[fd:"), fileDescriptor.getInt$(), "]"), fileDescriptor, z2, z3);
    }

    public StrictJarFile(String str, boolean z2, boolean z3) {
        this(str, IoBridge.open(str, OsConstants.O_RDONLY), z2, z3);
    }

    private StrictJarFile(String str, FileDescriptor fileDescriptor, boolean z2, boolean z3) {
        this.guard = CloseGuard.get();
        this.nativeHandle = nativeOpenJarFile(str, fileDescriptor.getInt$());
        this.fd = fileDescriptor;
        boolean z4 = false;
        try {
            if (z2) {
                HashMap<String, byte[]> metaEntries = getMetaEntries();
                StrictJarManifest strictJarManifest = new StrictJarManifest(metaEntries.get("META-INF/MANIFEST.MF"), true);
                this.manifest = strictJarManifest;
                this.verifier = new StrictJarVerifier(str, strictJarManifest, metaEntries, z3);
                for (String str2 : strictJarManifest.getEntries().keySet()) {
                    if (findEntry(str2) == null) {
                        throw new SecurityException("File " + str2 + " in manifest does not exist");
                    }
                }
                if (this.verifier.readCertificates() && this.verifier.isSignedJar()) {
                    z4 = true;
                }
                this.isSigned = z4;
            } else {
                this.isSigned = false;
                this.manifest = null;
                this.verifier = null;
            }
            this.guard.open("close");
        } catch (IOException | SecurityException e2) {
            nativeClose(this.nativeHandle);
            IoUtils.closeQuietly(fileDescriptor);
            this.closed = true;
            throw e2;
        }
    }

    public static final class JarFileInputStream extends FilterInputStream {
        private long count;
        private boolean done;
        private final StrictJarVerifier.VerifierEntry entry;

        public JarFileInputStream(InputStream inputStream, long j2, StrictJarVerifier.VerifierEntry verifierEntry) {
            super(inputStream);
            this.done = false;
            this.entry = verifierEntry;
            this.count = j2;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() {
            if (this.done) {
                return 0;
            }
            return super.available();
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.done) {
                return -1;
            }
            if (this.count <= 0) {
                this.done = true;
                this.entry.verify();
                return -1;
            }
            int i2 = super.read();
            if (i2 != -1) {
                this.entry.write(i2);
                this.count--;
            } else {
                this.count = 0L;
            }
            if (this.count == 0) {
                this.done = true;
                this.entry.verify();
            }
            return i2;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j2) {
            return Streams.skipByReading(this, j2);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) throws IOException {
            if (this.done) {
                return -1;
            }
            if (this.count > 0) {
                int i4 = super.read(bArr, i2, i3);
                if (i4 != -1) {
                    long j2 = this.count;
                    int i5 = j2 < ((long) i4) ? (int) j2 : i4;
                    this.entry.write(bArr, i2, i5);
                    this.count -= (long) i5;
                } else {
                    this.count = 0L;
                }
                if (this.count == 0) {
                    this.done = true;
                    this.entry.verify();
                }
                return i4;
            }
            this.done = true;
            this.entry.verify();
            return -1;
        }
    }
}
