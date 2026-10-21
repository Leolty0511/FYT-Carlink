package android.telecom;

import android.os.Bundle;
import android.util.ArrayMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class Phone {
    private CallAudioState mCallAudioState;
    private final Map<String, Call> mCallByTelecomCallId = new ArrayMap();
    private final String mCallingPackage;
    private final List<Call> mCalls;
    private boolean mCanAddCall;
    private final InCallAdapter mInCallAdapter;
    private final List<Listener> mListeners;
    private final int mTargetSdkVersion;
    private final List<Call> mUnmodifiableCalls;

    public static abstract class Listener {
        @Deprecated
        public void onAudioStateChanged(Phone phone, AudioState audioState) {
        }

        public void onBringToForeground(Phone phone, boolean z2) {
        }

        public void onCallAdded(Phone phone, Call call) {
        }

        public void onCallAudioStateChanged(Phone phone, CallAudioState callAudioState) {
        }

        public void onCallRemoved(Phone phone, Call call) {
        }

        public void onCanAddCallChanged(Phone phone, boolean z2) {
        }

        public void onSilenceRinger(Phone phone) {
        }
    }

    public Phone(InCallAdapter inCallAdapter, String str, int i2) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.mCalls = copyOnWriteArrayList;
        this.mUnmodifiableCalls = Collections.unmodifiableList(copyOnWriteArrayList);
        this.mListeners = new CopyOnWriteArrayList();
        this.mCanAddCall = true;
        this.mInCallAdapter = inCallAdapter;
        this.mCallingPackage = str;
        this.mTargetSdkVersion = i2;
    }

    private void checkCallTree(ParcelableCall parcelableCall) {
        if (parcelableCall.getChildCallIds() != null) {
            for (int i2 = 0; i2 < parcelableCall.getChildCallIds().size(); i2++) {
                if (!this.mCallByTelecomCallId.containsKey(parcelableCall.getChildCallIds().get(i2))) {
                    Log.wtf(this, "ParcelableCall %s has nonexistent child %s", parcelableCall.getId(), parcelableCall.getChildCallIds().get(i2));
                }
            }
        }
    }

    private void fireBringToForeground(boolean z2) {
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onBringToForeground(this, z2);
        }
    }

    private void fireCallAdded(Call call) {
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onCallAdded(this, call);
        }
    }

    private void fireCallAudioStateChanged(CallAudioState callAudioState) {
        for (Listener listener : this.mListeners) {
            listener.onCallAudioStateChanged(this, callAudioState);
            listener.onAudioStateChanged(this, new AudioState(callAudioState));
        }
    }

    private void fireCallRemoved(Call call) {
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onCallRemoved(this, call);
        }
    }

    private void fireCanAddCallChanged(boolean z2) {
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onCanAddCallChanged(this, z2);
        }
    }

    private void fireSilenceRinger() {
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSilenceRinger(this);
        }
    }

    public final void addListener(Listener listener) {
        this.mListeners.add(listener);
    }

    public final boolean canAddCall() {
        return this.mCanAddCall;
    }

    public final void destroy() {
        for (Call call : this.mCalls) {
            InCallService.VideoCall videoCall = call.getVideoCall();
            if (videoCall != null) {
                videoCall.destroy();
            }
            if (call.getState() != 7) {
                call.internalSetDisconnected();
            }
        }
    }

    @Deprecated
    public final AudioState getAudioState() {
        return new AudioState(this.mCallAudioState);
    }

    public final CallAudioState getCallAudioState() {
        return this.mCallAudioState;
    }

    public final List<Call> getCalls() {
        return this.mUnmodifiableCalls;
    }

    public final void internalAddCall(ParcelableCall parcelableCall) {
        Call call = new Call(this, parcelableCall.getId(), this.mInCallAdapter, parcelableCall.getState(), this.mCallingPackage, this.mTargetSdkVersion);
        this.mCallByTelecomCallId.put(parcelableCall.getId(), call);
        this.mCalls.add(call);
        checkCallTree(parcelableCall);
        call.internalUpdate(parcelableCall, this.mCallByTelecomCallId);
        fireCallAdded(call);
    }

    public final void internalBringToForeground(boolean z2) {
        fireBringToForeground(z2);
    }

    public final void internalCallAudioStateChanged(CallAudioState callAudioState) {
        if (Objects.equals(this.mCallAudioState, callAudioState)) {
            return;
        }
        this.mCallAudioState = callAudioState;
        fireCallAudioStateChanged(callAudioState);
    }

    public final Call internalGetCallByTelecomId(String str) {
        return this.mCallByTelecomCallId.get(str);
    }

    public final void internalOnConnectionEvent(String str, String str2, Bundle bundle) {
        Call call = this.mCallByTelecomCallId.get(str);
        if (call != null) {
            call.internalOnConnectionEvent(str2, bundle);
        }
    }

    public final void internalOnRttInitiationFailure(String str, int i2) {
        Call call = this.mCallByTelecomCallId.get(str);
        if (call != null) {
            call.internalOnRttInitiationFailure(i2);
        }
    }

    public final void internalOnRttUpgradeRequest(String str, int i2) {
        Call call = this.mCallByTelecomCallId.get(str);
        if (call != null) {
            call.internalOnRttUpgradeRequest(i2);
        }
    }

    public final void internalRemoveCall(Call call) {
        this.mCallByTelecomCallId.remove(call.internalGetCallId());
        this.mCalls.remove(call);
        InCallService.VideoCall videoCall = call.getVideoCall();
        if (videoCall != null) {
            videoCall.destroy();
        }
        fireCallRemoved(call);
    }

    public final void internalSetCanAddCall(boolean z2) {
        if (this.mCanAddCall != z2) {
            this.mCanAddCall = z2;
            fireCanAddCallChanged(z2);
        }
    }

    public final void internalSetPostDialWait(String str, String str2) {
        Call call = this.mCallByTelecomCallId.get(str);
        if (call != null) {
            call.internalSetPostDialWait(str2);
        }
    }

    public final void internalSilenceRinger() {
        fireSilenceRinger();
    }

    public final void internalUpdateCall(ParcelableCall parcelableCall) {
        Call call = this.mCallByTelecomCallId.get(parcelableCall.getId());
        if (call != null) {
            checkCallTree(parcelableCall);
            call.internalUpdate(parcelableCall, this.mCallByTelecomCallId);
        }
    }

    public final void removeListener(Listener listener) {
        if (listener != null) {
            this.mListeners.remove(listener);
        }
    }

    public final void setAudioRoute(int i2) {
        this.mInCallAdapter.setAudioRoute(i2);
    }

    public final void setMuted(boolean z2) {
        this.mInCallAdapter.mute(z2);
    }

    public final void setProximitySensorOff(boolean z2) {
        this.mInCallAdapter.turnProximitySensorOff(z2);
    }

    public final void setProximitySensorOn() {
        this.mInCallAdapter.turnProximitySensorOn();
    }
}
