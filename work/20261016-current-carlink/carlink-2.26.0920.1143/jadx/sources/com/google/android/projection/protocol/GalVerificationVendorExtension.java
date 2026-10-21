package com.google.android.projection.protocol;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class GalVerificationVendorExtension implements CarServiceProvider, GalVerificationVendorExtensionCallbacks {
    private static final String TAG = "AHU.GVVE";
    private final AudioFocusManager mAudioFocusManager;
    private final InputSource mInputSource;

    @UsedByNative
    private long mNativeGalVerificationVendorExtension;
    private final SensorSource mSensorSource;
    private final SurfaceHolder.Callback mSurfaceCallback = new SurfaceHolder.Callback() { // from class: com.google.android.projection.protocol.GalVerificationVendorExtension.1
        @Override // android.view.SurfaceHolder.Callback
        public synchronized void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            GalVerificationVendorExtension.this.mSurfaceWidth = i3;
            GalVerificationVendorExtension.this.mSurfaceHeight = i4;
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        }
    };
    private int mSurfaceHeight;
    private final SurfaceView mSurfaceView;
    private int mSurfaceWidth;
    private final VideoSink mVideoSink;

    public interface AudioFocusManager {
        void disablePhoneFocus();

        void enablePhoneFocus();

        void setTransientLossState(int i2);
    }

    public GalVerificationVendorExtension(SensorSource sensorSource, VideoSink videoSink, InputSource inputSource, SurfaceView surfaceView, AudioFocusManager audioFocusManager) {
        this.mSensorSource = sensorSource;
        this.mVideoSink = videoSink;
        this.mInputSource = inputSource;
        this.mSurfaceView = surfaceView;
        this.mAudioFocusManager = audioFocusManager;
    }

    private native boolean nativeCloseChannel();

    private native int nativeInit(int i2, long j2);

    private native void nativeSend(byte[] bArr);

    private native void nativeShutdown();

    public void closeChannel() {
        nativeCloseChannel();
    }

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        SurfaceView surfaceView;
        if (nativeInit(i2, j2) != 0 || (surfaceView = this.mSurfaceView) == null) {
            return false;
        }
        surfaceView.getHolder().addCallback(this.mSurfaceCallback);
        this.mSurfaceWidth = this.mSurfaceView.getWidth();
        this.mSurfaceHeight = this.mSurfaceView.getHeight();
        return true;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            surfaceView.getHolder().removeCallback(this.mSurfaceCallback);
        }
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeGalVerificationVendorExtension;
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtensionCallbacks
    public int injectInputCallback(byte[] bArr) {
        try {
            this.mInputSource.injectForTest(Protos.GalVerificationInjectInput.parseFrom(bArr).getInput());
            return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
        } catch (InvalidProtocolBufferException unused) {
            android.accessibilityservice.c.A(new StringBuilder("Error parsing input data of length: "), bArr.length, "AHU.GVVE");
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtensionCallbacks
    public int injectSensorDataCallback(byte[] bArr) {
        try {
            this.mSensorSource.injectForTest(Protos.GalVerificationSetSensor.parseFrom(bArr).getSensors());
            return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
        } catch (InvalidProtocolBufferException unused) {
            android.accessibilityservice.c.A(new StringBuilder("Error parsing sensor data of length: "), bArr.length, "AHU.GVVE");
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
    }

    public void overrideNightMode(Boolean bool) {
        this.mSensorSource.overrideNightModeData(bool);
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtensionCallbacks
    public int requestAudioFocusChangeCallback(byte[] bArr) {
        try {
            Protos.GalVerificationAudioFocus from = Protos.GalVerificationAudioFocus.parseFrom(bArr);
            if (this.mAudioFocusManager != null) {
                int number = from.getAudioFocusState().getNumber();
                if (number == GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT || number == GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK) {
                    this.mAudioFocusManager.setTransientLossState(number);
                } else if (number == GalReceiver.AUDIO_FOCUS_STATE_LOSS) {
                    this.mAudioFocusManager.disablePhoneFocus();
                } else {
                    if (number != GalReceiver.AUDIO_FOCUS_GAIN) {
                        Log.e("AHU.GVVE", String.format("Unknown Audio focus state requested through debug channel: %d", Integer.valueOf(number)));
                        return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
                    }
                    this.mAudioFocusManager.enablePhoneFocus();
                }
            } else {
                Log.w("AHU.GVVE", "No AudioFocusManager, cannot force phone focus.");
            }
            return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
        } catch (InvalidProtocolBufferException unused) {
            android.accessibilityservice.c.A(new StringBuilder("Error parsing input data of length: "), bArr.length, "AHU.GVVE");
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtensionCallbacks
    public int requestDisplayInformationCallback() {
        nativeSend(Protos.GalVerificationDisplayInformationResponse.newBuilder().setNativeWidth(this.mSurfaceWidth).setNativeHeight(this.mSurfaceHeight).build().toByteArray());
        return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
    }

    public void requestScreenCapture() {
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView == null) {
            Log.e("AHU.GVVE", "Error taking screen capture. The SurfaceView is null.");
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(surfaceView.getWidth(), surfaceView.getHeight(), Bitmap.Config.ARGB_8888);
        surfaceView.draw(new Canvas(bitmapCreateBitmap));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException unused) {
            Log.w("AHU.GVVE", "Error flushing or closing screen capture output stream.");
        }
        nativeSend(Protos.GalVerificationScreenCaptureResponse.newBuilder().setScreenCapture(ByteString.copyFrom(byteArrayOutputStream.toByteArray())).build().toByteArray());
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtensionCallbacks
    public int requestScreenCaptureCallback() {
        requestScreenCapture();
        return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtensionCallbacks
    public int setVideoFocusCallback(byte[] bArr) {
        try {
            this.mVideoSink.setVideoFocus(Protos.GalVerificationVideoFocus.parseFrom(bArr).getVideoFocusMode().getNumber(), -1, true);
            return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
        } catch (InvalidProtocolBufferException unused) {
            android.accessibilityservice.c.A(new StringBuilder("Error parsing sensor data of length: "), bArr.length, "AHU.GVVE");
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
    }
}
