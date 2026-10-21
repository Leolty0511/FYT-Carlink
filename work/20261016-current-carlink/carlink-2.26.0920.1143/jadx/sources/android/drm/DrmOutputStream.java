package android.drm;

import android.accessibilityservice.c;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.net.UnknownServiceException;
import java.util.Arrays;
import libcore.io.IoBridge;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
public class DrmOutputStream extends OutputStream {
    private static final String TAG = "DrmOutputStream";
    private final DrmManagerClientEx mClient;
    private final FileDescriptor mFd;
    private final ParcelFileDescriptor mPfd;
    private int mSessionId;

    public DrmOutputStream(DrmManagerClientEx drmManagerClientEx, ParcelFileDescriptor parcelFileDescriptor, String str) throws UnknownServiceException {
        this.mSessionId = -1;
        this.mClient = drmManagerClientEx;
        this.mPfd = parcelFileDescriptor;
        this.mFd = parcelFileDescriptor.getFileDescriptor();
        int iOpenConvertSession = drmManagerClientEx.openConvertSession(str);
        this.mSessionId = iOpenConvertSession;
        if (iOpenConvertSession == -1) {
            throw new UnknownServiceException(c.j("Failed to open DRM session for ", str));
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.mSessionId == -1) {
            Log.w(TAG, "Closing stream without finishing");
        }
        this.mPfd.close();
    }

    public void finish() throws IOException {
        DrmConvertedStatus drmConvertedStatusCloseConvertSession = this.mClient.closeConvertSession(this.mSessionId);
        if (drmConvertedStatusCloseConvertSession.statusCode != 1) {
            throw new IOException("Unexpected DRM status: " + drmConvertedStatusCloseConvertSession.statusCode);
        }
        try {
            Os.lseek(this.mFd, drmConvertedStatusCloseConvertSession.offset, OsConstants.SEEK_SET);
        } catch (ErrnoException e2) {
            e2.rethrowAsIOException();
        }
        FileDescriptor fileDescriptor = this.mFd;
        byte[] bArr = drmConvertedStatusCloseConvertSession.convertedData;
        IoBridge.write(fileDescriptor, bArr, 0, bArr.length);
        this.mSessionId = -1;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) throws IOException {
        Arrays.checkOffsetAndCount(bArr.length, i2, i3);
        if (i3 != bArr.length) {
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            bArr = bArr2;
        }
        DrmConvertedStatus drmConvertedStatusConvertData = this.mClient.convertData(this.mSessionId, bArr);
        if (drmConvertedStatusConvertData.statusCode != 1) {
            throw new IOException("Unexpected DRM status: " + drmConvertedStatusConvertData.statusCode);
        }
        FileDescriptor fileDescriptor = this.mFd;
        byte[] bArr3 = drmConvertedStatusConvertData.convertedData;
        IoBridge.write(fileDescriptor, bArr3, 0, bArr3.length);
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        Streams.writeSingleByte(this, i2);
    }
}
