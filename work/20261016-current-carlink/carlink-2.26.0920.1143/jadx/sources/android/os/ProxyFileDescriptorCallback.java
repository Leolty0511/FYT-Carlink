package android.os;

import android.system.ErrnoException;
import android.system.OsConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class ProxyFileDescriptorCallback {
    public void onFsync() throws ErrnoException {
        throw new ErrnoException("onFsync", OsConstants.EINVAL);
    }

    public long onGetSize() throws ErrnoException {
        throw new ErrnoException("onGetSize", OsConstants.EBADF);
    }

    public int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        throw new ErrnoException("onRead", OsConstants.EBADF);
    }

    public abstract void onRelease();

    public int onWrite(long j2, int i2, byte[] bArr) throws ErrnoException {
        throw new ErrnoException("onWrite", OsConstants.EBADF);
    }
}
