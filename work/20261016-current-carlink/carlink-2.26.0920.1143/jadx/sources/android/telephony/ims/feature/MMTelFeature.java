package android.telephony.ims.feature;

import android.app.PendingIntent;
import android.os.Message;
import com.android.ims.ImsCallProfile;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsConfig;
import com.android.ims.internal.IImsEcbm;
import com.android.ims.internal.IImsMultiEndpoint;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsUt;

/* JADX INFO: loaded from: classes2.dex */
public class MMTelFeature extends ImsFeature implements IMMTelFeature {
    @Override // android.telephony.ims.feature.IMMTelFeature
    public void addRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public ImsCallProfile createCallProfile(int i2, int i3, int i4) {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsCallSession createCallSession(int i2, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener) {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void endSession(int i2) {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsConfig getConfigInterface() {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsEcbm getEcbmInterface() {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsMultiEndpoint getMultiEndpointInterface() {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsCallSession getPendingCallSession(int i2, String str) {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public IImsUt getUtInterface() {
        return null;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public boolean isConnected(int i2, int i3) {
        return false;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public boolean isOpened() {
        return false;
    }

    @Override // android.telephony.ims.feature.ImsFeature
    public void onFeatureRemoved() {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void removeRegistrationListener(IImsRegistrationListener iImsRegistrationListener) {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void setUiTTYMode(int i2, Message message) {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public int startSession(PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener) {
        return 0;
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void turnOffIms() {
    }

    @Override // android.telephony.ims.feature.IMMTelFeature
    public void turnOnIms() {
    }
}
