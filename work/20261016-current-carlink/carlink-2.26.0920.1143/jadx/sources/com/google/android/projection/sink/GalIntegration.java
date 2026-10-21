package com.google.android.projection.sink;

import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AudioSink;
import com.google.android.projection.protocol.AudioSource;
import com.google.android.projection.protocol.BluetoothEndpoint;
import com.google.android.projection.protocol.CarWifi;
import com.google.android.projection.protocol.EchoVendorExtension;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.GalVerificationVendorExtension;
import com.google.android.projection.protocol.InputSource;
import com.google.android.projection.protocol.MediaBrowser;
import com.google.android.projection.protocol.MediaPlaybackStatus;
import com.google.android.projection.protocol.NavigationStatus;
import com.google.android.projection.protocol.PhoneStatus;
import com.google.android.projection.protocol.Radio;
import com.google.android.projection.protocol.RadioEndpoint;
import com.google.android.projection.protocol.SensorSource;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.protocol.VideoSink;
import com.google.android.projection.protocol.WifiProjectionEndpoint;
import com.google.android.projection.sink.audio.AudioFocusManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class GalIntegration {
    private static final int AUDIO_SERVICE_MEDIA_ID = 4;
    private static final int AUDIO_SERVICE_SYSTEM_ID = 6;
    private static final int AUDIO_SERVICE_TTS_ID = 5;
    public static final int AUDIO_SINK_INDEX_MEDIA = 0;
    public static final int AUDIO_SINK_INDEX_SYSTEM = 2;
    public static final int AUDIO_SINK_INDEX_TTS = 1;
    private static final int AUDIO_SOURCE_SERVICE_ID = 7;
    private static final int BLUETOOTH_SERVICE_ID = 8;
    private static final int ECHO_VENDOR_EXTENSION_SERVICE_ID = 14;
    private static final int GAL_VERIFICATION_VENDOR_EXTENSION_SERVICE_ID = 13;
    public static final int MAIN_DISPLAY_ID = 0;
    private static final int MEDIA_BROWSE_SERVICE_ID = 11;
    private static final int MEDIA_PLAYBACK_STATUS_SERVICE_ID = 10;
    private static final int NAVIGATION_STATUS_SERVICE_ID = 9;
    public static final int NUM_AUDIO_SINKS = 3;
    private static final int PHONE_STATUS_SERVICE_ID = 12;
    private static final int RADIO_SERVICE_ID = 1;
    private static final int SENSOR_SERVICE_ID = 3;
    public static final String USB_DISCONNECT_INTENT = "usb-disconnect";
    private static final int WIFI_PROJECTION_SERVICE_ID = 2;
    public AudioSource audioSource;
    public BluetoothEndpoint bluetooth;
    public EchoVendorExtension echoVendorExtension;
    public GalReceiver galReceiver;
    public GalVerificationVendorExtension galVerificationVendorExtension;
    private View mSurfaceView;
    public InputSource mainDisplayInputSource;
    public VideoSink mainDisplayVideoSink;
    public MediaBrowser mediaBrowse;
    public MediaPlaybackStatus mediaPlaybackStatus;
    public NavigationStatus navigationStatus;
    public PhoneStatus phoneStatus;
    public RadioEndpoint radioEndpoint;
    public SensorSource sensors;
    public WifiProjectionEndpoint wifiProjEndpoint;
    private final AtomicInteger nextDisplayServiceId = new AtomicInteger(15);
    public AudioSink[] audioSinks = null;
    public Map<Integer, Display> displayIdDisplayMap = new HashMap();
    private final AtomicInteger currentDisplayId = new AtomicInteger(1);

    public class DefaultInputInjector implements InputSource.InputInjector {
        private final int displayIndex;

        public DefaultInputInjector(int i2) {
            this.displayIndex = i2;
        }

        @Override // com.google.android.projection.protocol.InputSource.InputInjector
        public void onKeyEvent(KeyEvent keyEvent) {
            GalIntegration.this.mSurfaceView.dispatchKeyEvent(keyEvent);
        }

        @Override // com.google.android.projection.protocol.InputSource.InputInjector
        public void onMotionEvent(MotionEvent motionEvent) {
            GalIntegration.this.mSurfaceView.dispatchTouchEvent(motionEvent);
        }

        @Override // com.google.android.projection.protocol.InputSource.InputInjector
        public void onRelativeEvent(int i2, int i3) {
            GalIntegration.this.displayIdDisplayMap.get(Integer.valueOf(this.displayIndex)).getInputSource().sendRelativeEvent(i2, i3);
        }
    }

    public static class Display {
        private final int displayId;
        private final Protos.DisplayType displayType;
        private final InputSource inputSource;
        private Protos.KeyCode keyCode;
        private final VideoSink videoSink;

        public Display(Protos.DisplayType displayType, VideoSink videoSink, InputSource inputSource, int i2) {
            this.displayId = i2;
            this.displayType = displayType;
            this.videoSink = videoSink;
            this.inputSource = inputSource;
        }

        public int getDisplayId() {
            return this.displayId;
        }

        public Protos.DisplayType getDisplayType() {
            return this.displayType;
        }

        public InputSource getInputSource() {
            return this.inputSource;
        }

        public VideoSink getVideoSink() {
            return this.videoSink;
        }

        public void setInitialContentKeyCode(Protos.KeyCode keyCode) {
            this.keyCode = keyCode;
        }

        public void setUpInputSourceProperties() {
            this.inputSource.setDisplayId(this.displayId);
        }

        public void setUpVideoSinkProperties() {
            this.videoSink.setCodecType(Protos.MediaCodecType.MEDIA_CODEC_VIDEO_H264_BP);
            this.videoSink.setDisplayIdAndType(this.displayId, this.displayType);
            Protos.KeyCode keyCode = this.keyCode;
            if (keyCode != null) {
                this.videoSink.setInitialContentKeyCode(keyCode);
            }
        }
    }

    public void addDisplay(Protos.DisplayType displayType, VideoSink videoSink, InputSource inputSource) {
        Display display = new Display(displayType, videoSink, inputSource, this.currentDisplayId.getAndIncrement());
        this.displayIdDisplayMap.put(Integer.valueOf(display.getDisplayId()), display);
    }

    public InputSource.InputInjector createDefaultInputInjector() {
        return new DefaultInputInjector(this.currentDisplayId.get());
    }

    public void destroy() {
        this.galReceiver.destroy();
    }

    public int getCurrentDisplayId() {
        return this.currentDisplayId.get();
    }

    public boolean init(String str, int[] iArr, int[] iArr2, SurfaceView surfaceView, VideoSink.ProjectionListener projectionListener, boolean z2, AudioSink.AudioListener[] audioListenerArr, AudioSource.AudioSourceListener audioSourceListener, GalReceiver.AppMessageListener appMessageListener, GalReceiver.AudioFocusListener audioFocusListener, GalReceiver.ProjectedModeIconReceiver projectedModeIconReceiver, GalReceiver.ByeByeHandler byeByeHandler, GalReceiver.UserSwitchListener userSwitchListener, BluetoothEndpoint.BluetoothEventListener bluetoothEventListener, InstrumentClusterListener instrumentClusterListener, AudioFocusManager audioFocusManager, GalReceiver.CarInfo carInfo, Radio radio, CarWifi carWifi, Handler handler, String str2, String str3, String str4, String str5) {
        this.mSurfaceView = surfaceView;
        this.galReceiver = new GalReceiver(appMessageListener, audioFocusListener, projectedModeIconReceiver, byeByeHandler, handler, carInfo, str2, str3, str4);
        this.mainDisplayInputSource = new InputSource(new DefaultInputInjector(0));
        this.sensors = new SensorSource(iArr2, 256, new Protos.FuelType[]{Protos.FuelType.FUEL_TYPE_UNLEADED, Protos.FuelType.FUEL_TYPE_ELECTRIC}, new Protos.EvConnectorType[]{Protos.EvConnectorType.EV_CONNECTOR_TYPE_CHADEMO, Protos.EvConnectorType.EV_CONNECTOR_TYPE_J1772});
        VideoSink videoSink = new VideoSink(projectionListener, z2, 0);
        this.mainDisplayVideoSink = videoSink;
        this.displayIdDisplayMap.put(0, new Display(Protos.DisplayType.DISPLAY_TYPE_MAIN, videoSink, this.mainDisplayInputSource, 0));
        for (Display display : this.displayIdDisplayMap.values()) {
            this.galReceiver.registerCarService(this.nextDisplayServiceId.getAndIncrement(), display.getVideoSink());
            this.galReceiver.registerCarService(this.nextDisplayServiceId.getAndIncrement(), display.getInputSource());
        }
        this.audioSinks = new AudioSink[audioListenerArr.length];
        int i2 = 0;
        while (true) {
            AudioSink[] audioSinkArr = this.audioSinks;
            if (i2 >= audioSinkArr.length) {
                break;
            }
            audioSinkArr[i2] = new AudioSink(audioListenerArr[i2]);
            i2++;
        }
        this.audioSource = new AudioSource(Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM, audioSourceListener);
        this.bluetooth = new BluetoothEndpoint(bluetoothEventListener, str, iArr);
        this.navigationStatus = new NavigationStatus(instrumentClusterListener, 500, Protos.NavigationStatusService.InstrumentClusterType.IMAGE, 480, 480, 16);
        this.mediaPlaybackStatus = new MediaPlaybackStatus(instrumentClusterListener);
        this.mediaBrowse = new MediaBrowser(instrumentClusterListener);
        this.phoneStatus = new PhoneStatus(instrumentClusterListener);
        this.galVerificationVendorExtension = new GalVerificationVendorExtension(this.sensors, this.mainDisplayVideoSink, this.mainDisplayInputSource, surfaceView, audioFocusManager);
        this.echoVendorExtension = new EchoVendorExtension();
        this.galReceiver.registerCarService(3, this.sensors);
        this.galReceiver.registerCarService(8, this.bluetooth);
        AudioSink[] audioSinkArr2 = this.audioSinks;
        if (audioSinkArr2.length == 3) {
            this.galReceiver.registerCarService(4, audioSinkArr2[0]);
            this.galReceiver.registerCarService(5, this.audioSinks[1]);
            this.galReceiver.registerCarService(6, this.audioSinks[2]);
        } else {
            this.galReceiver.registerCarService(6, audioSinkArr2[0]);
        }
        this.galReceiver.registerCarService(7, this.audioSource);
        this.galReceiver.registerCarService(9, this.navigationStatus);
        this.galReceiver.registerCarService(10, this.mediaPlaybackStatus);
        this.galReceiver.registerCarService(11, this.mediaBrowse);
        this.galReceiver.registerCarService(12, this.phoneStatus);
        if (str5 != null) {
            WifiProjectionEndpoint wifiProjectionEndpoint = new WifiProjectionEndpoint(str5, carWifi);
            this.wifiProjEndpoint = wifiProjectionEndpoint;
            this.galReceiver.registerCarService(2, wifiProjectionEndpoint);
        }
        if (radio != null) {
            RadioEndpoint radioEndpoint = new RadioEndpoint(radio);
            this.radioEndpoint = radioEndpoint;
            radio.setRadioEndpoint(radioEndpoint);
            this.galReceiver.registerCarService(1, this.radioEndpoint);
        }
        this.galReceiver.registerCarService(13, this.galVerificationVendorExtension);
        this.galReceiver.registerCarService(14, this.echoVendorExtension);
        return true;
    }

    public void start(Transport transport) {
        this.galReceiver.start(transport);
    }

    public void stop(Transport.StopReason stopReason) {
        this.galReceiver.stop(stopReason);
    }
}
