package android.media.midi;

import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashSet;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MidiDevice implements Closeable {
    private static final String TAG = "MidiDevice";
    private static HashSet<MidiDevice> mMirroredDevices;
    private final IBinder mClientToken;
    private final MidiDeviceInfo mDeviceInfo;
    private final IMidiDeviceServer mDeviceServer;
    private final IBinder mDeviceToken;
    private final CloseGuard mGuard;
    private boolean mIsDeviceClosed;
    private final IMidiManager mMidiManager;
    private long mNativeHandle;

    public class MidiConnection implements Closeable {
        private final CloseGuard mGuard;
        private final IMidiDeviceServer mInputPortDeviceServer;
        private final IBinder mInputPortToken;
        private boolean mIsClosed;
        private final IBinder mOutputPortToken;

        public MidiConnection(IBinder iBinder, MidiInputPort midiInputPort) {
            CloseGuard closeGuard = CloseGuard.get();
            this.mGuard = closeGuard;
            this.mInputPortDeviceServer = midiInputPort.getDeviceServer();
            this.mInputPortToken = midiInputPort.getToken();
            this.mOutputPortToken = iBinder;
            closeGuard.open("close");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (this.mGuard) {
                if (this.mIsClosed) {
                    return;
                }
                this.mGuard.close();
                try {
                    this.mInputPortDeviceServer.closePort(this.mInputPortToken);
                    MidiDevice.this.mDeviceServer.closePort(this.mOutputPortToken);
                } catch (RemoteException unused) {
                    Log.e(MidiDevice.TAG, "RemoteException in MidiConnection.close");
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
                close();
            } finally {
                super.finalize();
            }
        }
    }

    static {
        System.loadLibrary("media_jni");
        mMirroredDevices = new HashSet<>();
    }

    public MidiDevice(MidiDeviceInfo midiDeviceInfo, IMidiDeviceServer iMidiDeviceServer, IMidiManager iMidiManager, IBinder iBinder, IBinder iBinder2) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mGuard = closeGuard;
        this.mDeviceInfo = midiDeviceInfo;
        this.mDeviceServer = iMidiDeviceServer;
        this.mMidiManager = iMidiManager;
        this.mClientToken = iBinder;
        this.mDeviceToken = iBinder2;
        closeGuard.open("close");
    }

    private native long native_mirrorToNative(IBinder iBinder, int i2);

    private native void native_removeFromNative(long j2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mGuard) {
            if (!this.mIsDeviceClosed) {
                removeFromNative();
                this.mGuard.close();
                this.mIsDeviceClosed = true;
                try {
                    this.mMidiManager.closeDevice(this.mClientToken, this.mDeviceToken);
                } catch (RemoteException unused) {
                    Log.e(TAG, "RemoteException in closeDevice");
                }
            }
        }
    }

    public MidiConnection connectPorts(MidiInputPort midiInputPort, int i2) {
        FileDescriptor fileDescriptorClaimFileDescriptor;
        if (i2 < 0 || i2 >= this.mDeviceInfo.getOutputPortCount()) {
            throw new IllegalArgumentException("outputPortNumber out of range");
        }
        if (this.mIsDeviceClosed || (fileDescriptorClaimFileDescriptor = midiInputPort.claimFileDescriptor()) == null) {
            return null;
        }
        try {
            Binder binder = new Binder();
            if (this.mDeviceServer.connectPorts(binder, fileDescriptorClaimFileDescriptor, i2) != Process.myPid()) {
                IoUtils.closeQuietly(fileDescriptorClaimFileDescriptor);
            }
            return new MidiConnection(binder, midiInputPort);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException in connectPorts");
            return null;
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public MidiDeviceInfo getInfo() {
        return this.mDeviceInfo;
    }

    public long mirrorToNative() throws IOException {
        if (this.mIsDeviceClosed || this.mNativeHandle != 0) {
            return 0L;
        }
        long jNative_mirrorToNative = native_mirrorToNative(this.mDeviceServer.asBinder(), this.mDeviceInfo.getId());
        this.mNativeHandle = jNative_mirrorToNative;
        if (jNative_mirrorToNative == 0) {
            throw new IOException("Failed mirroring to native");
        }
        synchronized (mMirroredDevices) {
            mMirroredDevices.add(this);
        }
        return this.mNativeHandle;
    }

    public MidiInputPort openInputPort(int i2) {
        if (this.mIsDeviceClosed) {
            return null;
        }
        try {
            Binder binder = new Binder();
            FileDescriptor fileDescriptorOpenInputPort = this.mDeviceServer.openInputPort(binder, i2);
            if (fileDescriptorOpenInputPort == null) {
                return null;
            }
            return new MidiInputPort(this.mDeviceServer, binder, fileDescriptorOpenInputPort, i2);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException in openInputPort");
            return null;
        }
    }

    public MidiOutputPort openOutputPort(int i2) {
        if (this.mIsDeviceClosed) {
            return null;
        }
        try {
            Binder binder = new Binder();
            FileDescriptor fileDescriptorOpenOutputPort = this.mDeviceServer.openOutputPort(binder, i2);
            if (fileDescriptorOpenOutputPort == null) {
                return null;
            }
            return new MidiOutputPort(this.mDeviceServer, binder, fileDescriptorOpenOutputPort, i2);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException in openOutputPort");
            return null;
        }
    }

    public void removeFromNative() {
        if (this.mNativeHandle == 0) {
            return;
        }
        synchronized (this.mGuard) {
            native_removeFromNative(this.mNativeHandle);
            this.mNativeHandle = 0L;
        }
        synchronized (mMirroredDevices) {
            mMirroredDevices.remove(this);
        }
    }

    public String toString() {
        return "MidiDevice: " + this.mDeviceInfo.toString();
    }
}
