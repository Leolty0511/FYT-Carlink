package com.google.android.projection.sink.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.app.m;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.a;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Vibrator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.internal.logging.nano.MetricsProto;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AudioSink;
import com.google.android.projection.protocol.BluetoothEndpoint;
import com.google.android.projection.protocol.CarWifiStub;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.InputSource;
import com.google.android.projection.protocol.RadioStub;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.protocol.VideoFrame;
import com.google.android.projection.protocol.VideoSink;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.InstrumentClusterListener;
import com.google.android.projection.sink.LocalModeCallbacksImpl;
import com.google.android.projection.sink.R;
import com.google.android.projection.sink.audio.AudioFocusManager;
import com.google.android.projection.sink.audio.AudioLatencyChecker;
import com.google.android.projection.sink.audio.AudioPlayer;
import com.google.android.projection.sink.audio.MicrophoneRecorder;
import com.google.android.projection.sink.debug.DebugContext;
import com.google.android.projection.sink.embedded.service.BackgroundService;
import com.google.android.projection.sink.navigation.NavigationFocusManager;
import com.google.android.projection.sink.sensors.FakeSensors;
import com.google.android.projection.sink.sensors.LocationSensors;
import com.google.android.projection.sink.sensors.SensorManager;
import com.google.android.projection.sink.sensors.SimpleObdSensor;
import com.google.android.projection.sink.sensors.SimulatedLocationSensors;
import com.google.android.projection.sink.sensors.TabletSensors;
import com.google.android.projection.sink.settings.Settings;
import com.google.android.projection.sink.transport.usb.UsbHostSetup;
import com.google.android.projection.sink.video.DimensionUtils;
import com.google.android.projection.sink.video.ProjectionRenderer;
import com.google.android.projection.sink.video.VideoLatencyChecker;
import com.google.android.projection.transport.TransportFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"MissingPermission"})
public final class MainActivity extends Activity implements TransportFactory.Callback {
    private static final String ACTION_USB_ACCESSORY_PERMISSION = "com.google.android.projection.sink.transport.usb.ACTION_USB_ACCESSORY_PERMISSION";
    private static final String ACTION_USB_DEVICE_PERMISSION = "com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION";
    private static final int AUDIO_BITS_MEDIA = 16;
    private static final int AUDIO_BITS_SYSTEM = 16;
    private static final int AUDIO_BITS_TTS = 16;
    private static final int AUDIO_CHANNELS_MEDIA = 2;
    private static final int AUDIO_CHANNELS_SYSTEM = 1;
    private static final int AUDIO_CHANNELS_TTS = 1;
    private static final boolean DBG_LATENCY = true;
    private static final int DECODER_ADDITIONAL_DEPTH = 3;
    public static final int LAUNCHER_MODE = 2;
    public static final String LAUNCH_MODE = "launch_mode";
    public static final int LOCAL_MODE = 3;
    private static final String PHONE_SCREEN_OFF_MSG = "Please turn phone screen on.";
    private static final int SAMPLING_RATE_MEDIA = 48000;
    private static final int SAMPLING_RATE_SYSTEM = 16000;
    private static final int SAMPLING_RATE_TTS = 16000;
    public static final String SAVED_BT_KEY = "saved_bt";
    private static final String TAG = "AHU.MAIN_ACTIVITY";
    public static final int USB_ACCESSORY_MODE = 0;
    public static final int USB_HOST_MODE = 1;
    boolean btConnected;
    private final GalReceiver.AppMessageListener mAppMessageListener;
    private final GalReceiver.AudioFocusListener mAudioFocusListener;
    private AudioFocusManager mAudioFocusManager;
    private final AudioLatencyChecker mAudioLatencyChecker;
    private final AudioPlayer mAudioSinkMediaStreamPlayer;
    private final AudioPlayer mAudioSinkSystemStreamPlayer;
    private final AudioPlayer mAudioSinkTtsStreamPlayer;
    private final MicrophoneRecorder mAudioSourceListener;
    private BroadcastReceiver mBluetoothStartBroadcastReceiver;
    private final GalReceiver.ByeByeHandler mByeByeHandler;
    private View mConnectLayout;
    private ServiceConnection mConnection;
    private DebugContext mDebugContext;
    private DimensionUtils.ScreenSettings mEmulatedScreen;
    private GalIntegration mGal;
    private BroadcastReceiver mIntentControllerReceiver;
    boolean mIsBound;
    private int mLaunchMode;
    private RelativeLayout mLayout;
    private LocalModeCallbacks mLocalModeCallbacks;
    private NavigationFocusManager mNavigationFocusManager;
    private final GalReceiver.ProjectedModeIconReceiver mProjectedModeIconReceiver;
    private final VideoSink.ProjectionListener mProjectionListener;
    private ProjectionRenderer mProjectionRenderer;
    private final ProjectionRenderer.Listener mProjectionRendererListener;
    private SensorManager mSensorDispatcher;
    BackgroundService mService;
    private Settings mSettings;
    private final View.OnTouchListener mSurfaceTouchListener;
    private SurfaceView mSurfaceView;
    private TestTools mTestTools;
    private Transport mTransport;
    private TransportFactory mTransportFactory;
    private TransportFactory.FactoryHandle mTransportHandle;
    private final GalReceiver.UserSwitchListener mUserSwitchListener;
    boolean resumed;
    BroadcastReceiver usbReceiver;
    private final Object mLock = new Object();
    private boolean mLocalMode = false;
    private final Handler mHandler = new Handler();
    private final BroadcastReceiver mUsbDisconnectedReceiver = new BroadcastReceiver() { // from class: com.google.android.projection.sink.ui.MainActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MainActivity.this.isFinishing()) {
                return;
            }
            MainActivity.this.finish();
        }
    };
    private final VideoLatencyChecker mVideoLatencyChecker = new VideoLatencyChecker();

    /* JADX INFO: renamed from: com.google.android.projection.sink.ui.MainActivity$7, reason: invalid class name */
    public class AnonymousClass7 extends VideoSink.ProjectionListener {
        private AlertDialog mVideoFocusDialog;

        public AnonymousClass7() {
        }

        @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
        public void onCodecConfig(byte[] bArr) {
            MainActivity.this.mProjectionRenderer.handleCodecConfig(bArr);
        }

        @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
        public void onCodecSetup(int i2) {
        }

        @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
        public void onProjectionUpdate(VideoFrame videoFrame) {
            MainActivity.this.mProjectionRenderer.decodeBuffer(videoFrame);
        }

        @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
        public void onSourceVideoConfigChanged(int i2, int i3, Protos.VideoConfiguration videoConfiguration) {
            MainActivity.this.mProjectionRenderer.prepareStart(i2, i3);
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.7.1
                @Override // java.lang.Runnable
                public void run() {
                    MainActivity.this.mProjectionRenderer.start();
                }
            });
        }

        @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
        public void onVideoFocusModeChange(final int i2, final int i3) {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.7.3
                @Override // java.lang.Runnable
                public void run() {
                    if (i2 == VideoSink.VIDEO_FOCUS_PROJECTED) {
                        MainActivity.this.mTestTools.setNativeContentEnabled(false, "");
                    } else {
                        MainActivity.this.mTestTools.setNativeContentEnabled(true, i3 != Protos.VideoFocusReason.PHONE_SCREEN_OFF.getNumber() ? MainActivity.this.getString(R.string.native_content) : MainActivity.PHONE_SCREEN_OFF_MSG);
                    }
                }
            });
        }

        @Override // com.google.android.projection.protocol.VideoSink.ProjectionListener
        public void onVideoFocusRequest(final int i2, final int i3) {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.7.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!MainActivity.this.mSettings.showVideoFocusDialog()) {
                        MainActivity.this.mGal.mainDisplayVideoSink.setVideoFocus(i2, i3, false);
                        return;
                    }
                    if (AnonymousClass7.this.mVideoFocusDialog == null) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                        builder.setMessage("Phone has requested video focus").setTitle("Video Focus Request From Phone").setPositiveButton("Grant", new DialogInterface.OnClickListener() { // from class: com.google.android.projection.sink.ui.MainActivity.7.2.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i4) {
                                VideoSink videoSink = MainActivity.this.mGal.mainDisplayVideoSink;
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                videoSink.setVideoFocus(i2, i3, false);
                            }
                        }).setNegativeButton("Deny", (DialogInterface.OnClickListener) null);
                        AnonymousClass7.this.mVideoFocusDialog = builder.create();
                    }
                    AnonymousClass7.this.mVideoFocusDialog.show();
                }
            });
        }
    }

    public class BtListener implements AutoWirelessListener.IAutoWirelessListener {
        public BtListener() {
        }

        @Override // com.google.android.projection.sink.ui.AutoWirelessListener.IAutoWirelessListener
        public void onHandleConnectStatus(String str) {
        }

        @Override // com.google.android.projection.sink.ui.AutoWirelessListener.IAutoWirelessListener
        public void onStateChange(boolean z2) {
            BackgroundService backgroundService;
            MainActivity mainActivity = MainActivity.this;
            mainActivity.btConnected = z2;
            if (mainActivity.getUsbDevice() != null || (backgroundService = MainActivity.this.mService) == null) {
                return;
            }
            backgroundService.start();
        }
    }

    public interface LocalModeCallbacks {
        String getClientCert();

        String getPrivateKey();

        String getRootCert();

        boolean isLocalMode();

        void startLocalMode(MainActivity mainActivity);
    }

    public MainActivity() {
        AudioLatencyChecker audioLatencyChecker = new AudioLatencyChecker();
        this.mAudioLatencyChecker = audioLatencyChecker;
        this.mProjectionRendererListener = new ProjectionRenderer.Listener() { // from class: com.google.android.projection.sink.ui.MainActivity.6
            @Override // com.google.android.projection.sink.video.ProjectionRenderer.Listener
            public void onFrameRendered(int i2) {
                synchronized (MainActivity.this.mLock) {
                    if (MainActivity.this.mGal != null) {
                        MainActivity.this.mGal.mainDisplayVideoSink.ackFrames(i2, 1);
                    }
                }
            }

            @Override // com.google.android.projection.sink.video.ProjectionRenderer.Listener
            public void onSurfaceCreated(int i2, int i3, boolean z2) {
            }

            @Override // com.google.android.projection.sink.video.ProjectionRenderer.Listener
            public void onSurfaceDestroyed(boolean z2) {
            }
        };
        this.mProjectionListener = new AnonymousClass7();
        this.mAudioSinkMediaStreamPlayer = new AudioPlayer(3, SAMPLING_RATE_MEDIA, 12, 2, audioLatencyChecker);
        this.mAudioSinkTtsStreamPlayer = new AudioPlayer(5, 16000, 4, 2, null);
        this.mAudioSinkSystemStreamPlayer = new AudioPlayer(1, 16000, 4, 2, null);
        this.mAudioSourceListener = new MicrophoneRecorder();
        this.mSurfaceTouchListener = new View.OnTouchListener() { // from class: com.google.android.projection.sink.ui.MainActivity.11
            private boolean mInGesture;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (this.mInGesture) {
                    if (motionEvent.getAction() == 1) {
                        this.mInGesture = false;
                    }
                    return true;
                }
                if ((MainActivity.this.mSettings.isDebugMode() || MainActivity.this.mTestTools != null) && motionEvent.getAction() == 0 && motionEvent.getX() >= view.getWidth() - 20 && !ActivityManager.isUserAMonkey()) {
                    this.mInGesture = true;
                    MainActivity.this.mTestTools.toggleDebugToolbarVisibility();
                    return true;
                }
                if (MainActivity.this.mSettings.isTouchScreenEnabled()) {
                    synchronized (MainActivity.this.mLock) {
                        if (MainActivity.this.mGal != null) {
                            MotionEvent motionEventTransformMotion = MainActivity.this.mProjectionRenderer.transformMotion(motionEvent);
                            if (MainActivity.this.mVideoLatencyChecker != null) {
                                MainActivity.this.mVideoLatencyChecker.onInputEvent(motionEvent);
                            }
                            if (MainActivity.this.mAudioLatencyChecker != null) {
                                MainActivity.this.mAudioLatencyChecker.onInputEvent(motionEvent);
                            }
                            MainActivity.this.mGal.mainDisplayInputSource.sendTouchEvent(motionEventTransformMotion);
                            motionEventTransformMotion.recycle();
                        }
                    }
                }
                return true;
            }
        };
        this.mAppMessageListener = new GalReceiver.AppMessageListener() { // from class: com.google.android.projection.sink.ui.MainActivity.12
            @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
            public void onBatteryStatusNotification(int i2, int i3, boolean z2) {
                Log.d("AHU.MAIN_ACTIVITY", m.f("Battery status: ", i2, " percent remaining/", i3, " seconds remaining"));
            }

            @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
            public void onDisconnected(Transport.StopReason stopReason) {
                Log.i("AHU.MAIN_ACTIVITY", "Shutting down GAL/transport: " + stopReason);
                MainActivity.this.onDisconnected();
                if (MainActivity.this.mLaunchMode != 2) {
                    LocalBroadcastManager.getInstance(MainActivity.this).sendBroadcast(new Intent(GalIntegration.USB_DISCONNECT_INTENT));
                }
            }

            @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
            public void onNavigationFocusRequest(final int i2) {
                Log.i("AHU.MAIN_ACTIVITY", "onNavigationFocusRequest: " + i2);
                MainActivity.this.runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.mNavigationFocusManager.handleNavigationFocusRequest(i2);
                    }
                });
            }

            @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
            public void onPoorWirelessNetworkConnectivity() {
                Log.w("AHU.MAIN_ACTIVITY", "Wireless connectivity is poor");
            }

            @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
            public void onUnrecoverableError(Protos.MessageStatus messageStatus) {
                Log.e("AHU.MAIN_ACTIVITY", "Received unrecoverable error " + messageStatus + ". Shutting down.");
                MainActivity.this.mGal.stop(Transport.StopReason.CONNECTION_ERROR);
            }

            @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
            public void onVoiceSessionNotification(int i2) {
                Log.i("AHU.MAIN_ACTIVITY", "onVoiceSessionNotification, state:" + i2);
            }
        };
        this.mAudioFocusListener = new GalReceiver.AudioFocusListener() { // from class: com.google.android.projection.sink.ui.MainActivity.13
            @Override // com.google.android.projection.protocol.GalReceiver.AudioFocusListener
            public void onAudioFocusRequest(int i2) {
                MainActivity.this.mAudioFocusManager.handleAudioFocusRequest(i2);
            }
        };
        this.mProjectedModeIconReceiver = new GalReceiver.ProjectedModeIconReceiver() { // from class: com.google.android.projection.sink.ui.MainActivity.14
            @Override // com.google.android.projection.protocol.GalReceiver.ProjectedModeIconReceiver
            public void setProjectedModeIcon(byte[] bArr, String str) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(MainActivity.this.getApplicationContext().getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                bitmapDrawable.setAntiAlias(true);
                MainActivity.this.mTestTools.setApplicationIcon(new InsetDrawable((Drawable) bitmapDrawable, 15, 0, -15, 0), str);
            }
        };
        this.mByeByeHandler = new GalReceiver.ByeByeHandler() { // from class: com.google.android.projection.sink.ui.MainActivity.15
            @Override // com.google.android.projection.protocol.GalReceiver.ByeByeHandler
            public void onByeByeRequest(int i2) {
                Log.i("AHU.MAIN_ACTIVITY", "received ByeByeRequest with reason " + i2);
                if (MainActivity.this.mGal != null && MainActivity.this.mGal.galReceiver != null) {
                    MainActivity.this.mGal.galReceiver.sendByeByeResponse();
                }
                if (MainActivity.this.mGal != null) {
                    MainActivity.this.mGal.stop(Transport.StopReason.MD_BYEBYE);
                }
            }

            @Override // com.google.android.projection.protocol.GalReceiver.ByeByeHandler
            public void onByeByeResponse() {
                Log.i("AHU.MAIN_ACTIVITY", "received ByeByeResponse");
                if (MainActivity.this.mGal != null) {
                    MainActivity.this.mGal.stop(Transport.StopReason.HU_BYEBYE);
                }
            }
        };
        this.mUserSwitchListener = new GalReceiver.UserSwitchListener() { // from class: com.google.android.projection.sink.ui.MainActivity.16
            @Override // com.google.android.projection.protocol.GalReceiver.UserSwitchListener
            public void onCarConnectedDevicesRequest() {
                Log.i("AHU.MAIN_ACTIVITY", "onCarConnectedDevicesRequest");
                Set<BluetoothDevice> bondedDevices = BluetoothAdapter.getDefaultAdapter().getBondedDevices();
                ArrayList arrayList = new ArrayList(bondedDevices.size());
                Iterator<BluetoothDevice> it = bondedDevices.iterator();
                int i2 = 1;
                while (it.hasNext()) {
                    arrayList.add(new GalReceiver.ConnectedDevice(it.next().getName(), i2));
                    i2++;
                }
                MainActivity.this.mGal.galReceiver.sendCarConnectedDevices(arrayList, false, true);
            }

            @Override // com.google.android.projection.protocol.GalReceiver.UserSwitchListener
            public void onUserSwitchRequest(GalReceiver.ConnectedDevice connectedDevice) {
                Log.i("AHU.MAIN_ACTIVITY", "onUserSwitchRequest");
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter == null) {
                    return;
                }
                Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
                ArrayList arrayList = new ArrayList(bondedDevices.size());
                int i2 = 1;
                for (BluetoothDevice bluetoothDevice : bondedDevices) {
                    if (!bluetoothDevice.getName().equals(connectedDevice.deviceName)) {
                        arrayList.add(new GalReceiver.ConnectedDevice(bluetoothDevice.getName(), i2));
                        i2++;
                    }
                }
                MainActivity.this.mGal.galReceiver.sendCarConnectedDevices(arrayList, true, true);
            }
        };
        this.usbReceiver = new BroadcastReceiver() { // from class: com.google.android.projection.sink.ui.MainActivity.17
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                UsbDevice usbDevice;
                if (UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(intent.getAction()) && (usbDevice = (UsbDevice) intent.getParcelableExtra(UsbManager.EXTRA_DEVICE)) != null && usbDevice.getDeviceClass() == 0) {
                    if (MainActivity.this.mTransportHandle != null) {
                        try {
                            MainActivity.this.mTransportHandle.interrupt();
                        } catch (Exception e2) {
                            Log.w("AHU.MAIN_ACTIVITY", "Failed to interrupt previous attempt to establish Transport", e2);
                            return;
                        }
                    }
                    MainActivity.this.startHostMode(usbDevice);
                }
            }
        };
        this.mService = null;
        this.mIsBound = false;
        this.resumed = false;
        this.mConnection = new ServiceConnection() { // from class: com.google.android.projection.sink.ui.MainActivity.18
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                MainActivity.this.mService = ((BackgroundService.LocalBinder) iBinder).getService();
                MainActivity mainActivity = MainActivity.this;
                mainActivity.mService.setListener(mainActivity.new BtListener());
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.mService = null;
                mainActivity.btConnected = false;
            }
        };
        this.btConnected = false;
    }

    private boolean checkUsbHostPermission(UsbDevice usbDevice) {
        UsbManager usbManager = (UsbManager) getSystemService(Context.USB_SERVICE);
        if (usbManager.hasPermission(usbDevice)) {
            return true;
        }
        Log.i("AHU.MAIN_ACTIVITY", "no permission for the device. asking user");
        usbManager.requestPermission(usbDevice, PendingIntent.getBroadcast(this, 0, new Intent(ACTION_USB_DEVICE_PERMISSION), 1073741824));
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:44:0x0078  */
    /* JADX WARN: Code duplicated, block: B:45:0x0086  */
    /* JADX WARN: Code duplicated, block: B:47:0x008c  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    private boolean handleKeyEvent(int i2, KeyEvent keyEvent) {
        InputSource inputSource;
        GalIntegration galIntegration = this.mGal;
        if (galIntegration == null || (inputSource = galIntegration.mainDisplayInputSource) == null) {
            return false;
        }
        if (i2 == 4) {
            inputSource.sendKeyEvent(keyEvent);
        } else if (i2 == 66) {
            this.mGal.mainDisplayInputSource.sendKeyEvent(new KeyEvent(keyEvent.getAction(), 23));
        } else if (i2 == 8) {
            if (keyEvent.getAction() == 1) {
                return false;
            }
            this.mGal.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), -1);
        } else if (i2 == 9) {
            if (keyEvent.getAction() == 1) {
                return false;
            }
            this.mGal.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), 1);
        } else if (i2 == 84 || i2 == 85 || i2 == 87 || i2 == 88) {
            inputSource.sendKeyEvent(keyEvent);
        } else if (i2 == 102) {
            if (keyEvent.getAction() == 1) {
                return false;
            }
            this.mGal.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), -1);
        } else if (i2 == 103) {
            if (keyEvent.getAction() == 1) {
                return false;
            }
            this.mGal.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), 1);
        } else if (i2 == 126 || i2 == 127) {
            inputSource.sendKeyEvent(keyEvent);
        } else {
            switch (i2) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    inputSource.sendKeyEvent(keyEvent);
                    break;
                case 24:
                case 25:
                    if (!this.mSettings.volumeToggleDebug()) {
                        return false;
                    }
                    if (keyEvent.getAction() == 1 && (this.mSettings.isDebugMode() || this.mTestTools != null)) {
                        this.mTestTools.toggleDebugToolbarVisibility();
                    }
                    break;
                    break;
                default:
                    Log.i("AHU.MAIN_ACTIVITY", "Got keycode: " + i2);
                    return false;
            }
        }
        return true;
    }

    private void initializeSensorServices() {
        if (this.mSettings.isGpsTabletEnabled()) {
            Log.d("AHU.MAIN_ACTIVITY", "Start in GPS mode");
        } else if (this.mSettings.isGpsSimulationEnabled()) {
            Log.d("AHU.MAIN_ACTIVITY", "Start in simulation mode");
        }
        SensorManager sensorManager = new SensorManager();
        this.mSensorDispatcher = sensorManager;
        sensorManager.init(new FakeSensors(this), new SimulatedLocationSensors(this, this.mDebugContext), new LocationSensors(this, this.mDebugContext), new TabletSensors(this), new SimpleObdSensor(this));
    }

    private void initializeViews() {
        getWindow().addFlags(128);
        setContentView(R.layout.activity_main);
        this.mLayout = (RelativeLayout) findViewById(R.id.frame);
        this.mConnectLayout = findViewById(R.id.connect_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConnections() {
        this.mConnectLayout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAccessoryMode(UsbAccessory usbAccessory) {
        Log.i("AHU.MAIN_ACTIVITY", "Starting in accessory mode");
        if (usbAccessory == null) {
            Log.e("AHU.MAIN_ACTIVITY", "accessory is null");
        }
        UsbManager usbManager = (UsbManager) getSystemService(Context.USB_SERVICE);
        if (!usbManager.hasPermission(usbAccessory)) {
            Log.i("AHU.MAIN_ACTIVITY", "Prompting the user for access to the accessory.");
            Intent intent = new Intent(ACTION_USB_ACCESSORY_PERMISSION);
            intent.setPackage(getPackageName());
            usbManager.requestPermission(usbAccessory, PendingIntent.getBroadcast(this, 0, intent, 1073741824));
            return;
        }
        try {
            this.mTransportFactory.open(usbAccessory, this);
            showConnections();
        } catch (IOException e2) {
            Log.e("AHU.MAIN_ACTIVITY", "Failed to start connection with " + usbAccessory, e2);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startGAL(int i2, int i3) {
        String str;
        String str2;
        synchronized (this.mLock) {
            if (this.mGal != null) {
                return;
            }
            Rect rectMakeRequestedVideoSize = DimensionUtils.makeRequestedVideoSize(i2, i3, this.mEmulatedScreen);
            GalIntegration galIntegration = new GalIntegration();
            this.mGal = galIntegration;
            AudioSink.AudioListener[] audioListenerArr = {this.mAudioSinkMediaStreamPlayer, this.mAudioSinkTtsStreamPlayer, this.mAudioSinkSystemStreamPlayer};
            this.mNavigationFocusManager = new NavigationFocusManager(galIntegration);
            AudioFocusManager audioFocusManager = new AudioFocusManager(this.mGal, this.mSettings.isRestrictedAudioFocusUsed());
            this.mAudioFocusManager = audioFocusManager;
            audioFocusManager.registerFocusChangeListener(this.mAudioSinkMediaStreamPlayer);
            this.mAudioFocusManager.registerFocusChangeListener(this.mAudioSinkTtsStreamPlayer);
            this.mAudioFocusManager.registerFocusChangeListener(this.mAudioSinkSystemStreamPlayer);
            this.mAudioSinkMediaStreamPlayer.registerAudioFocusManager(this.mAudioFocusManager);
            this.mAudioSinkTtsStreamPlayer.registerAudioFocusManager(this.mAudioFocusManager);
            this.mAudioSinkSystemStreamPlayer.registerAudioFocusManager(this.mAudioFocusManager);
            BluetoothEndpoint.BluetoothEventListener bluetoothEventListener = new BluetoothEndpoint.BluetoothEventListener() { // from class: com.google.android.projection.sink.ui.MainActivity.4
                @Override // com.google.android.projection.protocol.BluetoothEndpoint.BluetoothEventListener
                public void onAuthenticationResult(int i4) {
                    Log.i("AHU.MAIN_ACTIVITY", "onAuthenticationResult: status=" + i4);
                }

                @Override // com.google.android.projection.protocol.BluetoothEndpoint.BluetoothEventListener
                public void onPairingRequest(String str3, int i4) {
                    Log.i("AHU.MAIN_ACTIVITY", "onPairingRequest: phoneAddress=" + str3 + " pairingMethod=" + i4);
                    new Handler(MainActivity.this.getMainLooper()).post(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ((Button) MainActivity.this.findViewById(R.id.bluetooth_pairing_response_button)).setEnabled(true);
                            ((Button) MainActivity.this.findViewById(R.id.bluetooth_auth_data_button)).setEnabled(true);
                        }
                    });
                }
            };
            TestTools testTools = new TestTools(this, this.mDebugContext, this.mGal, this.mAudioFocusManager, this.mNavigationFocusManager, this.mSensorDispatcher, this.mLayout);
            this.mTestTools = testTools;
            InstrumentClusterListener instrumentClusterListener = new InstrumentClusterListener(testTools.getTestUiUpdateHandler());
            String string = android.provider.Settings.Secure.getString(getContentResolver(), "android_id");
            String str3 = "";
            try {
                str3 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            String str4 = str3;
            if (this.mLocalMode) {
                str = "GalReceiver-Local";
                str2 = "Local";
            } else {
                str = "GalReceiver";
                str2 = "Projected";
            }
            GalReceiver.CarInfo carInfo = new GalReceiver.CarInfo("Google", str, "2014", string, 0, "AHU", str2, "", str4, false, 0, "Google");
            List<Integer> supportedSensors = this.mSensorDispatcher.getSupportedSensors();
            int[] iArr = new int[supportedSensors.size()];
            for (int i4 = 0; i4 < supportedSensors.size(); i4++) {
                iArr[i4] = supportedSensors.get(i4).intValue();
            }
            this.mGal.init(this.mSettings.getCarBluetoothAddress(), this.mSettings.getSupportedBluetoothPairingMethods(), iArr, this.mSurfaceView, this.mProjectionListener, this.mSettings.grantFocusOnStart(), audioListenerArr, this.mAudioSourceListener, this.mAppMessageListener, this.mAudioFocusListener, this.mProjectedModeIconReceiver, this.mByeByeHandler, this.mUserSwitchListener, bluetoothEventListener, instrumentClusterListener, this.mAudioFocusManager, carInfo, new RadioStub(), new CarWifiStub(), this.mHandler, this.mLocalModeCallbacks.getRootCert(), this.mLocalModeCallbacks.getClientCert(), this.mLocalModeCallbacks.getPrivateKey(), "00:11:22:aa:bb:cc");
            int i5 = this.mSettings.isFpsLimited() ? 30 : 60;
            this.mGal.mainDisplayVideoSink.addSupportedConfiguration(this.mGal.mainDisplayVideoSink.nearestVideoConfiguration(rectMakeRequestedVideoSize.width(), rectMakeRequestedVideoSize.height(), (int) this.mEmulatedScreen.getEmulatedDpi(), (int) this.mEmulatedScreen.getPhysicalDpi(), i5, 3));
            Protos.VideoConfiguration videoConfigurationNearestVideoConfiguration = this.mGal.mainDisplayVideoSink.nearestVideoConfiguration(1280, MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_RECEIVE_WAP_PUSH, (((int) this.mEmulatedScreen.getEmulatedDpi()) * 1280) / rectMakeRequestedVideoSize.width(), (int) this.mEmulatedScreen.getPhysicalDpi(), i5, 3);
            this.mGal.mainDisplayVideoSink.addSupportedConfiguration(videoConfigurationNearestVideoConfiguration);
            this.mGal.mainDisplayVideoSink.addSupportedConfiguration(videoConfigurationNearestVideoConfiguration);
            this.mGal.mainDisplayVideoSink.setCodecType(Protos.MediaCodecType.MEDIA_CODEC_VIDEO_H264_BP);
            this.mGal.audioSinks[0].addSupportedConfiguration(SAMPLING_RATE_MEDIA, 16, 2);
            this.mGal.audioSinks[0].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_MEDIA);
            this.mGal.audioSinks[0].setCodecType(this.mSettings.isAAcEnabledForMedia() ? Protos.MediaCodecType.MEDIA_CODEC_AUDIO_AAC_LC : Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
            this.mGal.audioSinks[1].addSupportedConfiguration(16000, 16, 1);
            this.mGal.audioSinks[1].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_GUIDANCE);
            this.mGal.audioSinks[1].setCodecType(this.mSettings.isAAcEnabledForTts() ? Protos.MediaCodecType.MEDIA_CODEC_AUDIO_AAC_LC : Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
            this.mGal.audioSinks[2].addSupportedConfiguration(16000, 16, 1);
            this.mGal.audioSinks[2].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_SYSTEM_AUDIO);
            this.mGal.audioSinks[2].setCodecType(Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
            this.mAudioSourceListener.setGalAudioSource(this.mGal.audioSource);
            int[] iArrCopyOf = {19, 20, 21, 22, 23, 84, 4, 126, 127, 85, 88, 87, 209, 5, 6, Protos.KeyCode.KEYCODE_NAVIGATION.getNumber(), Protos.KeyCode.KEYCODE_TEL.getNumber()};
            if (this.mSettings.isRotaryControllerEnabled()) {
                iArrCopyOf = Arrays.copyOf(iArrCopyOf, 18);
                iArrCopyOf[iArrCopyOf.length - 1] = Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber();
            }
            this.mGal.mainDisplayInputSource.registerKeyCodes(iArrCopyOf);
            if (this.mSettings.isTouchScreenEnabled()) {
                this.mGal.mainDisplayInputSource.registerTouchScreen(i2, i3, InputSource.TOUCHSCREEN_TYPE_CAPACITIVE);
            }
            View viewFindViewById = findViewById(R.id.touchpad);
            this.mGal.mainDisplayInputSource.registerTouchPad(viewFindViewById.getWidth(), viewFindViewById.getHeight(), this.mSettings.isTouchpadNavigationEnabled(), 50, 50, false, false);
            this.mGal.mainDisplayInputSource.registerFeedbackEvents(new int[]{InputSource.FEEDBACK_EVENT_SELECT, InputSource.FEEDBACK_EVENT_DRAG_SELECT, InputSource.FEEDBACK_EVENT_FOCUS_CHANGE}, new InputSource.OnInputFeedbackListener() { // from class: com.google.android.projection.sink.ui.MainActivity.5
                @Override // com.google.android.projection.protocol.InputSource.OnInputFeedbackListener
                public void onInputFeedback(int i6) {
                    long[] jArr;
                    if (i6 == InputSource.FEEDBACK_EVENT_SELECT) {
                        jArr = new long[]{0, 75};
                    } else {
                        jArr = (i6 != InputSource.FEEDBACK_EVENT_FOCUS_CHANGE && i6 == InputSource.FEEDBACK_EVENT_DRAG_SELECT) ? new long[]{0, 75} : null;
                    }
                    if (jArr != null) {
                        ((Vibrator) MainActivity.this.getSystemService(Context.VIBRATOR_SERVICE)).vibrate(jArr, -1);
                    }
                }
            });
            this.mGal.audioSource.setConfig(this.mAudioSourceListener.getSamplingRate(), this.mAudioSourceListener.getNumberOfBits(), this.mAudioSourceListener.getNumberOfChannels());
            this.mAudioSinkMediaStreamPlayer.registerAudioSink(this.mGal.audioSinks[0]);
            this.mAudioSinkTtsStreamPlayer.registerAudioSink(this.mGal.audioSinks[1]);
            this.mAudioSinkSystemStreamPlayer.registerAudioSink(this.mGal.audioSinks[2]);
            this.mGal.start(this.mTransport);
            this.mSensorDispatcher.setGalIntegration(this.mGal);
            if (ActivityManager.isRunningInTestHarness()) {
                this.mTestTools.forceKeyboardLockoutOverride();
            }
            IntentControllerBroadcastReceiver intentControllerBroadcastReceiver = new IntentControllerBroadcastReceiver(this.mDebugContext, this.mGal);
            this.mIntentControllerReceiver = intentControllerBroadcastReceiver;
            registerReceiver(intentControllerBroadcastReceiver, IntentControllerBroadcastReceiver.getIntentFilter());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHostMode(UsbDevice usbDevice) {
        Log.i("AHU.MAIN_ACTIVITY", "Starting in host mode");
        if (!checkUsbHostPermission(usbDevice)) {
            finish();
            return;
        }
        if (!UsbHostSetup.processDevice(usbDevice, this)) {
            Log.i("AHU.MAIN_ACTIVITY", "Not attached to accessory yet");
            return;
        }
        try {
            showConnections();
            this.mTransportFactory.open(usbDevice, this);
        } catch (IOException e2) {
            Log.e("AHU.MAIN_ACTIVITY", "Failed to start connection with " + usbDevice, e2);
            finish();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        GalIntegration galIntegration = this.mGal;
        if (galIntegration != null && galIntegration.mainDisplayInputSource != null && motionEvent.getAction() == 2) {
            final int axisValue = (int) ((motionEvent.getAxisValue(18) - motionEvent.getAxisValue(17)) * 5.0f);
            this.mHandler.removeCallbacksAndMessages(null);
            if (axisValue != 0) {
                this.mGal.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), axisValue);
                this.mHandler.postDelayed(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MainActivity.this.mGal == null || MainActivity.this.mGal.mainDisplayInputSource == null) {
                            return;
                        }
                        MainActivity.this.mGal.mainDisplayInputSource.sendRelativeEvent(Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber(), axisValue);
                        MainActivity.this.mHandler.postDelayed(this, 200L);
                    }
                }, 200L);
            }
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    public void doBindService() {
        bindService(new Intent(this, (Class<?>) BackgroundService.class), this.mConnection, 1);
        this.mIsBound = true;
    }

    public void doUnbindService() {
        if (this.mIsBound) {
            this.mService.setListener(null);
            unbindService(this.mConnection);
            this.mIsBound = false;
        }
    }

    public UsbDevice getUsbDevice() {
        for (UsbDevice usbDevice : ((UsbManager) getSystemService(Context.USB_SERVICE)).getDeviceList().values()) {
            if (usbDevice != null && usbDevice.getDeviceClass() == 0) {
                Log.d("AHU.MAIN_ACTIVITY", "usb attached " + usbDevice);
                return usbDevice;
            }
        }
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        synchronized (this.mLock) {
            GalIntegration galIntegration = this.mGal;
            if (galIntegration != null) {
                galIntegration.mainDisplayInputSource.sendBackEvent();
            }
        }
    }

    @Override // com.google.android.projection.transport.TransportFactory.Callback
    public void onConnected(final Transport transport) {
        runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.8
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                float f2;
                int i2;
                int i3;
                Log.d("AHU.MAIN_ACTIVITY", "Transport connected");
                MainActivity.this.mTransportHandle = null;
                MainActivity.this.mTransport = transport;
                MainActivity.this.mConnectLayout.setVisibility(8);
                MainActivity mainActivity = MainActivity.this;
                mainActivity.mSurfaceView = (SurfaceView) mainActivity.findViewById(R.id.surface);
                TextView textView = (TextView) MainActivity.this.findViewById(R.id.fps);
                MainActivity.this.mSurfaceView.setOnTouchListener(MainActivity.this.mSurfaceTouchListener);
                int emulatedWidth = MainActivity.this.mSettings.getEmulatedWidth();
                int emulatedHeight = MainActivity.this.mSettings.getEmulatedHeight();
                float emulatedDpi = MainActivity.this.mSettings.getEmulatedDpi();
                DisplayMetrics displayMetrics = MainActivity.this.getResources().getDisplayMetrics();
                float f3 = (displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f;
                boolean zIsScaledToScreen = MainActivity.this.mSettings.isScaledToScreen();
                if (emulatedWidth == 0 || emulatedHeight == 0 || emulatedDpi == 0.0f) {
                    f2 = f3;
                    i2 = 0;
                    i3 = 0;
                } else {
                    i2 = emulatedWidth;
                    i3 = emulatedHeight;
                    f2 = emulatedDpi;
                }
                MainActivity.this.mEmulatedScreen = new DimensionUtils.ScreenSettings(i2, i3, f2, f3, zIsScaledToScreen);
                MainActivity mainActivity2 = MainActivity.this;
                mainActivity2.mProjectionRenderer = new ProjectionRenderer(mainActivity2.mSurfaceView, textView, MainActivity.this.mProjectionRendererListener, MainActivity.this.mEmulatedScreen, MainActivity.this.mVideoLatencyChecker, MainActivity.this.mAudioLatencyChecker);
                MainActivity.this.mSurfaceView.setVisibility(0);
                Rect renderFrame = MainActivity.this.mProjectionRenderer.getRenderFrame();
                MainActivity.this.startGAL(renderFrame.right, renderFrame.bottom);
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LocalModeCallbacksImpl localModeCallbacksImpl = new LocalModeCallbacksImpl();
        this.mLocalModeCallbacks = localModeCallbacksImpl;
        this.mLocalMode = localModeCallbacksImpl.isLocalMode();
        this.mSettings = new Settings(this);
        this.mTransportFactory = TransportFactory.builder().setContext(this).build();
        final Intent intent = getIntent();
        Log.i("AHU.MAIN_ACTIVITY", "Start with intent: " + intent);
        if (intent.getBooleanExtra("stop", false)) {
            finish();
            return;
        }
        final UsbDevice usbDevice = getUsbDevice();
        if (usbDevice != null) {
            this.mLaunchMode = 1;
        } else if (this.mLocalMode) {
            this.mLaunchMode = 3;
        }
        this.mDebugContext = new DebugContext(this);
        initializeViews();
        initializeSensorServices();
        findViewById(R.id.surface).getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.projection.sink.ui.MainActivity.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                MainActivity.this.findViewById(R.id.surface).getViewTreeObserver().removeOnGlobalLayoutListener(this);
                LocalBroadcastManager.getInstance(MainActivity.this).registerReceiver(MainActivity.this.mUsbDisconnectedReceiver, new IntentFilter(GalIntegration.USB_DISCONNECT_INTENT));
                int i2 = MainActivity.this.mLaunchMode;
                if (i2 == 0) {
                    MainActivity.this.startAccessoryMode((UsbAccessory) intent.getParcelableExtra("accessory"));
                    return;
                }
                if (i2 == 1) {
                    MainActivity.this.startHostMode(usbDevice);
                    return;
                }
                if (i2 == 2) {
                    MainActivity.this.doBindService();
                    MainActivity.this.startTcpServerMode();
                } else if (i2 == 3) {
                    MainActivity.this.mLocalModeCallbacks.startLocalMode(MainActivity.this);
                } else {
                    throw new RuntimeException("Unhandled case: " + MainActivity.this.mLaunchMode);
                }
            }
        });
        registerReceiver(this.usbReceiver, new IntentFilter(UsbManager.ACTION_USB_DEVICE_ATTACHED));
    }

    @Override // android.app.Activity
    public void onDestroy() {
        TransportFactory transportFactory = this.mTransportFactory;
        if (transportFactory != null) {
            transportFactory.shutdown();
            this.mTransportFactory = null;
        }
        if (this.mTestTools != null) {
            this.mTestTools = null;
        }
        SensorManager sensorManager = this.mSensorDispatcher;
        if (sensorManager != null) {
            sensorManager.shutdown();
            this.mSensorDispatcher = null;
        }
        DebugContext debugContext = this.mDebugContext;
        if (debugContext != null) {
            debugContext.shutdown();
            this.mDebugContext = null;
        }
        ProjectionRenderer projectionRenderer = this.mProjectionRenderer;
        if (projectionRenderer != null) {
            projectionRenderer.release();
        }
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mUsbDisconnectedReceiver);
        BroadcastReceiver broadcastReceiver = this.mBluetoothStartBroadcastReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
        unregisterReceiver(this.usbReceiver);
        doUnbindService();
        super.onDestroy();
    }

    @Override // com.google.android.projection.transport.TransportFactory.Callback
    public void onDisconnected() {
        runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.9
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                Log.d("AHU.MAIN_ACTIVITY", "Transport disconnected");
                if (MainActivity.this.mProjectionRenderer != null) {
                    Log.d("AHU.MAIN_ACTIVITY", "shutdown renderer");
                    MainActivity.this.mProjectionRenderer.stop();
                }
                if (MainActivity.this.mAudioSourceListener != null) {
                    MainActivity.this.mAudioSourceListener.stop();
                }
                if (MainActivity.this.mAudioSinkMediaStreamPlayer != null) {
                    Log.d("AHU.MAIN_ACTIVITY", "shutdown media audio");
                    MainActivity.this.mAudioSinkMediaStreamPlayer.tearDown();
                }
                if (MainActivity.this.mAudioSinkTtsStreamPlayer != null) {
                    Log.d("AHU.MAIN_ACTIVITY", "shutdown tts audio");
                    MainActivity.this.mAudioSinkTtsStreamPlayer.tearDown();
                }
                if (MainActivity.this.mAudioSinkSystemStreamPlayer != null) {
                    Log.d("AHU.MAIN_ACTIVITY", "shutdown system audio");
                    MainActivity.this.mAudioSinkSystemStreamPlayer.tearDown();
                }
                synchronized (MainActivity.this.mLock) {
                    if (MainActivity.this.mGal != null) {
                        MainActivity.this.mGal.destroy();
                        MainActivity.this.mGal = null;
                        MainActivity.this.mTransport = null;
                    }
                }
                if (MainActivity.this.mLaunchMode == 2) {
                    if (MainActivity.this.mSurfaceView != null) {
                        MainActivity.this.mSurfaceView.setVisibility(4);
                    }
                    MainActivity.this.showConnections();
                    return;
                }
                if (MainActivity.this.mSensorDispatcher != null) {
                    MainActivity.this.mSensorDispatcher.shutdown();
                    MainActivity.this.mSensorDispatcher = null;
                }
                if (MainActivity.this.isFinishing()) {
                    return;
                }
                if (MainActivity.this.mIntentControllerReceiver != null) {
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.unregisterReceiver(mainActivity.mIntentControllerReceiver);
                    MainActivity.this.mIntentControllerReceiver = null;
                }
                MainActivity.this.finish();
            }
        });
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return handleKeyEvent(i2, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        return handleKeyEvent(i2, keyEvent);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getBooleanExtra("stop", false)) {
            this.mByeByeHandler.onByeByeRequest(0);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        ProjectionRenderer projectionRenderer = this.mProjectionRenderer;
        if (projectionRenderer != null && projectionRenderer.isStarted()) {
            this.mGal.mainDisplayVideoSink.setVideoFocus(VideoSink.VIDEO_FOCUS_NATIVE, -1, true);
        }
        this.resumed = false;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        ProjectionRenderer projectionRenderer = this.mProjectionRenderer;
        if (projectionRenderer != null && projectionRenderer.isStarted()) {
            this.mGal.mainDisplayVideoSink.setVideoFocus(VideoSink.VIDEO_FOCUS_PROJECTED, -1, true);
        }
        if (Build.VERSION.SDK_INT > 18) {
            new SystemUiHider(this.mLayout).setup();
        }
        this.resumed = true;
        BackgroundService backgroundService = this.mService;
        if (backgroundService != null) {
            backgroundService.start();
        }
    }

    public void startConnectionEstablishing(final Transport transport) {
        runOnUiThread(new Runnable() { // from class: com.google.android.projection.sink.ui.MainActivity.3
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.showConnections();
                MainActivity.this.onConnected(transport);
            }
        });
    }

    public void startTcpServerMode() {
        TransportFactory.FactoryHandle factoryHandle = this.mTransportHandle;
        if (factoryHandle != null) {
            try {
                factoryHandle.interrupt();
            } catch (Exception e2) {
                Log.w("AHU.MAIN_ACTIVITY", "Failed to interrupt previous attempt to establish Transport", e2);
            }
        }
        try {
            showConnections();
            this.mTransportHandle = this.mTransportFactory.open(null, this);
        } catch (IOException e3) {
            Log.e("AHU.MAIN_ACTIVITY", "Failed to start TCP server on port " + this.mSettings.getListenTcpPort(), e3);
            finish();
        }
        Log.i("AHU.MAIN_ACTIVITY", "Starting in TCP server mode on port " + this.mSettings.getListenTcpPort());
    }
}
