package android.telephony.ims.stub;

import android.os.Message;
import com.android.ims.ImsCallProfile;
import com.android.ims.ImsStreamMediaProfile;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;
import com.android.ims.internal.IImsVideoCallProvider;

/* JADX INFO: loaded from: classes2.dex */
public class ImsCallSessionImplBase extends IImsCallSession.Stub {
    @Override // com.android.ims.internal.IImsCallSession
    public void accept(int i2, ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void close() {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void extendToConference(String[] strArr) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public String getCallId() {
        return null;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public ImsCallProfile getCallProfile() {
        return null;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public ImsCallProfile getLocalCallProfile() {
        return null;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public String getProperty(String str) {
        return null;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public ImsCallProfile getRemoteCallProfile() {
        return null;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public int getState() {
        return -1;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public IImsVideoCallProvider getVideoCallProvider() {
        return null;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void hold(ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void inviteParticipants(String[] strArr) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public boolean isInCall() {
        return false;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public boolean isMultiparty() {
        return false;
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void merge() {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void reject(int i2) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void removeParticipants(String[] strArr) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void resume(ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void sendDtmf(char c, Message message) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void sendRttMessage(String str) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void sendRttModifyRequest(ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void sendRttModifyResponse(boolean z2) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void sendUssd(String str) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void setListener(IImsCallSessionListener iImsCallSessionListener) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void setMute(boolean z2) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void start(String str, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void startConference(String[] strArr, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void startDtmf(char c) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void stopDtmf() {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void terminate(int i2) {
    }

    @Override // com.android.ims.internal.IImsCallSession
    public void update(int i2, ImsStreamMediaProfile imsStreamMediaProfile) {
    }
}
