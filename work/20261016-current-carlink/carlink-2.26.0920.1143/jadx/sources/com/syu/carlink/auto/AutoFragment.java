package com.syu.carlink.auto;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.GalVerificationVendorExtension;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.protocol.VideoSink;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.R;
import com.google.android.projection.sink.audio.AudioFocusManager;
import com.google.android.projection.sink.audio.AudioLatencyChecker;
import com.google.android.projection.sink.audio.AudioPlayer;
import com.google.android.projection.sink.audio.MicrophoneRecorder;
import com.google.android.projection.sink.debug.DebugContext;
import com.google.android.projection.sink.navigation.NavigationFocusManager;
import com.google.android.projection.sink.sensors.SensorManager;
import com.google.android.projection.sink.sensors.TabletSensors;
import com.google.android.projection.sink.settings.Settings;
import com.google.android.projection.sink.transport.usb.UsbHostSetup;
import com.google.android.projection.sink.video.DimensionUtils;
import com.google.android.projection.sink.video.ProjectionRenderer;
import com.google.android.projection.sink.video.VideoLatencyChecker;
import com.google.android.projection.transport.TransportFactory;
import com.syu.carlink.CarLink;
import com.syu.carlink.MainActivity;
import com.syu.carlink.UsbScanner;
import e.b;
import f.a0;
import f.b0;
import f.c0;
import f.d0;
import f.e0;
import f.g0;
import f.h0;
import f.k;
import f.o;
import f.t;
import f.u;
import f.v;
import f.w;
import f.x;
import f.y;
import f.z;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"MissingPermission"})
public class AutoFragment extends Fragment implements TransportFactory.Callback {
    public static final /* synthetic */ int P = 0;
    public final AudioLatencyChecker A;
    public final o B;
    public final t C;
    public final AudioPlayer D;
    public final AudioPlayer E;
    public final AudioPlayer F;
    public volatile boolean G;
    public volatile int H;
    public MicrophoneRecorder I;
    public final x J;
    public final y K;
    public final z L;
    public final b0 M;
    public final c0 N;
    public final d0 O;
    public Settings c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Transport f646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public GalIntegration f647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AudioFocusManager f648f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public NavigationFocusManager f649g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProjectionRenderer f650h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SurfaceView f651i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f652j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SensorManager f653k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TabletSensors f654l;
    public DebugContext m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public DimensionUtils.ScreenSettings f655n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b f657p;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public BroadcastReceiver f666y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f645b = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f656o = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Handler f658q = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public AudioManager f659r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f660s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final a0 f661t = new a0(this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f662u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final g0 f663v = new g0();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f664w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final h0 f665x = new h0();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final VideoLatencyChecker f667z = new VideoLatencyChecker();

    public AutoFragment() {
        AudioLatencyChecker audioLatencyChecker = new AudioLatencyChecker();
        this.A = audioLatencyChecker;
        this.B = new o(this);
        this.C = new t(this);
        this.D = new AudioPlayer(3, 48000, 12, 2, audioLatencyChecker);
        this.E = new AudioPlayer(0, 16000, 4, 2, null);
        this.F = new AudioPlayer(5, 16000, 4, 2, null);
        this.G = false;
        this.H = Protos.NavigationStatus.NavigationStatusEnum.UNAVAILABLE.getNumber();
        this.I = new MicrophoneRecorder();
        this.J = new x(this);
        this.K = new y(this);
        this.L = new z(this);
        this.M = new b0();
        this.N = new c0(this);
        this.O = new d0(this);
        new e0(this);
    }

    public static void a(AutoFragment autoFragment, int i2, Runnable runnable) {
        if (!autoFragment.isAdded() || autoFragment.f646d == null) {
            Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "waitSurfaceReady aborted, fragment detached or transport gone");
            return;
        }
        if (autoFragment.f651i.getWidth() > 0 && autoFragment.f651i.getHeight() > 0) {
            runnable.run();
        } else if (i2 < 20) {
            autoFragment.f658q.postDelayed(new v(autoFragment, i2, runnable), 100L);
        } else {
            Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "waitSurfaceReady timeout, connect with fallback metrics");
            runnable.run();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Protos.VideoConfiguration d(int i2, int i3, int i4, int i5, int i6) {
        int iMax;
        int width;
        Protos.VideoCodecResolutionType videoCodecResolutionType;
        int width2;
        int iMax2;
        Protos.VideoCodecResolutionType videoCodecResolutionType2;
        Protos.VideoCodecResolutionType videoCodecResolutionType3;
        int i7;
        g.b bVarJ = CarLink.f562i.j();
        Size sizeA = bVarJ.a();
        int iIntValue = ((Integer) bVarJ.E.getValue()).intValue();
        int i8 = 0;
        if (iIntValue != 0) {
            if (iIntValue != 1) {
                if (iIntValue != 2) {
                    videoCodecResolutionType3 = null;
                    i7 = 0;
                } else if (i2 >= i3) {
                    width2 = sizeA.getWidth() - i2;
                    iMax2 = Math.max(0, sizeA.getHeight() - i3);
                    videoCodecResolutionType2 = Protos.VideoCodecResolutionType.VIDEO_2560x1440;
                    int i9 = iMax2;
                    videoCodecResolutionType3 = videoCodecResolutionType2;
                    i7 = i9;
                    i8 = width2;
                } else {
                    iMax = Math.max(0, sizeA.getHeight() - i2);
                    width = sizeA.getWidth() - i3;
                    videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_1440x2560;
                    Protos.VideoCodecResolutionType videoCodecResolutionType4 = videoCodecResolutionType;
                    int i10 = iMax;
                    videoCodecResolutionType3 = videoCodecResolutionType4;
                    i8 = i10;
                    i7 = width;
                }
            } else if (i2 >= i3) {
                width2 = sizeA.getWidth() - i2;
                iMax2 = Math.max(0, sizeA.getHeight() - i3);
                videoCodecResolutionType2 = Protos.VideoCodecResolutionType.VIDEO_1920x1080;
                int i11 = iMax2;
                videoCodecResolutionType3 = videoCodecResolutionType2;
                i7 = i11;
                i8 = width2;
            } else {
                iMax = Math.max(0, sizeA.getHeight() - i2);
                width = sizeA.getWidth() - i3;
                videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_1080x1920;
                Protos.VideoCodecResolutionType videoCodecResolutionType5 = videoCodecResolutionType;
                int i12 = iMax;
                videoCodecResolutionType3 = videoCodecResolutionType5;
                i8 = i12;
                i7 = width;
            }
        } else if (i2 >= i3) {
            width2 = sizeA.getWidth() - i2;
            iMax2 = Math.max(0, sizeA.getHeight() - i3);
            videoCodecResolutionType2 = Protos.VideoCodecResolutionType.VIDEO_1280x720;
            int i13 = iMax2;
            videoCodecResolutionType3 = videoCodecResolutionType2;
            i7 = i13;
            i8 = width2;
        } else {
            iMax = Math.max(0, sizeA.getHeight() - i2);
            width = sizeA.getWidth() - i3;
            videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_720x1280;
            Protos.VideoCodecResolutionType videoCodecResolutionType6 = videoCodecResolutionType;
            int i14 = iMax;
            videoCodecResolutionType3 = videoCodecResolutionType6;
            i8 = i14;
            i7 = width;
        }
        Protos.VideoFrameRateType videoFrameRateType = Protos.VideoFrameRateType.VIDEO_FPS_30;
        if (i6 >= 60) {
            videoFrameRateType = Protos.VideoFrameRateType.VIDEO_FPS_60;
        }
        return Protos.VideoConfiguration.newBuilder().setCodecResolution(videoCodecResolutionType3).setFrameRate(videoFrameRateType).setWidthMargin(i8).setHeightMargin(i7).setDensity(i4).setRealDensity(i5).setDecoderAdditionalDepth(3).build();
    }

    public final int[] b(int i2, int i3, int i4, int i5) {
        Log.e("HDL", "windowWidth: " + i2 + " windowHeight : " + i3);
        Log.e("HDL", "maxWidth: " + i4 + " maxHeight : " + i5);
        float f2 = (float) i2;
        float f3 = (float) i3;
        float fMin = Math.min(((float) i4) / f2, ((float) i5) / f3);
        int[] iArr = {(int) (f2 * fMin), (int) (f3 * fMin), 0};
        Log.e("HDL", "display: " + Arrays.toString(iArr));
        return iArr;
    }

    public final void c() {
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            ((MainActivity) activity).k();
        }
    }

    public final void e() {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "*****************************  requestAudioFocus");
        if (this.f660s == 1) {
            return;
        }
        int iRequestAudioFocus = this.f659r.requestAudioFocus(this.f661t, 3, 1);
        this.f660s = iRequestAudioFocus;
        if (iRequestAudioFocus == 1) {
            this.f648f.enablePhoneFocus();
            n.b.a(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, " AAuto keyboardController -------->>  true : ");
            CarLink.f562i.f().t(k.f825y);
        }
    }

    public final void f(UsbDevice usbDevice) {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "startHostMode Start  device : " + usbDevice);
        Context context = k.f825y.f833j;
        boolean z2 = false;
        if (usbDevice != null) {
            UsbManager usbManager = (UsbManager) context.getSystemService(Context.USB_SERVICE);
            if (usbManager.hasPermission(usbDevice)) {
                z2 = true;
            } else {
                Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "no permission for the device. asking user");
                usbManager.requestPermission(usbDevice, PendingIntent.getBroadcast(context, 0, new Intent("com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION"), 1073741824));
            }
        }
        if (!z2) {
            c();
            Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "startHostMode checkUsbHostPermission failed !!");
            return;
        }
        UsbScanner usbScanner = UsbScanner.f635j;
        if (b.d(usbDevice)) {
            if (!UsbHostSetup.processDevice(usbDevice, context)) {
                Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Not attached to accessory yet");
                k.f825y.e(2000L);
                return;
            }
            try {
                k kVar = k.f825y;
                kVar.c.open(usbDevice, kVar);
            } catch (IOException e2) {
                Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Failed to start connection with " + usbDevice, e2);
                c();
            }
        }
    }

    public final void g() {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "***************************** stopAuto nextdelay : true");
        this.N.onByeByeRequest(0);
        SystemClock.elapsedRealtime();
        if (!CarLink.f562i.A()) {
            k.f825y.getClass();
            CarLink.f562i.j().f906z.postValue(Boolean.FALSE);
        }
        k.f825y.getClass();
        CarLink.f562i.j().f901u.postValue(3);
        CarLink.f562i.j().f899s.postValue(0);
        onDestroy();
    }

    public final void h() {
        GalIntegration galIntegration;
        GalVerificationVendorExtension galVerificationVendorExtension;
        if (this.f654l == null || (galIntegration = this.f647e) == null || (galVerificationVendorExtension = galIntegration.galVerificationVendorExtension) == null) {
            return;
        }
        galVerificationVendorExtension.overrideNightMode(Boolean.valueOf(CarLink.f562i.u()));
        n.b.a("HDL", "===================>>  updateDayNightMode() CarLink.me.isNightMode() : " + CarLink.f562i.u());
    }

    @Override // com.google.android.projection.transport.TransportFactory.Callback
    public final void onConnected(Transport transport) {
        FragmentActivity activity = getActivity();
        this.f646d = transport;
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "----------------->>>>> Auto Fragment onConnected");
        if (activity == null || !CarLink.f562i.f564d) {
            Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "----------------->>>>> Auto Fragment onConnected 00");
            k.f825y.f832i = true;
        } else {
            k.f825y.f832i = false;
            this.f646d = transport;
            this.f658q.post(new u(this));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getActivity().getWindow().addFlags(128);
        return layoutInflater.inflate(R.layout.activity_main, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        StackTraceElement[] stackTraceElementArr = Thread.getAllStackTraces().get(Thread.currentThread());
        Log.e("Qin", "========>>>> called method :".concat("OnDestroy"));
        t.b.e(stackTraceElementArr);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(stackTraceElement.getFileName() + ':' + stackTraceElement.getMethodName() + ":(" + stackTraceElement.getLineNumber() + ')');
            stringBuffer.append("\n");
            StringBuilder sb = new StringBuilder("========>>>>");
            sb.append((Object) stringBuffer);
            Log.e("Qin", sb.toString());
        }
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "*****************************  onDestroy");
        TransportFactory transportFactory = k.f825y.c;
        if (transportFactory != null) {
            transportFactory.shutdown();
        }
        SensorManager sensorManager = this.f653k;
        if (sensorManager != null) {
            sensorManager.shutdown();
            this.f653k = null;
        }
        DebugContext debugContext = this.m;
        if (debugContext != null) {
            debugContext.shutdown();
            this.m = null;
        }
        ProjectionRenderer projectionRenderer = this.f650h;
        if (projectionRenderer != null) {
            projectionRenderer.release();
        }
        k kVar = k.f825y;
        kVar.f832i = false;
        kVar.n();
        k.f825y.i();
        super.onDestroy();
    }

    @Override // com.google.android.projection.transport.TransportFactory.Callback
    public final void onDisconnected() {
        k.f825y.f832i = false;
        this.f660s = -1;
        CarLink.f562i.f().f581f.post(new w(this));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        ProjectionRenderer projectionRenderer = this.f650h;
        if (projectionRenderer == null || !projectionRenderer.isStarted()) {
            return;
        }
        this.f647e.mainDisplayVideoSink.setVideoFocus(VideoSink.VIDEO_FOCUS_NATIVE, -1, true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        Transport transport;
        super.onResume();
        CarLink.f562i.getClass();
        if (CarLink.m()) {
            CarLink.f562i.f().h(10, true);
        }
        String strValueOf = String.valueOf(2);
        t.b.h(strValueOf, "value");
        SystemProperties.set("sys.carlink.type", strValueOf);
        ProjectionRenderer projectionRenderer = this.f650h;
        if (projectionRenderer != null && projectionRenderer.isStarted()) {
            String strValueOf2 = String.valueOf(2);
            t.b.h(strValueOf2, "value");
            SystemProperties.set("sys.carlink.type", strValueOf2);
            this.f647e.mainDisplayVideoSink.setVideoFocus(VideoSink.VIDEO_FOCUS_PROJECTED, -1, true);
            this.f648f.enablePhoneFocus();
            Log.w(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "=================>>> AutoFragment onResume mAudioFocusManager isCarPlayingMusic :" + this.f648f.isCarPlayingMusic());
        }
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "----------------->>>>> Auto Fragment onResume isNeedConnect :" + k.f825y.f832i + " mTransport : " + this.f646d);
        k kVar = k.f825y;
        if (kVar.f832i && (transport = this.f646d) != null) {
            onConnected(transport);
        } else if (this.f646d == null || this.f647e != null) {
            kVar.f832i = false;
        } else {
            Log.w(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "----------------->>>>> Auto Fragment onResume re-attach live transport, rebuild GAL/renderer");
            onConnected(this.f646d);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f659r = (AudioManager) k.f825y.f833j.getSystemService("audio");
        this.f652j = getView().findViewById(R.id.connect_layout);
        this.f651i = (SurfaceView) getView().findViewById(R.id.surface);
        b bVar = k.f825y.f826b;
        this.f657p = bVar;
        bVar.getClass();
        this.c = k.f825y.f829f;
        this.m = new DebugContext(getContext());
        if (this.f656o) {
            n.b.a("Auto", "----------------fmt onViewCreated");
            k.f825y.m(1);
            this.f656o = false;
        }
    }
}
