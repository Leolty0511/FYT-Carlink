package android.media.midi;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MidiInputPort extends MidiReceiver implements Closeable {
    private static final String TAG = "MidiInputPort";
    private final byte[] mBuffer;
    private IMidiDeviceServer mDeviceServer;
    private FileDescriptor mFileDescriptor;
    private final CloseGuard mGuard;
    private boolean mIsClosed;
    private FileOutputStream mOutputStream;
    private final int mPortNumber;
    private final IBinder mToken;

    public MidiInputPort(IMidiDeviceServer iMidiDeviceServer, IBinder iBinder, FileDescriptor fileDescriptor, int i2) {
        super(1015);
        CloseGuard closeGuard = CloseGuard.get();
        this.mGuard = closeGuard;
        this.mBuffer = new byte[1024];
        this.mDeviceServer = iMidiDeviceServer;
        this.mToken = iBinder;
        this.mFileDescriptor = fileDescriptor;
        this.mPortNumber = i2;
        this.mOutputStream = new FileOutputStream(fileDescriptor);
        closeGuard.open("close");
    }

    public FileDescriptor claimFileDescriptor() {
        synchronized (this.mGuard) {
            synchronized (this.mBuffer) {
                FileDescriptor fileDescriptor = this.mFileDescriptor;
                if (fileDescriptor == null) {
                    return null;
                }
                IoUtils.closeQuietly(this.mOutputStream);
                this.mFileDescriptor = null;
                this.mOutputStream = null;
                this.mIsClosed = true;
                return fileDescriptor;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mGuard) {
            if (this.mIsClosed) {
                return;
            }
            this.mGuard.close();
            synchronized (this.mBuffer) {
                FileDescriptor fileDescriptor = this.mFileDescriptor;
                if (fileDescriptor != null) {
                    IoUtils.closeQuietly(fileDescriptor);
                    this.mFileDescriptor = null;
                }
                FileOutputStream fileOutputStream = this.mOutputStream;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                    this.mOutputStream = null;
                }
            }
            IMidiDeviceServer iMidiDeviceServer = this.mDeviceServer;
            if (iMidiDeviceServer != null) {
                try {
                    iMidiDeviceServer.closePort(this.mToken);
                } catch (RemoteException unused) {
                    Log.e(TAG, "RemoteException in MidiInputPort.close()");
                }
            }
            this.mIsClosed = true;
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            this.mDeviceServer = null;
            close();
        } finally {
            super.finalize();
        }
    }

    public IMidiDeviceServer getDeviceServer() {
        return this.mDeviceServer;
    }

    public final int getPortNumber() {
        return this.mPortNumber;
    }

    public IBinder getToken() {
        return this.mToken;
    }

    @Override // android.media.midi.MidiReceiver
    public void onFlush() {
        synchronized (this.mBuffer) {
            if (this.mOutputStream == null) {
                throw new IOException("MidiInputPort is closed");
            }
            this.mOutputStream.write(this.mBuffer, 0, MidiPortImpl.packFlush(this.mBuffer));
        }
    }

    @Override // android.media.midi.MidiReceiver
    public void onSend(byte[] bArr, int i2, int i3, long j2) {
        if (i2 < 0 || i3 < 0 || i2 + i3 > bArr.length) {
            throw new IllegalArgumentException("offset or count out of range");
        }
        if (i3 > 1015) {
            throw new IllegalArgumentException("count exceeds max message size");
        }
        synchronized (this.mBuffer) {
            if (this.mOutputStream == null) {
                throw new IOException("MidiInputPort is closed");
            }
            this.mOutputStream.write(this.mBuffer, 0, MidiPortImpl.packData(bArr, i2, i3, j2, this.mBuffer));
        }
    }

    public MidiInputPort(FileDescriptor fileDescriptor, int i2) {
        this(null, null, fileDescriptor, i2);
    }
}
