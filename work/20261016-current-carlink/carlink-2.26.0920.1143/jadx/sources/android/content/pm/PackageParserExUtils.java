package android.content.pm;

import android.accessibilityservice.c;
import android.os.SystemProperties;
import android.util.ArraySet;
import android.util.Slog;
import android.util.jar.StrictJarFile;
import com.android.internal.util.ArrayUtils;
import java.io.File;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;

/* JADX INFO: loaded from: classes.dex */
public class PackageParserExUtils {
    private static final String TAG = "PackageParserUtils";
    private static boolean mResult = true;

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean asynccollectCertificates(PackageParser.Package r3, List<ZipEntry> list, StrictJarFile strictJarFile, int i2, int i3) {
        while (i2 <= i3) {
            ZipEntry zipEntry = list.get(i2);
            if (!zipEntry.isDirectory() && !zipEntry.getName().startsWith("META-INF/")) {
                try {
                    Certificate[][] certificateArrLoadCertificates = PackageParser.loadCertificates(strictJarFile, zipEntry);
                    if (ArrayUtils.isEmpty(certificateArrLoadCertificates)) {
                        return false;
                    }
                    if (!Signature.areExactMatch(r3.mSignatures, PackageParser.convertToSignatures(certificateArrLoadCertificates))) {
                        return false;
                    }
                } catch (PackageParser.PackageParserException | CertificateEncodingException unused) {
                    return false;
                }
            }
            i2++;
        }
        return true;
    }

    public static void collectNonSystemAppCertificates(final PackageParser.Package r22, final List<ZipEntry> list, final StrictJarFile strictJarFile, File file) throws PackageParser.PackageParserException {
        int i2;
        int size = list.size();
        int i3 = 1;
        mResult = true;
        Slog.i(TAG, "collectCertificates length = " + size);
        if (r22.mCertificates == null) {
            int iInitPkgCertificates = initPkgCertificates(r22, list, strictJarFile, 0, size - 1);
            if (iInitPkgCertificates == -1) {
                throw new PackageParser.PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Package " + file.getAbsolutePath() + " has no certificates ");
            }
            if (size == iInitPkgCertificates) {
                return;
            } else {
                i2 = iInitPkgCertificates;
            }
        } else {
            i2 = 0;
        }
        if (size < 100) {
            if (asynccollectCertificates(r22, list, strictJarFile, i2, size - 1)) {
                return;
            }
            throw new PackageParser.PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Package " + file.getAbsolutePath() + " has no certificates ");
        }
        int i4 = SystemProperties.getInt("sys.sprd.pkgverify.threadnum", 4);
        CountDownLatch countDownLatch = new CountDownLatch(i4);
        int i5 = (size - i2) / i4;
        int i6 = 0;
        while (i6 < i4) {
            final int i7 = (i6 * i5) + i2;
            int i8 = i6 != i4 + (-1) ? (i7 + i5) - i3 : size - 1;
            final CountDownLatch countDownLatch2 = countDownLatch;
            int i9 = i4;
            final int i10 = i8;
            new Thread(c.d("asynccollectCertificates", i6)) { // from class: android.content.pm.PackageParserExUtils.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    if (!PackageParserExUtils.asynccollectCertificates(r22, list, strictJarFile, i7, i10)) {
                        boolean unused = PackageParserExUtils.mResult = false;
                    }
                    countDownLatch2.countDown();
                }
            }.start();
            i6++;
            i3 = 1;
            i4 = i9;
            i2 = i2;
            countDownLatch = countDownLatch2;
        }
        waitForLatch(countDownLatch);
        Slog.i(TAG, "mResult = " + mResult);
        if (mResult) {
            return;
        }
        throw new PackageParser.PackageParserException(PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, "Package " + file.getAbsolutePath() + " has no certificates ");
    }

    private static int initPkgCertificates(PackageParser.Package r4, List<ZipEntry> list, StrictJarFile strictJarFile, int i2, int i3) {
        while (i2 <= i3) {
            ZipEntry zipEntry = list.get(i2);
            if (zipEntry.isDirectory() || zipEntry.getName().startsWith("META-INF/")) {
                i2++;
            } else {
                try {
                    Certificate[][] certificateArrLoadCertificates = PackageParser.loadCertificates(strictJarFile, zipEntry);
                    if (ArrayUtils.isEmpty(certificateArrLoadCertificates)) {
                        return -1;
                    }
                    Signature[] signatureArrConvertToSignatures = PackageParser.convertToSignatures(certificateArrLoadCertificates);
                    r4.mCertificates = certificateArrLoadCertificates;
                    r4.mSignatures = signatureArrConvertToSignatures;
                    r4.mSigningKeys = new ArraySet<>();
                    for (Certificate[] certificateArr : certificateArrLoadCertificates) {
                        r4.mSigningKeys.add(certificateArr[0].getPublicKey());
                    }
                    return i2 + 1;
                } catch (PackageParser.PackageParserException | CertificateEncodingException unused) {
                }
            }
        }
        return -1;
    }

    private static void waitForLatch(CountDownLatch countDownLatch) {
        while (true) {
            try {
                if (countDownLatch.await(500000L, TimeUnit.MILLISECONDS)) {
                    Slog.e(TAG, "waitForLatch done!");
                    return;
                }
                Slog.e(TAG, "Thread " + Thread.currentThread().getName() + " still waiting for asynccollectCertificates ready...");
            } catch (InterruptedException unused) {
                Slog.e(TAG, "Interrupt while waiting for asynccollectCertificates to be ready.");
            }
        }
    }
}
