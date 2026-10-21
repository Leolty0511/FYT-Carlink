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
public interface IMMTelFeature {
    void addRegistrationListener(IImsRegistrationListener iImsRegistrationListener);

    ImsCallProfile createCallProfile(int i2, int i3, int i4);

    IImsCallSession createCallSession(int i2, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener);

    void endSession(int i2);

    IImsConfig getConfigInterface();

    IImsEcbm getEcbmInterface();

    IImsMultiEndpoint getMultiEndpointInterface();

    IImsCallSession getPendingCallSession(int i2, String str);

    IImsUt getUtInterface();

    boolean isConnected(int i2, int i3);

    boolean isOpened();

    void removeRegistrationListener(IImsRegistrationListener iImsRegistrationListener);

    void setUiTTYMode(int i2, Message message);

    int startSession(PendingIntent pendingIntent, IImsRegistrationListener iImsRegistrationListener);

    void turnOffIms();

    void turnOnIms();
}
