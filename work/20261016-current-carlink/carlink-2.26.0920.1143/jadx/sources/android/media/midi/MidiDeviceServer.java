package android.media.midi;

import android.app.m;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.android.internal.midi.MidiDispatcher;
import dalvik.system.CloseGuard;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MidiDeviceServer implements Closeable {
    private static final String TAG = "MidiDeviceServer";
    private final Callback mCallback;
    private MidiDeviceInfo mDeviceInfo;
    private final CloseGuard mGuard;
    private final HashMap<MidiInputPort, PortClient> mInputPortClients;
    private final int mInputPortCount;
    private final MidiDispatcher.MidiReceiverFailureHandler mInputPortFailureHandler;
    private final boolean[] mInputPortOpen;
    private final MidiOutputPort[] mInputPortOutputPorts;
    private final MidiReceiver[] mInputPortReceivers;
    private final CopyOnWriteArrayList<MidiInputPort> mInputPorts;
    private boolean mIsClosed;
    private final IMidiManager mMidiManager;
    private final int mOutputPortCount;
    private MidiDispatcher[] mOutputPortDispatchers;
    private final int[] mOutputPortOpenCount;
    private final HashMap<IBinder, PortClient> mPortClients;
    private final IMidiDeviceServer mServer;

    public interface Callback {
        void onClose();

        void onDeviceStatusChanged(MidiDeviceServer midiDeviceServer, MidiDeviceStatus midiDeviceStatus);
    }

    public class InputPortClient extends PortClient {
        private final MidiOutputPort mOutputPort;

        public InputPortClient(IBinder iBinder, MidiOutputPort midiOutputPort) {
            super(iBinder);
            this.mOutputPort = midiOutputPort;
        }

        @Override // android.media.midi.MidiDeviceServer.PortClient
        public void close() {
            this.mToken.unlinkToDeath(this, 0);
            synchronized (MidiDeviceServer.this.mInputPortOutputPorts) {
                int portNumber = this.mOutputPort.getPortNumber();
                MidiDeviceServer.this.mInputPortOutputPorts[portNumber] = null;
                MidiDeviceServer.this.mInputPortOpen[portNumber] = false;
                MidiDeviceServer.this.updateDeviceStatus();
            }
            IoUtils.closeQuietly(this.mOutputPort);
        }
    }

    public class OutputPortClient extends PortClient {
        private final MidiInputPort mInputPort;

        public OutputPortClient(IBinder iBinder, MidiInputPort midiInputPort) {
            super(iBinder);
            this.mInputPort = midiInputPort;
        }

        @Override // android.media.midi.MidiDeviceServer.PortClient
        public void close() {
            this.mToken.unlinkToDeath(this, 0);
            int portNumber = this.mInputPort.getPortNumber();
            MidiDispatcher midiDispatcher = MidiDeviceServer.this.mOutputPortDispatchers[portNumber];
            synchronized (midiDispatcher) {
                midiDispatcher.getSender().disconnect(this.mInputPort);
                MidiDeviceServer.this.mOutputPortOpenCount[portNumber] = midiDispatcher.getReceiverCount();
                MidiDeviceServer.this.updateDeviceStatus();
            }
            MidiDeviceServer.this.mInputPorts.remove(this.mInputPort);
            IoUtils.closeQuietly(this.mInputPort);
        }

        @Override // android.media.midi.MidiDeviceServer.PortClient
        public MidiInputPort getInputPort() {
            return this.mInputPort;
        }
    }

    public abstract class PortClient implements IBinder.DeathRecipient {
        final IBinder mToken;

        public PortClient(IBinder iBinder) {
            this.mToken = iBinder;
            try {
                iBinder.linkToDeath(this, 0);
            } catch (RemoteException unused) {
                close();
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            close();
        }

        public abstract void close();

        public MidiInputPort getInputPort() {
            return null;
        }
    }

    public MidiDeviceServer(IMidiManager iMidiManager, MidiReceiver[] midiReceiverArr, int i2, Callback callback) {
        this.mInputPorts = new CopyOnWriteArrayList<>();
        this.mGuard = CloseGuard.get();
        this.mPortClients = new HashMap<>();
        this.mInputPortClients = new HashMap<>();
        this.mServer = new IMidiDeviceServer.Stub() { // from class: android.media.midi.MidiDeviceServer.1
            @Override // android.media.midi.IMidiDeviceServer
            public void closeDevice() {
                if (MidiDeviceServer.this.mCallback != null) {
                    MidiDeviceServer.this.mCallback.onClose();
                }
                IoUtils.closeQuietly(MidiDeviceServer.this);
            }

            @Override // android.media.midi.IMidiDeviceServer
            public void closePort(IBinder iBinder) {
                MidiInputPort inputPort;
                synchronized (MidiDeviceServer.this.mPortClients) {
                    PortClient portClient = (PortClient) MidiDeviceServer.this.mPortClients.remove(iBinder);
                    if (portClient != null) {
                        inputPort = portClient.getInputPort();
                        portClient.close();
                    } else {
                        inputPort = null;
                    }
                }
                if (inputPort != null) {
                    synchronized (MidiDeviceServer.this.mInputPortClients) {
                        MidiDeviceServer.this.mInputPortClients.remove(inputPort);
                    }
                }
            }

            @Override // android.media.midi.IMidiDeviceServer
            public int connectPorts(IBinder iBinder, FileDescriptor fileDescriptor, int i3) {
                MidiInputPort midiInputPort = new MidiInputPort(fileDescriptor, i3);
                MidiDispatcher midiDispatcher = MidiDeviceServer.this.mOutputPortDispatchers[i3];
                synchronized (midiDispatcher) {
                    midiDispatcher.getSender().connect(midiInputPort);
                    MidiDeviceServer.this.mOutputPortOpenCount[i3] = midiDispatcher.getReceiverCount();
                    MidiDeviceServer.this.updateDeviceStatus();
                }
                MidiDeviceServer.this.mInputPorts.add(midiInputPort);
                OutputPortClient outputPortClient = MidiDeviceServer.this.new OutputPortClient(iBinder, midiInputPort);
                synchronized (MidiDeviceServer.this.mPortClients) {
                    MidiDeviceServer.this.mPortClients.put(iBinder, outputPortClient);
                }
                synchronized (MidiDeviceServer.this.mInputPortClients) {
                    MidiDeviceServer.this.mInputPortClients.put(midiInputPort, outputPortClient);
                }
                return Process.myPid();
            }

            @Override // android.media.midi.IMidiDeviceServer
            public MidiDeviceInfo getDeviceInfo() {
                return MidiDeviceServer.this.mDeviceInfo;
            }

            @Override // android.media.midi.IMidiDeviceServer
            public FileDescriptor openInputPort(IBinder iBinder, int i3) {
                if (MidiDeviceServer.this.mDeviceInfo.isPrivate() && Binder.getCallingUid() != Process.myUid()) {
                    throw new SecurityException("Can't access private device from different UID");
                }
                if (i3 < 0 || i3 >= MidiDeviceServer.this.mInputPortCount) {
                    m.p("portNumber out of range in openInputPort: ", i3, MidiDeviceServer.TAG);
                    return null;
                }
                synchronized (MidiDeviceServer.this.mInputPortOutputPorts) {
                    if (MidiDeviceServer.this.mInputPortOutputPorts[i3] != null) {
                        Log.d(MidiDeviceServer.TAG, "port " + i3 + " already open");
                        return null;
                    }
                    try {
                        FileDescriptor[] fileDescriptorArrCreateSeqPacketSocketPair = MidiDeviceServer.createSeqPacketSocketPair();
                        MidiOutputPort midiOutputPort = new MidiOutputPort(fileDescriptorArrCreateSeqPacketSocketPair[0], i3);
                        MidiDeviceServer.this.mInputPortOutputPorts[i3] = midiOutputPort;
                        midiOutputPort.connect(MidiDeviceServer.this.mInputPortReceivers[i3]);
                        InputPortClient inputPortClient = MidiDeviceServer.this.new InputPortClient(iBinder, midiOutputPort);
                        synchronized (MidiDeviceServer.this.mPortClients) {
                            MidiDeviceServer.this.mPortClients.put(iBinder, inputPortClient);
                        }
                        MidiDeviceServer.this.mInputPortOpen[i3] = true;
                        MidiDeviceServer.this.updateDeviceStatus();
                        return fileDescriptorArrCreateSeqPacketSocketPair[1];
                    } catch (IOException unused) {
                        Log.e(MidiDeviceServer.TAG, "unable to create FileDescriptors in openInputPort");
                        return null;
                    }
                }
            }

            @Override // android.media.midi.IMidiDeviceServer
            public FileDescriptor openOutputPort(IBinder iBinder, int i3) {
                if (MidiDeviceServer.this.mDeviceInfo.isPrivate() && Binder.getCallingUid() != Process.myUid()) {
                    throw new SecurityException("Can't access private device from different UID");
                }
                if (i3 < 0 || i3 >= MidiDeviceServer.this.mOutputPortCount) {
                    m.p("portNumber out of range in openOutputPort: ", i3, MidiDeviceServer.TAG);
                    return null;
                }
                try {
                    FileDescriptor[] fileDescriptorArrCreateSeqPacketSocketPair = MidiDeviceServer.createSeqPacketSocketPair();
                    MidiInputPort midiInputPort = new MidiInputPort(fileDescriptorArrCreateSeqPacketSocketPair[0], i3);
                    if (MidiDeviceServer.this.mDeviceInfo.getType() != 2) {
                        IoUtils.setBlocking(fileDescriptorArrCreateSeqPacketSocketPair[0], false);
                    }
                    MidiDispatcher midiDispatcher = MidiDeviceServer.this.mOutputPortDispatchers[i3];
                    synchronized (midiDispatcher) {
                        midiDispatcher.getSender().connect(midiInputPort);
                        MidiDeviceServer.this.mOutputPortOpenCount[i3] = midiDispatcher.getReceiverCount();
                        MidiDeviceServer.this.updateDeviceStatus();
                    }
                    MidiDeviceServer.this.mInputPorts.add(midiInputPort);
                    OutputPortClient outputPortClient = MidiDeviceServer.this.new OutputPortClient(iBinder, midiInputPort);
                    synchronized (MidiDeviceServer.this.mPortClients) {
                        MidiDeviceServer.this.mPortClients.put(iBinder, outputPortClient);
                    }
                    synchronized (MidiDeviceServer.this.mInputPortClients) {
                        MidiDeviceServer.this.mInputPortClients.put(midiInputPort, outputPortClient);
                    }
                    return fileDescriptorArrCreateSeqPacketSocketPair[1];
                } catch (IOException unused) {
                    Log.e(MidiDeviceServer.TAG, "unable to create FileDescriptors in openOutputPort");
                    return null;
                }
            }

            @Override // android.media.midi.IMidiDeviceServer
            public void setDeviceInfo(MidiDeviceInfo midiDeviceInfo) {
                if (Binder.getCallingUid() != 1000) {
                    throw new SecurityException("setDeviceInfo should only be called by MidiService");
                }
                if (MidiDeviceServer.this.mDeviceInfo != null) {
                    throw new IllegalStateException("setDeviceInfo should only be called once");
                }
                MidiDeviceServer.this.mDeviceInfo = midiDeviceInfo;
            }
        };
        this.mInputPortFailureHandler = new MidiDispatcher.MidiReceiverFailureHandler() { // from class: android.media.midi.MidiDeviceServer.2
            @Override // com.android.internal.midi.MidiDispatcher.MidiReceiverFailureHandler
            public void onReceiverFailure(MidiReceiver midiReceiver, IOException iOException) {
                PortClient portClient;
                Log.e(MidiDeviceServer.TAG, "MidiInputPort failed to send data", iOException);
                synchronized (MidiDeviceServer.this.mInputPortClients) {
                    portClient = (PortClient) MidiDeviceServer.this.mInputPortClients.remove(midiReceiver);
                }
                if (portClient != null) {
                    portClient.close();
                }
            }
        };
        this.mMidiManager = iMidiManager;
        this.mInputPortReceivers = midiReceiverArr;
        int length = midiReceiverArr.length;
        this.mInputPortCount = length;
        this.mOutputPortCount = i2;
        this.mCallback = callback;
        this.mInputPortOutputPorts = new MidiOutputPort[length];
        this.mOutputPortDispatchers = new MidiDispatcher[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.mOutputPortDispatchers[i3] = new MidiDispatcher(this.mInputPortFailureHandler);
        }
        this.mInputPortOpen = new boolean[this.mInputPortCount];
        this.mOutputPortOpenCount = new int[i2];
        this.mGuard.open("close");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static FileDescriptor[] createSeqPacketSocketPair() throws IOException {
        try {
            FileDescriptor fileDescriptor = new FileDescriptor();
            FileDescriptor fileDescriptor2 = new FileDescriptor();
            Os.socketpair(OsConstants.AF_UNIX, OsConstants.SOCK_SEQPACKET, 0, fileDescriptor, fileDescriptor2);
            return new FileDescriptor[]{fileDescriptor, fileDescriptor2};
        } catch (ErrnoException e2) {
            throw e2.rethrowAsIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDeviceStatus() {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        MidiDeviceStatus midiDeviceStatus = new MidiDeviceStatus(this.mDeviceInfo, this.mInputPortOpen, this.mOutputPortOpenCount);
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onDeviceStatusChanged(this, midiDeviceStatus);
        }
        try {
            try {
                this.mMidiManager.setDeviceStatus(this.mServer, midiDeviceStatus);
            } catch (RemoteException unused) {
                Log.e(TAG, "RemoteException in updateDeviceStatus");
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    public IBinder asBinder() {
        return this.mServer.asBinder();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mGuard) {
            if (this.mIsClosed) {
                return;
            }
            this.mGuard.close();
            for (int i2 = 0; i2 < this.mInputPortCount; i2++) {
                MidiOutputPort midiOutputPort = this.mInputPortOutputPorts[i2];
                if (midiOutputPort != null) {
                    IoUtils.closeQuietly(midiOutputPort);
                    this.mInputPortOutputPorts[i2] = null;
                }
            }
            Iterator<MidiInputPort> it = this.mInputPorts.iterator();
            while (it.hasNext()) {
                IoUtils.closeQuietly(it.next());
            }
            this.mInputPorts.clear();
            try {
                this.mMidiManager.unregisterDeviceServer(this.mServer);
            } catch (RemoteException unused) {
                Log.e(TAG, "RemoteException in unregisterDeviceServer");
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

    public IMidiDeviceServer getBinderInterface() {
        return this.mServer;
    }

    public MidiReceiver[] getOutputPortReceivers() {
        int i2 = this.mOutputPortCount;
        MidiReceiver[] midiReceiverArr = new MidiReceiver[i2];
        System.arraycopy(this.mOutputPortDispatchers, 0, midiReceiverArr, 0, i2);
        return midiReceiverArr;
    }

    public MidiDeviceServer(IMidiManager iMidiManager, MidiReceiver[] midiReceiverArr, MidiDeviceInfo midiDeviceInfo, Callback callback) {
        this(iMidiManager, midiReceiverArr, midiDeviceInfo.getOutputPortCount(), callback);
        this.mDeviceInfo = midiDeviceInfo;
    }
}
