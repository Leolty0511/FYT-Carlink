package com.google.android.projection.protocol;

import android.app.m;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Common;
import com.google.android.projection.proto.Protos;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class GalReceiver implements NativeObject, ControllerCallbacks {
    public static final int BYEBYE_REASON_USER_SELECTION = 1;
    public static final int DRIVER_SIDE_CENTER = 2;
    public static final int DRIVER_SIDE_LEFT = 0;
    public static final int DRIVER_SIDE_RIGHT = 1;
    private static final String TAG = "AHU.GAL_RECEIVER";
    private static final boolean VERBOSE_LOGGING_ENABLED = false;
    private final Handler handler;
    private final AppMessageListener mAppMessageListener;
    private final AudioFocusListener mAudioFocusListener;
    private final ByeByeHandler mByeByeHandler;
    private final InputOutputThreads mGalio;

    @UsedByNative
    private long mNativeGalReceiver;
    private final PhoneInfoListener mPhoneInfoListener;
    private final ProjectedModeIconReceiver mProjectedModeIconReceiver;
    private final SparseArray<CarServiceProvider> mRegisteredServices;
    private final AtomicBoolean mStopping;
    public static final int AUDIO_FOCUS_STATE_GAIN = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_GAIN.getNumber();
    public static final int AUDIO_FOCUS_STATE_LOSS = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_LOSS.getNumber();
    public static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK.getNumber();
    public static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_LOSS_TRANSIENT.getNumber();
    public static final int AUDIO_FOCUS_STATE_GAIN_TRANSIENT = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_GAIN_TRANSIENT.getNumber();
    public static final int AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY.getNumber();
    public static final int AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY = Protos.AudioFocusStateType.AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY.getNumber();
    public static final int AUDIO_FOCUS_RELEASE = Protos.AudioFocusRequestType.AUDIO_FOCUS_RELEASE.getNumber();
    public static final int AUDIO_FOCUS_GAIN = Protos.AudioFocusRequestType.AUDIO_FOCUS_GAIN.getNumber();
    public static final int AUDIO_FOCUS_GAIN_TRANSIENT = Protos.AudioFocusRequestType.AUDIO_FOCUS_GAIN_TRANSIENT.getNumber();
    public static final int AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK = Protos.AudioFocusRequestType.AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK.getNumber();
    public static final int VOICE_RECOGNITION_STATE_STARTED = Protos.VoiceSessionStatus.VOICE_SESSION_START.getNumber();
    public static final int VOICE_RECOGNITION_STATE_ENDED = Protos.VoiceSessionStatus.VOICE_SESSION_END.getNumber();
    public static final int NAVIGATION_FOCUS_STATE_NATIVE = Protos.NavFocusType.NAV_FOCUS_NATIVE.getNumber();
    public static final int NAVIGATION_FOCUS_STATE_PROJECTED = Protos.NavFocusType.NAV_FOCUS_PROJECTED.getNumber();

    public interface AppMessageListener {
        void onBatteryStatusNotification(int i2, int i3, boolean z2);

        void onDisconnected(@Nullable Transport.StopReason stopReason);

        void onNavigationFocusRequest(int i2);

        void onPoorWirelessNetworkConnectivity();

        void onUnrecoverableError(Protos.MessageStatus messageStatus);

        void onVoiceSessionNotification(int i2);
    }

    public interface AudioFocusListener {
        void onAudioFocusRequest(int i2);
    }

    public interface ByeByeHandler {
        void onByeByeRequest(int i2);

        void onByeByeResponse();
    }

    public static class CarInfo {

        @UsedByNative
        public boolean canPlayNativeMediaDuringVr;

        @UsedByNative
        public String displayName;

        @UsedByNative
        public int driverPosition;

        @UsedByNative
        public String headUnitMake;

        @UsedByNative
        public String headUnitModel;

        @UsedByNative
        public String headUnitSoftwareBuild;

        @UsedByNative
        public String headUnitSoftwareVersion;

        @UsedByNative
        public String manufacturer;

        @UsedByNative
        public String model;

        @UsedByNative
        public String modelYear;

        @UsedByNative
        public int sessionConfiguration;

        @UsedByNative
        public String vehicleId;

        public CarInfo(String str, String str2, String str3, String str4, int i2, String str5, String str6, String str7, String str8, boolean z2, int i3, String str9) {
            this.manufacturer = str;
            this.model = str2;
            this.modelYear = str3;
            this.vehicleId = str4;
            this.driverPosition = i2;
            this.headUnitMake = str5;
            this.headUnitModel = str6;
            this.headUnitSoftwareBuild = str7;
            this.headUnitSoftwareVersion = str8;
            this.canPlayNativeMediaDuringVr = z2;
            this.sessionConfiguration = i3;
            this.displayName = str9;
        }
    }

    @UsedByNative
    public static class ConnectedDevice {

        @UsedByNative
        public final int deviceId;

        @UsedByNative
        public final String deviceName;

        @UsedByNative
        public ConnectedDevice(String str, int i2) {
            this.deviceName = str;
            this.deviceId = i2;
        }
    }

    public static class FrameParser implements InputOutputThreads.FrameParser {
        private final GalReceiver galReceiver;
        private Runnable mOnQueueFlushed;

        public FrameParser(GalReceiver galReceiver) {
            this.galReceiver = galReceiver;
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.FrameParser
        public int dequeueOutgoingFrame(byte[] bArr) {
            int iNativeGetEncodedFrame = this.galReceiver.nativeGetEncodedFrame(bArr);
            if (iNativeGetEncodedFrame == 0 && this.galReceiver.mStopping.get() && this.mOnQueueFlushed != null) {
                this.galReceiver.nativePrepareShutdown();
                Log.i("AHU.GAL_RECEIVER", "Controller queue is empty");
                this.mOnQueueFlushed.run();
            }
            return iNativeGetEncodedFrame;
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.FrameParser
        public void enqueueIncomingFrame(byte[] bArr, int i2) {
            this.galReceiver.nativeQueueIncoming(bArr, i2);
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.FrameParser
        public int getFrameSizeToRead(byte[] bArr, int i2) {
            return this.galReceiver.nativeGetAdditionalBytesToRead(bArr);
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.FrameParser
        public void onTerminating(@Nullable Runnable runnable) {
            this.galReceiver.mStopping.set(true);
            if (runnable == null) {
                Log.i("AHU.GAL_RECEIVER", "onTerminating, prepare shutdown");
                this.galReceiver.nativePrepareShutdown();
            } else {
                Log.i("AHU.GAL_RECEIVER", "onTerminating, flushing controller queue");
                this.mOnQueueFlushed = runnable;
                this.galReceiver.nativeFlushControllerChannelQueue();
            }
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.FrameParser
        public void onThreadsTerminated(@Nullable Transport.StopReason stopReason) {
            this.galReceiver.mAppMessageListener.onDisconnected(stopReason);
        }
    }

    public interface PhoneInfoListener {
        void onPhoneInfoAvailable(Common.PhoneInfo phoneInfo, @Nullable String str);
    }

    public interface ProjectedModeIconReceiver {
        void setProjectedModeIcon(byte[] bArr, String str);
    }

    public interface UserSwitchListener {
        void onCarConnectedDevicesRequest();

        void onUserSwitchRequest(ConnectedDevice connectedDevice);
    }

    static {
        ReceiverLibJni.load();
    }

    public GalReceiver(AppMessageListener appMessageListener, AudioFocusListener audioFocusListener, ProjectedModeIconReceiver projectedModeIconReceiver, ByeByeHandler byeByeHandler, Handler handler, CarInfo carInfo, String str, String str2, String str3) {
        this(appMessageListener, audioFocusListener, projectedModeIconReceiver, new PhoneInfoListener() { // from class: com.google.android.projection.protocol.a
            @Override // com.google.android.projection.protocol.GalReceiver.PhoneInfoListener
            public final void onPhoneInfoAvailable(Common.PhoneInfo phoneInfo, String str4) {
                GalReceiver.lambda$new$0(phoneInfo, str4);
            }
        }, byeByeHandler, handler, carInfo, str, str2, str3);
    }

    private void destroyCarServices() {
        for (int i2 = 0; i2 < this.mRegisteredServices.size(); i2++) {
            this.mRegisteredServices.get(this.mRegisteredServices.keyAt(i2)).destroy();
        }
        this.mRegisteredServices.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(Common.PhoneInfo phoneInfo, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeFlushControllerChannelQueue();

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeGetAdditionalBytesToRead(byte[] bArr);

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeGetEncodedFrame(byte[] bArr);

    private native void nativeInit();

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativePrepareShutdown();

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeQueueIncoming(byte[] bArr, int i2);

    private native boolean nativeRegister(long j2);

    private native void nativeSendByeByeRequest(int i2);

    private native void nativeSendByeByeResponse();

    private native void nativeSendCarConnectedDevices(List<ConnectedDevice> list, boolean z2, boolean z3);

    private native void nativeSendUserSwitchResponse(int i2, ConnectedDevice connectedDevice);

    private native void nativeSetAudioFocus(int i2, boolean z2);

    private native void nativeSetCallAvailability(boolean z2);

    private native void nativeSetCarInfo(CarInfo carInfo);

    private native boolean nativeSetCreds(String str, String str2, String str3);

    private native void nativeSetHeadUnitInfo(String str, String str2, String str3, String str4);

    private native void nativeSetIdentityInfo(String str, String str2, String str3, String str4);

    private native void nativeSetNavFocus(int i2);

    private native boolean nativeSetTransportConfigurationListener(ConnectionConfigurationCallbacks connectionConfigurationCallbacks);

    private native void nativeShutdown();

    private native void nativeStart();

    private boolean startCarServices() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.mRegisteredServices.size(); i3++) {
            int iKeyAt = this.mRegisteredServices.keyAt(i3);
            if (!nativeRegister(this.mRegisteredServices.get(iKeyAt).getNativeInstance())) {
                Log.e("AHU.GAL_RECEIVER", "Service " + iKeyAt + " failed to register.");
                i2++;
            }
        }
        return i2 < this.mRegisteredServices.size();
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void audioFocusRequestCallback(int i2) {
        this.mAudioFocusListener.onAudioFocusRequest(i2);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void batteryStatusNotificationCallback(int i2, int i3, boolean z2) {
        this.mAppMessageListener.onBatteryStatusNotification(i2, i3, z2);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void bugreportRequestCallback(long j2) {
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void byeByeRequestCallback(int i2) {
        Log.i("AHU.GAL_RECEIVER", "ByeByeRequest from phone, reason:" + i2);
        this.mByeByeHandler.onByeByeRequest(i2);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void byeByeResponseCallback() {
        Log.i("AHU.GAL_RECEIVER", "ByeByeResponse from phone");
        this.mByeByeHandler.onByeByeResponse();
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void carConnectedDevicesRequestCallback() {
        Log.w("AHU.GAL_RECEIVER", "carConnectedDevicesRequestCallback: user switch is not support, ignored.");
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        destroyCarServices();
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeGalReceiver;
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void highLatencyCallback(int[] iArr) {
        this.handler.post(new Runnable() { // from class: com.google.android.projection.protocol.GalReceiver.1
            @Override // java.lang.Runnable
            public void run() {
                GalReceiver.this.mAppMessageListener.onPoorWirelessNetworkConnectivity();
            }
        });
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void latencyBackToNormalCallback(int[] iArr) {
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void navigationFocusCallback(int i2) {
        Log.i("AHU.GAL_RECEIVER", "navigation focus request from phone");
        this.mAppMessageListener.onNavigationFocusRequest(i2);
    }

    public boolean registerCarService(int i2, CarServiceProvider carServiceProvider) {
        if (this.mStopping.get()) {
            throw new RuntimeException("can't register services after teardown");
        }
        if (this.mRegisteredServices.get(i2) != null) {
            throw new IllegalArgumentException("this service ID is already taken");
        }
        this.mRegisteredServices.put(i2, carServiceProvider);
        if (carServiceProvider.create(i2, this.mNativeGalReceiver)) {
            return true;
        }
        m.q("Service ", i2, " failed to init.", "AHU.GAL_RECEIVER");
        return false;
    }

    public void sendByeByeRequest(int i2) {
        nativeSendByeByeRequest(i2);
    }

    public void sendByeByeResponse() {
        nativeSendByeByeResponse();
    }

    @Deprecated
    public void sendCarConnectedDevices(List<ConnectedDevice> list, boolean z2, boolean z3) {
        nativeSendCarConnectedDevices(list, z2, z3);
    }

    public void sendNavigationFocusState(int i2) {
        nativeSetNavFocus(i2);
    }

    public void sendUserSwitchResponse(int i2, ConnectedDevice connectedDevice) {
        nativeSendUserSwitchResponse(i2, connectedDevice);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void serviceDiscoveryRequestCallback(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, String str2, String str3) {
        this.mProjectedModeIconReceiver.setProjectedModeIcon(bArr2, str);
        Common.PhoneInfo.Builder builderNewBuilder = Common.PhoneInfo.newBuilder();
        if (str3 != null) {
            builderNewBuilder.setInstanceId(str3);
        }
        this.mPhoneInfoListener.onPhoneInfoAvailable(builderNewBuilder.build(), str2);
    }

    public void setAudioFocus(int i2, boolean z2) {
        nativeSetAudioFocus(i2, z2);
    }

    public void setCallAvailability(boolean z2) {
        nativeSetCallAvailability(z2);
    }

    public void start(Transport transport) {
        if (this.mStopping.get()) {
            throw new RuntimeException("can't be started after teardown");
        }
        startCarServices();
        nativeSetTransportConfigurationListener(transport);
        nativeStart();
        this.mGalio.start(transport);
    }

    public void stop(Transport.StopReason stopReason) {
        this.mGalio.stop(stopReason);
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void unrecoverableErrorCallback(int i2) {
        Log.d("AHU.GAL_RECEIVER", "Encountered unrecoverable error!");
        if (i2 == Protos.MessageStatus.STATUS_PING_TIMEOUT.getNumber()) {
            stop(Transport.StopReason.PING_TIMEOUT);
        } else {
            this.mAppMessageListener.onUnrecoverableError(Protos.MessageStatus.forNumber(i2));
        }
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void userSwitchRequestCallback(ConnectedDevice connectedDevice) {
        Log.w("AHU.GAL_RECEIVER", "userSwitchRequestCallback: user switch is not support, ignored.");
    }

    @Override // com.google.android.projection.protocol.ControllerCallbacks
    public void voiceSessionNotificationCallback(int i2) {
        Log.i("AHU.GAL_RECEIVER", "Voice session notification, status = " + i2);
        this.mAppMessageListener.onVoiceSessionNotification(i2);
    }

    public GalReceiver(AppMessageListener appMessageListener, AudioFocusListener audioFocusListener, ProjectedModeIconReceiver projectedModeIconReceiver, PhoneInfoListener phoneInfoListener, ByeByeHandler byeByeHandler, Handler handler, CarInfo carInfo, String str, String str2, String str3) {
        this.mRegisteredServices = new SparseArray<>();
        this.mStopping = new AtomicBoolean();
        this.mAppMessageListener = appMessageListener;
        this.mAudioFocusListener = audioFocusListener;
        this.mProjectedModeIconReceiver = projectedModeIconReceiver;
        this.mPhoneInfoListener = phoneInfoListener;
        this.mByeByeHandler = byeByeHandler;
        this.handler = handler;
        this.mGalio = new InputOutputThreads(handler, new FrameParser(this));
        nativeInit();
        if (!nativeSetCreds(str, str2, str3)) {
            throw new RuntimeException("SSL initialization failed");
        }
        nativeSetCarInfo(carInfo);
    }
}
