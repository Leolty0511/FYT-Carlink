package android.telecom;

import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import com.android.internal.telecom.IConnectionService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoteConference {
    private final Set<CallbackRecord<Callback>> mCallbackRecords = new CopyOnWriteArraySet();
    private final List<RemoteConnection> mChildConnections;
    private final List<RemoteConnection> mConferenceableConnections;
    private int mConnectionCapabilities;
    private int mConnectionProperties;
    private final IConnectionService mConnectionService;
    private DisconnectCause mDisconnectCause;
    private Bundle mExtras;
    private final String mId;
    private int mState;
    private final List<RemoteConnection> mUnmodifiableChildConnections;
    private final List<RemoteConnection> mUnmodifiableConferenceableConnections;

    public static abstract class Callback {
        public void onConferenceableConnectionsChanged(RemoteConference remoteConference, List<RemoteConnection> list) {
        }

        public void onConnectionAdded(RemoteConference remoteConference, RemoteConnection remoteConnection) {
        }

        public void onConnectionCapabilitiesChanged(RemoteConference remoteConference, int i2) {
        }

        public void onConnectionPropertiesChanged(RemoteConference remoteConference, int i2) {
        }

        public void onConnectionRemoved(RemoteConference remoteConference, RemoteConnection remoteConnection) {
        }

        public void onDestroyed(RemoteConference remoteConference) {
        }

        public void onDisconnected(RemoteConference remoteConference, DisconnectCause disconnectCause) {
        }

        public void onExtrasChanged(RemoteConference remoteConference, Bundle bundle) {
        }

        public void onStateChanged(RemoteConference remoteConference, int i2, int i3) {
        }
    }

    public RemoteConference(String str, IConnectionService iConnectionService) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.mChildConnections = copyOnWriteArrayList;
        this.mUnmodifiableChildConnections = Collections.unmodifiableList(copyOnWriteArrayList);
        ArrayList arrayList = new ArrayList();
        this.mConferenceableConnections = arrayList;
        this.mUnmodifiableConferenceableConnections = Collections.unmodifiableList(arrayList);
        this.mState = 1;
        this.mId = str;
        this.mConnectionService = iConnectionService;
    }

    private void notifyExtrasChanged() {
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.9
                @Override // java.lang.Runnable
                public void run() {
                    callback.onExtrasChanged(this, RemoteConference.this.mExtras);
                }
            });
        }
    }

    public void addConnection(final RemoteConnection remoteConnection) {
        if (this.mChildConnections.contains(remoteConnection)) {
            return;
        }
        this.mChildConnections.add(remoteConnection);
        remoteConnection.setConference(this);
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.3
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConnectionAdded(this, remoteConnection);
                }
            });
        }
    }

    public void disconnect() {
        try {
            this.mConnectionService.disconnect(this.mId, null);
        } catch (RemoteException unused) {
        }
    }

    public List<RemoteConnection> getConferenceableConnections() {
        return this.mUnmodifiableConferenceableConnections;
    }

    public final int getConnectionCapabilities() {
        return this.mConnectionCapabilities;
    }

    public final int getConnectionProperties() {
        return this.mConnectionProperties;
    }

    public final List<RemoteConnection> getConnections() {
        return this.mUnmodifiableChildConnections;
    }

    public DisconnectCause getDisconnectCause() {
        return this.mDisconnectCause;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public String getId() {
        return this.mId;
    }

    public final int getState() {
        return this.mState;
    }

    public void hold() {
        try {
            this.mConnectionService.hold(this.mId, null);
        } catch (RemoteException unused) {
        }
    }

    public void merge() {
        try {
            this.mConnectionService.mergeConference(this.mId, null);
        } catch (RemoteException unused) {
        }
    }

    public void playDtmfTone(char c) {
        try {
            this.mConnectionService.playDtmfTone(this.mId, c, null);
        } catch (RemoteException unused) {
        }
    }

    public void putExtras(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putAll(bundle);
        notifyExtrasChanged();
    }

    public final void registerCallback(Callback callback) {
        registerCallback(callback, new Handler());
    }

    public void removeConnection(final RemoteConnection remoteConnection) {
        if (this.mChildConnections.contains(remoteConnection)) {
            this.mChildConnections.remove(remoteConnection);
            remoteConnection.setConference(null);
            for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.4
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onConnectionRemoved(this, remoteConnection);
                    }
                });
            }
        }
    }

    public void removeExtras(List<String> list) {
        if (this.mExtras == null || list == null || list.isEmpty()) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.mExtras.remove(it.next());
        }
        notifyExtrasChanged();
    }

    public void separate(RemoteConnection remoteConnection) {
        if (this.mChildConnections.contains(remoteConnection)) {
            try {
                this.mConnectionService.splitFromConference(remoteConnection.getId(), null);
            } catch (RemoteException unused) {
            }
        }
    }

    @Deprecated
    public void setAudioState(AudioState audioState) {
        setCallAudioState(new CallAudioState(audioState));
    }

    public void setCallAudioState(CallAudioState callAudioState) {
        try {
            this.mConnectionService.onCallAudioStateChanged(this.mId, callAudioState, null);
        } catch (RemoteException unused) {
        }
    }

    public void setConferenceableConnections(List<RemoteConnection> list) {
        this.mConferenceableConnections.clear();
        this.mConferenceableConnections.addAll(list);
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.7
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConferenceableConnectionsChanged(this, RemoteConference.this.mUnmodifiableConferenceableConnections);
                }
            });
        }
    }

    public void setConnectionCapabilities(int i2) {
        if (this.mConnectionCapabilities != i2) {
            this.mConnectionCapabilities = i2;
            for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.5
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onConnectionCapabilitiesChanged(this, RemoteConference.this.mConnectionCapabilities);
                    }
                });
            }
        }
    }

    public void setConnectionProperties(int i2) {
        if (this.mConnectionProperties != i2) {
            this.mConnectionProperties = i2;
            for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.6
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onConnectionPropertiesChanged(this, RemoteConference.this.mConnectionProperties);
                    }
                });
            }
        }
    }

    public void setDestroyed() {
        Iterator<RemoteConnection> it = this.mChildConnections.iterator();
        while (it.hasNext()) {
            it.next().setConference(null);
        }
        for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.1
                @Override // java.lang.Runnable
                public void run() {
                    callback.onDestroyed(this);
                }
            });
        }
    }

    public void setDisconnected(final DisconnectCause disconnectCause) {
        if (this.mState != 6) {
            this.mDisconnectCause = disconnectCause;
            setState(6);
            for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.8
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onDisconnected(this, disconnectCause);
                    }
                });
            }
        }
    }

    public void setState(final int i2) {
        if (i2 != 4 && i2 != 5 && i2 != 6) {
            Log.w(this, "Unsupported state transition for Conference call.", Connection.stateToString(i2));
            return;
        }
        final int i3 = this.mState;
        if (i3 != i2) {
            this.mState = i2;
            for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConference.2
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onStateChanged(this, i3, i2);
                    }
                });
            }
        }
    }

    public void stopDtmfTone() {
        try {
            this.mConnectionService.stopDtmfTone(this.mId, null);
        } catch (RemoteException unused) {
        }
    }

    public void swap() {
        try {
            this.mConnectionService.swapConference(this.mId, null);
        } catch (RemoteException unused) {
        }
    }

    public void unhold() {
        try {
            this.mConnectionService.unhold(this.mId, null);
        } catch (RemoteException unused) {
        }
    }

    public final void unregisterCallback(Callback callback) {
        if (callback != null) {
            for (CallbackRecord<Callback> callbackRecord : this.mCallbackRecords) {
                if (callbackRecord.getCallback() == callback) {
                    this.mCallbackRecords.remove(callbackRecord);
                    return;
                }
            }
        }
    }

    public final void registerCallback(Callback callback, Handler handler) {
        unregisterCallback(callback);
        if (callback == null || handler == null) {
            return;
        }
        this.mCallbackRecords.add(new CallbackRecord<>(callback, handler));
    }
}
