package com.android.ims.internal;

import android.os.Message;
import android.os.RemoteException;
import android.telephony.ims.stub.ImsCallSessionListenerImplBase;
import android.util.Log;
import com.android.ims.ImsCallProfile;
import com.android.ims.ImsConferenceState;
import com.android.ims.ImsReasonInfo;
import com.android.ims.ImsStreamMediaProfile;
import com.android.ims.ImsSuppServiceNotification;
import com.android.internal.telephony.IccCardConstants;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ImsCallSession {
    private static final String TAG = "ImsCallSession";
    private boolean mClosed;
    private Listener mListener;
    private final IImsCallSession miSession;

    public class IImsCallSessionListenerProxy extends ImsCallSessionListenerImplBase {
        private IImsCallSessionListenerProxy() {
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionConferenceExtendFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionConferenceExtendFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionConferenceExtendReceived(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionConferenceExtendReceived(ImsCallSession.this, new ImsCallSession(iImsCallSession2), imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionConferenceExtended(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionConferenceExtended(ImsCallSession.this, new ImsCallSession(iImsCallSession2), imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionConferenceStateUpdated(IImsCallSession iImsCallSession, ImsConferenceState imsConferenceState) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionConferenceStateUpdated(ImsCallSession.this, imsConferenceState);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionHandover(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionHandover(ImsCallSession.this, i2, i3, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionHandoverFailed(IImsCallSession iImsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionHandoverFailed(ImsCallSession.this, i2, i3, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionHeld(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionHeld(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionHoldFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionHoldFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionHoldReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionHoldReceived(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionInviteParticipantsRequestDelivered(IImsCallSession iImsCallSession) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionInviteParticipantsRequestDelivered(ImsCallSession.this);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionInviteParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionInviteParticipantsRequestFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionMayHandover(IImsCallSession iImsCallSession, int i2, int i3) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionMayHandover(ImsCallSession.this, i2, i3);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionMergeComplete(IImsCallSession iImsCallSession) {
            if (ImsCallSession.this.mListener != null) {
                if (iImsCallSession == null) {
                    ImsCallSession.this.mListener.callSessionMergeComplete(null);
                    return;
                }
                ImsCallSession imsCallSession = ImsCallSession.this;
                try {
                    if (!Objects.equals(imsCallSession.miSession.getCallId(), iImsCallSession.getCallId())) {
                        imsCallSession = new ImsCallSession(iImsCallSession);
                    }
                } catch (RemoteException unused) {
                    Log.e(ImsCallSession.TAG, "callSessionMergeComplete: exception for getCallId!");
                }
                ImsCallSession.this.mListener.callSessionMergeComplete(imsCallSession);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionMergeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionMergeFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionMergeStarted(IImsCallSession iImsCallSession, IImsCallSession iImsCallSession2, ImsCallProfile imsCallProfile) {
            Log.d(ImsCallSession.TAG, "callSessionMergeStarted");
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionMultipartyStateChanged(IImsCallSession iImsCallSession, boolean z2) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionMultipartyStateChanged(ImsCallSession.this, z2);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionProgressing(IImsCallSession iImsCallSession, ImsStreamMediaProfile imsStreamMediaProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionProgressing(ImsCallSession.this, imsStreamMediaProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionRemoveParticipantsRequestDelivered(IImsCallSession iImsCallSession) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionRemoveParticipantsRequestDelivered(ImsCallSession.this);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionRemoveParticipantsRequestFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionRemoveParticipantsRequestFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionResumeFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionResumeFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionResumeReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionResumeReceived(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionResumed(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionResumed(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionRttMessageReceived(String str) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionRttMessageReceived(str);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionRttModifyRequestReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionRttModifyRequestReceived(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionRttModifyResponseReceived(int i2) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionRttModifyResponseReceived(i2);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionStartFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionStartFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionStarted(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionStarted(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionSuppServiceReceived(IImsCallSession iImsCallSession, ImsSuppServiceNotification imsSuppServiceNotification) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionSuppServiceReceived(ImsCallSession.this, imsSuppServiceNotification);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionTerminated(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionTerminated(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionTtyModeReceived(IImsCallSession iImsCallSession, int i2) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionTtyModeReceived(ImsCallSession.this, i2);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionUpdateFailed(IImsCallSession iImsCallSession, ImsReasonInfo imsReasonInfo) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionUpdateFailed(ImsCallSession.this, imsReasonInfo);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionUpdateReceived(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionUpdateReceived(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionUpdated(IImsCallSession iImsCallSession, ImsCallProfile imsCallProfile) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionUpdated(ImsCallSession.this, imsCallProfile);
            }
        }

        @Override // android.telephony.ims.stub.ImsCallSessionListenerImplBase, com.android.ims.internal.IImsCallSessionListener
        public void callSessionUssdMessageReceived(IImsCallSession iImsCallSession, int i2, String str) {
            if (ImsCallSession.this.mListener != null) {
                ImsCallSession.this.mListener.callSessionUssdMessageReceived(ImsCallSession.this, i2, str);
            }
        }
    }

    public static class Listener {
        public void callSessionConferenceExtendFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionConferenceExtendReceived(ImsCallSession imsCallSession, ImsCallSession imsCallSession2, ImsCallProfile imsCallProfile) {
        }

        public void callSessionConferenceExtended(ImsCallSession imsCallSession, ImsCallSession imsCallSession2, ImsCallProfile imsCallProfile) {
        }

        public void callSessionConferenceStateUpdated(ImsCallSession imsCallSession, ImsConferenceState imsConferenceState) {
        }

        public void callSessionHandover(ImsCallSession imsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionHandoverFailed(ImsCallSession imsCallSession, int i2, int i3, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionHeld(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionHoldFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionHoldReceived(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionInviteParticipantsRequestDelivered(ImsCallSession imsCallSession) {
        }

        public void callSessionInviteParticipantsRequestFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionMayHandover(ImsCallSession imsCallSession, int i2, int i3) {
        }

        public void callSessionMergeComplete(ImsCallSession imsCallSession) {
        }

        public void callSessionMergeFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionMergeStarted(ImsCallSession imsCallSession, ImsCallSession imsCallSession2, ImsCallProfile imsCallProfile) {
        }

        public void callSessionMultipartyStateChanged(ImsCallSession imsCallSession, boolean z2) {
        }

        public void callSessionProgressing(ImsCallSession imsCallSession, ImsStreamMediaProfile imsStreamMediaProfile) {
        }

        public void callSessionRemoveParticipantsRequestDelivered(ImsCallSession imsCallSession) {
        }

        public void callSessionRemoveParticipantsRequestFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionResumeFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionResumeReceived(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionResumed(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionRttMessageReceived(String str) {
        }

        public void callSessionRttModifyRequestReceived(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionRttModifyResponseReceived(int i2) {
        }

        public void callSessionStartFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionStarted(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionSuppServiceReceived(ImsCallSession imsCallSession, ImsSuppServiceNotification imsSuppServiceNotification) {
        }

        public void callSessionTerminated(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionTtyModeReceived(ImsCallSession imsCallSession, int i2) {
        }

        public void callSessionUpdateFailed(ImsCallSession imsCallSession, ImsReasonInfo imsReasonInfo) {
        }

        public void callSessionUpdateReceived(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionUpdated(ImsCallSession imsCallSession, ImsCallProfile imsCallProfile) {
        }

        public void callSessionUssdMessageReceived(ImsCallSession imsCallSession, int i2, String str) {
        }
    }

    public static class State {
        public static final int ESTABLISHED = 4;
        public static final int ESTABLISHING = 3;
        public static final int IDLE = 0;
        public static final int INITIATED = 1;
        public static final int INVALID = -1;
        public static final int NEGOTIATING = 2;
        public static final int REESTABLISHING = 6;
        public static final int RENEGOTIATING = 5;
        public static final int TERMINATED = 8;
        public static final int TERMINATING = 7;

        private State() {
        }

        public static String toString(int i2) {
            switch (i2) {
                case 0:
                    return "IDLE";
                case 1:
                    return "INITIATED";
                case 2:
                    return "NEGOTIATING";
                case 3:
                    return "ESTABLISHING";
                case 4:
                    return "ESTABLISHED";
                case 5:
                    return "RENEGOTIATING";
                case 6:
                    return "REESTABLISHING";
                case 7:
                    return "TERMINATING";
                case 8:
                    return "TERMINATED";
                default:
                    return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
            }
        }
    }

    public ImsCallSession(IImsCallSession iImsCallSession) {
        this.mClosed = false;
        this.miSession = iImsCallSession;
        if (iImsCallSession == null) {
            this.mClosed = true;
        } else {
            try {
                iImsCallSession.setListener(new IImsCallSessionListenerProxy());
            } catch (RemoteException unused) {
            }
        }
    }

    public void accept(int i2, ImsStreamMediaProfile imsStreamMediaProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.accept(i2, imsStreamMediaProfile);
        } catch (RemoteException unused) {
        }
    }

    public synchronized void close() {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.close();
            this.mClosed = true;
        } catch (RemoteException unused) {
        }
    }

    public void extendToConference(String[] strArr) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.extendToConference(strArr);
        } catch (RemoteException unused) {
        }
    }

    public String getCallId() {
        if (this.mClosed) {
            return null;
        }
        try {
            return this.miSession.getCallId();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public ImsCallProfile getCallProfile() {
        if (this.mClosed) {
            return null;
        }
        try {
            return this.miSession.getCallProfile();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public ImsCallProfile getLocalCallProfile() {
        if (this.mClosed) {
            return null;
        }
        try {
            return this.miSession.getLocalCallProfile();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getProperty(String str) {
        if (this.mClosed) {
            return null;
        }
        try {
            return this.miSession.getProperty(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public ImsCallProfile getRemoteCallProfile() {
        if (this.mClosed) {
            return null;
        }
        try {
            return this.miSession.getRemoteCallProfile();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public IImsCallSession getSession() {
        return this.miSession;
    }

    public int getState() {
        if (this.mClosed) {
            return -1;
        }
        try {
            return this.miSession.getState();
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public IImsVideoCallProvider getVideoCallProvider() {
        if (this.mClosed) {
            return null;
        }
        try {
            return this.miSession.getVideoCallProvider();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void hold(ImsStreamMediaProfile imsStreamMediaProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.hold(imsStreamMediaProfile);
        } catch (RemoteException unused) {
        }
    }

    public void inviteParticipants(String[] strArr) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.inviteParticipants(strArr);
        } catch (RemoteException unused) {
        }
    }

    public boolean isAlive() {
        if (this.mClosed) {
            return false;
        }
        switch (getState()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public boolean isInCall() {
        if (this.mClosed) {
            return false;
        }
        try {
            return this.miSession.isInCall();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isMultiparty() {
        if (this.mClosed) {
            return false;
        }
        try {
            return this.miSession.isMultiparty();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void merge() {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.merge();
        } catch (RemoteException unused) {
        }
    }

    public void reject(int i2) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.reject(i2);
        } catch (RemoteException unused) {
        }
    }

    public void removeParticipants(String[] strArr) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.removeParticipants(strArr);
        } catch (RemoteException unused) {
        }
    }

    public void resume(ImsStreamMediaProfile imsStreamMediaProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.resume(imsStreamMediaProfile);
        } catch (RemoteException unused) {
        }
    }

    public void sendDtmf(char c, Message message) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.sendDtmf(c, message);
        } catch (RemoteException unused) {
        }
    }

    public void sendRttMessage(String str) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.sendRttMessage(str);
        } catch (RemoteException unused) {
        }
    }

    public void sendRttModifyRequest(ImsCallProfile imsCallProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.sendRttModifyRequest(imsCallProfile);
        } catch (RemoteException unused) {
        }
    }

    public void sendRttModifyResponse(boolean z2) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.sendRttModifyResponse(z2);
        } catch (RemoteException unused) {
        }
    }

    public void sendUssd(String str) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.sendUssd(str);
        } catch (RemoteException unused) {
        }
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    public void setMute(boolean z2) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.setMute(z2);
        } catch (RemoteException unused) {
        }
    }

    public void start(String str, ImsCallProfile imsCallProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.start(str, imsCallProfile);
        } catch (RemoteException unused) {
        }
    }

    public void startDtmf(char c) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.startDtmf(c);
        } catch (RemoteException unused) {
        }
    }

    public void stopDtmf() {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.stopDtmf();
        } catch (RemoteException unused) {
        }
    }

    public void terminate(int i2) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.terminate(i2);
        } catch (RemoteException unused) {
        }
    }

    public String toString() {
        return "[ImsCallSession objId:" + System.identityHashCode(this) + " state:" + State.toString(getState()) + " callId:" + getCallId() + "]";
    }

    public void update(int i2, ImsStreamMediaProfile imsStreamMediaProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.update(i2, imsStreamMediaProfile);
        } catch (RemoteException unused) {
        }
    }

    public void start(String[] strArr, ImsCallProfile imsCallProfile) {
        if (this.mClosed) {
            return;
        }
        try {
            this.miSession.startConference(strArr, imsCallProfile);
        } catch (RemoteException unused) {
        }
    }

    public ImsCallSession(IImsCallSession iImsCallSession, Listener listener) {
        this(iImsCallSession);
        setListener(listener);
    }
}
