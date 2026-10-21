package android.util.apk;

import android.accessibilityservice.c;
import android.app.backup.FullBackup;
import android.app.m;
import android.security.keystore.KeyProperties;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.ArrayMap;
import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DirectByteBuffer;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import libcore.io.Libcore;
import libcore.io.Os;

/* JADX INFO: loaded from: classes2.dex */
public class ApkSignatureSchemeV2Verifier {
    private static final int APK_SIGNATURE_SCHEME_V2_BLOCK_ID = 1896449818;
    private static final long APK_SIG_BLOCK_MAGIC_HI = 3617552046287187010L;
    private static final long APK_SIG_BLOCK_MAGIC_LO = 2334950737559900225L;
    private static final int APK_SIG_BLOCK_MIN_SIZE = 32;
    private static final int CHUNK_SIZE_BYTES = 1048576;
    private static final int CONTENT_DIGEST_CHUNKED_SHA256 = 1;
    private static final int CONTENT_DIGEST_CHUNKED_SHA512 = 2;
    public static final int SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID = 2;
    public static final String SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME = "X-Android-APK-Signed";
    private static final int SIGNATURE_DSA_WITH_SHA256 = 769;
    private static final int SIGNATURE_ECDSA_WITH_SHA256 = 513;
    private static final int SIGNATURE_ECDSA_WITH_SHA512 = 514;
    private static final int SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256 = 259;
    private static final int SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512 = 260;
    private static final int SIGNATURE_RSA_PSS_WITH_SHA256 = 257;
    private static final int SIGNATURE_RSA_PSS_WITH_SHA512 = 258;

    public static final class ByteBufferDataSource implements DataSource {
        private final ByteBuffer mBuf;

        public ByteBufferDataSource(ByteBuffer byteBuffer) {
            this.mBuf = byteBuffer.slice();
        }

        @Override // android.util.apk.ApkSignatureSchemeV2Verifier.DataSource
        public void feedIntoMessageDigests(MessageDigest[] messageDigestArr, long j2, int i2) {
            ByteBuffer byteBufferSlice;
            synchronized (this.mBuf) {
                int i3 = (int) j2;
                this.mBuf.position(i3);
                this.mBuf.limit(i3 + i2);
                byteBufferSlice = this.mBuf.slice();
            }
            for (MessageDigest messageDigest : messageDigestArr) {
                byteBufferSlice.position(0);
                messageDigest.update(byteBufferSlice);
            }
        }

        @Override // android.util.apk.ApkSignatureSchemeV2Verifier.DataSource
        public long size() {
            return this.mBuf.capacity();
        }
    }

    public interface DataSource {
        void feedIntoMessageDigests(MessageDigest[] messageDigestArr, long j2, int i2);

        long size();
    }

    public static final class MemoryMappedFileDataSource implements DataSource {
        private static final long MEMORY_PAGE_SIZE_BYTES;
        private static final Os OS;
        private final FileDescriptor mFd;
        private final long mFilePosition;
        private final long mSize;

        static {
            Os os = Libcore.os;
            OS = os;
            MEMORY_PAGE_SIZE_BYTES = os.sysconf(OsConstants._SC_PAGESIZE);
        }

        public MemoryMappedFileDataSource(FileDescriptor fileDescriptor, long j2, long j3) {
            this.mFd = fileDescriptor;
            this.mFilePosition = j2;
            this.mSize = j3;
        }

        @Override // android.util.apk.ApkSignatureSchemeV2Verifier.DataSource
        public void feedIntoMessageDigests(MessageDigest[] messageDigestArr, long j2, int i2) throws Throwable {
            long jMmap;
            long j3;
            long j4 = this.mFilePosition + j2;
            long j5 = MEMORY_PAGE_SIZE_BYTES;
            long j6 = (j4 / j5) * j5;
            int i3 = (int) (j4 - j6);
            long j7 = i2 + i3;
            try {
                try {
                    jMmap = OS.mmap(0L, j7, OsConstants.PROT_READ, OsConstants.MAP_SHARED | OsConstants.MAP_POPULATE, this.mFd, j6);
                    try {
                        j3 = j7;
                        try {
                            DirectByteBuffer directByteBuffer = new DirectByteBuffer(i2, jMmap + ((long) i3), this.mFd, (Runnable) null, true);
                            for (MessageDigest messageDigest : messageDigestArr) {
                                directByteBuffer.position(0);
                                messageDigest.update((ByteBuffer) directByteBuffer);
                            }
                            if (jMmap != 0) {
                                try {
                                    OS.munmap(jMmap, j3);
                                } catch (ErrnoException unused) {
                                }
                            }
                        } catch (ErrnoException e2) {
                            e = e2;
                            throw new IOException("Failed to mmap " + j3 + " bytes", e);
                        }
                    } catch (ErrnoException e3) {
                        e = e3;
                        j3 = j7;
                    } catch (Throwable th) {
                        th = th;
                        if (jMmap != 0) {
                            try {
                                OS.munmap(jMmap, j7);
                            } catch (ErrnoException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (ErrnoException e4) {
                e = e4;
                j3 = j7;
            } catch (Throwable th3) {
                th = th3;
                jMmap = 0;
            }
        }

        @Override // android.util.apk.ApkSignatureSchemeV2Verifier.DataSource
        public long size() {
            return this.mSize;
        }
    }

    public static class SignatureInfo {
        private final long apkSigningBlockOffset;
        private final long centralDirOffset;
        private final ByteBuffer eocd;
        private final long eocdOffset;
        private final ByteBuffer signatureBlock;

        private SignatureInfo(ByteBuffer byteBuffer, long j2, long j3, long j4, ByteBuffer byteBuffer2) {
            this.signatureBlock = byteBuffer;
            this.apkSigningBlockOffset = j2;
            this.centralDirOffset = j3;
            this.eocdOffset = j4;
            this.eocd = byteBuffer2;
        }
    }

    public static class SignatureNotFoundException extends Exception {
        private static final long serialVersionUID = 1;

        public SignatureNotFoundException(String str) {
            super(str);
        }

        public SignatureNotFoundException(String str, Throwable th) {
            super(str, th);
        }
    }

    public static class VerbatimX509Certificate extends WrappedX509Certificate {
        private byte[] encodedVerbatim;

        public VerbatimX509Certificate(X509Certificate x509Certificate, byte[] bArr) {
            super(x509Certificate);
            this.encodedVerbatim = bArr;
        }

        @Override // android.util.apk.ApkSignatureSchemeV2Verifier.WrappedX509Certificate, java.security.cert.Certificate
        public byte[] getEncoded() {
            return this.encodedVerbatim;
        }
    }

    public static class WrappedX509Certificate extends X509Certificate {
        private final X509Certificate wrapped;

        public WrappedX509Certificate(X509Certificate x509Certificate) {
            this.wrapped = x509Certificate;
        }

        @Override // java.security.cert.X509Certificate
        public void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
            this.wrapped.checkValidity();
        }

        @Override // java.security.cert.X509Certificate
        public int getBasicConstraints() {
            return this.wrapped.getBasicConstraints();
        }

        @Override // java.security.cert.X509Extension
        public Set<String> getCriticalExtensionOIDs() {
            return this.wrapped.getCriticalExtensionOIDs();
        }

        @Override // java.security.cert.Certificate
        public byte[] getEncoded() {
            return this.wrapped.getEncoded();
        }

        @Override // java.security.cert.X509Extension
        public byte[] getExtensionValue(String str) {
            return this.wrapped.getExtensionValue(str);
        }

        @Override // java.security.cert.X509Certificate
        public Principal getIssuerDN() {
            return this.wrapped.getIssuerDN();
        }

        @Override // java.security.cert.X509Certificate
        public boolean[] getIssuerUniqueID() {
            return this.wrapped.getIssuerUniqueID();
        }

        @Override // java.security.cert.X509Certificate
        public boolean[] getKeyUsage() {
            return this.wrapped.getKeyUsage();
        }

        @Override // java.security.cert.X509Extension
        public Set<String> getNonCriticalExtensionOIDs() {
            return this.wrapped.getNonCriticalExtensionOIDs();
        }

        @Override // java.security.cert.X509Certificate
        public Date getNotAfter() {
            return this.wrapped.getNotAfter();
        }

        @Override // java.security.cert.X509Certificate
        public Date getNotBefore() {
            return this.wrapped.getNotBefore();
        }

        @Override // java.security.cert.Certificate
        public PublicKey getPublicKey() {
            return this.wrapped.getPublicKey();
        }

        @Override // java.security.cert.X509Certificate
        public BigInteger getSerialNumber() {
            return this.wrapped.getSerialNumber();
        }

        @Override // java.security.cert.X509Certificate
        public String getSigAlgName() {
            return this.wrapped.getSigAlgName();
        }

        @Override // java.security.cert.X509Certificate
        public String getSigAlgOID() {
            return this.wrapped.getSigAlgOID();
        }

        @Override // java.security.cert.X509Certificate
        public byte[] getSigAlgParams() {
            return this.wrapped.getSigAlgParams();
        }

        @Override // java.security.cert.X509Certificate
        public byte[] getSignature() {
            return this.wrapped.getSignature();
        }

        @Override // java.security.cert.X509Certificate
        public Principal getSubjectDN() {
            return this.wrapped.getSubjectDN();
        }

        @Override // java.security.cert.X509Certificate
        public boolean[] getSubjectUniqueID() {
            return this.wrapped.getSubjectUniqueID();
        }

        @Override // java.security.cert.X509Certificate
        public byte[] getTBSCertificate() {
            return this.wrapped.getTBSCertificate();
        }

        @Override // java.security.cert.X509Certificate
        public int getVersion() {
            return this.wrapped.getVersion();
        }

        @Override // java.security.cert.X509Extension
        public boolean hasUnsupportedCriticalExtension() {
            return this.wrapped.hasUnsupportedCriticalExtension();
        }

        @Override // java.security.cert.Certificate
        public String toString() {
            return this.wrapped.toString();
        }

        @Override // java.security.cert.Certificate
        public void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
            this.wrapped.verify(publicKey);
        }

        @Override // java.security.cert.X509Certificate
        public void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
            this.wrapped.checkValidity(date);
        }

        @Override // java.security.cert.Certificate
        public void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
            this.wrapped.verify(publicKey, str);
        }
    }

    private static void checkByteOrderLittleEndian(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int compareContentDigestAlgorithm(int i2, int i3) {
        if (i2 == 1) {
            if (i3 == 1) {
                return 0;
            }
            if (i3 == 2) {
                return -1;
            }
            throw new IllegalArgumentException(c.d("Unknown digestAlgorithm2: ", i3));
        }
        if (i2 != 2) {
            throw new IllegalArgumentException(c.d("Unknown digestAlgorithm1: ", i2));
        }
        if (i3 == 1) {
            return 1;
        }
        if (i3 == 2) {
            return 0;
        }
        throw new IllegalArgumentException(c.d("Unknown digestAlgorithm2: ", i3));
    }

    private static int compareSignatureAlgorithm(int i2, int i3) {
        return compareContentDigestAlgorithm(getSignatureAlgorithmContentDigestAlgorithm(i2), getSignatureAlgorithmContentDigestAlgorithm(i3));
    }

    private static byte[][] computeContentDigests(int[] iArr, DataSource[] dataSourceArr) throws DigestException {
        String str;
        DataSource[] dataSourceArr2 = dataSourceArr;
        long j2 = 0;
        int i2 = 0;
        long chunkCount = 0;
        for (DataSource dataSource : dataSourceArr2) {
            chunkCount += getChunkCount(dataSource.size());
        }
        if (chunkCount >= 2097151) {
            throw new DigestException(c.f("Too many chunks: ", chunkCount));
        }
        int i3 = (int) chunkCount;
        byte[][] bArr = new byte[iArr.length][];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            byte[] bArr2 = new byte[(getContentDigestAlgorithmOutputSizeBytes(iArr[i4]) * i3) + 5];
            bArr2[0] = 90;
            setUnsignedInt32LittleEndian(i3, bArr2, 1);
            bArr[i4] = bArr2;
        }
        byte[] bArr3 = new byte[5];
        bArr3[0] = -91;
        int length = iArr.length;
        MessageDigest[] messageDigestArr = new MessageDigest[length];
        int i5 = 0;
        while (true) {
            str = " digest not supported";
            if (i5 >= iArr.length) {
                break;
            }
            String contentDigestAlgorithmJcaDigestAlgorithm = getContentDigestAlgorithmJcaDigestAlgorithm(iArr[i5]);
            try {
                messageDigestArr[i5] = MessageDigest.getInstance(contentDigestAlgorithmJcaDigestAlgorithm);
                i5++;
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(c.D(contentDigestAlgorithmJcaDigestAlgorithm, " digest not supported"), e2);
            }
        }
        int length2 = dataSourceArr2.length;
        int i6 = 0;
        int i7 = 0;
        while (i2 < length2) {
            DataSource dataSource2 = dataSourceArr2[i2];
            String str2 = str;
            int i8 = i7;
            long size = dataSource2.size();
            long j3 = j2;
            while (size > j2) {
                int iMin = (int) Math.min(size, 1048576L);
                setUnsignedInt32LittleEndian(iMin, bArr3, 1);
                for (int i9 = 0; i9 < length; i9++) {
                    messageDigestArr[i9].update(bArr3);
                }
                try {
                    dataSource2.feedIntoMessageDigests(messageDigestArr, j3, iMin);
                    int i10 = 0;
                    while (i10 < iArr.length) {
                        int i11 = iArr[i10];
                        byte[] bArr4 = bArr3;
                        byte[] bArr5 = bArr[i10];
                        int contentDigestAlgorithmOutputSizeBytes = getContentDigestAlgorithmOutputSizeBytes(i11);
                        int i12 = length;
                        MessageDigest messageDigest = messageDigestArr[i10];
                        MessageDigest[] messageDigestArr2 = messageDigestArr;
                        int iDigest = messageDigest.digest(bArr5, (i6 * contentDigestAlgorithmOutputSizeBytes) + 5, contentDigestAlgorithmOutputSizeBytes);
                        if (iDigest != contentDigestAlgorithmOutputSizeBytes) {
                            throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + iDigest);
                        }
                        i10++;
                        bArr3 = bArr4;
                        length = i12;
                        messageDigestArr = messageDigestArr2;
                    }
                    long j4 = iMin;
                    j3 += j4;
                    size -= j4;
                    i6++;
                    j2 = 0;
                    bArr3 = bArr3;
                } catch (IOException e3) {
                    throw new DigestException(m.e("Failed to digest chunk #", i6, " of section #", i8), e3);
                }
            }
            i7 = i8 + 1;
            i2++;
            j2 = 0;
            dataSourceArr2 = dataSourceArr;
            str = str2;
        }
        String str3 = str;
        byte[][] bArr6 = new byte[iArr.length][];
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            byte[] bArr7 = bArr[i13];
            String contentDigestAlgorithmJcaDigestAlgorithm2 = getContentDigestAlgorithmJcaDigestAlgorithm(i14);
            try {
                bArr6[i13] = MessageDigest.getInstance(contentDigestAlgorithmJcaDigestAlgorithm2).digest(bArr7);
            } catch (NoSuchAlgorithmException e4) {
                throw new RuntimeException(c.D(contentDigestAlgorithmJcaDigestAlgorithm2, str3), e4);
            }
        }
        return bArr6;
    }

    private static ByteBuffer findApkSignatureSchemeV2Block(ByteBuffer byteBuffer) throws SignatureNotFoundException {
        checkByteOrderLittleEndian(byteBuffer);
        ByteBuffer byteBufferSliceFromTo = sliceFromTo(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i2 = 0;
        while (byteBufferSliceFromTo.hasRemaining()) {
            i2++;
            if (byteBufferSliceFromTo.remaining() < 8) {
                throw new SignatureNotFoundException(c.d("Insufficient data to read size of APK Signing Block entry #", i2));
            }
            long j2 = byteBufferSliceFromTo.getLong();
            if (j2 < 4 || j2 > 2147483647L) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i2 + " size out of range: " + j2);
            }
            int i3 = (int) j2;
            int iPosition = byteBufferSliceFromTo.position() + i3;
            if (i3 > byteBufferSliceFromTo.remaining()) {
                StringBuilder sbT = c.t("APK Signing Block entry #", i2, " size out of range: ", i3, ", available: ");
                sbT.append(byteBufferSliceFromTo.remaining());
                throw new SignatureNotFoundException(sbT.toString());
            }
            if (byteBufferSliceFromTo.getInt() == APK_SIGNATURE_SCHEME_V2_BLOCK_ID) {
                return getByteBuffer(byteBufferSliceFromTo, i3 - 4);
            }
            byteBufferSliceFromTo.position(iPosition);
        }
        throw new SignatureNotFoundException("No APK Signature Scheme v2 block in APK Signing Block");
    }

    private static Pair<ByteBuffer, Long> findApkSigningBlock(RandomAccessFile randomAccessFile, long j2) throws SignatureNotFoundException, IOException {
        if (j2 < 32) {
            throw new SignatureNotFoundException(c.f("APK too small for APK Signing Block. ZIP Central Directory offset: ", j2));
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        byteBufferAllocate.order(byteOrder);
        randomAccessFile.seek(j2 - ((long) byteBufferAllocate.capacity()));
        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
        if (byteBufferAllocate.getLong(8) != APK_SIG_BLOCK_MAGIC_LO || byteBufferAllocate.getLong(16) != APK_SIG_BLOCK_MAGIC_HI) {
            throw new SignatureNotFoundException("No APK Signing Block before ZIP Central Directory");
        }
        long j3 = byteBufferAllocate.getLong(0);
        if (j3 < byteBufferAllocate.capacity() || j3 > 2147483639) {
            throw new SignatureNotFoundException(c.f("APK Signing Block size out of range: ", j3));
        }
        int i2 = (int) (8 + j3);
        long j4 = j2 - ((long) i2);
        if (j4 < 0) {
            throw new SignatureNotFoundException(c.f("APK Signing Block offset out of range: ", j4));
        }
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i2);
        byteBufferAllocate2.order(byteOrder);
        randomAccessFile.seek(j4);
        randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
        long j5 = byteBufferAllocate2.getLong(0);
        if (j5 == j3) {
            return Pair.create(byteBufferAllocate2, Long.valueOf(j4));
        }
        StringBuilder sbL = m.l("APK Signing Block sizes in header and footer do not match: ", j5, " vs ");
        sbL.append(j3);
        throw new SignatureNotFoundException(sbL.toString());
    }

    private static SignatureInfo findSignature(RandomAccessFile randomAccessFile) throws SignatureNotFoundException, IOException {
        Pair<ByteBuffer, Long> eocd = getEocd(randomAccessFile);
        ByteBuffer byteBuffer = eocd.first;
        long jLongValue = eocd.second.longValue();
        if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(randomAccessFile, jLongValue)) {
            throw new SignatureNotFoundException("ZIP64 APK not supported");
        }
        long centralDirOffset = getCentralDirOffset(byteBuffer, jLongValue);
        Pair<ByteBuffer, Long> pairFindApkSigningBlock = findApkSigningBlock(randomAccessFile, centralDirOffset);
        ByteBuffer byteBuffer2 = pairFindApkSigningBlock.first;
        return new SignatureInfo(findApkSignatureSchemeV2Block(byteBuffer2), pairFindApkSigningBlock.second.longValue(), centralDirOffset, jLongValue, byteBuffer);
    }

    private static ByteBuffer getByteBuffer(ByteBuffer byteBuffer, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(c.d("size: ", i2));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        int i3 = i2 + iPosition;
        if (i3 < iPosition || i3 > iLimit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i3);
        try {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            byteBuffer.position(i3);
            return byteBufferSlice;
        } finally {
            byteBuffer.limit(iLimit);
        }
    }

    private static long getCentralDirOffset(ByteBuffer byteBuffer, long j2) throws SignatureNotFoundException {
        long zipEocdCentralDirectoryOffset = ZipUtils.getZipEocdCentralDirectoryOffset(byteBuffer);
        if (zipEocdCentralDirectoryOffset <= j2) {
            if (ZipUtils.getZipEocdCentralDirectorySizeBytes(byteBuffer) + zipEocdCentralDirectoryOffset == j2) {
                return zipEocdCentralDirectoryOffset;
            }
            throw new SignatureNotFoundException("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        StringBuilder sbL = m.l("ZIP Central Directory offset out of range: ", zipEocdCentralDirectoryOffset, ". ZIP End of Central Directory offset: ");
        sbL.append(j2);
        throw new SignatureNotFoundException(sbL.toString());
    }

    private static final long getChunkCount(long j2) {
        return ((j2 + 1048576) - 1) / 1048576;
    }

    private static String getContentDigestAlgorithmJcaDigestAlgorithm(int i2) {
        if (i2 == 1) {
            return "SHA-256";
        }
        if (i2 == 2) {
            return KeyProperties.DIGEST_SHA512;
        }
        throw new IllegalArgumentException(c.d("Unknown content digest algorthm: ", i2));
    }

    private static int getContentDigestAlgorithmOutputSizeBytes(int i2) {
        if (i2 == 1) {
            return 32;
        }
        if (i2 == 2) {
            return 64;
        }
        throw new IllegalArgumentException(c.d("Unknown content digest algorthm: ", i2));
    }

    private static Pair<ByteBuffer, Long> getEocd(RandomAccessFile randomAccessFile) throws SignatureNotFoundException, IOException {
        Pair<ByteBuffer, Long> pairFindZipEndOfCentralDirectoryRecord = ZipUtils.findZipEndOfCentralDirectoryRecord(randomAccessFile);
        if (pairFindZipEndOfCentralDirectoryRecord != null) {
            return pairFindZipEndOfCentralDirectoryRecord;
        }
        throw new SignatureNotFoundException("Not an APK file: ZIP End of Central Directory record not found");
    }

    private static ByteBuffer getLengthPrefixedSlice(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() < 4) {
            throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
        }
        int i2 = byteBuffer.getInt();
        if (i2 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i2 <= byteBuffer.remaining()) {
            return getByteBuffer(byteBuffer, i2);
        }
        StringBuilder sbS = c.s("Length-prefixed field longer than remaining buffer. Field length: ", i2, ", remaining: ");
        sbS.append(byteBuffer.remaining());
        throw new IOException(sbS.toString());
    }

    private static int getSignatureAlgorithmContentDigestAlgorithm(int i2) {
        if (i2 == 513) {
            return 1;
        }
        if (i2 == 514) {
            return 2;
        }
        if (i2 == 769) {
            return 1;
        }
        switch (i2) {
            case 257:
            case 259:
                return 1;
            case 258:
            case 260:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2 & (-1)));
        }
    }

    private static String getSignatureAlgorithmJcaKeyAlgorithm(int i2) {
        if (i2 == 513 || i2 == 514) {
            return KeyProperties.KEY_ALGORITHM_EC;
        }
        if (i2 == 769) {
            return "DSA";
        }
        switch (i2) {
            case 257:
            case 258:
            case 259:
            case 260:
                return KeyProperties.KEY_ALGORITHM_RSA;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2 & (-1)));
        }
    }

    private static Pair<String, ? extends AlgorithmParameterSpec> getSignatureAlgorithmJcaSignatureAlgorithm(int i2) {
        if (i2 == 513) {
            return Pair.create("SHA256withECDSA", null);
        }
        if (i2 == 514) {
            return Pair.create("SHA512withECDSA", null);
        }
        if (i2 == 769) {
            return Pair.create("SHA256withDSA", null);
        }
        switch (i2) {
            case 257:
                return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
            case 258:
                return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec(KeyProperties.DIGEST_SHA512, "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
            case 259:
                return Pair.create("SHA256withRSA", null);
            case 260:
                return Pair.create("SHA512withRSA", null);
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2 & (-1)));
        }
    }

    public static boolean hasSignature(String str) throws IOException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, FullBackup.ROOT_TREE_TOKEN);
            try {
                findSignature(randomAccessFile);
                randomAccessFile.close();
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (SignatureNotFoundException unused) {
            return false;
        }
    }

    private static boolean isSupportedSignatureAlgorithm(int i2) {
        if (i2 == 513 || i2 == 514 || i2 == 769) {
            return true;
        }
        switch (i2) {
            case 257:
            case 258:
            case 259:
            case 260:
                return true;
            default:
                return false;
        }
    }

    private static byte[] readLengthPrefixedByteArray(ByteBuffer byteBuffer) throws IOException {
        int i2 = byteBuffer.getInt();
        if (i2 < 0) {
            throw new IOException("Negative length");
        }
        if (i2 <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i2];
            byteBuffer.get(bArr);
            return bArr;
        }
        StringBuilder sbS = c.s("Underflow while reading length-prefixed value. Length: ", i2, ", available: ");
        sbS.append(byteBuffer.remaining());
        throw new IOException(sbS.toString());
    }

    private static void setUnsignedInt32LittleEndian(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) (i2 & 255);
        bArr[i3 + 1] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 + 2] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 + 3] = (byte) ((i2 >>> 24) & 255);
    }

    private static ByteBuffer sliceFromTo(ByteBuffer byteBuffer, int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException(c.d("start: ", i2));
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(m.e("end < start: ", i3, " < ", i2));
        }
        int iCapacity = byteBuffer.capacity();
        if (i3 > byteBuffer.capacity()) {
            throw new IllegalArgumentException(m.e("end > capacity: ", i3, " > ", iCapacity));
        }
        int iLimit = byteBuffer.limit();
        int iPosition = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i3);
            byteBuffer.position(i2);
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.order(byteBuffer.order());
            return byteBufferSlice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
        }
    }

    public static X509Certificate[][] verify(String str) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, FullBackup.ROOT_TREE_TOKEN);
        try {
            X509Certificate[][] x509CertificateArrVerify = verify(randomAccessFile);
            randomAccessFile.close();
            return x509CertificateArrVerify;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private static void verifyIntegrity(Map<Integer, byte[]> map, FileDescriptor fileDescriptor, long j2, long j3, long j4, ByteBuffer byteBuffer) {
        if (map.isEmpty()) {
            throw new SecurityException("No digests provided");
        }
        MemoryMappedFileDataSource memoryMappedFileDataSource = new MemoryMappedFileDataSource(fileDescriptor, 0L, j2);
        MemoryMappedFileDataSource memoryMappedFileDataSource2 = new MemoryMappedFileDataSource(fileDescriptor, j3, j4 - j3);
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        ZipUtils.setZipEocdCentralDirectoryOffset(byteBufferDuplicate, j2);
        ByteBufferDataSource byteBufferDataSource = new ByteBufferDataSource(byteBufferDuplicate);
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        try {
            byte[][] bArrComputeContentDigests = computeContentDigests(iArr, new DataSource[]{memoryMappedFileDataSource, memoryMappedFileDataSource2, byteBufferDataSource});
            for (int i3 = 0; i3 < size; i3++) {
                int i4 = iArr[i3];
                if (!MessageDigest.isEqual(map.get(Integer.valueOf(i4)), bArrComputeContentDigests[i3])) {
                    throw new SecurityException(c.n(new StringBuilder(), getContentDigestAlgorithmJcaDigestAlgorithm(i4), " digest of contents did not verify"));
                }
            }
        } catch (DigestException e2) {
            throw new SecurityException("Failed to compute digest(s) of contents", e2);
        }
    }

    private static X509Certificate[] verifySigner(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) throws IOException {
        ByteBuffer lengthPrefixedSlice = getLengthPrefixedSlice(byteBuffer);
        ByteBuffer lengthPrefixedSlice2 = getLengthPrefixedSlice(byteBuffer);
        byte[] lengthPrefixedByteArray = readLengthPrefixedByteArray(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] lengthPrefixedByteArray2 = null;
        int i2 = 0;
        int i3 = -1;
        byte[] lengthPrefixedByteArray3 = null;
        while (lengthPrefixedSlice2.hasRemaining()) {
            i2++;
            try {
                ByteBuffer lengthPrefixedSlice3 = getLengthPrefixedSlice(lengthPrefixedSlice2);
                if (lengthPrefixedSlice3.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i4 = lengthPrefixedSlice3.getInt();
                arrayList.add(Integer.valueOf(i4));
                if (isSupportedSignatureAlgorithm(i4) && (i3 == -1 || compareSignatureAlgorithm(i4, i3) > 0)) {
                    lengthPrefixedByteArray3 = readLengthPrefixedByteArray(lengthPrefixedSlice3);
                    i3 = i4;
                }
            } catch (IOException | BufferUnderflowException e2) {
                throw new SecurityException(c.d("Failed to parse signature record #", i2), e2);
            }
        }
        if (i3 == -1) {
            if (i2 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        String signatureAlgorithmJcaKeyAlgorithm = getSignatureAlgorithmJcaKeyAlgorithm(i3);
        Pair<String, ? extends AlgorithmParameterSpec> signatureAlgorithmJcaSignatureAlgorithm = getSignatureAlgorithmJcaSignatureAlgorithm(i3);
        String str = signatureAlgorithmJcaSignatureAlgorithm.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) signatureAlgorithmJcaSignatureAlgorithm.second;
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(signatureAlgorithmJcaKeyAlgorithm).generatePublic(new X509EncodedKeySpec(lengthPrefixedByteArray));
            Signature signature = Signature.getInstance(str);
            signature.initVerify(publicKeyGeneratePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(lengthPrefixedSlice);
            if (!signature.verify(lengthPrefixedByteArray3)) {
                throw new SecurityException(c.D(str, " signature did not verify"));
            }
            lengthPrefixedSlice.clear();
            ByteBuffer lengthPrefixedSlice4 = getLengthPrefixedSlice(lengthPrefixedSlice);
            ArrayList arrayList2 = new ArrayList();
            int i5 = 0;
            while (lengthPrefixedSlice4.hasRemaining()) {
                i5++;
                try {
                    ByteBuffer lengthPrefixedSlice5 = getLengthPrefixedSlice(lengthPrefixedSlice4);
                    if (lengthPrefixedSlice5.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i6 = lengthPrefixedSlice5.getInt();
                    arrayList2.add(Integer.valueOf(i6));
                    if (i6 == i3) {
                        lengthPrefixedByteArray2 = readLengthPrefixedByteArray(lengthPrefixedSlice5);
                    }
                } catch (IOException | BufferUnderflowException e3) {
                    throw new IOException(c.d("Failed to parse digest record #", i5), e3);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int signatureAlgorithmContentDigestAlgorithm = getSignatureAlgorithmContentDigestAlgorithm(i3);
            byte[] bArrPut = map.put(Integer.valueOf(signatureAlgorithmContentDigestAlgorithm), lengthPrefixedByteArray2);
            if (bArrPut != null && !MessageDigest.isEqual(bArrPut, lengthPrefixedByteArray2)) {
                throw new SecurityException(c.n(new StringBuilder(), getContentDigestAlgorithmJcaDigestAlgorithm(signatureAlgorithmContentDigestAlgorithm), " contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer lengthPrefixedSlice6 = getLengthPrefixedSlice(lengthPrefixedSlice);
            ArrayList arrayList3 = new ArrayList();
            int i7 = 0;
            while (lengthPrefixedSlice6.hasRemaining()) {
                i7++;
                byte[] lengthPrefixedByteArray4 = readLengthPrefixedByteArray(lengthPrefixedSlice6);
                try {
                    arrayList3.add(new VerbatimX509Certificate((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(lengthPrefixedByteArray4)), lengthPrefixedByteArray4));
                } catch (CertificateException e4) {
                    throw new SecurityException(c.d("Failed to decode certificate #", i7), e4);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (Arrays.equals(lengthPrefixedByteArray, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
            }
            throw new SecurityException("Public key mismatch between certificate and signature record");
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e5) {
            throw new SecurityException(c.k("Failed to verify ", str, " signature"), e5);
        }
    }

    private static X509Certificate[][] verify(RandomAccessFile randomAccessFile) throws SignatureNotFoundException, IOException {
        return verify(randomAccessFile.getFD(), findSignature(randomAccessFile));
    }

    private static X509Certificate[][] verify(FileDescriptor fileDescriptor, SignatureInfo signatureInfo) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer lengthPrefixedSlice = getLengthPrefixedSlice(signatureInfo.signatureBlock);
                int i2 = 0;
                while (lengthPrefixedSlice.hasRemaining()) {
                    i2++;
                    try {
                        arrayList.add(verifySigner(getLengthPrefixedSlice(lengthPrefixedSlice), arrayMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e2) {
                        throw new SecurityException(c.e("Failed to parse/verify signer #", i2, " block"), e2);
                    }
                }
                if (i2 >= 1) {
                    if (!arrayMap.isEmpty()) {
                        verifyIntegrity(arrayMap, fileDescriptor, signatureInfo.apkSigningBlockOffset, signatureInfo.centralDirOffset, signatureInfo.eocdOffset, signatureInfo.eocd);
                        return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]);
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }
}
