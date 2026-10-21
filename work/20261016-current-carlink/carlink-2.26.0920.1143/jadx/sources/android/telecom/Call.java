package android.telecom;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import com.android.internal.telephony.IccCardConstants;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class Call {
    public static final String AVAILABLE_PHONE_ACCOUNTS = "selectPhoneAccountAccounts";
    public static final String EVENT_HANDOVER_COMPLETE = "android.telecom.event.HANDOVER_COMPLETE";
    public static final String EVENT_HANDOVER_FAILED = "android.telecom.event.HANDOVER_FAILED";
    public static final String EVENT_HANDOVER_SOURCE_DISCONNECTED = "android.telecom.event.HANDOVER_SOURCE_DISCONNECTED";
    public static final String EVENT_REQUEST_HANDOVER = "android.telecom.event.REQUEST_HANDOVER";
    public static final String EXTRA_HANDOVER_EXTRAS = "android.telecom.extra.HANDOVER_EXTRAS";
    public static final String EXTRA_HANDOVER_PHONE_ACCOUNT_HANDLE = "android.telecom.extra.HANDOVER_PHONE_ACCOUNT_HANDLE";
    public static final String EXTRA_HANDOVER_VIDEO_STATE = "android.telecom.extra.HANDOVER_VIDEO_STATE";
    public static final String EXTRA_LAST_EMERGENCY_CALLBACK_TIME_MILLIS = "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS";
    public static final int STATE_ACTIVE = 4;
    public static final int STATE_CONNECTING = 9;
    public static final int STATE_DIALING = 1;
    public static final int STATE_DISCONNECTED = 7;
    public static final int STATE_DISCONNECTING = 10;
    public static final int STATE_HOLDING = 3;
    public static final int STATE_NEW = 0;

    @Deprecated
    public static final int STATE_PRE_DIAL_WAIT = 8;
    public static final int STATE_PULLING_CALL = 11;
    public static final int STATE_RINGING = 2;
    public static final int STATE_SELECT_PHONE_ACCOUNT = 8;
    private final List<CallbackRecord<Callback>> mCallbackRecords;
    private String mCallingPackage;
    private List<String> mCannedTextResponses;
    private final List<Call> mChildren;
    private boolean mChildrenCached;
    private final List<String> mChildrenIds = new ArrayList();
    private final List<Call> mConferenceableCalls;
    private Details mDetails;
    private Bundle mExtras;
    private final InCallAdapter mInCallAdapter;
    private String mParentId;
    private final Phone mPhone;
    private String mRemainingPostDialSequence;
    private RttCall mRttCall;
    private int mState;
    private int mTargetSdkVersion;
    private final String mTelecomCallId;
    private final List<Call> mUnmodifiableChildren;
    private final List<Call> mUnmodifiableConferenceableCalls;
    private VideoCallImpl mVideoCallImpl;

    public static abstract class Callback {
        public void onCallDestroyed(Call call) {
        }

        public void onCannedTextResponsesLoaded(Call call, List<String> list) {
        }

        public void onChildrenChanged(Call call, List<Call> list) {
        }

        public void onConferenceableCallsChanged(Call call, List<Call> list) {
        }

        public void onConnectionEvent(Call call, String str, Bundle bundle) {
        }

        public void onDetailsChanged(Call call, Details details) {
        }

        public void onParentChanged(Call call, Call call2) {
        }

        public void onPostDialWait(Call call, String str) {
        }

        public void onRttInitiationFailure(Call call, int i2) {
        }

        public void onRttModeChanged(Call call, int i2) {
        }

        public void onRttRequest(Call call, int i2) {
        }

        public void onRttStatusChanged(Call call, boolean z2, RttCall rttCall) {
        }

        public void onStateChanged(Call call, int i2) {
        }

        public void onVideoCallChanged(Call call, InCallService.VideoCall videoCall) {
        }
    }

    public static class Details {
        public static final int CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO = 4194304;
        public static final int CAPABILITY_CAN_PAUSE_VIDEO = 1048576;
        public static final int CAPABILITY_CAN_PULL_CALL = 8388608;
        public static final int CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION = 2097152;
        public static final int CAPABILITY_CAN_UPGRADE_TO_VIDEO = 524288;
        public static final int CAPABILITY_DISCONNECT_FROM_CONFERENCE = 8192;
        public static final int CAPABILITY_HOLD = 1;
        public static final int CAPABILITY_MANAGE_CONFERENCE = 128;
        public static final int CAPABILITY_MERGE_CONFERENCE = 4;
        public static final int CAPABILITY_MUTE = 64;
        public static final int CAPABILITY_RESPOND_VIA_TEXT = 32;
        public static final int CAPABILITY_SEPARATE_FROM_CONFERENCE = 4096;
        public static final int CAPABILITY_SPEED_UP_MT_AUDIO = 262144;
        public static final int CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL = 768;
        public static final int CAPABILITY_SUPPORTS_VT_LOCAL_RX = 256;
        public static final int CAPABILITY_SUPPORTS_VT_LOCAL_TX = 512;
        public static final int CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL = 3072;
        public static final int CAPABILITY_SUPPORTS_VT_REMOTE_RX = 1024;
        public static final int CAPABILITY_SUPPORTS_VT_REMOTE_TX = 2048;
        public static final int CAPABILITY_SUPPORT_HOLD = 2;
        public static final int CAPABILITY_SWAP_CONFERENCE = 8;
        public static final int CAPABILITY_UNUSED_1 = 16;
        public static final int PROPERTY_CONFERENCE = 1;
        public static final int PROPERTY_EMERGENCY_CALLBACK_MODE = 4;
        public static final int PROPERTY_ENTERPRISE_CALL = 32;
        public static final int PROPERTY_GENERIC_CONFERENCE = 2;
        public static final int PROPERTY_HAS_CDMA_VOICE_PRIVACY = 128;
        public static final int PROPERTY_HIGH_DEF_AUDIO = 16;
        public static final int PROPERTY_IS_EXTERNAL_CALL = 64;
        public static final int PROPERTY_SELF_MANAGED = 256;
        public static final int PROPERTY_WIFI = 8;
        private final PhoneAccountHandle mAccountHandle;
        private final int mCallCapabilities;
        private final int mCallProperties;
        private final String mCallerDisplayName;
        private final int mCallerDisplayNamePresentation;
        private final long mConnectTimeMillis;
        private final long mCreationTimeMillis;
        private final DisconnectCause mDisconnectCause;
        private final Bundle mExtras;
        private final GatewayInfo mGatewayInfo;
        private final Uri mHandle;
        private final int mHandlePresentation;
        private final Bundle mIntentExtras;
        private final StatusHints mStatusHints;
        private final int mSupportedAudioRoutes = 15;
        private final String mTelecomCallId;
        private final int mVideoState;

        public Details(String str, Uri uri, int i2, String str2, int i3, PhoneAccountHandle phoneAccountHandle, int i4, int i5, DisconnectCause disconnectCause, long j2, GatewayInfo gatewayInfo, int i6, StatusHints statusHints, Bundle bundle, Bundle bundle2, long j3) {
            this.mTelecomCallId = str;
            this.mHandle = uri;
            this.mHandlePresentation = i2;
            this.mCallerDisplayName = str2;
            this.mCallerDisplayNamePresentation = i3;
            this.mAccountHandle = phoneAccountHandle;
            this.mCallCapabilities = i4;
            this.mCallProperties = i5;
            this.mDisconnectCause = disconnectCause;
            this.mConnectTimeMillis = j2;
            this.mGatewayInfo = gatewayInfo;
            this.mVideoState = i6;
            this.mStatusHints = statusHints;
            this.mExtras = bundle;
            this.mIntentExtras = bundle2;
            this.mCreationTimeMillis = j3;
        }

        public static boolean can(int i2, int i3) {
            return (i2 & i3) == i3;
        }

        public static String capabilitiesToString(int i2) {
            StringBuilder sb = new StringBuilder("[Capabilities:");
            if (can(i2, 1)) {
                sb.append(" CAPABILITY_HOLD");
            }
            if (can(i2, 2)) {
                sb.append(" CAPABILITY_SUPPORT_HOLD");
            }
            if (can(i2, 4)) {
                sb.append(" CAPABILITY_MERGE_CONFERENCE");
            }
            if (can(i2, 8)) {
                sb.append(" CAPABILITY_SWAP_CONFERENCE");
            }
            if (can(i2, 32)) {
                sb.append(" CAPABILITY_RESPOND_VIA_TEXT");
            }
            if (can(i2, 64)) {
                sb.append(" CAPABILITY_MUTE");
            }
            if (can(i2, 128)) {
                sb.append(" CAPABILITY_MANAGE_CONFERENCE");
            }
            if (can(i2, 256)) {
                sb.append(" CAPABILITY_SUPPORTS_VT_LOCAL_RX");
            }
            if (can(i2, 512)) {
                sb.append(" CAPABILITY_SUPPORTS_VT_LOCAL_TX");
            }
            if (can(i2, 768)) {
                sb.append(" CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL");
            }
            if (can(i2, 1024)) {
                sb.append(" CAPABILITY_SUPPORTS_VT_REMOTE_RX");
            }
            if (can(i2, 2048)) {
                sb.append(" CAPABILITY_SUPPORTS_VT_REMOTE_TX");
            }
            if (can(i2, 4194304)) {
                sb.append(" CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO");
            }
            if (can(i2, 3072)) {
                sb.append(" CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL");
            }
            if (can(i2, 262144)) {
                sb.append(" CAPABILITY_SPEED_UP_MT_AUDIO");
            }
            if (can(i2, 524288)) {
                sb.append(" CAPABILITY_CAN_UPGRADE_TO_VIDEO");
            }
            if (can(i2, 1048576)) {
                sb.append(" CAPABILITY_CAN_PAUSE_VIDEO");
            }
            if (can(i2, 8388608)) {
                sb.append(" CAPABILITY_CAN_PULL_CALL");
            }
            sb.append("]");
            return sb.toString();
        }

        public static Details createFromParcelableCall(ParcelableCall parcelableCall) {
            return new Details(parcelableCall.getId(), parcelableCall.getHandle(), parcelableCall.getHandlePresentation(), parcelableCall.getCallerDisplayName(), parcelableCall.getCallerDisplayNamePresentation(), parcelableCall.getAccountHandle(), parcelableCall.getCapabilities(), parcelableCall.getProperties(), parcelableCall.getDisconnectCause(), parcelableCall.getConnectTimeMillis(), parcelableCall.getGatewayInfo(), parcelableCall.getVideoState(), parcelableCall.getStatusHints(), parcelableCall.getExtras(), parcelableCall.getIntentExtras(), parcelableCall.getCreationTimeMillis());
        }

        public static boolean hasProperty(int i2, int i3) {
            return (i2 & i3) == i3;
        }

        public static String propertiesToString(int i2) {
            StringBuilder sb = new StringBuilder("[Properties:");
            if (hasProperty(i2, 1)) {
                sb.append(" PROPERTY_CONFERENCE");
            }
            if (hasProperty(i2, 2)) {
                sb.append(" PROPERTY_GENERIC_CONFERENCE");
            }
            if (hasProperty(i2, 8)) {
                sb.append(" PROPERTY_WIFI");
            }
            if (hasProperty(i2, 16)) {
                sb.append(" PROPERTY_HIGH_DEF_AUDIO");
            }
            if (hasProperty(i2, 4)) {
                sb.append(" PROPERTY_EMERGENCY_CALLBACK_MODE");
            }
            if (hasProperty(i2, 64)) {
                sb.append(" PROPERTY_IS_EXTERNAL_CALL");
            }
            if (hasProperty(i2, 128)) {
                sb.append(" PROPERTY_HAS_CDMA_VOICE_PRIVACY");
            }
            sb.append("]");
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Details)) {
                return false;
            }
            Details details = (Details) obj;
            return Objects.equals(this.mHandle, details.mHandle) && Objects.equals(Integer.valueOf(this.mHandlePresentation), Integer.valueOf(details.mHandlePresentation)) && Objects.equals(this.mCallerDisplayName, details.mCallerDisplayName) && Objects.equals(Integer.valueOf(this.mCallerDisplayNamePresentation), Integer.valueOf(details.mCallerDisplayNamePresentation)) && Objects.equals(this.mAccountHandle, details.mAccountHandle) && Objects.equals(Integer.valueOf(this.mCallCapabilities), Integer.valueOf(details.mCallCapabilities)) && Objects.equals(Integer.valueOf(this.mCallProperties), Integer.valueOf(details.mCallProperties)) && Objects.equals(this.mDisconnectCause, details.mDisconnectCause) && Objects.equals(Long.valueOf(this.mConnectTimeMillis), Long.valueOf(details.mConnectTimeMillis)) && Objects.equals(this.mGatewayInfo, details.mGatewayInfo) && Objects.equals(Integer.valueOf(this.mVideoState), Integer.valueOf(details.mVideoState)) && Objects.equals(this.mStatusHints, details.mStatusHints) && Call.areBundlesEqual(this.mExtras, details.mExtras) && Call.areBundlesEqual(this.mIntentExtras, details.mIntentExtras) && Objects.equals(Long.valueOf(this.mCreationTimeMillis), Long.valueOf(details.mCreationTimeMillis));
        }

        public PhoneAccountHandle getAccountHandle() {
            return this.mAccountHandle;
        }

        public int getCallCapabilities() {
            return this.mCallCapabilities;
        }

        public int getCallProperties() {
            return this.mCallProperties;
        }

        public String getCallerDisplayName() {
            return this.mCallerDisplayName;
        }

        public int getCallerDisplayNamePresentation() {
            return this.mCallerDisplayNamePresentation;
        }

        public final long getConnectTimeMillis() {
            return this.mConnectTimeMillis;
        }

        public long getCreationTimeMillis() {
            return this.mCreationTimeMillis;
        }

        public DisconnectCause getDisconnectCause() {
            return this.mDisconnectCause;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public GatewayInfo getGatewayInfo() {
            return this.mGatewayInfo;
        }

        public Uri getHandle() {
            return this.mHandle;
        }

        public int getHandlePresentation() {
            return this.mHandlePresentation;
        }

        public Bundle getIntentExtras() {
            return this.mIntentExtras;
        }

        public StatusHints getStatusHints() {
            return this.mStatusHints;
        }

        public int getSupportedAudioRoutes() {
            return 15;
        }

        public String getTelecomCallId() {
            return this.mTelecomCallId;
        }

        public int getVideoState() {
            return this.mVideoState;
        }

        public int hashCode() {
            return Objects.hash(this.mHandle, Integer.valueOf(this.mHandlePresentation), this.mCallerDisplayName, Integer.valueOf(this.mCallerDisplayNamePresentation), this.mAccountHandle, Integer.valueOf(this.mCallCapabilities), Integer.valueOf(this.mCallProperties), this.mDisconnectCause, Long.valueOf(this.mConnectTimeMillis), this.mGatewayInfo, Integer.valueOf(this.mVideoState), this.mStatusHints, this.mExtras, this.mIntentExtras, Long.valueOf(this.mCreationTimeMillis));
        }

        public String toString() {
            return "[pa: " + this.mAccountHandle + ", hdl: " + Log.pii(this.mHandle) + ", caps: " + capabilitiesToString(this.mCallCapabilities) + ", props: " + propertiesToString(this.mCallProperties) + "]";
        }

        public boolean can(int i2) {
            return can(this.mCallCapabilities, i2);
        }

        public boolean hasProperty(int i2) {
            return hasProperty(this.mCallProperties, i2);
        }
    }

    @Deprecated
    public static abstract class Listener extends Callback {
    }

    public static final class RttCall {
        private static final int READ_BUFFER_SIZE = 1000;
        public static final int RTT_MODE_FULL = 1;
        public static final int RTT_MODE_HCO = 2;
        public static final int RTT_MODE_INVALID = 0;
        public static final int RTT_MODE_VCO = 3;
        private final InCallAdapter mInCallAdapter;
        private char[] mReadBuffer = new char[1000];
        private InputStreamReader mReceiveStream;
        private int mRttMode;
        private final String mTelecomCallId;
        private OutputStreamWriter mTransmitStream;

        @Retention(RetentionPolicy.SOURCE)
        public @interface RttAudioMode {
        }

        public RttCall(String str, InputStreamReader inputStreamReader, OutputStreamWriter outputStreamWriter, int i2, InCallAdapter inCallAdapter) {
            this.mTelecomCallId = str;
            this.mReceiveStream = inputStreamReader;
            this.mTransmitStream = outputStreamWriter;
            this.mRttMode = i2;
            this.mInCallAdapter = inCallAdapter;
        }

        public int getRttAudioMode() {
            return this.mRttMode;
        }

        public String read() {
            try {
                int i2 = this.mReceiveStream.read(this.mReadBuffer, 0, 1000);
                if (i2 < 0) {
                    return null;
                }
                return new String(this.mReadBuffer, 0, i2);
            } catch (IOException e2) {
                Log.w(this, "Exception encountered when reading from InputStreamReader: %s", e2);
                return null;
            }
        }

        public String readImmediately() {
            int i2;
            if (!this.mReceiveStream.ready() || (i2 = this.mReceiveStream.read(this.mReadBuffer, 0, 1000)) < 0) {
                return null;
            }
            return new String(this.mReadBuffer, 0, i2);
        }

        public void setRttMode(int i2) {
            this.mInCallAdapter.setRttMode(this.mTelecomCallId, i2);
        }

        public void write(String str) throws IOException {
            this.mTransmitStream.write(str);
            this.mTransmitStream.flush();
        }
    }

    public Call(Phone phone, String str, InCallAdapter inCallAdapter, String str2, int i2) {
        ArrayList arrayList = new ArrayList();
        this.mChildren = arrayList;
        this.mUnmodifiableChildren = Collections.unmodifiableList(arrayList);
        this.mCallbackRecords = new CopyOnWriteArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.mConferenceableCalls = arrayList2;
        this.mUnmodifiableConferenceableCalls = Collections.unmodifiableList(arrayList2);
        this.mParentId = null;
        this.mCannedTextResponses = null;
        this.mPhone = phone;
        this.mTelecomCallId = str;
        this.mInCallAdapter = inCallAdapter;
        this.mState = 0;
        this.mCallingPackage = str2;
        this.mTargetSdkVersion = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean areBundlesEqual(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == bundle2;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (str != null && !Objects.equals(bundle.get(str), bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    private void fireCallDestroyed() {
        if (this.mCallbackRecords.isEmpty()) {
            this.mPhone.internalRemoveCall(this);
        }
        for (final CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.8
                @Override // java.lang.Runnable
                public void run() {
                    boolean zIsEmpty;
                    try {
                        callback.onCallDestroyed(this);
                        e = null;
                    } catch (RuntimeException e2) {
                        e = e2;
                    }
                    synchronized (Call.this) {
                        Call.this.mCallbackRecords.remove(callbackRecord);
                        zIsEmpty = Call.this.mCallbackRecords.isEmpty();
                    }
                    if (zIsEmpty) {
                        Call.this.mPhone.internalRemoveCall(this);
                    }
                    if (e != null) {
                        throw e;
                    }
                }
            });
        }
    }

    private void fireCannedTextResponsesLoaded(final List<String> list) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.5
                @Override // java.lang.Runnable
                public void run() {
                    callback.onCannedTextResponsesLoaded(this, list);
                }
            });
        }
    }

    private void fireChildrenChanged(final List<Call> list) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.3
                @Override // java.lang.Runnable
                public void run() {
                    callback.onChildrenChanged(this, list);
                }
            });
        }
    }

    private void fireConferenceableCallsChanged() {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.9
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConferenceableCallsChanged(this, Call.this.mUnmodifiableConferenceableCalls);
                }
            });
        }
    }

    private void fireDetailsChanged(final Details details) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.4
                @Override // java.lang.Runnable
                public void run() {
                    callback.onDetailsChanged(this, details);
                }
            });
        }
    }

    private void fireOnConnectionEvent(final String str, final Bundle bundle) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.10
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConnectionEvent(this, str, bundle);
                }
            });
        }
    }

    private void fireOnIsRttChanged(final boolean z2, final RttCall rttCall) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.b
                @Override // java.lang.Runnable
                public final void run() {
                    callback.onRttStatusChanged(this, z2, rttCall);
                }
            });
        }
    }

    private void fireOnRttModeChanged(int i2) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new a(callbackRecord.getCallback(), this, i2, 2));
        }
    }

    private void fireParentChanged(final Call call) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.2
                @Override // java.lang.Runnable
                public void run() {
                    callback.onParentChanged(this, call);
                }
            });
        }
    }

    private void firePostDialWait(final String str) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.7
                @Override // java.lang.Runnable
                public void run() {
                    callback.onPostDialWait(this, str);
                }
            });
        }
    }

    private void fireStateChanged(final int i2) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.1
                @Override // java.lang.Runnable
                public void run() {
                    callback.onStateChanged(this, i2);
                }
            });
        }
    }

    private void fireVideoCallChanged(final InCallService.VideoCall videoCall) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.Call.6
                @Override // java.lang.Runnable
                public void run() {
                    callback.onVideoCallChanged(this, videoCall);
                }
            });
        }
    }

    private static String stateToString(int i2) {
        switch (i2) {
            case 0:
                return "NEW";
            case 1:
                return "DIALING";
            case 2:
                return "RINGING";
            case 3:
                return "HOLDING";
            case 4:
                return "ACTIVE";
            case 5:
            case 6:
            default:
                Log.w(Call.class, "Unknown state %d", Integer.valueOf(i2));
                return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
            case 7:
                return "DISCONNECTED";
            case 8:
                return "SELECT_PHONE_ACCOUNT";
            case 9:
                return "CONNECTING";
            case 10:
                return "DISCONNECTING";
        }
    }

    @Deprecated
    public void addListener(Listener listener) {
        registerCallback(listener);
    }

    public void answer(int i2) {
        this.mInCallAdapter.answerCall(this.mTelecomCallId, i2);
    }

    public void conference(Call call) {
        if (call != null) {
            this.mInCallAdapter.conference(this.mTelecomCallId, call.mTelecomCallId);
        }
    }

    public void disconnect() {
        this.mInCallAdapter.disconnectCall(this.mTelecomCallId);
    }

    public List<String> getCannedTextResponses() {
        return this.mCannedTextResponses;
    }

    public List<Call> getChildren() {
        if (!this.mChildrenCached) {
            this.mChildrenCached = true;
            this.mChildren.clear();
            Iterator<String> it = this.mChildrenIds.iterator();
            while (it.hasNext()) {
                Call callInternalGetCallByTelecomId = this.mPhone.internalGetCallByTelecomId(it.next());
                if (callInternalGetCallByTelecomId == null) {
                    this.mChildrenCached = false;
                } else {
                    this.mChildren.add(callInternalGetCallByTelecomId);
                }
            }
        }
        return this.mUnmodifiableChildren;
    }

    public List<Call> getConferenceableCalls() {
        return this.mUnmodifiableConferenceableCalls;
    }

    public Details getDetails() {
        return this.mDetails;
    }

    public Call getParent() {
        String str = this.mParentId;
        if (str != null) {
            return this.mPhone.internalGetCallByTelecomId(str);
        }
        return null;
    }

    public String getRemainingPostDialSequence() {
        return this.mRemainingPostDialSequence;
    }

    public RttCall getRttCall() {
        return this.mRttCall;
    }

    public int getState() {
        return this.mState;
    }

    public InCallService.VideoCall getVideoCall() {
        return this.mVideoCallImpl;
    }

    public void hold() {
        this.mInCallAdapter.holdCall(this.mTelecomCallId);
    }

    public final String internalGetCallId() {
        return this.mTelecomCallId;
    }

    public final void internalOnConnectionEvent(String str, Bundle bundle) {
        fireOnConnectionEvent(str, bundle);
    }

    public final void internalOnRttInitiationFailure(int i2) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new a(callbackRecord.getCallback(), this, i2, 0));
        }
    }

    public final void internalOnRttUpgradeRequest(int i2) {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new a(callbackRecord.getCallback(), this, i2, 1));
        }
    }

    public final void internalSetDisconnected() {
        if (this.mState != 7) {
            this.mState = 7;
            fireStateChanged(7);
            fireCallDestroyed();
        }
    }

    public final void internalSetPostDialWait(String str) {
        this.mRemainingPostDialSequence = str;
        firePostDialWait(str);
    }

    public final void internalUpdate(ParcelableCall parcelableCall, Map<String, Call> map) {
        boolean z2;
        boolean z3;
        boolean z4;
        Details detailsCreateFromParcelableCall = Details.createFromParcelableCall(parcelableCall);
        boolean z5 = !Objects.equals(this.mDetails, detailsCreateFromParcelableCall);
        if (z5) {
            this.mDetails = detailsCreateFromParcelableCall;
        }
        if (this.mCannedTextResponses != null || parcelableCall.getCannedSmsResponses() == null || parcelableCall.getCannedSmsResponses().isEmpty()) {
            z2 = false;
        } else {
            this.mCannedTextResponses = Collections.unmodifiableList(parcelableCall.getCannedSmsResponses());
            z2 = true;
        }
        VideoCallImpl videoCallImpl = parcelableCall.getVideoCallImpl(this.mCallingPackage, this.mTargetSdkVersion);
        boolean z6 = parcelableCall.isVideoCallProviderChanged() && !Objects.equals(this.mVideoCallImpl, videoCallImpl);
        if (z6) {
            this.mVideoCallImpl = videoCallImpl;
        }
        VideoCallImpl videoCallImpl2 = this.mVideoCallImpl;
        if (videoCallImpl2 != null) {
            videoCallImpl2.setVideoState(getDetails().getVideoState());
        }
        int state = parcelableCall.getState();
        boolean z7 = this.mState != state;
        if (z7) {
            this.mState = state;
        }
        String parentCallId = parcelableCall.getParentCallId();
        boolean z8 = !Objects.equals(this.mParentId, parentCallId);
        if (z8) {
            this.mParentId = parentCallId;
        }
        boolean z9 = !Objects.equals(parcelableCall.getChildCallIds(), this.mChildrenIds);
        if (z9) {
            this.mChildrenIds.clear();
            this.mChildrenIds.addAll(parcelableCall.getChildCallIds());
            this.mChildrenCached = false;
        }
        List<String> conferenceableCallIds = parcelableCall.getConferenceableCallIds();
        ArrayList arrayList = new ArrayList(conferenceableCallIds.size());
        for (String str : conferenceableCallIds) {
            if (map.containsKey(str)) {
                arrayList.add(map.get(str));
            }
        }
        if (!Objects.equals(this.mConferenceableCalls, arrayList)) {
            this.mConferenceableCalls.clear();
            this.mConferenceableCalls.addAll(arrayList);
            fireConferenceableCallsChanged();
        }
        if (parcelableCall.getParcelableRttCall() != null && parcelableCall.getIsRttCallChanged()) {
            ParcelableRttCall parcelableRttCall = parcelableCall.getParcelableRttCall();
            RttCall rttCall = new RttCall(this.mTelecomCallId, new InputStreamReader(new ParcelFileDescriptor.AutoCloseInputStream(parcelableRttCall.getReceiveStream()), StandardCharsets.UTF_8), new OutputStreamWriter(new ParcelFileDescriptor.AutoCloseOutputStream(parcelableRttCall.getTransmitStream()), StandardCharsets.UTF_8), parcelableRttCall.getRttMode(), this.mInCallAdapter);
            RttCall rttCall2 = this.mRttCall;
            if (rttCall2 == null) {
                z3 = true;
                z4 = false;
            } else if (rttCall2.getRttAudioMode() != rttCall.getRttAudioMode()) {
                z4 = true;
                z3 = false;
            } else {
                z3 = false;
                z4 = false;
            }
            this.mRttCall = rttCall;
        } else if (this.mRttCall != null && parcelableCall.getParcelableRttCall() == null && parcelableCall.getIsRttCallChanged()) {
            this.mRttCall = null;
            z3 = true;
            z4 = false;
        } else {
            z3 = false;
            z4 = false;
        }
        if (z7) {
            fireStateChanged(this.mState);
        }
        if (z5) {
            fireDetailsChanged(this.mDetails);
        }
        if (z2) {
            fireCannedTextResponsesLoaded(this.mCannedTextResponses);
        }
        if (z6) {
            fireVideoCallChanged(this.mVideoCallImpl);
        }
        if (z8) {
            fireParentChanged(getParent());
        }
        if (z9) {
            fireChildrenChanged(getChildren());
        }
        if (z3) {
            RttCall rttCall3 = this.mRttCall;
            fireOnIsRttChanged(rttCall3 != null, rttCall3);
        }
        if (z4) {
            fireOnRttModeChanged(this.mRttCall.getRttAudioMode());
        }
        if (this.mState == 7) {
            fireCallDestroyed();
        }
    }

    public boolean isRttActive() {
        return this.mRttCall != null;
    }

    public void mergeConference() {
        this.mInCallAdapter.mergeConference(this.mTelecomCallId);
    }

    public void phoneAccountSelected(PhoneAccountHandle phoneAccountHandle, boolean z2) {
        this.mInCallAdapter.phoneAccountSelected(this.mTelecomCallId, phoneAccountHandle, z2);
    }

    public void playDtmfTone(char c) {
        this.mInCallAdapter.playDtmfTone(this.mTelecomCallId, c);
    }

    public void postDialContinue(boolean z2) {
        this.mInCallAdapter.postDialContinue(this.mTelecomCallId, z2);
    }

    public void pullExternalCall() {
        if (this.mDetails.hasProperty(64)) {
            this.mInCallAdapter.pullExternalCall(this.mTelecomCallId);
        }
    }

    public final void putExtra(String str, boolean z2) {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putBoolean(str, z2);
        this.mInCallAdapter.putExtra(this.mTelecomCallId, str, z2);
    }

    public final void putExtras(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putAll(bundle);
        this.mInCallAdapter.putExtras(this.mTelecomCallId, bundle);
    }

    public void registerCallback(Callback callback) {
        registerCallback(callback, new Handler());
    }

    public void reject(boolean z2, String str) {
        this.mInCallAdapter.rejectCall(this.mTelecomCallId, z2, str);
    }

    public final void removeExtras(List<String> list) {
        if (this.mExtras != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.mExtras.remove(it.next());
            }
            if (this.mExtras.size() == 0) {
                this.mExtras = null;
            }
        }
        this.mInCallAdapter.removeExtras(this.mTelecomCallId, list);
    }

    @Deprecated
    public void removeListener(Listener listener) {
        unregisterCallback(listener);
    }

    public void respondToRttRequest(int i2, boolean z2) {
        this.mInCallAdapter.respondToRttRequest(this.mTelecomCallId, i2, z2);
    }

    public void sendCallEvent(String str, Bundle bundle) {
        this.mInCallAdapter.sendCallEvent(this.mTelecomCallId, str, bundle);
    }

    public void sendRttRequest() {
        this.mInCallAdapter.sendRttRequest(this.mTelecomCallId);
    }

    public void splitFromConference() {
        this.mInCallAdapter.splitFromConference(this.mTelecomCallId);
    }

    public void stopDtmfTone() {
        this.mInCallAdapter.stopDtmfTone(this.mTelecomCallId);
    }

    public void stopRtt() {
        this.mInCallAdapter.stopRtt(this.mTelecomCallId);
    }

    public void swapConference() {
        this.mInCallAdapter.swapConference(this.mTelecomCallId);
    }

    public String toString() {
        return "Call [id: " + this.mTelecomCallId + ", state: " + stateToString(this.mState) + ", details: " + this.mDetails + "]";
    }

    public void unhold() {
        this.mInCallAdapter.unholdCall(this.mTelecomCallId);
    }

    public void unregisterCallback(Callback callback) {
        if (callback == null || this.mState == 7) {
            return;
        }
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            if (callbackRecord.getCallback() == callback) {
                this.mCallbackRecords.remove(callbackRecord);
                return;
            }
        }
    }

    public void registerCallback(Callback callback, Handler handler) {
        unregisterCallback(callback);
        if (callback == null || handler == null || this.mState == 7) {
            return;
        }
        this.mCallbackRecords.add(new CallbackRecord<>(callback, handler));
    }

    public final void putExtra(String str, int i2) {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putInt(str, i2);
        this.mInCallAdapter.putExtra(this.mTelecomCallId, str, i2);
    }

    public final void removeExtras(String... strArr) {
        removeExtras(Arrays.asList(strArr));
    }

    public final void putExtra(String str, String str2) {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putString(str, str2);
        this.mInCallAdapter.putExtra(this.mTelecomCallId, str, str2);
    }

    public Call(Phone phone, String str, InCallAdapter inCallAdapter, int i2, String str2, int i3) {
        ArrayList arrayList = new ArrayList();
        this.mChildren = arrayList;
        this.mUnmodifiableChildren = Collections.unmodifiableList(arrayList);
        this.mCallbackRecords = new CopyOnWriteArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.mConferenceableCalls = arrayList2;
        this.mUnmodifiableConferenceableCalls = Collections.unmodifiableList(arrayList2);
        this.mParentId = null;
        this.mCannedTextResponses = null;
        this.mPhone = phone;
        this.mTelecomCallId = str;
        this.mInCallAdapter = inCallAdapter;
        this.mState = i2;
        this.mCallingPackage = str2;
        this.mTargetSdkVersion = i3;
    }
}
