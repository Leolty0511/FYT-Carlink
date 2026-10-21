package android.telephony.ims.stub;

import com.android.ims.ImsCallProfile;
import com.android.ims.ImsConferenceState;
import com.android.ims.ImsReasonInfo;
import com.android.ims.ImsStreamMediaProfile;
import com.android.ims.ImsSuppServiceNotification;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsCallSessionListener;

/* JADX INFO: loaded from: classes2.dex */
public class ImsCallSessionListenerImplBase extends IImsCallSessionListener.Stub {
    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionConferenceExtendFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionConferenceExtendReceived(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionConferenceExtended(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionConferenceStateUpdated(IImsCallSession iImsCallSession, ImsConferenceState imsConferenceState) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionHandover(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionHandoverFailed(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionHeld(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionHoldFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionHoldReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionInviteParticipantsRequestDelivered(IImsCallSession iImsCallSession) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionInviteParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionMayHandover(IImsCallSession iImsCallSession, int i2, int i3) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionMergeComplete(IImsCallSession iImsCallSession) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionMergeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionMergeStarted(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionMultipartyStateChanged(IImsCallSession iImsCallSession, boolean z2) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionProgressing(IImsCallSession iImsCallSession, ImsStreamMediaProfile imsStreamMediaProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionRemoveParticipantsRequestDelivered(IImsCallSession iImsCallSession) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionRemoveParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionResumeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionResumeReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionResumed(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionRttMessageReceived(String str) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionRttModifyRequestReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionRttModifyResponseReceived(int i2) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionStartFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionStarted(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionSuppServiceReceived(IImsCallSession iImsCallSession, ImsSuppServiceNotification imsSuppServiceNotification) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionTerminated(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionTtyModeReceived(IImsCallSession iImsCallSession, int i2) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionUpdateFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionUpdateReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionUpdated(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
    }

    @Override // com.android.ims.internal.IImsCallSessionListener
    public void callSessionUssdMessageReceived(IImsCallSession iImsCallSession, int i2, String str) {
    }
}
