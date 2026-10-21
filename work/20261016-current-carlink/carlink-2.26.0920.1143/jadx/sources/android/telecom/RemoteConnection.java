package android.telecom;

import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.Surface;
import com.android.internal.telecom.IConnectionService;
import com.android.internal.telecom.IVideoCallback;
import com.android.internal.telecom.IVideoProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoteConnection {
    private Uri mAddress;
    private int mAddressPresentation;
    private final Set<CallbackRecord> mCallbackRecords = Collections.newSetFromMap(new ConcurrentHashMap(8, 0.9f, 1));
    private String mCallerDisplayName;
    private int mCallerDisplayNamePresentation;
    private RemoteConference mConference;
    private final List<RemoteConnection> mConferenceableConnections;
    private boolean mConnected;
    private int mConnectionCapabilities;
    private final String mConnectionId;
    private int mConnectionProperties;
    private IConnectionService mConnectionService;
    private DisconnectCause mDisconnectCause;
    private Bundle mExtras;
    private boolean mIsVoipAudioMode;
    private boolean mRingbackRequested;
    private int mState;
    private StatusHints mStatusHints;
    private final List<RemoteConnection> mUnmodifiableconferenceableConnections;
    private VideoProvider mVideoProvider;
    private int mVideoState;

    public static abstract class Callback {
        public void onAddressChanged(RemoteConnection remoteConnection, Uri uri, int i2) {
        }

        public void onCallerDisplayNameChanged(RemoteConnection remoteConnection, String str, int i2) {
        }

        public void onConferenceChanged(RemoteConnection remoteConnection, RemoteConference remoteConference) {
        }

        public void onConferenceableConnectionsChanged(RemoteConnection remoteConnection, List<RemoteConnection> list) {
        }

        public void onConnectionCapabilitiesChanged(RemoteConnection remoteConnection, int i2) {
        }

        public void onConnectionEvent(RemoteConnection remoteConnection, String str, Bundle bundle) {
        }

        public void onConnectionPropertiesChanged(RemoteConnection remoteConnection, int i2) {
        }

        public void onDestroyed(RemoteConnection remoteConnection) {
        }

        public void onDisconnected(RemoteConnection remoteConnection, DisconnectCause disconnectCause) {
        }

        public void onExtrasChanged(RemoteConnection remoteConnection, Bundle bundle) {
        }

        public void onPostDialChar(RemoteConnection remoteConnection, char c) {
        }

        public void onPostDialWait(RemoteConnection remoteConnection, String str) {
        }

        public void onRemoteRttRequest(RemoteConnection remoteConnection) {
        }

        public void onRingbackRequested(RemoteConnection remoteConnection, boolean z2) {
        }

        public void onRttInitiationFailure(RemoteConnection remoteConnection, int i2) {
        }

        public void onRttInitiationSuccess(RemoteConnection remoteConnection) {
        }

        public void onRttSessionRemotelyTerminated(RemoteConnection remoteConnection) {
        }

        public void onStateChanged(RemoteConnection remoteConnection, int i2) {
        }

        public void onStatusHintsChanged(RemoteConnection remoteConnection, StatusHints statusHints) {
        }

        public void onVideoProviderChanged(RemoteConnection remoteConnection, VideoProvider videoProvider) {
        }

        public void onVideoStateChanged(RemoteConnection remoteConnection, int i2) {
        }

        public void onVoipAudioChanged(RemoteConnection remoteConnection, boolean z2) {
        }
    }

    public static final class CallbackRecord extends Callback {
        private final Callback mCallback;
        private final Handler mHandler;

        public CallbackRecord(Callback callback, Handler handler) {
            this.mCallback = callback;
            this.mHandler = handler;
        }

        public Callback getCallback() {
            return this.mCallback;
        }

        public Handler getHandler() {
            return this.mHandler;
        }
    }

    public static class VideoProvider {
        private final Set<Callback> mCallbacks;
        private final String mCallingPackage;
        private final int mTargetSdkVersion;
        private final IVideoCallback mVideoCallbackDelegate;
        private final VideoCallbackServant mVideoCallbackServant;
        private final IVideoProvider mVideoProviderBinder;

        public static abstract class Callback {
            public void onCallDataUsageChanged(VideoProvider videoProvider, long j2) {
            }

            public void onCallSessionEvent(VideoProvider videoProvider, int i2) {
            }

            public void onCameraCapabilitiesChanged(VideoProvider videoProvider, VideoProfile.CameraCapabilities cameraCapabilities) {
            }

            public void onPeerDimensionsChanged(VideoProvider videoProvider, int i2, int i3) {
            }

            public void onSessionModifyRequestReceived(VideoProvider videoProvider, VideoProfile videoProfile) {
            }

            public void onSessionModifyResponseReceived(VideoProvider videoProvider, int i2, VideoProfile videoProfile, VideoProfile videoProfile2) {
            }

            public void onVideoQualityChanged(VideoProvider videoProvider, int i2) {
            }
        }

        public VideoProvider(IVideoProvider iVideoProvider, String str, int i2) {
            IVideoCallback iVideoCallback = new IVideoCallback() { // from class: android.telecom.RemoteConnection.VideoProvider.1
                @Override // android.os.IInterface
                public IBinder asBinder() {
                    return null;
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void changeCallDataUsage(long j2) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onCallDataUsageChanged(VideoProvider.this, j2);
                    }
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void changeCameraCapabilities(VideoProfile.CameraCapabilities cameraCapabilities) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onCameraCapabilitiesChanged(VideoProvider.this, cameraCapabilities);
                    }
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void changePeerDimensions(int i3, int i4) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onPeerDimensionsChanged(VideoProvider.this, i3, i4);
                    }
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void changeVideoQuality(int i3) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onVideoQualityChanged(VideoProvider.this, i3);
                    }
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void handleCallSessionEvent(int i3) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onCallSessionEvent(VideoProvider.this, i3);
                    }
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void receiveSessionModifyRequest(VideoProfile videoProfile) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onSessionModifyRequestReceived(VideoProvider.this, videoProfile);
                    }
                }

                @Override // com.android.internal.telecom.IVideoCallback
                public void receiveSessionModifyResponse(int i3, VideoProfile videoProfile, VideoProfile videoProfile2) {
                    Iterator it = VideoProvider.this.mCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).onSessionModifyResponseReceived(VideoProvider.this, i3, videoProfile, videoProfile2);
                    }
                }
            };
            this.mVideoCallbackDelegate = iVideoCallback;
            VideoCallbackServant videoCallbackServant = new VideoCallbackServant(iVideoCallback);
            this.mVideoCallbackServant = videoCallbackServant;
            this.mCallbacks = Collections.newSetFromMap(new ConcurrentHashMap(8, 0.9f, 1));
            this.mVideoProviderBinder = iVideoProvider;
            this.mCallingPackage = str;
            this.mTargetSdkVersion = i2;
            try {
                iVideoProvider.addVideoCallback(videoCallbackServant.getStub().asBinder());
            } catch (RemoteException unused) {
            }
        }

        public void registerCallback(Callback callback) {
            this.mCallbacks.add(callback);
        }

        public void requestCallDataUsage() {
            try {
                this.mVideoProviderBinder.requestCallDataUsage();
            } catch (RemoteException unused) {
            }
        }

        public void requestCameraCapabilities() {
            try {
                this.mVideoProviderBinder.requestCameraCapabilities();
            } catch (RemoteException unused) {
            }
        }

        public void sendSessionModifyRequest(VideoProfile videoProfile, VideoProfile videoProfile2) {
            try {
                this.mVideoProviderBinder.sendSessionModifyRequest(videoProfile, videoProfile2);
            } catch (RemoteException unused) {
            }
        }

        public void sendSessionModifyResponse(VideoProfile videoProfile) {
            try {
                this.mVideoProviderBinder.sendSessionModifyResponse(videoProfile);
            } catch (RemoteException unused) {
            }
        }

        public void setCamera(String str) {
            try {
                this.mVideoProviderBinder.setCamera(str, this.mCallingPackage, this.mTargetSdkVersion);
            } catch (RemoteException unused) {
            }
        }

        public void setDeviceOrientation(int i2) {
            try {
                this.mVideoProviderBinder.setDeviceOrientation(i2);
            } catch (RemoteException unused) {
            }
        }

        public void setDisplaySurface(Surface surface) {
            try {
                this.mVideoProviderBinder.setDisplaySurface(surface);
            } catch (RemoteException unused) {
            }
        }

        public void setPauseImage(Uri uri) {
            try {
                this.mVideoProviderBinder.setPauseImage(uri);
            } catch (RemoteException unused) {
            }
        }

        public void setPreviewSurface(Surface surface) {
            try {
                this.mVideoProviderBinder.setPreviewSurface(surface);
            } catch (RemoteException unused) {
            }
        }

        public void setZoom(float f2) {
            try {
                this.mVideoProviderBinder.setZoom(f2);
            } catch (RemoteException unused) {
            }
        }

        public void unregisterCallback(Callback callback) {
            this.mCallbacks.remove(callback);
        }
    }

    public RemoteConnection(String str, IConnectionService iConnectionService, ConnectionRequest connectionRequest) {
        ArrayList arrayList = new ArrayList();
        this.mConferenceableConnections = arrayList;
        this.mUnmodifiableconferenceableConnections = Collections.unmodifiableList(arrayList);
        this.mConnectionId = str;
        this.mConnectionService = iConnectionService;
        this.mConnected = true;
        this.mState = 0;
    }

    public static RemoteConnection failure(DisconnectCause disconnectCause) {
        return new RemoteConnection(disconnectCause);
    }

    private void notifyExtrasChanged() {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.17
                @Override // java.lang.Runnable
                public void run() {
                    callback.onExtrasChanged(this, RemoteConnection.this.mExtras);
                }
            });
        }
    }

    public void abort() {
        try {
            if (this.mConnected) {
                this.mConnectionService.abort(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void answer() {
        try {
            if (this.mConnected) {
                this.mConnectionService.answer(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void disconnect() {
        try {
            if (this.mConnected) {
                this.mConnectionService.disconnect(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public Uri getAddress() {
        return this.mAddress;
    }

    public int getAddressPresentation() {
        return this.mAddressPresentation;
    }

    public CharSequence getCallerDisplayName() {
        return this.mCallerDisplayName;
    }

    public int getCallerDisplayNamePresentation() {
        return this.mCallerDisplayNamePresentation;
    }

    public RemoteConference getConference() {
        return this.mConference;
    }

    public List<RemoteConnection> getConferenceableConnections() {
        return this.mUnmodifiableconferenceableConnections;
    }

    public int getConnectionCapabilities() {
        return this.mConnectionCapabilities;
    }

    public int getConnectionProperties() {
        return this.mConnectionProperties;
    }

    public IConnectionService getConnectionService() {
        return this.mConnectionService;
    }

    public DisconnectCause getDisconnectCause() {
        return this.mDisconnectCause;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public String getId() {
        return this.mConnectionId;
    }

    public int getState() {
        return this.mState;
    }

    public StatusHints getStatusHints() {
        return this.mStatusHints;
    }

    public final VideoProvider getVideoProvider() {
        return this.mVideoProvider;
    }

    public int getVideoState() {
        return this.mVideoState;
    }

    public void hold() {
        try {
            if (this.mConnected) {
                this.mConnectionService.hold(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public boolean isRingbackRequested() {
        return this.mRingbackRequested;
    }

    public boolean isVoipAudioMode() {
        return this.mIsVoipAudioMode;
    }

    public void onConnectionEvent(final String str, final Bundle bundle) {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.18
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConnectionEvent(this, str, bundle);
                }
            });
        }
    }

    public void onPostDialChar(final char c) {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.8
                @Override // java.lang.Runnable
                public void run() {
                    callback.onPostDialChar(this, c);
                }
            });
        }
    }

    public void onRemoteRttRequest() {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new e(callbackRecord.getCallback(), this, 2));
        }
    }

    public void onRttInitiationFailure(int i2) {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new f(callbackRecord.getCallback(), this, i2));
        }
    }

    public void onRttInitiationSuccess() {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new e(callbackRecord.getCallback(), this, 1));
        }
    }

    public void onRttSessionRemotelyTerminated() {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            callbackRecord.getHandler().post(new e(callbackRecord.getCallback(), this, 0));
        }
    }

    public void playDtmfTone(char c) {
        try {
            if (this.mConnected) {
                this.mConnectionService.playDtmfTone(this.mConnectionId, c, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void postDialContinue(boolean z2) {
        try {
            if (this.mConnected) {
                this.mConnectionService.onPostDialContinue(this.mConnectionId, z2, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void pullExternalCall() {
        try {
            if (this.mConnected) {
                this.mConnectionService.pullExternalCall(this.mConnectionId, null);
            }
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
        try {
            this.mExtras.putAll(bundle);
        } catch (BadParcelableException e2) {
            Log.w(this, "putExtras: could not unmarshal extras; exception = " + e2, new Object[0]);
        }
        notifyExtrasChanged();
    }

    public void registerCallback(Callback callback) {
        registerCallback(callback, new Handler());
    }

    public void reject() {
        try {
            if (this.mConnected) {
                this.mConnectionService.reject(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
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

    public void sendRttUpgradeResponse(Connection.RttTextStream rttTextStream) {
        try {
            if (this.mConnected) {
                if (rttTextStream == null) {
                    this.mConnectionService.respondToRttUpgradeRequest(this.mConnectionId, null, null, null);
                } else {
                    this.mConnectionService.respondToRttUpgradeRequest(this.mConnectionId, rttTextStream.getFdFromInCall(), rttTextStream.getFdToInCall(), null);
                }
            }
        } catch (RemoteException unused) {
        }
    }

    public void setAddress(final Uri uri, final int i2) {
        this.mAddress = uri;
        this.mAddressPresentation = i2;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.13
                @Override // java.lang.Runnable
                public void run() {
                    callback.onAddressChanged(this, uri, i2);
                }
            });
        }
    }

    @Deprecated
    public void setAudioState(AudioState audioState) {
        setCallAudioState(new CallAudioState(audioState));
    }

    public void setCallAudioState(CallAudioState callAudioState) {
        try {
            if (this.mConnected) {
                this.mConnectionService.onCallAudioStateChanged(this.mConnectionId, callAudioState, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void setCallerDisplayName(final String str, final int i2) {
        this.mCallerDisplayName = str;
        this.mCallerDisplayNamePresentation = i2;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.14
                @Override // java.lang.Runnable
                public void run() {
                    callback.onCallerDisplayNameChanged(this, str, i2);
                }
            });
        }
    }

    public void setConference(final RemoteConference remoteConference) {
        if (this.mConference != remoteConference) {
            this.mConference = remoteConference;
            for (CallbackRecord callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.16
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onConferenceChanged(this, remoteConference);
                    }
                });
            }
        }
    }

    public void setConferenceableConnections(List<RemoteConnection> list) {
        this.mConferenceableConnections.clear();
        this.mConferenceableConnections.addAll(list);
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.15
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConferenceableConnectionsChanged(this, RemoteConnection.this.mUnmodifiableconferenceableConnections);
                }
            });
        }
    }

    public void setConnectionCapabilities(final int i2) {
        this.mConnectionCapabilities = i2;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.4
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConnectionCapabilitiesChanged(this, i2);
                }
            });
        }
    }

    public void setConnectionProperties(final int i2) {
        this.mConnectionProperties = i2;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.5
                @Override // java.lang.Runnable
                public void run() {
                    callback.onConnectionPropertiesChanged(this, i2);
                }
            });
        }
    }

    public void setDestroyed() {
        if (this.mCallbackRecords.isEmpty()) {
            return;
        }
        if (this.mState != 6) {
            setDisconnected(new DisconnectCause(1, "Connection destroyed."));
        }
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.6
                @Override // java.lang.Runnable
                public void run() {
                    callback.onDestroyed(this);
                }
            });
        }
        this.mCallbackRecords.clear();
        this.mConnected = false;
    }

    public void setDisconnected(final DisconnectCause disconnectCause) {
        if (this.mState != 6) {
            this.mState = 6;
            this.mDisconnectCause = disconnectCause;
            for (CallbackRecord callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.2
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onDisconnected(this, disconnectCause);
                    }
                });
            }
        }
    }

    public void setIsVoipAudioMode(final boolean z2) {
        this.mIsVoipAudioMode = z2;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.11
                @Override // java.lang.Runnable
                public void run() {
                    callback.onVoipAudioChanged(this, z2);
                }
            });
        }
    }

    public void setPostDialWait(final String str) {
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.7
                @Override // java.lang.Runnable
                public void run() {
                    callback.onPostDialWait(this, str);
                }
            });
        }
    }

    public void setRingbackRequested(final boolean z2) {
        if (this.mRingbackRequested != z2) {
            this.mRingbackRequested = z2;
            for (CallbackRecord callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.3
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onRingbackRequested(this, z2);
                    }
                });
            }
        }
    }

    public void setState(final int i2) {
        if (this.mState != i2) {
            this.mState = i2;
            for (CallbackRecord callbackRecord : this.mCallbackRecords) {
                final Callback callback = callbackRecord.getCallback();
                callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.1
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.onStateChanged(this, i2);
                    }
                });
            }
        }
    }

    public void setStatusHints(final StatusHints statusHints) {
        this.mStatusHints = statusHints;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.12
                @Override // java.lang.Runnable
                public void run() {
                    callback.onStatusHintsChanged(this, statusHints);
                }
            });
        }
    }

    public void setVideoProvider(final VideoProvider videoProvider) {
        this.mVideoProvider = videoProvider;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.10
                @Override // java.lang.Runnable
                public void run() {
                    callback.onVideoProviderChanged(this, videoProvider);
                }
            });
        }
    }

    public void setVideoState(final int i2) {
        this.mVideoState = i2;
        for (CallbackRecord callbackRecord : this.mCallbackRecords) {
            final Callback callback = callbackRecord.getCallback();
            callbackRecord.getHandler().post(new Runnable() { // from class: android.telecom.RemoteConnection.9
                @Override // java.lang.Runnable
                public void run() {
                    callback.onVideoStateChanged(this, i2);
                }
            });
        }
    }

    public void startRtt(Connection.RttTextStream rttTextStream) {
        try {
            if (this.mConnected) {
                this.mConnectionService.startRtt(this.mConnectionId, rttTextStream.getFdFromInCall(), rttTextStream.getFdToInCall(), null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void stopDtmfTone() {
        try {
            if (this.mConnected) {
                this.mConnectionService.stopDtmfTone(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void stopRtt() {
        try {
            if (this.mConnected) {
                this.mConnectionService.stopRtt(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void unhold() {
        try {
            if (this.mConnected) {
                this.mConnectionService.unhold(this.mConnectionId, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public void unregisterCallback(Callback callback) {
        if (callback != null) {
            for (CallbackRecord callbackRecord : this.mCallbackRecords) {
                if (callbackRecord.getCallback() == callback) {
                    this.mCallbackRecords.remove(callbackRecord);
                    return;
                }
            }
        }
    }

    public void registerCallback(Callback callback, Handler handler) {
        unregisterCallback(callback);
        if (callback == null || handler == null) {
            return;
        }
        this.mCallbackRecords.add(new CallbackRecord(callback, handler));
    }

    public void answer(int i2) {
        try {
            if (this.mConnected) {
                this.mConnectionService.answerVideo(this.mConnectionId, i2, null);
            }
        } catch (RemoteException unused) {
        }
    }

    public RemoteConnection(String str, IConnectionService iConnectionService, ParcelableConnection parcelableConnection, String str2, int i2) {
        ArrayList arrayList = new ArrayList();
        this.mConferenceableConnections = arrayList;
        this.mUnmodifiableconferenceableConnections = Collections.unmodifiableList(arrayList);
        this.mState = 1;
        this.mConnectionId = str;
        this.mConnectionService = iConnectionService;
        this.mConnected = true;
        this.mState = parcelableConnection.getState();
        this.mDisconnectCause = parcelableConnection.getDisconnectCause();
        this.mRingbackRequested = parcelableConnection.isRingbackRequested();
        this.mConnectionCapabilities = parcelableConnection.getConnectionCapabilities();
        this.mConnectionProperties = parcelableConnection.getConnectionProperties();
        this.mVideoState = parcelableConnection.getVideoState();
        IVideoProvider videoProvider = parcelableConnection.getVideoProvider();
        if (videoProvider != null) {
            this.mVideoProvider = new VideoProvider(videoProvider, str2, i2);
        } else {
            this.mVideoProvider = null;
        }
        this.mIsVoipAudioMode = parcelableConnection.getIsVoipAudioMode();
        this.mStatusHints = parcelableConnection.getStatusHints();
        this.mAddress = parcelableConnection.getHandle();
        this.mAddressPresentation = parcelableConnection.getHandlePresentation();
        this.mCallerDisplayName = parcelableConnection.getCallerDisplayName();
        this.mCallerDisplayNamePresentation = parcelableConnection.getCallerDisplayNamePresentation();
        this.mConference = null;
        putExtras(parcelableConnection.getExtras());
        Bundle bundle = new Bundle();
        bundle.putString(Connection.EXTRA_ORIGINAL_CONNECTION_ID, str);
        putExtras(bundle);
    }

    public RemoteConnection(DisconnectCause disconnectCause) {
        ArrayList arrayList = new ArrayList();
        this.mConferenceableConnections = arrayList;
        this.mUnmodifiableconferenceableConnections = Collections.unmodifiableList(arrayList);
        this.mConnectionId = WifiEnterpriseConfig.EMPTY_VALUE;
        this.mConnected = false;
        this.mState = 6;
        this.mDisconnectCause = disconnectCause;
    }
}
