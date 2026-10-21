package android.telephony.ims;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.ims.feature.IRcsFeature;
import android.util.Log;
import com.android.ims.ImsCallProfile;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsServiceController;
import com.android.ims.internal.IImsServiceFeatureListener;
import com.android.ims.internal.IImsUt;

/* JADX INFO: loaded from: classes2.dex */
public class ImsServiceProxy extends ImsServiceProxyCompat implements IRcsFeature {
    protected String LOG_TAG;
    private Integer mFeatureStatusCached;
    private boolean mIsAvailable;
    private final IImsServiceFeatureListener mListenerBinder;
    private final Object mLock;
    private INotifyStatusChanged mStatusCallback;
    private final int mSupportedFeature;

    public interface INotifyStatusChanged {
        void notifyStatusChanged();
    }

    public ImsServiceProxy(int i2, IBinder iBinder, int i3) {
        super(i2, iBinder);
        this.LOG_TAG = "ImsServiceProxy";
        this.mIsAvailable = true;
        this.mFeatureStatusCached = null;
        this.mLock = new Object();
        this.mListenerBinder = new IImsServiceFeatureListener.Stub() { // from class: android.telephony.ims.ImsServiceProxy.1
            @Override // com.android.ims.internal.IImsServiceFeatureListener
            public void imsFeatureCreated(int i4, int i5) {
                synchronized (ImsServiceProxy.this.mLock) {
                    if (!ImsServiceProxy.this.mIsAvailable) {
                        ImsServiceProxy imsServiceProxy = ImsServiceProxy.this;
                        if (imsServiceProxy.mSlotId == i4 && i5 == imsServiceProxy.mSupportedFeature) {
                            Log.i(ImsServiceProxy.this.LOG_TAG, "Feature enabled on slotId: " + i4 + " for feature: " + i5);
                            ImsServiceProxy.this.mIsAvailable = true;
                        }
                    }
                }
            }

            @Override // com.android.ims.internal.IImsServiceFeatureListener
            public void imsFeatureRemoved(int i4, int i5) {
                synchronized (ImsServiceProxy.this.mLock) {
                    if (ImsServiceProxy.this.mIsAvailable) {
                        ImsServiceProxy imsServiceProxy = ImsServiceProxy.this;
                        if (imsServiceProxy.mSlotId == i4 && i5 == imsServiceProxy.mSupportedFeature) {
                            Log.i(ImsServiceProxy.this.LOG_TAG, "Feature disabled on slotId: " + i4 + " for feature: " + i5);
                            ImsServiceProxy.this.mIsAvailable = false;
                        }
                    }
                }
            }

            @Override // com.android.ims.internal.IImsServiceFeatureListener
            public void imsStatusChanged(int i4, int i5, int i6) {
                synchronized (ImsServiceProxy.this.mLock) {
                    Log.i(ImsServiceProxy.this.LOG_TAG, "imsStatusChanged: slot: " + i4 + " feature: " + i5 + " status: " + i6);
                    ImsServiceProxy imsServiceProxy = ImsServiceProxy.this;
                    if (imsServiceProxy.mSlotId == i4 && i5 == imsServiceProxy.mSupportedFeature) {
                        ImsServiceProxy.this.mFeatureStatusCached = Integer.valueOf(i6);
                        if (ImsServiceProxy.this.mStatusCallback != null) {
                            ImsServiceProxy.this.mStatusCallback.notifyStatusChanged();
                        }
                    }
                }
            }
        };
        this.mSupportedFeature = i3;
    }

    private IImsServiceController getServiceInterface(IBinder iBinder) {
        return IImsServiceController.Stub.asInterface(iBinder);
    }

    private Integer retrieveFeatureStatus() {
        IBinder iBinder = this.mBinder;
        if (iBinder == null) {
            return null;
        }
        try {
            return Integer.valueOf(getServiceInterface(iBinder).getFeatureStatus(this.mSlotId, this.mSupportedFeature));
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public void addRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).addRegistrationListener(this.mSlotId, this.mSupportedFeature, iImsRegistrationListener);
        }
    }

    public void checkServiceIsReady() throws RemoteException {
        if (!isBinderReady()) {
            throw new RemoteException("ImsServiceProxy is not ready to accept commands.");
        }
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public ImsCallProfile createCallProfile(int i2, int i3, int i4) {
        ImsCallProfile imsCallProfileCreateCallProfile;
        synchronized (this.mLock) {
            checkServiceIsReady();
            imsCallProfileCreateCallProfile = getServiceInterface(this.mBinder).createCallProfile(this.mSlotId, this.mSupportedFeature, i2, i3, i4);
        }
        return imsCallProfileCreateCallProfile;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public IImsCallSession createCallSession(int i2, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener) {
        IImsCallSession iImsCallSessionCreateCallSession;
        synchronized (this.mLock) {
            checkServiceIsReady();
            iImsCallSessionCreateCallSession = getServiceInterface(this.mBinder).createCallSession(this.mSlotId, this.mSupportedFeature, i2, imsCallProfile, iImsCallSessionListener);
        }
        return iImsCallSessionCreateCallSession;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public void endSession(int i2) {
        synchronized (this.mLock) {
            checkBinderConnection();
            getServiceInterface(this.mBinder).endSession(this.mSlotId, this.mSupportedFeature, i2);
        }
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public IImsConfig getConfigInterface() {
        IImsConfig configInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            configInterface = getServiceInterface(this.mBinder).getConfigInterface(this.mSlotId, this.mSupportedFeature);
        }
        return configInterface;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public IImsEcbm getEcbmInterface() {
        IImsEcbm ecbmInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            ecbmInterface = getServiceInterface(this.mBinder).getEcbmInterface(this.mSlotId, this.mSupportedFeature);
        }
        return ecbmInterface;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat
    public int getFeatureStatus() {
        synchronized (this.mLock) {
            if (isBinderAlive() && this.mFeatureStatusCached != null) {
                Log.i(this.LOG_TAG, "getFeatureStatus - returning cached: " + this.mFeatureStatusCached);
                return this.mFeatureStatusCached.intValue();
            }
            Integer numRetrieveFeatureStatus = retrieveFeatureStatus();
            synchronized (this.mLock) {
                try {
                    if (numRetrieveFeatureStatus == null) {
                        return 0;
                    }
                    this.mFeatureStatusCached = numRetrieveFeatureStatus;
                    Log.i(this.LOG_TAG, "getFeatureStatus - returning " + numRetrieveFeatureStatus);
                    return numRetrieveFeatureStatus.intValue();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public IImsServiceFeatureListener getListener() {
        return this.mListenerBinder;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public IImsMultiEndpoint getMultiEndpointInterface() {
        IImsMultiEndpoint multiEndpointInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            multiEndpointInterface = getServiceInterface(this.mBinder).getMultiEndpointInterface(this.mSlotId, this.mSupportedFeature);
        }
        return multiEndpointInterface;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public IImsCallSession getPendingCallSession(int i2, String str) {
        IImsCallSession pendingCallSession;
        synchronized (this.mLock) {
            checkServiceIsReady();
            pendingCallSession = getServiceInterface(this.mBinder).getPendingCallSession(this.mSlotId, this.mSupportedFeature, i2, str);
        }
        return pendingCallSession;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public IImsUt getUtInterface() {
        IImsUt utInterface;
        synchronized (this.mLock) {
            checkServiceIsReady();
            utInterface = getServiceInterface(this.mBinder).getUtInterface(this.mSlotId, this.mSupportedFeature);
        }
        return utInterface;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat
    public boolean isBinderAlive() {
        IBinder iBinder;
        return this.mIsAvailable && (iBinder = this.mBinder) != null && iBinder.isBinderAlive();
    }

    public boolean isBinderReady() {
        return isBinderAlive() && getFeatureStatus() == 2;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public boolean isConnected(int i2, int i3) {
        boolean zIsConnected;
        synchronized (this.mLock) {
            checkServiceIsReady();
            zIsConnected = getServiceInterface(this.mBinder).isConnected(this.mSlotId, this.mSupportedFeature, i2, i3);
        }
        return zIsConnected;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public boolean isOpened() {
        boolean zIsOpened;
        synchronized (this.mLock) {
            checkServiceIsReady();
            zIsOpened = getServiceInterface(this.mBinder).isOpened(this.mSlotId, this.mSupportedFeature);
        }
        return zIsOpened;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public void removeRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).removeRegistrationListener(this.mSlotId, this.mSupportedFeature, iImsRegistrationListener);
        }
    }

    public void setBinder(IBinder iBinder) {
        this.mBinder = iBinder;
    }

    public void setStatusCallback(INotifyStatusChanged iNotifyStatusChanged) {
        this.mStatusCallback = iNotifyStatusChanged;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public void setUiTTYMode(int i2, Message message) {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).setUiTTYMode(this.mSlotId, this.mSupportedFeature, i2, message);
        }
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public int startSession(PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) {
        int iStartSession;
        synchronized (this.mLock) {
            checkServiceIsReady();
            iStartSession = getServiceInterface(this.mBinder).startSession(this.mSlotId, this.mSupportedFeature, pendingIntent, iImsRegistrationListener);
        }
        return iStartSession;
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public void turnOffIms() {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).turnOffIms(this.mSlotId, this.mSupportedFeature);
        }
    }

    @Override // android.telephony.ims.ImsServiceProxyCompat, android.telephony.ims.feature.IMMTelFeature
    public void turnOnIms() {
        synchronized (this.mLock) {
            checkServiceIsReady();
            getServiceInterface(this.mBinder).turnOnIms(this.mSlotId, this.mSupportedFeature);
        }
    }

    public ImsServiceProxy(int i2, int i3) {
        super(i2, null);
        this.LOG_TAG = "ImsServiceProxy";
        this.mIsAvailable = true;
        this.mFeatureStatusCached = null;
        this.mLock = new Object();
        this.mListenerBinder = new IImsServiceFeatureListener.Stub() { // from class: android.telephony.ims.ImsServiceProxy.1
            @Override // com.android.ims.internal.IImsServiceFeatureListener
            public void imsFeatureCreated(int i4, int i5) {
                synchronized (ImsServiceProxy.this.mLock) {
                    if (!ImsServiceProxy.this.mIsAvailable) {
                        ImsServiceProxy imsServiceProxy = ImsServiceProxy.this;
                        if (imsServiceProxy.mSlotId == i4 && i5 == imsServiceProxy.mSupportedFeature) {
                            Log.i(ImsServiceProxy.this.LOG_TAG, "Feature enabled on slotId: " + i4 + " for feature: " + i5);
                            ImsServiceProxy.this.mIsAvailable = true;
                        }
                    }
                }
            }

            @Override // com.android.ims.internal.IImsServiceFeatureListener
            public void imsFeatureRemoved(int i4, int i5) {
                synchronized (ImsServiceProxy.this.mLock) {
                    if (ImsServiceProxy.this.mIsAvailable) {
                        ImsServiceProxy imsServiceProxy = ImsServiceProxy.this;
                        if (imsServiceProxy.mSlotId == i4 && i5 == imsServiceProxy.mSupportedFeature) {
                            Log.i(ImsServiceProxy.this.LOG_TAG, "Feature disabled on slotId: " + i4 + " for feature: " + i5);
                            ImsServiceProxy.this.mIsAvailable = false;
                        }
                    }
                }
            }

            @Override // com.android.ims.internal.IImsServiceFeatureListener
            public void imsStatusChanged(int i4, int i5, int i6) {
                synchronized (ImsServiceProxy.this.mLock) {
                    Log.i(ImsServiceProxy.this.LOG_TAG, "imsStatusChanged: slot: " + i4 + " feature: " + i5 + " status: " + i6);
                    ImsServiceProxy imsServiceProxy = ImsServiceProxy.this;
                    if (imsServiceProxy.mSlotId == i4 && i5 == imsServiceProxy.mSupportedFeature) {
                        ImsServiceProxy.this.mFeatureStatusCached = Integer.valueOf(i6);
                        if (ImsServiceProxy.this.mStatusCallback != null) {
                            ImsServiceProxy.this.mStatusCallback.notifyStatusChanged();
                        }
                    }
                }
            }
        };
        this.mSupportedFeature = i3;
    }
}
