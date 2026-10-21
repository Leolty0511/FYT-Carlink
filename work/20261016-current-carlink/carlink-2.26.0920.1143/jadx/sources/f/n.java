package f;

import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.view.SurfaceView;
import android.view.View;
import android.widget.TextView;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.AudioSink;
import com.google.android.projection.protocol.CarWifiStub;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.InputSource;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.R;
import com.google.android.projection.sink.audio.AudioFocusManager;
import com.google.android.projection.sink.audio.MicrophoneRecorder;
import com.google.android.projection.sink.navigation.NavigationFocusManager;
import com.google.android.projection.sink.sensors.FakeSensors;
import com.google.android.projection.sink.sensors.LocationSensors;
import com.google.android.projection.sink.sensors.SensorManager;
import com.google.android.projection.sink.sensors.SimpleObdSensor;
import com.google.android.projection.sink.sensors.SimulatedLocationSensors;
import com.google.android.projection.sink.sensors.TabletSensors;
import com.google.android.projection.sink.ui.IntentControllerBroadcastReceiver;
import com.google.android.projection.sink.video.DimensionUtils;
import com.google.android.projection.sink.video.ProjectionRenderer;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class n implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f852b;
    public final /* synthetic */ Object c;

    public /* synthetic */ n(Object obj, int i2) {
        this.f852b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int[] iArrB;
        int i2;
        int i3;
        float f2;
        switch (this.f852b) {
            case 0:
                ((o) this.c).f853a.h();
                return;
            default:
                AutoFragment autoFragment = ((u) this.c).f863b;
                if (autoFragment.f650h != null || autoFragment.f647e != null) {
                    Log.w(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "connect skipped, already connected or renderer exists");
                    return;
                }
                if (!autoFragment.isAdded() || autoFragment.f646d == null) {
                    Log.w(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "connect skipped, fragment not added or transport invalid");
                    return;
                }
                if (autoFragment.f653k == null) {
                    if (autoFragment.c.isGpsTabletEnabled()) {
                        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Start in GPS mode");
                    } else if (autoFragment.c.isGpsSimulationEnabled()) {
                        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Start in simulation mode");
                    }
                    autoFragment.f653k = new SensorManager();
                    autoFragment.f654l = new TabletSensors(autoFragment.getContext());
                    autoFragment.f653k.init(new FakeSensors(autoFragment.getContext()), new SimulatedLocationSensors(autoFragment.getContext(), autoFragment.m), new LocationSensors(autoFragment.getContext(), autoFragment.m), autoFragment.f654l, new SimpleObdSensor(autoFragment.getContext()));
                }
                autoFragment.f652j.setVisibility(8);
                TextView textView = (TextView) autoFragment.getView().findViewById(R.id.fps);
                autoFragment.f651i.setOnTouchListener(autoFragment.J);
                DisplayMetrics displayMetrics = autoFragment.getResources().getDisplayMetrics();
                g.b bVarJ = CarLink.f562i.j();
                DisplayMetrics displayMetrics2 = autoFragment.getResources().getDisplayMetrics();
                int iMin = displayMetrics2.heightPixels;
                int iMin2 = displayMetrics2.widthPixels;
                SurfaceView surfaceView = autoFragment.f651i;
                if (surfaceView != null && surfaceView.getWidth() > 0 && autoFragment.f651i.getHeight() > 0) {
                    iMin2 = Math.min(autoFragment.f651i.getWidth(), iMin2);
                    iMin = Math.min(autoFragment.f651i.getHeight(), iMin);
                    StringBuilder sb = new StringBuilder(" checkDisplay  gmSurfaceView width : ");
                    sb.append(autoFragment.f651i.getWidth());
                    sb.append(" height : ");
                    sb.append(autoFragment.f651i.getHeight());
                    sb.append(" display : ");
                    sb.append(displayMetrics2.widthPixels);
                    sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    android.app.m.C(sb, displayMetrics2.heightPixels, "HDL");
                }
                Size sizeA = bVarJ.a();
                if (iMin2 >= iMin) {
                    iArrB = autoFragment.b(iMin2, iMin, sizeA.getWidth(), sizeA.getHeight());
                    float width = iArrB[0] / sizeA.getWidth();
                    l.c cVarD = t.b.d(iArrB[0], iArrB[1], width);
                    l.c cVarD2 = t.b.d(sizeA.getWidth(), sizeA.getHeight(), width);
                    Log.e("HDL", "target: " + cVarD + " \ndef: " + cVarD2);
                    iArrB[2] = (int) cVarD2.f1061g;
                } else {
                    iArrB = autoFragment.b(iMin2, iMin, sizeA.getHeight(), sizeA.getWidth());
                    float height = iArrB[1] / sizeA.getHeight();
                    l.c cVarD3 = t.b.d(iArrB[0], iArrB[1], height);
                    l.c cVarD4 = t.b.d(sizeA.getHeight(), sizeA.getWidth(), height);
                    Log.e("HDL", "target: " + cVarD3 + " \ndef: " + cVarD4);
                    iArrB[2] = (int) cVarD4.f1061g;
                }
                StringBuilder sbT = android.accessibilityservice.c.t(" checkDisplay   width : ", iMin2, " height : ", iMin, " to display: ");
                sbT.append(iArrB);
                Log.e("HDL", sbT.toString());
                int i4 = iArrB[0];
                int i5 = iArrB[1];
                float f3 = iArrB[2];
                float f4 = (displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f;
                if (i4 == 0 || i5 == 0 || f3 == 0.0f) {
                    i2 = 0;
                    i3 = 0;
                    f2 = f4;
                } else {
                    i2 = i4;
                    i3 = i5;
                    f2 = f3;
                }
                Log.d("HDL", String.format("emulatedWidth : %d, emulatedHeight : %d,\nemulatedDpi: %f, realDpi: %f, scaleToScreen: ", Integer.valueOf(i2), Integer.valueOf(i3), Float.valueOf(f2), Float.valueOf(f4)) + false);
                DimensionUtils.ScreenSettings screenSettings = new DimensionUtils.ScreenSettings(i2, i3, f2, f4, false);
                autoFragment.f655n = screenSettings;
                autoFragment.f650h = new ProjectionRenderer(autoFragment.f651i, textView, autoFragment.B, screenSettings, autoFragment.f667z, autoFragment.A);
                autoFragment.f651i.setVisibility(0);
                Rect renderFrame = autoFragment.f650h.getRenderFrame();
                int i6 = renderFrame.right;
                int i7 = renderFrame.bottom;
                StringBuilder sbT2 = android.accessibilityservice.c.t("----------------->>>>> startGAL width :", i6, " height : ", i7, " mGal: ");
                sbT2.append(autoFragment.f647e);
                Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, sbT2.toString());
                synchronized (autoFragment.f645b) {
                    if (autoFragment.f647e != null) {
                        return;
                    }
                    CarLink.f562i.getClass();
                    boolean zM = CarLink.m();
                    if (autoFragment.I == null) {
                        autoFragment.I = new MicrophoneRecorder();
                    }
                    Rect rectMakeRequestedVideoSize = DimensionUtils.makeRequestedVideoSize(i6, i7, autoFragment.f655n);
                    autoFragment.f647e = new GalIntegration();
                    AudioSink.AudioListener[] audioListenerArr = {autoFragment.F};
                    if (!zM) {
                        audioListenerArr = new AudioSink.AudioListener[]{new l(autoFragment, autoFragment.D), autoFragment.E, autoFragment.F};
                    }
                    AudioSink.AudioListener[] audioListenerArr2 = audioListenerArr;
                    autoFragment.f649g = new NavigationFocusManager(autoFragment.f647e);
                    AudioFocusManager audioFocusManager = new AudioFocusManager(autoFragment.f647e, autoFragment.c.isRestrictedAudioFocusUsed());
                    autoFragment.f648f = audioFocusManager;
                    audioFocusManager.registerFocusChangeListener(autoFragment.D);
                    autoFragment.f648f.registerFocusChangeListener(autoFragment.E);
                    autoFragment.f648f.registerFocusChangeListener(autoFragment.F);
                    autoFragment.D.registerAudioFocusManager(autoFragment.f648f);
                    autoFragment.E.registerAudioFocusManager(autoFragment.f648f);
                    autoFragment.E.setCallback(new i0(autoFragment));
                    autoFragment.F.registerAudioFocusManager(autoFragment.f648f);
                    autoFragment.F.setCallback(new j0());
                    l0 l0Var = new l0(autoFragment);
                    m0 m0Var = new m0(autoFragment);
                    String string = Settings.Secure.getString(autoFragment.getContext().getContentResolver(), "android_id");
                    int i8 = CarLink.f562i.s() ? 0 : 1;
                    String str = "";
                    try {
                        str = autoFragment.getContext().getPackageManager().getPackageInfo(autoFragment.getContext().getPackageName(), 0).versionName;
                        break;
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    String str2 = str;
                    Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "======================>> startGAL mLocalMode:false model: GalReceiver huModel : Projected");
                    GalReceiver.CarInfo carInfo = new GalReceiver.CarInfo("Google", "GalReceiver", "2014", string, i8, "AHU", "Projected", "", str2, false, 0, "Google");
                    List<Integer> supportedSensors = autoFragment.f653k.getSupportedSensors();
                    int[] iArr = new int[supportedSensors.size()];
                    for (int i9 = 0; i9 < supportedSensors.size(); i9++) {
                        iArr[i9] = supportedSensors.get(i9).intValue();
                    }
                    GalIntegration galIntegration = autoFragment.f647e;
                    String carBluetoothAddress = autoFragment.c.getCarBluetoothAddress();
                    int[] supportedBluetoothPairingMethods = autoFragment.c.getSupportedBluetoothPairingMethods();
                    SurfaceView surfaceView2 = autoFragment.f651i;
                    t tVar = autoFragment.C;
                    boolean zGrantFocusOnStart = autoFragment.c.grantFocusOnStart();
                    MicrophoneRecorder microphoneRecorder = autoFragment.I;
                    y yVar = autoFragment.K;
                    z zVar = autoFragment.L;
                    b0 b0Var = autoFragment.M;
                    c0 c0Var = autoFragment.N;
                    d0 d0Var = autoFragment.O;
                    AudioFocusManager audioFocusManager2 = autoFragment.f648f;
                    CarWifiStub carWifiStub = new CarWifiStub();
                    Handler handler = autoFragment.f658q;
                    autoFragment.f657p.getClass();
                    autoFragment.f657p.getClass();
                    autoFragment.f657p.getClass();
                    galIntegration.init(carBluetoothAddress, supportedBluetoothPairingMethods, iArr, surfaceView2, tVar, zGrantFocusOnStart, audioListenerArr2, microphoneRecorder, yVar, zVar, b0Var, c0Var, d0Var, l0Var, m0Var, audioFocusManager2, carInfo, null, carWifiStub, handler, "-----BEGIN CERTIFICATE-----\nMIIDiTCCAnGgAwIBAgIJAMFO56WkVE1CMA0GCSqGSIb3DQEBBQUAMFsxCzAJBgNV\nBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRYwFAYDVQQHDA1Nb3VudGFpbiBW\naWV3MR8wHQYDVQQKDBZHb29nbGUgQXV0b21vdGl2ZSBMaW5rMB4XDTE0MDYwNjE4\nMjgxOVoXDTQ0MDYwNTE4MjgxOVowWzELMAkGA1UEBhMCVVMxEzARBgNVBAgMCkNh\nbGlmb3JuaWExFjAUBgNVBAcMDU1vdW50YWluIFZpZXcxHzAdBgNVBAoMFkdvb2ds\nZSBBdXRvbW90aXZlIExpbmswggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB\nAQDUH+iIbwwVb74NdI5eBv/ACFmh4ml/NOW7gUVWdYX50n8uQQsHHLCNIhk5VV2H\nhanvAZ/XXHPuVAPadE2HpnNqePKF/RDo4eJo/+rOief8gBYq/Z+OQTZeLdNm+GoI\nHBrEjU4Ms8IdLuFW0jF8LlIRgekjLHpc7duUl3QpwBlmAWQK40T/SZjprlmhyqfJ\ng1rxFdnGbrSibmCsTmb3m6WZyZUyrcwmd7t6q3pHbMABO+o02asPG/YPj/SJo4+i\nfb5/Nk56f3hH9pBiPKQXJnVUdVLKMXSRgydDBsGSBol4C0JL77MNDrMR5jdafJ4j\nmWmsa2+mnzoAv9AxEL9T0LiNAgMBAAGjUDBOMB0GA1UdDgQWBBS5dqvv8DPQiwrM\nfgn8xKR91k7wgjAfBgNVHSMEGDAWgBS5dqvv8DPQiwrMfgn8xKR91k7wgjAMBgNV\nHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4IBAQDKcnBsrbB0Jbz2VGJKP2lwYB6P\ndCTCCpQu7dVp61UQOX+zWfd2hnNMnLs/r1xPO+eyN0vmw7sD05phaIhbXVauKWZi\n9WqWHTaR+9s6CTyBOc1Mye0DMj+4vHt+WLmf0lYjkYUVYvR1EImX8ktXzkVmOqn+\ne30siqlZ8pQpsOgegIKfJ+pNQM8c3eXVv3KFMUgjZW33SziZL8IMsLvSO+1LtH37\nKqbTEMP6XUwVuZopgGvaHU74eT/WSRGlL7vX4OL5/UXXP4qsGH2Zp7uQlErv4H9j\nkMs37UL1vGb4M8RM7Eyu9/RulepSmqZUF+3i+3eby8iGq/3OWk9wgJf7AXnx\n-----END CERTIFICATE-----\n", "-----BEGIN CERTIFICATE-----\nMIIDJTCCAg0CAnZTMA0GCSqGSIb3DQEBCwUAMFsxCzAJBgNVBAYTAlVTMRMwEQYD\nVQQIDApDYWxpZm9ybmlhMRYwFAYDVQQHDA1Nb3VudGFpbiBWaWV3MR8wHQYDVQQK\nDBZHb29nbGUgQXV0b21vdGl2ZSBMaW5rMB4XDTE0MDcwODIyNDkxOFoXDTQ0MDcw\nNzIyNDkxOFowVTELMAkGA1UEBhMCVVMxCzAJBgNVBAgMAkNBMRYwFAYDVQQHDA1N\nb3VudGFpbiBWaWV3MSEwHwYDVQQKDBhHb29nbGUtQW5kcm9pZC1SZWZlcmVuY2Uw\nggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCpqQmvoDW/XsREoj20dRcM\nqJGWh8RlUoHB8CpBpsoqV4nAuvNngkyrdpCf1yg0fVAp2Ugj5eOtzbiN6BxoNHpP\ngiZ64pc+JRlwjmyHpssDaHzP+zHZM7acwMcroNVyynSzpiydEDyx/KPtEz5AsKi7\nc7AYYEtnCmAnK/waN1RT5KdZ9f97D9NeF7Ljdk+IKFROJh7Nv/YGiv9GdPZh/ezS\nm2qhD3gzdh9PYs2cu0u+N17PYpSYB7vXPcYa/gmIVipIJ5RuMQVBWrCgtfzwKPqb\nnJQVykm8LnysK+8RCgmPLN3uhsZx6Whax2TVXb1q68DoiaFPhvMfPr2i/9IKaC69\nAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIpfjQriEtbpUyWLoOOfJsjFN04+ajq9\n1XALCPd+2ixWHZIBJiucrrf0H7OgY7eFnNbU0cRqiDZHI8BtvzFxNi/JgXqCmSHR\nrlaoIsITfqo8KHwcAMs4qWTeLQmkTXBZYz0M3HwC7N1vOGjAJJN5qENIm1Jq+/3c\nfxVg2zhHPKY8qtdgl73YIXb9Xx3WmPCBeRBCKJncj0Rq14uaOjWXRyBgbmdzMXJz\nFGPHx3wN04JqGyfPFlDazXExFQwuAryjoYBRdxPxGufeQCp3am4xxI2oxNIzR+4L\nnOcDhgU1B7sbkVzbKj5gjdOQAmxnKCfBtUNB63a7yzGPYGPIwlBsm54=\n-----END CERTIFICATE-----\n", "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpqQmvoDW/XsRE\noj20dRcMqJGWh8RlUoHB8CpBpsoqV4nAuvNngkyrdpCf1yg0fVAp2Ugj5eOtzbiN\n6BxoNHpPgiZ64pc+JRlwjmyHpssDaHzP+zHZM7acwMcroNVyynSzpiydEDyx/KPt\nEz5AsKi7c7AYYEtnCmAnK/waN1RT5KdZ9f97D9NeF7Ljdk+IKFROJh7Nv/YGiv9G\ndPZh/ezSm2qhD3gzdh9PYs2cu0u+N17PYpSYB7vXPcYa/gmIVipIJ5RuMQVBWrCg\ntfzwKPqbnJQVykm8LnysK+8RCgmPLN3uhsZx6Whax2TVXb1q68DoiaFPhvMfPr2i\n/9IKaC69AgMBAAECggEAbBoW3963IG6jpA+0PW11+EzYJw/u5ZiCsS3z3s0Fd6E7\nVqBIQyXU8FOlpxMSvQ8zqtaVjroGLlIsS88feo4leM+28Qm70I8W/I7jPDPcmxlS\nnbqycnDu5EY5IeVi27eAUI+LUbBs3APb900Rl2p4uKfoBkAlC0yjI5J1GcczZhf7\nRDh1wGgFWZI+ljiSrfpdiA4XmcZ9c7FlO5+NTotZzYeNx1iZprajV1/dlDy8UWEk\nwoWtppeGzUf3HHgl8yay62ub2vo5I1Z7Z98Roq8KC1o7k2IXOrHztCl3X03gMwlI\nF4WQ6Fx5LZDU9dfaPhzkutekVgbtO9SzHgb3NXCZwQKBgQDcSS/OLll18ssjBwc7\nPsdaIFIPlF428Tk8qezEnDmHS6xeztkGnpOlilk9jYSsVUbQmq8MwBSjfMVH95B0\nw0yyfOYqjgTocg4lRCoPuBdnuBY/lU1Lws4FoGsGMNFkHWjHzl622mavkJiDzWA+\nCORPUllS/DnPKJnZk2n0zZRKaQKBgQDFKqvePMx/a/ayQ09UZYxov0vwRyNkHevm\nwEGQjOiHKozWvLqWhCvFtwo+VqHqmCw95cYUpg1GvppB6Lnw2uHgWAWxr3ugDjaR\nYSqG/L7FG6FDF+1sPvBuxNpBmto59TI1fBFmU9VBGLDnr1M27qH3KTWlA3lCsovV\n6Dbk7D+vNQKBgE6GgFYdS6KyFBu+a6OA84t7LgWDvDoVr3Oil1ZW4mMKZL2/OroT\nWUqPkNRSWFMeawn9uhzvc+v7lE/dPk+BNxwBTgMpcTJzRfue2ueTljRQ+Q1daZpy\nLQLwdnZUfLAVk752IGlKXYSEJPoHAiHbBZgJIPJmGy1vqbhXxlOP3SbRAoGBAJoA\nQ2/5gy0/sdf5FRxxmOM0D+dkWTNY36pDnrJ+LR1uUcVkckUghWQQHRMl7aBkLaJH\nN5lnPdV1CN3UHnAPNwBZIFFyJJiWoW6aO3JmNceVVjcmmE7FNlz+qw81GaDNcOMv\nvhN0BYyr8Xl1iwTMDXwVFw6FkRBUjz6L+1yBXxjFAoGAJZcU+tEM1+gHPCqHK2bP\nkfYOCyEAro4zY/VWXZKHgCoPau8Uc9+vFu2QVMb5kVyLTdyRLQKpooR6f8En6utS\n/G15YuqRYqzSTrMBzpRrqIwbgKI9RHNPAvhtVAmXnwsYDPIQ1rrELK6WzTjUySRd\n7gyCoq+DlY7ZKDa7FUz05Ek=\n-----END PRIVATE KEY-----\n", "00:11:22:aa:bb:cc");
                    autoFragment.getResources().getDisplayMetrics();
                    CarLink.f562i.getClass();
                    autoFragment.f647e.mainDisplayVideoSink.addSupportedConfiguration(AutoFragment.d(rectMakeRequestedVideoSize.width(), rectMakeRequestedVideoSize.height(), (int) autoFragment.f655n.getEmulatedDpi(), (int) autoFragment.f655n.getPhysicalDpi(), CarLink.i() ? 25 : 60));
                    autoFragment.f647e.mainDisplayVideoSink.setCodecType(Protos.MediaCodecType.MEDIA_CODEC_VIDEO_H264_BP);
                    AudioSink[] audioSinkArr = autoFragment.f647e.audioSinks;
                    if (audioSinkArr.length == 3) {
                        audioSinkArr[0].addSupportedConfiguration(48000, 16, 2);
                        autoFragment.f647e.audioSinks[0].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_MEDIA);
                        autoFragment.f647e.audioSinks[0].setCodecType(autoFragment.c.isAAcEnabledForMedia() ? Protos.MediaCodecType.MEDIA_CODEC_AUDIO_AAC_LC : Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
                        autoFragment.f647e.audioSinks[1].addSupportedConfiguration(16000, 16, 1);
                        autoFragment.f647e.audioSinks[1].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_GUIDANCE);
                        autoFragment.f647e.audioSinks[1].setCodecType(autoFragment.c.isAAcEnabledForTts() ? Protos.MediaCodecType.MEDIA_CODEC_AUDIO_AAC_LC : Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
                        autoFragment.f647e.audioSinks[2].addSupportedConfiguration(16000, 16, 1);
                        autoFragment.f647e.audioSinks[2].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_SYSTEM_AUDIO);
                        autoFragment.f647e.audioSinks[2].setCodecType(Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
                    } else {
                        audioSinkArr[0].addSupportedConfiguration(16000, 16, 1);
                        autoFragment.f647e.audioSinks[0].setAudioType(Protos.AudioStreamType.AUDIO_STREAM_SYSTEM_AUDIO);
                        autoFragment.f647e.audioSinks[0].setCodecType(Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM);
                    }
                    autoFragment.I.setGalAudioSource(autoFragment.f647e.audioSource);
                    int[] iArrCopyOf = {19, 20, 21, 22, 23, 84, 4, 3, 126, 127, 85, 88, 87, 209, 5, 6, Protos.KeyCode.KEYCODE_NAVIGATION.getNumber(), Protos.KeyCode.KEYCODE_TEL.getNumber()};
                    if (autoFragment.c.isRotaryControllerEnabled()) {
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, 19);
                        iArrCopyOf[iArrCopyOf.length - 1] = Protos.KeyCode.KEYCODE_ROTARY_CONTROLLER.getNumber();
                    }
                    autoFragment.f647e.mainDisplayInputSource.registerKeyCodes(iArrCopyOf);
                    if (autoFragment.c.isTouchScreenEnabled()) {
                        autoFragment.f647e.mainDisplayInputSource.registerTouchScreen(i6, i7, InputSource.TOUCHSCREEN_TYPE_CAPACITIVE);
                    }
                    View viewFindViewById = autoFragment.getView().findViewById(R.id.touchpad);
                    autoFragment.f647e.mainDisplayInputSource.registerTouchPad(viewFindViewById.getWidth(), viewFindViewById.getHeight(), autoFragment.c.isTouchpadNavigationEnabled(), 50, 50, false, false);
                    autoFragment.f647e.mainDisplayInputSource.registerFeedbackEvents(new int[]{InputSource.FEEDBACK_EVENT_SELECT, InputSource.FEEDBACK_EVENT_DRAG_SELECT, InputSource.FEEDBACK_EVENT_FOCUS_CHANGE}, new m(autoFragment));
                    autoFragment.f647e.audioSource.setConfig(autoFragment.I.getSamplingRate(), autoFragment.I.getNumberOfBits(), autoFragment.I.getNumberOfChannels());
                    AudioSink[] audioSinkArr2 = autoFragment.f647e.audioSinks;
                    if (audioSinkArr2.length == 3) {
                        autoFragment.D.registerAudioSink(audioSinkArr2[0]);
                        autoFragment.E.registerAudioSink(autoFragment.f647e.audioSinks[1]);
                        autoFragment.F.registerAudioSink(autoFragment.f647e.audioSinks[2]);
                    } else {
                        autoFragment.F.registerAudioSink(audioSinkArr2[0]);
                    }
                    autoFragment.f647e.start(autoFragment.f646d);
                    autoFragment.f653k.setGalIntegration(autoFragment.f647e);
                    Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "----------------->>>>> startGAL Success!!");
                    IntentControllerBroadcastReceiver intentControllerBroadcastReceiver = new IntentControllerBroadcastReceiver(autoFragment.m, autoFragment.f647e);
                    autoFragment.f666y = intentControllerBroadcastReceiver;
                    k.f825y.f833j.registerReceiver(intentControllerBroadcastReceiver, IntentControllerBroadcastReceiver.getIntentFilter());
                    return;
                }
        }
    }
}
