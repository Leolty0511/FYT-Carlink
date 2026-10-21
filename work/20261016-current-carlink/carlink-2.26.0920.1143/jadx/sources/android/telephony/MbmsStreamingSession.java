package android.telephony;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.a;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.telephony.mbms.InternalStreamingServiceCallback;
import android.telephony.mbms.InternalStreamingSessionCallback;
import android.telephony.mbms.MbmsStreamingSessionCallback;
import android.telephony.mbms.MbmsUtils;
import android.telephony.mbms.StreamingService;
import android.telephony.mbms.StreamingServiceCallback;
import android.telephony.mbms.StreamingServiceInfo;
import android.telephony.mbms.vendor.IMbmsStreamingService;
import android.util.ArraySet;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class MbmsStreamingSession implements AutoCloseable {
    private static final String LOG_TAG = "MbmsStreamingSession";
    public static final String MBMS_STREAMING_SERVICE_ACTION = "android.telephony.action.EmbmsStreaming";
    private static AtomicBoolean sIsInitialized = new AtomicBoolean(false);
    private final Context mContext;
    private InternalStreamingSessionCallback mInternalCallback;
    private int mSubscriptionId;
    private AtomicReference<IMbmsStreamingService> mService = new AtomicReference<>(null);
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: android.telephony.MbmsStreamingSession.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MbmsStreamingSession.sIsInitialized.set(false);
            MbmsStreamingSession.this.sendErrorToApp(3, "Received death notification");
        }
    };
    private Set<StreamingService> mKnownActiveStreamingServices = new ArraySet();

    private MbmsStreamingSession(Context context, MbmsStreamingSessionCallback mbmsStreamingSessionCallback, int i2, Handler handler) {
        this.mContext = context;
        this.mSubscriptionId = i2;
        this.mInternalCallback = new InternalStreamingSessionCallback(mbmsStreamingSessionCallback, handler == null ? new Handler(Looper.getMainLooper()) : handler);
    }

    private int bindAndInitialize() {
        return MbmsUtils.startBinding(this.mContext, MBMS_STREAMING_SERVICE_ACTION, new ServiceConnection() { // from class: android.telephony.MbmsStreamingSession.3
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IMbmsStreamingService iMbmsStreamingServiceAsInterface = IMbmsStreamingService.Stub.asInterface(iBinder);
                try {
                    int iInitialize = iMbmsStreamingServiceAsInterface.initialize(MbmsStreamingSession.this.mInternalCallback, MbmsStreamingSession.this.mSubscriptionId);
                    if (iInitialize != 0) {
                        MbmsStreamingSession.this.sendErrorToApp(iInitialize, "Error returned during initialization");
                        MbmsStreamingSession.sIsInitialized.set(false);
                        return;
                    }
                    try {
                        iMbmsStreamingServiceAsInterface.asBinder().linkToDeath(MbmsStreamingSession.this.mDeathRecipient, 0);
                        MbmsStreamingSession.this.mService.set(iMbmsStreamingServiceAsInterface);
                    } catch (RemoteException unused) {
                        MbmsStreamingSession.this.sendErrorToApp(3, "Middleware lost during initialization");
                        MbmsStreamingSession.sIsInitialized.set(false);
                    }
                } catch (RemoteException e2) {
                    Log.e(MbmsStreamingSession.LOG_TAG, "Service died before initialization");
                    MbmsStreamingSession.this.sendErrorToApp(103, e2.toString());
                    MbmsStreamingSession.sIsInitialized.set(false);
                } catch (RuntimeException e3) {
                    Log.e(MbmsStreamingSession.LOG_TAG, "Runtime exception during initialization");
                    MbmsStreamingSession.this.sendErrorToApp(103, e3.toString());
                    MbmsStreamingSession.sIsInitialized.set(false);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                MbmsStreamingSession.sIsInitialized.set(false);
                MbmsStreamingSession.this.mService.set(null);
            }
        });
    }

    public static MbmsStreamingSession create(Context context, final MbmsStreamingSessionCallback mbmsStreamingSessionCallback, int i2, Handler handler) {
        if (!sIsInitialized.compareAndSet(false, true)) {
            throw new IllegalStateException("Cannot create two instances of MbmsStreamingSession");
        }
        MbmsStreamingSession mbmsStreamingSession = new MbmsStreamingSession(context, mbmsStreamingSessionCallback, i2, handler);
        final int iBindAndInitialize = mbmsStreamingSession.bindAndInitialize();
        if (iBindAndInitialize == 0) {
            return mbmsStreamingSession;
        }
        sIsInitialized.set(false);
        handler.post(new Runnable() { // from class: android.telephony.MbmsStreamingSession.2
            @Override // java.lang.Runnable
            public void run() {
                mbmsStreamingSessionCallback.onError(iBindAndInitialize, null);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendErrorToApp(int i2, String str) {
        try {
            this.mInternalCallback.onError(i2, str);
        } catch (RemoteException unused) {
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        try {
            IMbmsStreamingService iMbmsStreamingService = this.mService.get();
            if (iMbmsStreamingService == null) {
                return;
            }
            iMbmsStreamingService.dispose(this.mSubscriptionId);
            Iterator<StreamingService> it = this.mKnownActiveStreamingServices.iterator();
            while (it.hasNext()) {
                it.next().getCallback().stop();
            }
            this.mKnownActiveStreamingServices.clear();
        } catch (RemoteException unused) {
        } finally {
            this.mService.set(null);
            sIsInitialized.set(false);
            this.mInternalCallback.stop();
        }
    }

    public void onStreamingServiceStopped(StreamingService streamingService) {
        this.mKnownActiveStreamingServices.remove(streamingService);
    }

    public void requestUpdateStreamingServices(List<String> list) {
        IMbmsStreamingService iMbmsStreamingService = this.mService.get();
        if (iMbmsStreamingService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            int iRequestUpdateStreamingServices = iMbmsStreamingService.requestUpdateStreamingServices(this.mSubscriptionId, list);
            if (iRequestUpdateStreamingServices != 0) {
                sendErrorToApp(iRequestUpdateStreamingServices, null);
            }
        } catch (RemoteException unused) {
            Log.w(LOG_TAG, "Remote process died");
            this.mService.set(null);
            sIsInitialized.set(false);
            sendErrorToApp(3, null);
        }
    }

    public StreamingService startStreaming(StreamingServiceInfo streamingServiceInfo, StreamingServiceCallback streamingServiceCallback, Handler handler) {
        IMbmsStreamingService iMbmsStreamingService = this.mService.get();
        if (iMbmsStreamingService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        InternalStreamingServiceCallback internalStreamingServiceCallback = new InternalStreamingServiceCallback(streamingServiceCallback, handler);
        StreamingService streamingService = new StreamingService(this.mSubscriptionId, iMbmsStreamingService, this, streamingServiceInfo, internalStreamingServiceCallback);
        this.mKnownActiveStreamingServices.add(streamingService);
        try {
            int iStartStreaming = iMbmsStreamingService.startStreaming(this.mSubscriptionId, streamingServiceInfo.getServiceId(), internalStreamingServiceCallback);
            if (iStartStreaming == 0) {
                return streamingService;
            }
            sendErrorToApp(iStartStreaming, null);
            return null;
        } catch (RemoteException unused) {
            Log.w(LOG_TAG, "Remote process died");
            this.mService.set(null);
            sIsInitialized.set(false);
            sendErrorToApp(3, null);
            return null;
        }
    }

    public static MbmsStreamingSession create(Context context, MbmsStreamingSessionCallback mbmsStreamingSessionCallback, Handler handler) {
        return create(context, mbmsStreamingSessionCallback, SubscriptionManager.getDefaultSubscriptionId(), handler);
    }
}
