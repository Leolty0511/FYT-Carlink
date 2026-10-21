package com.google.android.projection.protocol;

import android.os.Trace;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;
import com.google.protobuf.ExtensionRegistryLite;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class VideoSink implements CarServiceProvider, VideoSinkCallbacks {
    private static final boolean DBG_TRACE = true;
    private static final int MAX_UNACKED_FRAMES = 16;
    private static final String TAG = "AHU.VIDEO";
    private final boolean mAutoStartProjection;

    @Nullable
    private Protos.UiConfig mCurrentUiConfig;

    @UsedByNative
    private long mNativeVideoSink;
    private final ProjectionListener mProjectionListener;
    private final List<Protos.VideoConfiguration> mVideoConfigurations = new ArrayList();
    private final int mViewingDistance;
    public static final int VIDEO_FOCUS_NATIVE = Protos.VideoFocusMode.VIDEO_FOCUS_NATIVE.getNumber();
    public static final int VIDEO_FOCUS_PROJECTED = Protos.VideoFocusMode.VIDEO_FOCUS_PROJECTED.getNumber();
    public static final int VIDEO_FOCUS_NATIVE_TRANSIENT = Protos.VideoFocusMode.VIDEO_FOCUS_NATIVE_TRANSIENT.getNumber();
    public static final int VIDEO_FOCUS_PROJECTED_NO_INPUT_FOCUS = Protos.VideoFocusMode.VIDEO_FOCUS_PROJECTED_NO_INPUT_FOCUS.getNumber();

    /* JADX INFO: renamed from: com.google.android.projection.protocol.VideoSink$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType;

        static {
            int[] iArr = new int[Protos.VideoCodecResolutionType.values().length];
            $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType = iArr;
            try {
                iArr[Protos.VideoCodecResolutionType.VIDEO_1280x720.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_1920x1080.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_720x1280.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_1080x1920.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_2560x1440.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_3840x2160.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_1440x2560.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_2160x3840.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[Protos.VideoCodecResolutionType.VIDEO_800x480.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static abstract class ProjectionListener {
        public void onActionTakenNotification(Protos.ActionType actionType) {
        }

        public void onCodecConfig(byte[] bArr) {
        }

        public void onCodecSetup(int i2) {
        }

        public void onProjectionUpdate(VideoFrame videoFrame) {
        }

        public void onSourceVideoConfigChanged(int i2, int i3, Protos.VideoConfiguration videoConfiguration) {
        }

        public void onUpdateUiConfigReply(Protos.UiConfig uiConfig) {
        }

        public void onVideoFocusModeChange(int i2, int i3) {
        }

        public void onVideoFocusRequest(int i2, int i3) {
        }
    }

    public VideoSink(ProjectionListener projectionListener, boolean z2, int i2) {
        this.mProjectionListener = projectionListener;
        this.mAutoStartProjection = z2;
        this.mViewingDistance = i2;
    }

    private native void nativeAckFrames(int i2, int i3);

    private native void nativeAckFramesNew(int i2, long[] jArr);

    private native void nativeAddSupportedConfiguration(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, byte[] bArr);

    private native int nativeInit(int i2, long j2, boolean z2, int i3);

    private native void nativeMaxUnackedFrames(int i2);

    private native void nativeSetCodecType(int i2);

    private native void nativeSetDisplayIdAndType(int i2, int i3);

    private native void nativeSetInitialContentKeyCode(int i2);

    private native void nativeSetMaxUnackedFrames(int i2);

    private native void nativeSetVideoFocus(int i2, boolean z2);

    private native void nativeShutdown();

    private native void nativeUpdateUiConfig(byte[] bArr);

    public void ackFrames(int i2, int i3) {
        Trace.beginSection("ackFrames");
        nativeAckFrames(i2, i3);
        Trace.endSection();
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void actionTakenNotificationCallback(int i2) {
        ProjectionListener projectionListener = this.mProjectionListener;
        Protos.ActionType actionTypeForNumber = Protos.ActionType.forNumber(i2);
        Objects.requireNonNull(actionTypeForNumber, "invalid actionType");
        projectionListener.onActionTakenNotification(actionTypeForNumber);
    }

    public void addSupportedConfiguration(Protos.VideoConfiguration videoConfiguration) {
        this.mVideoConfigurations.add(videoConfiguration);
        nativeAddSupportedConfiguration(videoConfiguration.getCodecResolution().getNumber(), videoConfiguration.getFrameRate() == Protos.VideoFrameRateType.VIDEO_FPS_60 ? 60 : 30, videoConfiguration.getWidthMargin(), videoConfiguration.getHeightMargin(), videoConfiguration.getDensity(), videoConfiguration.getRealDensity(), videoConfiguration.getDecoderAdditionalDepth(), videoConfiguration.hasPixelAspectRatioE4() ? videoConfiguration.getPixelAspectRatioE4() : 10000, videoConfiguration.hasVideoCodecType() ? videoConfiguration.getVideoCodecType().getNumber() : Protos.MediaCodecType.MEDIA_CODEC_VIDEO_H264_BP.getNumber(), videoConfiguration.getUiConfig().toByteArray());
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public int codecConfigCallback(byte[] bArr) {
        this.mProjectionListener.onCodecConfig(bArr);
        return 0;
    }

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        if (nativeInit(i2, j2, this.mAutoStartProjection, this.mViewingDistance) != 0) {
            return false;
        }
        nativeSetMaxUnackedFrames(16);
        return true;
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void dataAvailableCallback(int i2, long j2, ByteBuffer byteBuffer) {
        Trace.beginSection("dataAvailableCallback");
        this.mProjectionListener.onProjectionUpdate(new VideoFrame(i2, j2, byteBuffer));
        Trace.endSection();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Nullable
    public Protos.UiConfig getCurrentUiConfig() {
        return this.mCurrentUiConfig;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeVideoSink;
    }

    @Nullable
    public Protos.VideoConfiguration nearestVideoConfiguration(int i2, int i3, int i4, int i5, int i6, int i7, @Nullable Integer num, @Nullable Float f2) {
        Protos.VideoCodecResolutionType videoCodecResolutionType;
        int iMax;
        int iMax2;
        if (i2 > i3) {
            if (i2 <= 800) {
                videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_800x480;
                iMax = 800 - i2;
                iMax2 = Math.max(0, 480 - i3);
            } else if (i2 <= 1280) {
                videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_1280x720;
                iMax = 1280 - i2;
                iMax2 = Math.max(0, 720 - i3);
            } else if (i2 <= 1920) {
                videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_1920x1080;
                iMax = 1920 - i2;
                iMax2 = Math.max(0, 1080 - i3);
            } else if (i2 <= 2560) {
                videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_2560x1440;
                iMax = 2560 - i2;
                iMax2 = Math.max(0, 1440 - i3);
            } else {
                if (i2 > 3840) {
                    return null;
                }
                videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_3840x2160;
                iMax = 3840 - i2;
                iMax2 = Math.max(0, 2160 - i3);
            }
        } else if (i3 <= 1280) {
            videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_720x1280;
            iMax = Math.max(0, 720 - i2);
            iMax2 = 1280 - i3;
        } else if (i3 <= 1920) {
            videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_1080x1920;
            iMax = Math.max(0, 1080 - i2);
            iMax2 = 1920 - i3;
        } else if (i3 <= 2560) {
            videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_1440x2560;
            iMax = Math.max(0, 1440 - i2);
            iMax2 = 2560 - i3;
        } else {
            if (i3 > 3840) {
                return null;
            }
            videoCodecResolutionType = Protos.VideoCodecResolutionType.VIDEO_2160x3840;
            iMax = Math.max(0, 2160 - i2);
            iMax2 = 3840 - i3;
        }
        Protos.VideoFrameRateType videoFrameRateType = Protos.VideoFrameRateType.VIDEO_FPS_30;
        if (i6 >= 60) {
            videoFrameRateType = Protos.VideoFrameRateType.VIDEO_FPS_60;
        }
        Protos.VideoConfiguration.Builder decoderAdditionalDepth = Protos.VideoConfiguration.newBuilder().setCodecResolution(videoCodecResolutionType).setFrameRate(videoFrameRateType).setWidthMargin(iMax).setHeightMargin(iMax2).setDensity(i4).setRealDensity(i5).setDecoderAdditionalDepth(i7);
        if (num != null) {
            decoderAdditionalDepth.setViewingDistance(num.intValue());
        }
        if (f2 != null) {
            decoderAdditionalDepth.setPixelAspectRatioE4(Math.round(f2.floatValue() * 10000.0f));
        }
        return decoderAdditionalDepth.build();
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void playbackStartCallback(int i2) {
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void playbackStopCallback(int i2) {
    }

    public void setCodecType(Protos.MediaCodecType mediaCodecType) {
        nativeSetCodecType(mediaCodecType.getNumber());
    }

    public void setDisplayIdAndType(int i2, Protos.DisplayType displayType) {
        nativeSetDisplayIdAndType(i2, displayType.getNumber());
    }

    public void setInitialContentKeyCode(Protos.KeyCode keyCode) {
        nativeSetInitialContentKeyCode(keyCode.getNumber());
    }

    public void setVideoFocus(int i2, int i3, boolean z2) {
        this.mProjectionListener.onVideoFocusModeChange(i2, i3);
        nativeSetVideoFocus(i2, z2);
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public int setupCallback(int i2) {
        this.mProjectionListener.onCodecSetup(i2);
        return 0;
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void sourceVideoConfigCallback(int i2) {
        Protos.VideoConfiguration videoConfiguration = this.mVideoConfigurations.get(i2);
        int i3 = 2160;
        int i4 = 480;
        switch (AnonymousClass1.$SwitchMap$com$google$android$projection$proto$Protos$VideoCodecResolutionType[videoConfiguration.getCodecResolution().ordinal()]) {
            case 1:
                i4 = 720;
                i3 = 1280;
                break;
            case 2:
                i4 = 1080;
                i3 = 1920;
                break;
            case 3:
                i3 = 720;
                i4 = 1280;
                break;
            case 4:
                i3 = 1080;
                i4 = 1920;
                break;
            case 5:
                i4 = 1440;
                i3 = 2560;
                break;
            case 6:
                i4 = 2160;
                i3 = 3840;
                break;
            case 7:
                i3 = 1440;
                i4 = 2560;
                break;
            case 8:
                i4 = 3840;
                break;
            case 9:
            default:
                i3 = 800;
                break;
        }
        this.mProjectionListener.onSourceVideoConfigChanged(i3, i4, videoConfiguration);
    }

    public void updateUiConfig(Protos.UiConfig uiConfig) {
        nativeUpdateUiConfig(uiConfig.toByteArray());
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void updateUiConfigReplyCallback(byte[] bArr) {
        try {
            Protos.UiConfig from = Protos.UiConfig.parseFrom(bArr, ExtensionRegistryLite.getEmptyRegistry());
            this.mCurrentUiConfig = from;
            this.mProjectionListener.onUpdateUiConfigReply(from);
        } catch (Exception unused) {
            this.mCurrentUiConfig = null;
            Log.e("AHU.VIDEO", "Failed to decode uiConfig!");
            throw new RuntimeException("Failed to decode uiConfig");
        }
    }

    @Override // com.google.android.projection.protocol.VideoSinkCallbacks
    public void videoFocusCallback(int i2, int i3) {
        this.mProjectionListener.onVideoFocusRequest(i2, i3);
    }

    public void ackFrames(int i2, long[] jArr) {
        Trace.beginSection("ackFrames");
        nativeAckFramesNew(i2, jArr);
        Trace.endSection();
    }

    @Nullable
    public Protos.VideoConfiguration nearestVideoConfiguration(int i2, int i3, int i4, int i5, int i6, int i7) {
        return nearestVideoConfiguration(i2, i3, i4, i5, i6, i7, null, null);
    }
}
