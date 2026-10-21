package android.telecom;

import android.os.Bundle;
import android.util.ArraySet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Conference extends Conferenceable {
    public static final long CONNECT_TIME_NOT_SPECIFIED = 0;
    private CallAudioState mCallAudioState;
    private final List<Connection> mChildConnections;
    private final List<Connection> mConferenceableConnections;
    private long mConnectElapsedTimeMillis;
    private long mConnectTimeMillis;
    private int mConnectionCapabilities;
    private final Connection.Listener mConnectionDeathListener;
    private int mConnectionProperties;
    private DisconnectCause mDisconnectCause;
    private String mDisconnectMessage;
    private Bundle mExtras;
    private final Object mExtrasLock;
    private final Set<Listener> mListeners = new CopyOnWriteArraySet();
    private PhoneAccountHandle mPhoneAccount;
    private Set<String> mPreviousExtraKeys;
    private int mState;
    private StatusHints mStatusHints;
    private String mTelecomCallId;
    private final List<Connection> mUnmodifiableChildConnections;
    private final List<Connection> mUnmodifiableConferenceableConnections;

    public static abstract class Listener {
        public void onConferenceableConnectionsChanged(Conference conference, List<Connection> list) {
        }

        public void onConnectionAdded(Conference conference, Connection connection) {
        }

        public void onConnectionCapabilitiesChanged(Conference conference, int i2) {
        }

        public void onConnectionPropertiesChanged(Conference conference, int i2) {
        }

        public void onConnectionRemoved(Conference conference, Connection connection) {
        }

        public void onDestroyed(Conference conference) {
        }

        public void onDisconnected(Conference conference, DisconnectCause disconnectCause) {
        }

        public void onExtrasChanged(Conference conference, Bundle bundle) {
        }

        public void onExtrasRemoved(Conference conference, List<String> list) {
        }

        public void onStateChanged(Conference conference, int i2, int i3) {
        }

        public void onStatusHintsChanged(Conference conference, StatusHints statusHints) {
        }

        public void onVideoProviderChanged(Conference conference, Connection.VideoProvider videoProvider) {
        }

        public void onVideoStateChanged(Conference conference, int i2) {
        }
    }

    public Conference(PhoneAccountHandle phoneAccountHandle) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.mChildConnections = copyOnWriteArrayList;
        this.mUnmodifiableChildConnections = Collections.unmodifiableList(copyOnWriteArrayList);
        ArrayList arrayList = new ArrayList();
        this.mConferenceableConnections = arrayList;
        this.mUnmodifiableConferenceableConnections = Collections.unmodifiableList(arrayList);
        this.mState = 1;
        this.mConnectTimeMillis = 0L;
        this.mConnectElapsedTimeMillis = 0L;
        this.mExtrasLock = new Object();
        this.mConnectionDeathListener = new Connection.Listener() { // from class: android.telecom.Conference.1
            @Override // android.telecom.Connection.Listener
            public void onDestroyed(Connection connection) {
                if (Conference.this.mConferenceableConnections.remove(connection)) {
                    Conference.this.fireOnConferenceableConnectionsChanged();
                }
            }
        };
        this.mPhoneAccount = phoneAccountHandle;
    }

    public static boolean can(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    private final void clearConferenceableList() {
        Iterator<Connection> it = this.mConferenceableConnections.iterator();
        while (it.hasNext()) {
            it.next().removeConnectionListener(this.mConnectionDeathListener);
        }
        this.mConferenceableConnections.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fireOnConferenceableConnectionsChanged() {
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onConferenceableConnectionsChanged(this, getConferenceableConnections());
        }
    }

    private void setState(int i2) {
        if (i2 != 4 && i2 != 5 && i2 != 6 && i2 != 3) {
            Log.w(this, "Unsupported state transition for Conference call.", Connection.stateToString(i2));
            return;
        }
        int i3 = this.mState;
        if (i3 != i2) {
            this.mState = i2;
            Iterator<Listener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onStateChanged(this, i3, i2);
            }
        }
    }

    public void addCapability(int i2) {
        setConnectionCapabilities(i2 | this.mConnectionCapabilities);
    }

    public final boolean addConnection(Connection connection) {
        Log.d(this, "Connection=%s, connection=", connection);
        if (connection == null || this.mChildConnections.contains(connection) || !connection.setConference(this)) {
            return false;
        }
        this.mChildConnections.add(connection);
        onConnectionAdded(connection);
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onConnectionAdded(this, connection);
        }
        return true;
    }

    public final Conference addListener(Listener listener) {
        this.mListeners.add(listener);
        return this;
    }

    public final void destroy() {
        Log.d(this, "destroying conference : %s", this);
        for (Connection connection : this.mChildConnections) {
            Log.d(this, "removing connection %s", connection);
            removeConnection(connection);
        }
        if (this.mState != 6) {
            Log.d(this, "setting to disconnected", new Object[0]);
            setDisconnected(new DisconnectCause(2));
        }
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onDestroyed(this);
        }
    }

    @Deprecated
    public final AudioState getAudioState() {
        return new AudioState(this.mCallAudioState);
    }

    public final CallAudioState getCallAudioState() {
        return this.mCallAudioState;
    }

    public final List<Connection> getConferenceableConnections() {
        return this.mUnmodifiableConferenceableConnections;
    }

    public final long getConnectElapsedTime() {
        return this.mConnectElapsedTimeMillis;
    }

    @Deprecated
    public final long getConnectTimeMillis() {
        return getConnectionTime();
    }

    public final int getConnectionCapabilities() {
        return this.mConnectionCapabilities;
    }

    public final int getConnectionProperties() {
        return this.mConnectionProperties;
    }

    public final long getConnectionTime() {
        return this.mConnectTimeMillis;
    }

    public final List<Connection> getConnections() {
        return this.mUnmodifiableChildConnections;
    }

    public final DisconnectCause getDisconnectCause() {
        return this.mDisconnectCause;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final PhoneAccountHandle getPhoneAccountHandle() {
        return this.mPhoneAccount;
    }

    public Connection getPrimaryConnection() {
        List<Connection> list = this.mUnmodifiableChildConnections;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.mUnmodifiableChildConnections.get(0);
    }

    public final int getState() {
        return this.mState;
    }

    public final StatusHints getStatusHints() {
        return this.mStatusHints;
    }

    public final String getTelecomCallId() {
        return this.mTelecomCallId;
    }

    public Connection.VideoProvider getVideoProvider() {
        return null;
    }

    public int getVideoState() {
        return 0;
    }

    public final void handleExtrasChanged(Bundle bundle) {
        Bundle bundle2;
        synchronized (this.mExtrasLock) {
            this.mExtras = bundle;
            bundle2 = bundle != null ? new Bundle(this.mExtras) : null;
        }
        onExtrasChanged(bundle2);
    }

    @Deprecated
    public void onAudioStateChanged(AudioState audioState) {
    }

    public void onCallAudioStateChanged(CallAudioState callAudioState) {
    }

    public void onConnectionAdded(Connection connection) {
    }

    public void onDisconnect() {
    }

    public void onExtrasChanged(Bundle bundle) {
    }

    public void onHold() {
    }

    public void onMerge() {
    }

    public void onPlayDtmfTone(char c) {
    }

    public void onSeparate(Connection connection) {
    }

    public void onStopDtmfTone() {
    }

    public void onSwap() {
    }

    public void onUnhold() {
    }

    public final void putExtra(String str, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(str, z2);
        putExtras(bundle);
    }

    public final void putExtras(Bundle bundle) {
        Bundle bundle2;
        if (bundle == null) {
            return;
        }
        synchronized (this.mExtrasLock) {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            this.mExtras.putAll(bundle);
            bundle2 = new Bundle(this.mExtras);
        }
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onExtrasChanged(this, new Bundle(bundle2));
        }
    }

    public void removeCapability(int i2) {
        setConnectionCapabilities((~i2) & this.mConnectionCapabilities);
    }

    public final void removeConnection(Connection connection) {
        Log.d(this, "removing %s from %s", connection, this.mChildConnections);
        if (connection == null || !this.mChildConnections.remove(connection)) {
            return;
        }
        connection.resetConference();
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onConnectionRemoved(this, connection);
        }
    }

    public final void removeExtras(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        synchronized (this.mExtrasLock) {
            if (this.mExtras != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    this.mExtras.remove(it.next());
                }
            }
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(list);
        Iterator<Listener> it2 = this.mListeners.iterator();
        while (it2.hasNext()) {
            it2.next().onExtrasRemoved(this, listUnmodifiableList);
        }
    }

    public final Conference removeListener(Listener listener) {
        this.mListeners.remove(listener);
        return this;
    }

    public final void setActive() {
        setState(4);
    }

    public final void setCallAudioState(CallAudioState callAudioState) {
        Log.d(this, "setCallAudioState %s", callAudioState);
        this.mCallAudioState = callAudioState;
        onAudioStateChanged(getAudioState());
        onCallAudioStateChanged(callAudioState);
    }

    public final void setConferenceableConnections(List<Connection> list) {
        clearConferenceableList();
        for (Connection connection : list) {
            if (!this.mConferenceableConnections.contains(connection)) {
                connection.addConnectionListener(this.mConnectionDeathListener);
                this.mConferenceableConnections.add(connection);
            }
        }
        fireOnConferenceableConnectionsChanged();
    }

    @Deprecated
    public final void setConnectTimeMillis(long j2) {
        setConnectionTime(j2);
    }

    public final void setConnectionCapabilities(int i2) {
        if (i2 != this.mConnectionCapabilities) {
            this.mConnectionCapabilities = i2;
            Iterator<Listener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onConnectionCapabilitiesChanged(this, this.mConnectionCapabilities);
            }
        }
    }

    public final void setConnectionElapsedTime(long j2) {
        this.mConnectElapsedTimeMillis = j2;
    }

    public final void setConnectionProperties(int i2) {
        if (i2 != this.mConnectionProperties) {
            this.mConnectionProperties = i2;
            Iterator<Listener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onConnectionPropertiesChanged(this, this.mConnectionProperties);
            }
        }
    }

    public final void setConnectionTime(long j2) {
        this.mConnectTimeMillis = j2;
    }

    public final void setDialing() {
        setState(3);
    }

    public final void setDisconnected(DisconnectCause disconnectCause) {
        this.mDisconnectCause = disconnectCause;
        setState(6);
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onDisconnected(this, this.mDisconnectCause);
        }
    }

    public final void setExtras(Bundle bundle) {
        synchronized (this.mExtrasLock) {
            putExtras(bundle);
            if (this.mPreviousExtraKeys != null) {
                ArrayList arrayList = new ArrayList();
                for (String str : this.mPreviousExtraKeys) {
                    if (bundle == null || !bundle.containsKey(str)) {
                        arrayList.add(str);
                    }
                }
                if (!arrayList.isEmpty()) {
                    removeExtras(arrayList);
                }
            }
            if (this.mPreviousExtraKeys == null) {
                this.mPreviousExtraKeys = new ArraySet();
            }
            this.mPreviousExtraKeys.clear();
            if (bundle != null) {
                this.mPreviousExtraKeys.addAll(bundle.keySet());
            }
        }
    }

    public final void setOnHold() {
        setState(5);
    }

    public final void setStatusHints(StatusHints statusHints) {
        this.mStatusHints = statusHints;
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onStatusHintsChanged(this, statusHints);
        }
    }

    public final void setTelecomCallId(String str) {
        this.mTelecomCallId = str;
    }

    public final void setVideoProvider(Connection connection, Connection.VideoProvider videoProvider) {
        Log.d(this, "setVideoProvider Conference: %s Connection: %s VideoState: %s", this, connection, videoProvider);
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoProviderChanged(this, videoProvider);
        }
    }

    public final void setVideoState(Connection connection, int i2) {
        Log.d(this, "setVideoState Conference: %s Connection: %s VideoState: %s", this, connection, Integer.valueOf(i2));
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoStateChanged(this, i2);
        }
    }

    public String toString() {
        return String.format(Locale.US, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s, ThisObject %s]", Connection.stateToString(this.mState), Call.Details.capabilitiesToString(this.mConnectionCapabilities), Integer.valueOf(getVideoState()), getVideoProvider(), super.toString());
    }

    public boolean can(int i2) {
        return can(this.mConnectionCapabilities, i2);
    }

    public void onMerge(Connection connection) {
    }

    public final void putExtra(String str, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(str, i2);
        putExtras(bundle);
    }

    public final void putExtra(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        putExtras(bundle);
    }

    public final void removeExtras(String... strArr) {
        removeExtras(Arrays.asList(strArr));
    }
}
