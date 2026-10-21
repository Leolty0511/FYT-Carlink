package android.media;

import android.accessibilityservice.c;
import android.hardware.cas.V1_0.HidlCasPluginDescriptor;
import android.hardware.cas.V1_0.ICas;
import android.hardware.cas.V1_0.ICasListener;
import android.hardware.cas.V1_0.IMediaCasService;
import android.hardware.cas.V1_0.d;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IHwBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Singleton;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCas implements AutoCloseable {
    private static final String TAG = "MediaCas";
    private static final Singleton<IMediaCasService> gDefault = new Singleton<IMediaCasService>() { // from class: android.media.MediaCas.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.util.Singleton
        public IMediaCasService create() {
            try {
                return d.c();
            } catch (RemoteException unused) {
                return null;
            }
        }
    };
    private final ICasListener.Stub mBinder;
    private EventHandler mEventHandler;
    private HandlerThread mHandlerThread;
    private ICas mICas;
    private EventListener mListener;

    public class EventHandler extends Handler {
        private static final int MSG_CAS_EVENT = 0;

        public EventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                EventListener eventListener = MediaCas.this.mListener;
                MediaCas mediaCas = MediaCas.this;
                eventListener.onEvent(mediaCas, message.arg1, message.arg2, mediaCas.toBytes((ArrayList) message.obj));
            }
        }
    }

    public interface EventListener {
        void onEvent(MediaCas mediaCas, int i2, int i3, byte[] bArr);
    }

    public class OpenSessionCallback implements ICas.openSessionCallback {
        public Session mSession;
        public int mStatus;

        private OpenSessionCallback() {
        }

        @Override // android.hardware.cas.V1_0.ICas.openSessionCallback
        public void onValues(int i2, ArrayList<Byte> arrayList) {
            this.mStatus = i2;
            this.mSession = MediaCas.this.createFromSessionId(arrayList);
        }
    }

    public MediaCas(int i2) throws MediaCasException.UnsupportedCasException {
        ICasListener.Stub stub = new ICasListener.Stub() { // from class: android.media.MediaCas.2
            @Override // android.hardware.cas.V1_0.ICasListener
            public void onEvent(int i3, int i4, ArrayList<Byte> arrayList) {
                MediaCas.this.mEventHandler.sendMessage(MediaCas.this.mEventHandler.obtainMessage(0, i3, i4, arrayList));
            }
        };
        this.mBinder = stub;
        try {
            try {
                ICas iCasCreatePlugin = getService().createPlugin(i2, stub);
                this.mICas = iCasCreatePlugin;
                if (iCasCreatePlugin == null) {
                    throw new MediaCasException.UnsupportedCasException(c.d("Unsupported CA_system_id ", i2));
                }
            } catch (Exception e2) {
                Log.e(TAG, "Failed to create plugin: " + e2);
                this.mICas = null;
                throw new MediaCasException.UnsupportedCasException(c.d("Unsupported CA_system_id ", i2));
            }
        } catch (Throwable th) {
            if (this.mICas != null) {
                throw th;
            }
            throw new MediaCasException.UnsupportedCasException(c.d("Unsupported CA_system_id ", i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupAndRethrowIllegalState() {
        this.mICas = null;
        throw new IllegalStateException();
    }

    public static PluginDescriptor[] enumeratePlugins() {
        IMediaCasService service = getService();
        if (service != null) {
            try {
                ArrayList<HidlCasPluginDescriptor> arrayListEnumeratePlugins = service.enumeratePlugins();
                if (arrayListEnumeratePlugins.size() == 0) {
                    return null;
                }
                int size = arrayListEnumeratePlugins.size();
                PluginDescriptor[] pluginDescriptorArr = new PluginDescriptor[size];
                for (int i2 = 0; i2 < size; i2++) {
                    pluginDescriptorArr[i2] = new PluginDescriptor(arrayListEnumeratePlugins.get(i2));
                }
                return pluginDescriptorArr;
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public static IMediaCasService getService() {
        return gDefault.get();
    }

    public static boolean isSystemIdSupported(int i2) {
        IMediaCasService service = getService();
        if (service == null) {
            return false;
        }
        try {
            return service.isSystemIdSupported(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<Byte> toByteArray(byte[] bArr, int i2, int i3) {
        ArrayList<Byte> arrayList = new ArrayList<>(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            arrayList.add(Byte.valueOf(bArr[i2 + i4]));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] toBytes(ArrayList<Byte> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i2 = 0; i2 < size; i2++) {
            bArr[i2] = arrayList.get(i2).byteValue();
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateInternalStates() {
        if (this.mICas == null) {
            throw new IllegalStateException();
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        ICas iCas = this.mICas;
        if (iCas != null) {
            try {
                iCas.release();
            } catch (RemoteException unused) {
            } finally {
                this.mICas = null;
            }
        }
    }

    public Session createFromSessionId(ArrayList<Byte> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        return new Session(arrayList);
    }

    public void finalize() {
        close();
    }

    public IHwBinder getBinder() {
        validateInternalStates();
        return this.mICas.asBinder();
    }

    public Session openSession() throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        validateInternalStates();
        try {
            OpenSessionCallback openSessionCallback = new OpenSessionCallback();
            this.mICas.openSession(openSessionCallback);
            MediaCasException.throwExceptionIfNeeded(openSessionCallback.mStatus);
            return openSessionCallback.mSession;
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
            return null;
        }
    }

    public void processEmm(byte[] bArr, int i2, int i3) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        validateInternalStates();
        try {
            MediaCasException.throwExceptionIfNeeded(this.mICas.processEmm(toByteArray(bArr, i2, i3)));
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
        }
    }

    public void provision(String str) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        validateInternalStates();
        try {
            MediaCasException.throwExceptionIfNeeded(this.mICas.provision(str));
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
        }
    }

    public void refreshEntitlements(int i2, byte[] bArr) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        validateInternalStates();
        try {
            MediaCasException.throwExceptionIfNeeded(this.mICas.refreshEntitlements(i2, toByteArray(bArr)));
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
        }
    }

    public void sendEvent(int i2, int i3, byte[] bArr) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        validateInternalStates();
        try {
            MediaCasException.throwExceptionIfNeeded(this.mICas.sendEvent(i2, i3, toByteArray(bArr)));
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
        }
    }

    public void setEventListener(EventListener eventListener, Handler handler) {
        this.mListener = eventListener;
        if (eventListener == null) {
            this.mEventHandler = null;
            return;
        }
        Looper looper = handler != null ? handler.getLooper() : null;
        if (looper == null && (looper = Looper.myLooper()) == null && (looper = Looper.getMainLooper()) == null) {
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread == null || !handlerThread.isAlive()) {
                HandlerThread handlerThread2 = new HandlerThread("MediaCasEventThread", -2);
                this.mHandlerThread = handlerThread2;
                handlerThread2.start();
            }
            looper = this.mHandlerThread.getLooper();
        }
        this.mEventHandler = new EventHandler(looper);
    }

    public void setPrivateData(byte[] bArr) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        validateInternalStates();
        try {
            MediaCasException.throwExceptionIfNeeded(this.mICas.setPrivateData(toByteArray(bArr, 0, bArr.length)));
        } catch (RemoteException unused) {
            cleanupAndRethrowIllegalState();
        }
    }

    public static class PluginDescriptor {
        private final int mCASystemId;
        private final String mName;

        private PluginDescriptor() {
            this.mCASystemId = 65535;
            this.mName = null;
        }

        public String getName() {
            return this.mName;
        }

        public int getSystemId() {
            return this.mCASystemId;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("PluginDescriptor {");
            sb.append(this.mCASystemId);
            sb.append(", ");
            return c.n(sb, this.mName, "}");
        }

        public PluginDescriptor(HidlCasPluginDescriptor hidlCasPluginDescriptor) {
            this.mCASystemId = hidlCasPluginDescriptor.caSystemId;
            this.mName = hidlCasPluginDescriptor.name;
        }
    }

    private ArrayList<Byte> toByteArray(byte[] bArr) {
        if (bArr == null) {
            return new ArrayList<>();
        }
        return toByteArray(bArr, 0, bArr.length);
    }

    public final class Session implements AutoCloseable {
        final ArrayList<Byte> mSessionId;

        public Session(ArrayList<Byte> arrayList) {
            this.mSessionId = arrayList;
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            MediaCas.this.validateInternalStates();
            try {
                MediaCasStateException.throwExceptionIfNeeded(MediaCas.this.mICas.closeSession(this.mSessionId));
            } catch (RemoteException unused) {
                MediaCas.this.cleanupAndRethrowIllegalState();
            }
        }

        public void processEcm(byte[] bArr, int i2, int i3) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
            MediaCas.this.validateInternalStates();
            try {
                MediaCasException.throwExceptionIfNeeded(MediaCas.this.mICas.processEcm(this.mSessionId, MediaCas.this.toByteArray(bArr, i2, i3)));
            } catch (RemoteException unused) {
                MediaCas.this.cleanupAndRethrowIllegalState();
            }
        }

        public void setPrivateData(byte[] bArr) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
            MediaCas.this.validateInternalStates();
            try {
                MediaCasException.throwExceptionIfNeeded(MediaCas.this.mICas.setSessionPrivateData(this.mSessionId, MediaCas.this.toByteArray(bArr, 0, bArr.length)));
            } catch (RemoteException unused) {
                MediaCas.this.cleanupAndRethrowIllegalState();
            }
        }

        public void processEcm(byte[] bArr) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
            processEcm(bArr, 0, bArr.length);
        }
    }

    public void processEmm(byte[] bArr) throws MediaCasException.ResourceBusyException, MediaCasException.DeniedByServerException, MediaCasException.NotProvisionedException {
        processEmm(bArr, 0, bArr.length);
    }
}
