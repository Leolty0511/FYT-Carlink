package android.os;

import android.content.Context;
import android.os.storage.StorageManager;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Slog;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InterruptedIOException;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class RevocableFileDescriptor {
    private static final boolean DEBUG = true;
    private static final String TAG = "RevocableFileDescriptor";
    private final ProxyFileDescriptorCallback mCallback = new ProxyFileDescriptorCallback() { // from class: android.os.RevocableFileDescriptor.1
        private void checkRevoked() throws ErrnoException {
            if (RevocableFileDescriptor.this.mRevoked) {
                throw new ErrnoException(RevocableFileDescriptor.TAG, OsConstants.EPERM);
            }
        }

        @Override // android.os.ProxyFileDescriptorCallback
        public void onFsync() throws ErrnoException {
            Slog.v(RevocableFileDescriptor.TAG, "onFsync()");
            checkRevoked();
            Os.fsync(RevocableFileDescriptor.this.mInner);
        }

        @Override // android.os.ProxyFileDescriptorCallback
        public long onGetSize() throws ErrnoException {
            checkRevoked();
            return Os.fstat(RevocableFileDescriptor.this.mInner).st_size;
        }

        @Override // android.os.ProxyFileDescriptorCallback
        public int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
            checkRevoked();
            int i3 = 0;
            while (i3 < i2) {
                try {
                    return i3 + Os.pread(RevocableFileDescriptor.this.mInner, bArr, i3, i2 - i3, j2 + ((long) i3));
                } catch (InterruptedIOException e2) {
                    i3 += e2.bytesTransferred;
                }
            }
            return i3;
        }

        @Override // android.os.ProxyFileDescriptorCallback
        public void onRelease() {
            Slog.v(RevocableFileDescriptor.TAG, "onRelease()");
            RevocableFileDescriptor.this.mRevoked = true;
            IoUtils.closeQuietly(RevocableFileDescriptor.this.mInner);
        }

        @Override // android.os.ProxyFileDescriptorCallback
        public int onWrite(long j2, int i2, byte[] bArr) throws ErrnoException {
            checkRevoked();
            int i3 = 0;
            while (i3 < i2) {
                try {
                    return i3 + Os.pwrite(RevocableFileDescriptor.this.mInner, bArr, i3, i2 - i3, j2 + ((long) i3));
                } catch (InterruptedIOException e2) {
                    i3 += e2.bytesTransferred;
                }
            }
            return i3;
        }
    };
    private FileDescriptor mInner;
    private ParcelFileDescriptor mOuter;
    private volatile boolean mRevoked;

    public RevocableFileDescriptor() {
    }

    public ParcelFileDescriptor getRevocableFileDescriptor() {
        return this.mOuter;
    }

    public void init(Context context, FileDescriptor fileDescriptor) {
        this.mInner = fileDescriptor;
        this.mOuter = ((StorageManager) context.getSystemService(StorageManager.class)).openProxyFileDescriptor(805306368, this.mCallback);
    }

    public boolean isRevoked() {
        return this.mRevoked;
    }

    public void revoke() {
        this.mRevoked = true;
        IoUtils.closeQuietly(this.mInner);
    }

    public RevocableFileDescriptor(Context context, File file) throws IOException {
        try {
            init(context, Os.open(file.getAbsolutePath(), OsConstants.O_CREAT | OsConstants.O_RDWR, 448));
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
    }

    public RevocableFileDescriptor(Context context, FileDescriptor fileDescriptor) {
        init(context, fileDescriptor);
    }
}
