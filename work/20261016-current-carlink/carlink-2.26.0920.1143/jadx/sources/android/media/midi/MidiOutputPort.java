package android.media.midi;

import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.midi.MidiDispatcher;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MidiOutputPort extends MidiSender implements Closeable {
    private static final String TAG = "MidiOutputPort";
    private IMidiDeviceServer mDeviceServer;
    private final MidiDispatcher mDispatcher;
    private final CloseGuard mGuard;
    private final FileInputStream mInputStream;
    private boolean mIsClosed;
    private final int mPortNumber;
    private final Thread mThread;
    private final IBinder mToken;

    public MidiOutputPort(IMidiDeviceServer iMidiDeviceServer, IBinder iBinder, FileDescriptor fileDescriptor, int i2) {
        this.mDispatcher = new MidiDispatcher();
        CloseGuard closeGuard = CloseGuard.get();
        this.mGuard = closeGuard;
        Thread thread = new Thread() { // from class: android.media.midi.MidiOutputPort.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                byte[] bArr = new byte[1024];
                while (true) {
                    try {
                        try {
                            int i3 = MidiOutputPort.this.mInputStream.read(bArr);
                            if (i3 < 0) {
                                break;
                            }
                            int packetType = MidiPortImpl.getPacketType(bArr, i3);
                            if (packetType == 1) {
                                MidiOutputPort.this.mDispatcher.send(bArr, MidiPortImpl.getDataOffset(bArr, i3), MidiPortImpl.getDataSize(bArr, i3), MidiPortImpl.getPacketTimestamp(bArr, i3));
                            } else if (packetType != 2) {
                                Log.e(MidiOutputPort.TAG, "Unknown packet type " + packetType);
                            } else {
                                MidiOutputPort.this.mDispatcher.flush();
                            }
                        } catch (IOException e2) {
                            Log.e(MidiOutputPort.TAG, "read failed", e2);
                        }
                    } catch (Throwable th) {
                        IoUtils.closeQuietly(MidiOutputPort.this.mInputStream);
                        throw th;
                    }
                }
                IoUtils.closeQuietly(MidiOutputPort.this.mInputStream);
            }
        };
        this.mThread = thread;
        this.mDeviceServer = iMidiDeviceServer;
        this.mToken = iBinder;
        this.mPortNumber = i2;
        this.mInputStream = new ParcelFileDescriptor.AutoCloseInputStream(new ParcelFileDescriptor(fileDescriptor));
        thread.start();
        closeGuard.open("close");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mGuard) {
            if (this.mIsClosed) {
                return;
            }
            this.mGuard.close();
            this.mInputStream.close();
            IMidiDeviceServer iMidiDeviceServer = this.mDeviceServer;
            if (iMidiDeviceServer != null) {
                try {
                    iMidiDeviceServer.closePort(this.mToken);
                } catch (RemoteException unused) {
                    Log.e(TAG, "RemoteException in MidiOutputPort.close()");
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

    public final int getPortNumber() {
        return this.mPortNumber;
    }

    @Override // android.media.midi.MidiSender
    public void onConnect(MidiReceiver midiReceiver) {
        this.mDispatcher.getSender().connect(midiReceiver);
    }

    @Override // android.media.midi.MidiSender
    public void onDisconnect(MidiReceiver midiReceiver) {
        this.mDispatcher.getSender().disconnect(midiReceiver);
    }

    public MidiOutputPort(FileDescriptor fileDescriptor, int i2) {
        this(null, null, fileDescriptor, i2);
    }
}
