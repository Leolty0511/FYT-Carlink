package android.telephony.ims;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.ims.feature.IMMTelFeature;
import com.android.ims.ImsCallProfile;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsService;
import com.android.ims.internal.IImsUt;

/* JADX INFO: loaded from: classes2.dex */
public class ImsServiceProxyCompat implements IMMTelFeature {
    private static final int SERVICE_ID = 1;
    protected IBinder mBinder;
    protected final int mSlotId;

    public ImsServiceProxyCompat(int i2, IBinder iBinder) {
        this.mSlotId = i2;
        this.mBinder = iBinder;
    }

    private IImsService getServiceInterface(IBinder iBinder) {
        return IImsService.Stub.asInterface(iBinder);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void addRegistrationListener(IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
        checkBinderConnection();
        getServiceInterface(this.mBinder).addRegistrationListener(this.mSlotId, 1, iImsRegistrationListener);
    }

    public void checkBinderConnection() throws RemoteException {
        if (!isBinderAlive()) {
            throw new RemoteException("ImsServiceProxy is not available for that feature.");
        }
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public ImsCallProfile createCallProfile(int i2, int i3, int i4) throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).createCallProfile(i2, i3, i4);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsCallSession createCallSession(int i2, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener) throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).createCallSession(i2, imsCallProfile, iImsCallSessionListener);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void endSession(int i2) throws RemoteException {
        checkBinderConnection();
        getServiceInterface(this.mBinder).close(i2);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsConfig getConfigInterface() throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).getConfigInterface(this.mSlotId);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsEcbm getEcbmInterface() throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).getEcbmInterface(1);
    }

    public int getFeatureStatus() {
        return 2;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsMultiEndpoint getMultiEndpointInterface() throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).getMultiEndpointInterface(1);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsCallSession getPendingCallSession(int i2, String str) throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).getPendingCallSession(i2, str);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsUt getUtInterface() throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).getUtInterface(1);
    }

    public boolean isBinderAlive() {
        IBinder iBinder = this.mBinder;
        return iBinder != null && iBinder.isBinderAlive();
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public boolean isConnected(int i2, int i3) throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).isConnected(1, i2, i3);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public boolean isOpened() throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).isOpened(1);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void removeRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void setUiTTYMode(int i2, Message message) throws RemoteException {
        checkBinderConnection();
        getServiceInterface(this.mBinder).setUiTTYMode(1, i2, message);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public int startSession(PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) throws RemoteException {
        checkBinderConnection();
        return getServiceInterface(this.mBinder).open(this.mSlotId, 1, pendingIntent, iImsRegistrationListener);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void turnOffIms() throws RemoteException {
        checkBinderConnection();
        getServiceInterface(this.mBinder).turnOffIms(this.mSlotId);
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void turnOnIms() throws RemoteException {
        checkBinderConnection();
        getServiceInterface(this.mBinder).turnOnIms(this.mSlotId);
    }
}
