package android.media;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothHealth;
import android.mtp.MtpConstants;
import android.opengl.GLES10;
import android.opengl.GLES20;
import android.os.UserHandle;
import android.os.health.HealthKeys;
import android.util.Log;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.view.SurfaceControl;
import android.view.textclassifier.logging.SmartSelectionEventTracker;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.util.Protocol;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCodecInfo {
    private static final int DEFAULT_MAX_SUPPORTED_INSTANCES = 32;
    private static final int ERROR_NONE_SUPPORTED = 4;
    private static final int ERROR_UNRECOGNIZED = 1;
    private static final int ERROR_UNSUPPORTED = 2;
    private static final int MAX_SUPPORTED_INSTANCES_LIMIT = 256;
    private Map<String, CodecCapabilities> mCaps = new HashMap();
    private boolean mIsEncoder;
    private String mName;
    private static final Range<Integer> POSITIVE_INTEGERS = Range.create(1, Integer.MAX_VALUE);
    private static final Range<Long> POSITIVE_LONGS = Range.create(1L, Long.MAX_VALUE);
    private static final Range<Rational> POSITIVE_RATIONALS = Range.create(new Rational(1, Integer.MAX_VALUE), new Rational(Integer.MAX_VALUE, 1));
    private static final Range<Integer> SIZE_RANGE = Range.create(1, 32768);
    private static final Range<Integer> FRAME_RATE_RANGE = Range.create(0, 960);
    private static final Range<Integer> BITRATE_RANGE = Range.create(0, 500000000);

    public static final class CodecCapabilities {
        public static final int COLOR_Format12bitRGB444 = 3;
        public static final int COLOR_Format16bitARGB1555 = 5;
        public static final int COLOR_Format16bitARGB4444 = 4;
        public static final int COLOR_Format16bitBGR565 = 7;
        public static final int COLOR_Format16bitRGB565 = 6;
        public static final int COLOR_Format18BitBGR666 = 41;
        public static final int COLOR_Format18bitARGB1665 = 9;
        public static final int COLOR_Format18bitRGB666 = 8;
        public static final int COLOR_Format19bitARGB1666 = 10;
        public static final int COLOR_Format24BitABGR6666 = 43;
        public static final int COLOR_Format24BitARGB6666 = 42;
        public static final int COLOR_Format24bitARGB1887 = 13;
        public static final int COLOR_Format24bitBGR888 = 12;
        public static final int COLOR_Format24bitRGB888 = 11;
        public static final int COLOR_Format25bitARGB1888 = 14;
        public static final int COLOR_Format32bitABGR8888 = 2130747392;
        public static final int COLOR_Format32bitARGB8888 = 16;
        public static final int COLOR_Format32bitBGRA8888 = 15;
        public static final int COLOR_Format8bitRGB332 = 2;
        public static final int COLOR_FormatCbYCrY = 27;
        public static final int COLOR_FormatCrYCbY = 28;
        public static final int COLOR_FormatL16 = 36;
        public static final int COLOR_FormatL2 = 33;
        public static final int COLOR_FormatL24 = 37;
        public static final int COLOR_FormatL32 = 38;
        public static final int COLOR_FormatL4 = 34;
        public static final int COLOR_FormatL8 = 35;
        public static final int COLOR_FormatMonochrome = 1;
        public static final int COLOR_FormatRGBAFlexible = 2134288520;
        public static final int COLOR_FormatRGBFlexible = 2134292616;
        public static final int COLOR_FormatRawBayer10bit = 31;
        public static final int COLOR_FormatRawBayer8bit = 30;
        public static final int COLOR_FormatRawBayer8bitcompressed = 32;
        public static final int COLOR_FormatSurface = 2130708361;
        public static final int COLOR_FormatYCbYCr = 25;
        public static final int COLOR_FormatYCrYCb = 26;
        public static final int COLOR_FormatYUV411PackedPlanar = 18;
        public static final int COLOR_FormatYUV411Planar = 17;
        public static final int COLOR_FormatYUV420Flexible = 2135033992;
        public static final int COLOR_FormatYUV420PackedPlanar = 20;
        public static final int COLOR_FormatYUV420PackedSemiPlanar = 39;
        public static final int COLOR_FormatYUV420Planar = 19;
        public static final int COLOR_FormatYUV420SemiPlanar = 21;
        public static final int COLOR_FormatYUV422Flexible = 2135042184;
        public static final int COLOR_FormatYUV422PackedPlanar = 23;
        public static final int COLOR_FormatYUV422PackedSemiPlanar = 40;
        public static final int COLOR_FormatYUV422Planar = 22;
        public static final int COLOR_FormatYUV422SemiPlanar = 24;
        public static final int COLOR_FormatYUV444Flexible = 2135181448;
        public static final int COLOR_FormatYUV444Interleaved = 29;
        public static final int COLOR_QCOM_FormatYUV420SemiPlanar = 2141391872;
        public static final int COLOR_TI_FormatYUV420PackedSemiPlanar = 2130706688;
        private static final String TAG = "CodecCapabilities";
        public int[] colorFormats;
        private AudioCapabilities mAudioCaps;
        private MediaFormat mCapabilitiesInfo;
        private MediaFormat mDefaultFormat;
        private EncoderCapabilities mEncoderCaps;
        int mError;
        private int mFlagsRequired;
        private int mFlagsSupported;
        private int mFlagsVerified;
        private int mMaxSupportedInstances;
        private String mMime;
        private VideoCapabilities mVideoCaps;
        public CodecProfileLevel[] profileLevels;
        public static final String FEATURE_AdaptivePlayback = "adaptive-playback";
        public static final String FEATURE_SecurePlayback = "secure-playback";
        public static final String FEATURE_TunneledPlayback = "tunneled-playback";
        public static final String FEATURE_PartialFrame = "partial-frame";
        private static final Feature[] decoderFeatures = {new Feature(FEATURE_AdaptivePlayback, 1, true), new Feature(FEATURE_SecurePlayback, 2, false), new Feature(FEATURE_TunneledPlayback, 4, false), new Feature(FEATURE_PartialFrame, 8, false)};
        public static final String FEATURE_IntraRefresh = "intra-refresh";
        private static final Feature[] encoderFeatures = {new Feature(FEATURE_IntraRefresh, 1, false)};

        public CodecCapabilities() {
        }

        private boolean checkFeature(String str, int i2) {
            for (Feature feature : getValidFeatures()) {
                if (feature.mName.equals(str)) {
                    return (feature.mValue & i2) != 0;
                }
            }
            return false;
        }

        public static CodecCapabilities createFromProfileLevel(String str, int i2, int i3) {
            CodecProfileLevel codecProfileLevel = new CodecProfileLevel();
            codecProfileLevel.profile = i2;
            codecProfileLevel.level = i3;
            MediaFormat mediaFormat = new MediaFormat();
            mediaFormat.setString(MediaFormat.KEY_MIME, str);
            CodecCapabilities codecCapabilities = new CodecCapabilities(new CodecProfileLevel[]{codecProfileLevel}, new int[0], true, 0, mediaFormat, new MediaFormat());
            if (codecCapabilities.mError != 0) {
                return null;
            }
            return codecCapabilities;
        }

        private Feature[] getValidFeatures() {
            return !isEncoder() ? decoderFeatures : encoderFeatures;
        }

        private boolean isAudio() {
            return this.mAudioCaps != null;
        }

        private boolean isEncoder() {
            return this.mEncoderCaps != null;
        }

        private boolean isVideo() {
            return this.mVideoCaps != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean supportsBitrate(Range<Integer> range, MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            Integer numValueOf = (Integer) map.get(MediaFormat.KEY_MAX_BIT_RATE);
            Integer num = (Integer) map.get(MediaFormat.KEY_BIT_RATE);
            if (num != null) {
                numValueOf = numValueOf != null ? Integer.valueOf(Math.max(num.intValue(), numValueOf.intValue())) : num;
            }
            if (numValueOf == null || numValueOf.intValue() <= 0) {
                return true;
            }
            return range.contains(numValueOf);
        }

        /* JADX WARN: Code duplicated, block: B:43:0x0083  */
        /* JADX WARN: Code duplicated, block: B:58:0x008b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:59:0x00a4 A[SYNTHETIC] */
        private boolean supportsProfileLevel(int i2, Integer num) {
            for (CodecProfileLevel codecProfileLevel : this.profileLevels) {
                if (codecProfileLevel.profile == i2) {
                    if (num == null || this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AAC)) {
                        return true;
                    }
                    if ((!this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_H263) || codecProfileLevel.level == num.intValue() || codecProfileLevel.level != 16 || num.intValue() <= 1) && (!this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_MPEG4) || codecProfileLevel.level == num.intValue() || codecProfileLevel.level != 4 || num.intValue() <= 1)) {
                        if (this.mMime.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_HEVC)) {
                            boolean z2 = (codecProfileLevel.level & 44739242) != 0;
                            if (!((44739242 & num.intValue()) != 0) || z2) {
                                if (codecProfileLevel.level >= num.intValue()) {
                                    if (createFromProfileLevel(this.mMime, i2, codecProfileLevel.level) == null) {
                                        return true;
                                    }
                                }
                            }
                        } else if (codecProfileLevel.level >= num.intValue()) {
                            return createFromProfileLevel(this.mMime, i2, codecProfileLevel.level) == null || createFromProfileLevel(this.mMime, i2, num.intValue()) != null;
                        }
                    }
                }
            }
            return false;
        }

        public CodecCapabilities dup() {
            CodecProfileLevel[] codecProfileLevelArr = this.profileLevels;
            CodecProfileLevel[] codecProfileLevelArr2 = (CodecProfileLevel[]) Arrays.copyOf(codecProfileLevelArr, codecProfileLevelArr.length);
            int[] iArr = this.colorFormats;
            return new CodecCapabilities(codecProfileLevelArr2, Arrays.copyOf(iArr, iArr.length), isEncoder(), this.mFlagsVerified, this.mDefaultFormat, this.mCapabilitiesInfo);
        }

        public AudioCapabilities getAudioCapabilities() {
            return this.mAudioCaps;
        }

        public MediaFormat getDefaultFormat() {
            return this.mDefaultFormat;
        }

        public EncoderCapabilities getEncoderCapabilities() {
            return this.mEncoderCaps;
        }

        public int getMaxSupportedInstances() {
            return this.mMaxSupportedInstances;
        }

        public String getMimeType() {
            return this.mMime;
        }

        public VideoCapabilities getVideoCapabilities() {
            return this.mVideoCaps;
        }

        public final boolean isFeatureRequired(String str) {
            return checkFeature(str, this.mFlagsRequired);
        }

        public final boolean isFeatureSupported(String str) {
            return checkFeature(str, this.mFlagsSupported);
        }

        public final boolean isFormatSupported(MediaFormat mediaFormat) {
            int i2;
            Map<String, Object> map = mediaFormat.getMap();
            String str = (String) map.get(MediaFormat.KEY_MIME);
            if (str != null && !this.mMime.equalsIgnoreCase(str)) {
                return false;
            }
            for (Feature feature : getValidFeatures()) {
                Integer num = (Integer) map.get(MediaFormat.KEY_FEATURE_ + feature.mName);
                if (num != null && ((num.intValue() == 1 && !isFeatureSupported(feature.mName)) || (num.intValue() == 0 && isFeatureRequired(feature.mName)))) {
                    return false;
                }
            }
            Integer num2 = (Integer) map.get(MediaFormat.KEY_PROFILE);
            Integer num3 = (Integer) map.get("level");
            if (num2 != null) {
                if (!supportsProfileLevel(num2.intValue(), num3)) {
                    return false;
                }
                int i3 = 0;
                for (CodecProfileLevel codecProfileLevel : this.profileLevels) {
                    if (codecProfileLevel.profile == num2.intValue() && (i2 = codecProfileLevel.level) > i3) {
                        i3 = i2;
                    }
                }
                CodecCapabilities codecCapabilitiesCreateFromProfileLevel = createFromProfileLevel(this.mMime, num2.intValue(), i3);
                HashMap map2 = new HashMap(map);
                map2.remove(MediaFormat.KEY_PROFILE);
                MediaFormat mediaFormat2 = new MediaFormat(map2);
                if (codecCapabilitiesCreateFromProfileLevel != null && !codecCapabilitiesCreateFromProfileLevel.isFormatSupported(mediaFormat2)) {
                    return false;
                }
            }
            AudioCapabilities audioCapabilities = this.mAudioCaps;
            if (audioCapabilities != null && !audioCapabilities.supportsFormat(mediaFormat)) {
                return false;
            }
            VideoCapabilities videoCapabilities = this.mVideoCaps;
            if (videoCapabilities != null && !videoCapabilities.supportsFormat(mediaFormat)) {
                return false;
            }
            EncoderCapabilities encoderCapabilities = this.mEncoderCaps;
            return encoderCapabilities == null || encoderCapabilities.supportsFormat(mediaFormat);
        }

        public boolean isRegular() {
            for (Feature feature : getValidFeatures()) {
                if (!feature.mDefault && isFeatureRequired(feature.mName)) {
                    return false;
                }
            }
            return true;
        }

        public String[] validFeatures() {
            Feature[] validFeatures = getValidFeatures();
            int length = validFeatures.length;
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                strArr[i2] = validFeatures[i2].mName;
            }
            return strArr;
        }

        public CodecCapabilities(CodecProfileLevel[] codecProfileLevelArr, int[] iArr, boolean z2, int i2, Map<String, Object> map, Map<String, Object> map2) {
            this(codecProfileLevelArr, iArr, z2, i2, new MediaFormat(map), new MediaFormat(map2));
        }

        public CodecCapabilities(CodecProfileLevel[] codecProfileLevelArr, int[] iArr, boolean z2, int i2, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
            Map<String, Object> map = mediaFormat2.getMap();
            this.colorFormats = iArr;
            this.mFlagsVerified = i2;
            this.mDefaultFormat = mediaFormat;
            this.mCapabilitiesInfo = mediaFormat2;
            String string = mediaFormat.getString(MediaFormat.KEY_MIME);
            this.mMime = string;
            if (codecProfileLevelArr.length == 0 && string.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_VP9)) {
                CodecProfileLevel codecProfileLevel = new CodecProfileLevel();
                codecProfileLevel.profile = 1;
                codecProfileLevel.level = VideoCapabilities.equivalentVP9Level(mediaFormat2);
                codecProfileLevelArr = new CodecProfileLevel[]{codecProfileLevel};
            }
            this.profileLevels = codecProfileLevelArr;
            if (this.mMime.toLowerCase().startsWith("audio/")) {
                AudioCapabilities audioCapabilitiesCreate = AudioCapabilities.create(mediaFormat2, this);
                this.mAudioCaps = audioCapabilitiesCreate;
                audioCapabilitiesCreate.setDefaultFormat(this.mDefaultFormat);
            } else if (this.mMime.toLowerCase().startsWith("video/")) {
                this.mVideoCaps = VideoCapabilities.create(mediaFormat2, this);
            }
            if (z2) {
                EncoderCapabilities encoderCapabilitiesCreate = EncoderCapabilities.create(mediaFormat2, this);
                this.mEncoderCaps = encoderCapabilitiesCreate;
                encoderCapabilitiesCreate.setDefaultFormat(this.mDefaultFormat);
            }
            this.mMaxSupportedInstances = Utils.parseIntSafely(MediaCodecList.getGlobalSettings().get("max-concurrent-instances"), 32);
            this.mMaxSupportedInstances = ((Integer) Range.create(1, 256).clamp(Integer.valueOf(Utils.parseIntSafely(map.get("max-concurrent-instances"), this.mMaxSupportedInstances)))).intValue();
            for (Feature feature : getValidFeatures()) {
                String str = MediaFormat.KEY_FEATURE_ + feature.mName;
                Integer num = (Integer) map.get(str);
                if (num != null) {
                    if (num.intValue() > 0) {
                        this.mFlagsRequired |= feature.mValue;
                    }
                    this.mFlagsSupported = feature.mValue | this.mFlagsSupported;
                    this.mDefaultFormat.setInteger(str, 1);
                }
            }
        }
    }

    public static final class CodecProfileLevel {
        public static final int AACObjectELD = 39;
        public static final int AACObjectERLC = 17;
        public static final int AACObjectERScalable = 20;
        public static final int AACObjectHE = 5;
        public static final int AACObjectHE_PS = 29;
        public static final int AACObjectLC = 2;
        public static final int AACObjectLD = 23;
        public static final int AACObjectLTP = 4;
        public static final int AACObjectMain = 1;
        public static final int AACObjectSSR = 3;
        public static final int AACObjectScalable = 6;
        public static final int AVCLevel1 = 1;
        public static final int AVCLevel11 = 4;
        public static final int AVCLevel12 = 8;
        public static final int AVCLevel13 = 16;
        public static final int AVCLevel1b = 2;
        public static final int AVCLevel2 = 32;
        public static final int AVCLevel21 = 64;
        public static final int AVCLevel22 = 128;
        public static final int AVCLevel3 = 256;
        public static final int AVCLevel31 = 512;
        public static final int AVCLevel32 = 1024;
        public static final int AVCLevel4 = 2048;
        public static final int AVCLevel41 = 4096;
        public static final int AVCLevel42 = 8192;
        public static final int AVCLevel5 = 16384;
        public static final int AVCLevel51 = 32768;
        public static final int AVCLevel52 = 65536;
        public static final int AVCProfileBaseline = 1;
        public static final int AVCProfileConstrainedBaseline = 65536;
        public static final int AVCProfileConstrainedHigh = 524288;
        public static final int AVCProfileExtended = 4;
        public static final int AVCProfileHigh = 8;
        public static final int AVCProfileHigh10 = 16;
        public static final int AVCProfileHigh422 = 32;
        public static final int AVCProfileHigh444 = 64;
        public static final int AVCProfileMain = 2;
        public static final int DolbyVisionLevelFhd24 = 4;
        public static final int DolbyVisionLevelFhd30 = 8;
        public static final int DolbyVisionLevelFhd60 = 16;
        public static final int DolbyVisionLevelHd24 = 1;
        public static final int DolbyVisionLevelHd30 = 2;
        public static final int DolbyVisionLevelUhd24 = 32;
        public static final int DolbyVisionLevelUhd30 = 64;
        public static final int DolbyVisionLevelUhd48 = 128;
        public static final int DolbyVisionLevelUhd60 = 256;
        public static final int DolbyVisionProfileDvavPen = 2;
        public static final int DolbyVisionProfileDvavPer = 1;
        public static final int DolbyVisionProfileDvavSe = 512;
        public static final int DolbyVisionProfileDvheDen = 8;
        public static final int DolbyVisionProfileDvheDer = 4;
        public static final int DolbyVisionProfileDvheDtb = 128;
        public static final int DolbyVisionProfileDvheDth = 64;
        public static final int DolbyVisionProfileDvheDtr = 16;
        public static final int DolbyVisionProfileDvheSt = 256;
        public static final int DolbyVisionProfileDvheStn = 32;
        public static final int H263Level10 = 1;
        public static final int H263Level20 = 2;
        public static final int H263Level30 = 4;
        public static final int H263Level40 = 8;
        public static final int H263Level45 = 16;
        public static final int H263Level50 = 32;
        public static final int H263Level60 = 64;
        public static final int H263Level70 = 128;
        public static final int H263ProfileBackwardCompatible = 4;
        public static final int H263ProfileBaseline = 1;
        public static final int H263ProfileH320Coding = 2;
        public static final int H263ProfileHighCompression = 32;
        public static final int H263ProfileHighLatency = 256;
        public static final int H263ProfileISWV2 = 8;
        public static final int H263ProfileISWV3 = 16;
        public static final int H263ProfileInterlace = 128;
        public static final int H263ProfileInternet = 64;
        public static final int HEVCHighTierLevel1 = 2;
        public static final int HEVCHighTierLevel2 = 8;
        public static final int HEVCHighTierLevel21 = 32;
        public static final int HEVCHighTierLevel3 = 128;
        public static final int HEVCHighTierLevel31 = 512;
        public static final int HEVCHighTierLevel4 = 2048;
        public static final int HEVCHighTierLevel41 = 8192;
        public static final int HEVCHighTierLevel5 = 32768;
        public static final int HEVCHighTierLevel51 = 131072;
        public static final int HEVCHighTierLevel52 = 524288;
        public static final int HEVCHighTierLevel6 = 2097152;
        public static final int HEVCHighTierLevel61 = 8388608;
        public static final int HEVCHighTierLevel62 = 33554432;
        private static final int HEVCHighTierLevels = 44739242;
        public static final int HEVCMainTierLevel1 = 1;
        public static final int HEVCMainTierLevel2 = 4;
        public static final int HEVCMainTierLevel21 = 16;
        public static final int HEVCMainTierLevel3 = 64;
        public static final int HEVCMainTierLevel31 = 256;
        public static final int HEVCMainTierLevel4 = 1024;
        public static final int HEVCMainTierLevel41 = 4096;
        public static final int HEVCMainTierLevel5 = 16384;
        public static final int HEVCMainTierLevel51 = 65536;
        public static final int HEVCMainTierLevel52 = 262144;
        public static final int HEVCMainTierLevel6 = 1048576;
        public static final int HEVCMainTierLevel61 = 4194304;
        public static final int HEVCMainTierLevel62 = 16777216;
        public static final int HEVCProfileMain = 1;
        public static final int HEVCProfileMain10 = 2;
        public static final int HEVCProfileMain10HDR10 = 4096;
        public static final int MPEG2LevelH14 = 2;
        public static final int MPEG2LevelHL = 3;
        public static final int MPEG2LevelHP = 4;
        public static final int MPEG2LevelLL = 0;
        public static final int MPEG2LevelML = 1;
        public static final int MPEG2Profile422 = 2;
        public static final int MPEG2ProfileHigh = 5;
        public static final int MPEG2ProfileMain = 1;
        public static final int MPEG2ProfileSNR = 3;
        public static final int MPEG2ProfileSimple = 0;
        public static final int MPEG2ProfileSpatial = 4;
        public static final int MPEG4Level0 = 1;
        public static final int MPEG4Level0b = 2;
        public static final int MPEG4Level1 = 4;
        public static final int MPEG4Level2 = 8;
        public static final int MPEG4Level3 = 16;
        public static final int MPEG4Level3b = 24;
        public static final int MPEG4Level4 = 32;
        public static final int MPEG4Level4a = 64;
        public static final int MPEG4Level5 = 128;
        public static final int MPEG4Level6 = 256;
        public static final int MPEG4ProfileAdvancedCoding = 4096;
        public static final int MPEG4ProfileAdvancedCore = 8192;
        public static final int MPEG4ProfileAdvancedRealTime = 1024;
        public static final int MPEG4ProfileAdvancedScalable = 16384;
        public static final int MPEG4ProfileAdvancedSimple = 32768;
        public static final int MPEG4ProfileBasicAnimated = 256;
        public static final int MPEG4ProfileCore = 4;
        public static final int MPEG4ProfileCoreScalable = 2048;
        public static final int MPEG4ProfileHybrid = 512;
        public static final int MPEG4ProfileMain = 8;
        public static final int MPEG4ProfileNbit = 16;
        public static final int MPEG4ProfileScalableTexture = 32;
        public static final int MPEG4ProfileSimple = 1;
        public static final int MPEG4ProfileSimpleFBA = 128;
        public static final int MPEG4ProfileSimpleFace = 64;
        public static final int MPEG4ProfileSimpleScalable = 2;
        public static final int VP8Level_Version0 = 1;
        public static final int VP8Level_Version1 = 2;
        public static final int VP8Level_Version2 = 4;
        public static final int VP8Level_Version3 = 8;
        public static final int VP8ProfileMain = 1;
        public static final int VP9Level1 = 1;
        public static final int VP9Level11 = 2;
        public static final int VP9Level2 = 4;
        public static final int VP9Level21 = 8;
        public static final int VP9Level3 = 16;
        public static final int VP9Level31 = 32;
        public static final int VP9Level4 = 64;
        public static final int VP9Level41 = 128;
        public static final int VP9Level5 = 256;
        public static final int VP9Level51 = 512;
        public static final int VP9Level52 = 1024;
        public static final int VP9Level6 = 2048;
        public static final int VP9Level61 = 4096;
        public static final int VP9Level62 = 8192;
        public static final int VP9Profile0 = 1;
        public static final int VP9Profile1 = 2;
        public static final int VP9Profile2 = 4;
        public static final int VP9Profile2HDR = 4096;
        public static final int VP9Profile3 = 8;
        public static final int VP9Profile3HDR = 8192;
        public int level;
        public int profile;
    }

    public static final class EncoderCapabilities {
        public static final int BITRATE_MODE_CBR = 2;
        public static final int BITRATE_MODE_CQ = 0;
        public static final int BITRATE_MODE_VBR = 1;
        private static final Feature[] bitrates = {new Feature("VBR", 1, true), new Feature("CBR", 2, false), new Feature("CQ", 0, false)};
        private int mBitControl;
        private Range<Integer> mComplexityRange;
        private Integer mDefaultComplexity;
        private Integer mDefaultQuality;
        private CodecCapabilities mParent;
        private Range<Integer> mQualityRange;
        private String mQualityScale;

        private EncoderCapabilities() {
        }

        private void applyLevelLimits() {
            String mimeType = this.mParent.getMimeType();
            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_FLAC)) {
                this.mComplexityRange = Range.create(0, 8);
                this.mBitControl = 1;
            } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_NB) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_WB) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_ALAW) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_MLAW) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_MSGSM)) {
                this.mBitControl = 4;
            }
        }

        public static EncoderCapabilities create(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            EncoderCapabilities encoderCapabilities = new EncoderCapabilities();
            encoderCapabilities.init(mediaFormat, codecCapabilities);
            return encoderCapabilities;
        }

        private static int parseBitrateMode(String str) {
            for (Feature feature : bitrates) {
                if (feature.mName.equalsIgnoreCase(str)) {
                    return feature.mValue;
                }
            }
            return 0;
        }

        private void parseFromInfo(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            if (mediaFormat.containsKey("complexity-range")) {
                this.mComplexityRange = Utils.parseIntRange(mediaFormat.getString("complexity-range"), this.mComplexityRange);
            }
            if (mediaFormat.containsKey("quality-range")) {
                this.mQualityRange = Utils.parseIntRange(mediaFormat.getString("quality-range"), this.mQualityRange);
            }
            if (mediaFormat.containsKey("feature-bitrate-modes")) {
                for (String str : mediaFormat.getString("feature-bitrate-modes").split(",")) {
                    this.mBitControl = parseBitrateMode(str) | this.mBitControl;
                }
            }
            try {
                this.mDefaultComplexity = Integer.valueOf(Integer.parseInt((String) map.get("complexity-default")));
            } catch (NumberFormatException unused) {
            }
            try {
                this.mDefaultQuality = Integer.valueOf(Integer.parseInt((String) map.get("quality-default")));
            } catch (NumberFormatException unused2) {
            }
            this.mQualityScale = (String) map.get("quality-scale");
        }

        private boolean supports(Integer num, Integer num2, Integer num3) {
            boolean zContains = num != null ? this.mComplexityRange.contains(num) : true;
            if (zContains && num2 != null) {
                zContains = this.mQualityRange.contains(num2);
            }
            if (!zContains || num3 == null) {
                return zContains;
            }
            for (CodecProfileLevel codecProfileLevel : this.mParent.profileLevels) {
                if (codecProfileLevel.profile == num3.intValue()) {
                    num3 = null;
                    break;
                }
            }
            return num3 == null;
        }

        public Range<Integer> getComplexityRange() {
            return this.mComplexityRange;
        }

        public Range<Integer> getQualityRange() {
            return this.mQualityRange;
        }

        public void init(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            this.mParent = codecCapabilities;
            this.mComplexityRange = Range.create(0, 0);
            this.mQualityRange = Range.create(0, 0);
            this.mBitControl = 2;
            applyLevelLimits();
            parseFromInfo(mediaFormat);
        }

        public boolean isBitrateModeSupported(int i2) {
            for (Feature feature : bitrates) {
                if (i2 == feature.mValue) {
                    return ((1 << i2) & this.mBitControl) != 0;
                }
            }
            return false;
        }

        public void setDefaultFormat(MediaFormat mediaFormat) {
            Integer num;
            Integer num2;
            if (!((Integer) this.mQualityRange.getUpper()).equals(this.mQualityRange.getLower()) && (num2 = this.mDefaultQuality) != null) {
                mediaFormat.setInteger(MediaFormat.KEY_QUALITY, num2.intValue());
            }
            if (!((Integer) this.mComplexityRange.getUpper()).equals(this.mComplexityRange.getLower()) && (num = this.mDefaultComplexity) != null) {
                mediaFormat.setInteger(MediaFormat.KEY_COMPLEXITY, num.intValue());
            }
            for (Feature feature : bitrates) {
                int i2 = this.mBitControl;
                int i3 = feature.mValue;
                if ((i2 & (1 << i3)) != 0) {
                    mediaFormat.setInteger(MediaFormat.KEY_BITRATE_MODE, i3);
                    return;
                }
            }
        }

        public boolean supportsFormat(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            String mimeType = this.mParent.getMimeType();
            Integer num = (Integer) map.get(MediaFormat.KEY_BITRATE_MODE);
            if (num != null && !isBitrateModeSupported(num.intValue())) {
                return false;
            }
            Integer num2 = (Integer) map.get(MediaFormat.KEY_COMPLEXITY);
            if (MediaFormat.MIMETYPE_AUDIO_FLAC.equalsIgnoreCase(mimeType)) {
                Integer num3 = (Integer) map.get(MediaFormat.KEY_FLAC_COMPRESSION_LEVEL);
                if (num2 == null) {
                    num2 = num3;
                } else if (num3 != null && !num2.equals(num3)) {
                    throw new IllegalArgumentException("conflicting values for complexity and flac-compression-level");
                }
            }
            Integer num4 = (Integer) map.get(MediaFormat.KEY_PROFILE);
            if (MediaFormat.MIMETYPE_AUDIO_AAC.equalsIgnoreCase(mimeType)) {
                Integer num5 = (Integer) map.get(MediaFormat.KEY_AAC_PROFILE);
                if (num4 == null) {
                    num4 = num5;
                } else if (num5 != null && !num5.equals(num4)) {
                    throw new IllegalArgumentException("conflicting values for profile and aac-profile");
                }
            }
            return supports(num2, (Integer) map.get(MediaFormat.KEY_QUALITY), num4);
        }
    }

    public static class Feature {
        public boolean mDefault;
        public String mName;
        public int mValue;

        public Feature(String str, int i2, boolean z2) {
            this.mName = str;
            this.mValue = i2;
            this.mDefault = z2;
        }
    }

    public static final class VideoCapabilities {
        private static final String TAG = "VideoCapabilities";
        private boolean mAllowMbOverride;
        private Range<Rational> mAspectRatioRange;
        private Range<Integer> mBitrateRange;
        private Range<Rational> mBlockAspectRatioRange;
        private Range<Integer> mBlockCountRange;
        private int mBlockHeight;
        private int mBlockWidth;
        private Range<Long> mBlocksPerSecondRange;
        private Range<Integer> mFrameRateRange;
        private int mHeightAlignment;
        private Range<Integer> mHeightRange;
        private Range<Integer> mHorizontalBlockRange;
        private Map<Size, Range<Long>> mMeasuredFrameRates;
        private CodecCapabilities mParent;
        private int mSmallerDimensionUpperLimit;
        private Range<Integer> mVerticalBlockRange;
        private int mWidthAlignment;
        private Range<Integer> mWidthRange;

        private VideoCapabilities() {
        }

        private void applyAlignment(int i2, int i3) {
            MediaCodecInfo.checkPowerOfTwo(i2, "widthAlignment must be a power of two");
            MediaCodecInfo.checkPowerOfTwo(i3, "heightAlignment must be a power of two");
            int i4 = this.mBlockWidth;
            if (i2 > i4 || i3 > this.mBlockHeight) {
                applyBlockLimits(Math.max(i2, i4), Math.max(i3, this.mBlockHeight), MediaCodecInfo.POSITIVE_INTEGERS, MediaCodecInfo.POSITIVE_LONGS, MediaCodecInfo.POSITIVE_RATIONALS);
            }
            this.mWidthAlignment = Math.max(i2, this.mWidthAlignment);
            this.mHeightAlignment = Math.max(i3, this.mHeightAlignment);
            this.mWidthRange = Utils.alignRange(this.mWidthRange, this.mWidthAlignment);
            this.mHeightRange = Utils.alignRange(this.mHeightRange, this.mHeightAlignment);
        }

        private void applyBlockLimits(int i2, int i3, Range<Integer> range, Range<Long> range2, Range<Rational> range3) {
            MediaCodecInfo.checkPowerOfTwo(i2, "blockWidth must be a power of two");
            MediaCodecInfo.checkPowerOfTwo(i3, "blockHeight must be a power of two");
            int iMax = Math.max(i2, this.mBlockWidth);
            int iMax2 = Math.max(i3, this.mBlockHeight);
            int i4 = iMax * iMax2;
            int i5 = (i4 / this.mBlockWidth) / this.mBlockHeight;
            if (i5 != 1) {
                this.mBlockCountRange = Utils.factorRange(this.mBlockCountRange, i5);
                this.mBlocksPerSecondRange = Utils.factorRange(this.mBlocksPerSecondRange, i5);
                this.mBlockAspectRatioRange = Utils.scaleRange(this.mBlockAspectRatioRange, iMax2 / this.mBlockHeight, iMax / this.mBlockWidth);
                this.mHorizontalBlockRange = Utils.factorRange(this.mHorizontalBlockRange, iMax / this.mBlockWidth);
                this.mVerticalBlockRange = Utils.factorRange(this.mVerticalBlockRange, iMax2 / this.mBlockHeight);
            }
            int i6 = (i4 / i2) / i3;
            if (i6 != 1) {
                range = Utils.factorRange(range, i6);
                range2 = Utils.factorRange(range2, i6);
                range3 = Utils.scaleRange(range3, iMax2 / i3, iMax / i2);
            }
            this.mBlockCountRange = this.mBlockCountRange.intersect(range);
            this.mBlocksPerSecondRange = this.mBlocksPerSecondRange.intersect(range2);
            this.mBlockAspectRatioRange = this.mBlockAspectRatioRange.intersect(range3);
            this.mBlockWidth = iMax;
            this.mBlockHeight = iMax2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:108:0x02ff A[PHI: r16
  0x02ff: PHI (r16v1 int) = (r16v0 int), (r16v5 int) binds: [B:106:0x02d8, B:91:0x0259] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:232:0x079a  */
        /* JADX WARN: Code duplicated, block: B:250:0x07d5  */
        /* JADX WARN: Code duplicated, block: B:251:0x07da  */
        /* JADX WARN: Code duplicated, block: B:369:0x0188 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:55:0x014a  */
        /* JADX WARN: Code duplicated, block: B:56:0x014d  */
        /* JADX WARN: Code duplicated, block: B:65:0x0184  */
        /* JADX WARN: Failed to find 'out' block for switch in B:121:0x03a3. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:285:0x0917. Please report as an issue. */
        private void applyLevelLimits() {
            Integer num;
            CodecProfileLevel[] codecProfileLevelArr;
            int i2;
            int i3;
            double d2;
            int i4;
            int i5;
            int i6;
            int i7;
            int iMax;
            long j2;
            int i8;
            int i9;
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            String str;
            CodecProfileLevel[] codecProfileLevelArr2;
            int i17;
            int i18;
            int i19;
            int i20;
            int i21;
            int i22;
            boolean z2;
            int i23;
            int i24;
            int i25;
            int i26;
            int i27;
            boolean z3;
            int i28;
            int i29;
            CodecProfileLevel[] codecProfileLevelArr3;
            String str2;
            String str3;
            int i30;
            int i31;
            int i32;
            int i33;
            int i34;
            int i35;
            int i36;
            boolean z4;
            boolean z5;
            int i37;
            int i38;
            int i39;
            int i40;
            int i41;
            int i42;
            int i43;
            int i44;
            int i45;
            int i46;
            boolean z6;
            int i47;
            int i48;
            int i49;
            int i50;
            int i51;
            int i52;
            int i53;
            int i54;
            boolean z7;
            int i55;
            int i56;
            int i57;
            int i58;
            int i59;
            int i60;
            CodecCapabilities codecCapabilities = this.mParent;
            CodecProfileLevel[] codecProfileLevelArr4 = codecCapabilities.profileLevels;
            String mimeType = codecCapabilities.getMimeType();
            boolean zEqualsIgnoreCase = mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_AVC);
            String str4 = " for ";
            int i61 = 2;
            String str5 = TAG;
            int i62 = 1;
            Integer num2 = 1;
            if (zEqualsIgnoreCase) {
                int length = codecProfileLevelArr4.length;
                long jMax = 1485;
                int iMax2 = 64000;
                int iMax3 = 99;
                int i63 = 0;
                i3 = 4;
                int iMax4 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                while (i63 < length) {
                    CodecProfileLevel codecProfileLevel = codecProfileLevelArr4[i63];
                    int i64 = codecProfileLevel.level;
                    if (i64 != i62) {
                        if (i64 != i61) {
                            switch (i64) {
                                case 4:
                                    i50 = PathInterpolatorCompat.MAX_NUM_POINTS;
                                    i56 = 192;
                                    i57 = 900;
                                    i52 = i56;
                                    i53 = i57;
                                    i51 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                    break;
                                case 8:
                                    i50 = BluetoothHealth.HEALTH_OPERATION_SUCCESS;
                                    i56 = MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION;
                                    i57 = 2376;
                                    i52 = i56;
                                    i53 = i57;
                                    i51 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                    break;
                                case 16:
                                    i58 = 768;
                                    i52 = i58;
                                    i53 = 2376;
                                    i50 = 11880;
                                    i51 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                    break;
                                case 32:
                                    i58 = 2000;
                                    i52 = i58;
                                    i53 = 2376;
                                    i50 = 11880;
                                    i51 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                    break;
                                case 64:
                                    i50 = 19800;
                                    i51 = MetricsProto.MetricsEvent.DEFAULT_AUTOFILL_PICKER;
                                    i59 = 4000;
                                    i60 = 4752;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 128:
                                    i50 = 20250;
                                    i51 = 1620;
                                    i59 = 4000;
                                    i60 = 8100;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 256:
                                    i50 = 40500;
                                    i51 = 1620;
                                    i59 = 10000;
                                    i60 = 8100;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 512:
                                    i50 = 108000;
                                    i51 = 3600;
                                    i59 = 14000;
                                    i60 = 18000;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 1024:
                                    i50 = 216000;
                                    i51 = 5120;
                                    i59 = 20000;
                                    i60 = MtpConstants.DEVICE_PROPERTY_UNDEFINED;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 2048:
                                    i50 = 245760;
                                    i51 = 8192;
                                    i59 = 20000;
                                    i60 = 32768;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 4096:
                                    i50 = 245760;
                                    i51 = 8192;
                                    i59 = 50000;
                                    i60 = 32768;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 8192:
                                    i50 = 522240;
                                    i51 = GLES10.GL_TEXTURE_ENV_MODE;
                                    i59 = 50000;
                                    i60 = GLES20.GL_STENCIL_BACK_FUNC;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 16384:
                                    i50 = 589824;
                                    i51 = 22080;
                                    i59 = 135000;
                                    i60 = 110400;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 32768:
                                    i50 = SurfaceControl.FX_SURFACE_MASK;
                                    i51 = 36864;
                                    i59 = 240000;
                                    i60 = 184320;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                case 65536:
                                    i50 = 2073600;
                                    i51 = 36864;
                                    i59 = 240000;
                                    i60 = 184320;
                                    i52 = i59;
                                    i53 = i60;
                                    length = length;
                                    break;
                                default:
                                    Log.w(TAG, "Unrecognized level " + codecProfileLevel.level + " for " + mimeType);
                                    i3 |= 1;
                                    length = length;
                                    i50 = 0;
                                    i51 = 0;
                                    i52 = 0;
                                    i53 = 0;
                                    break;
                            }
                        } else {
                            i50 = 1485;
                            i51 = 99;
                            i52 = 128;
                        }
                        i54 = codecProfileLevel.profile;
                        if (i54 != i62 || i54 == 2) {
                            z7 = true;
                            i55 = i52 * 1000;
                        } else {
                            if (i54 != 4) {
                                if (i54 == 8) {
                                    i55 = i52 * 1250;
                                } else if (i54 != 16) {
                                    if (i54 != 32 && i54 != 64) {
                                        if (i54 != 65536) {
                                            if (i54 != 524288) {
                                                Log.w(TAG, "Unrecognized profile " + codecProfileLevel.profile + " for " + mimeType);
                                                i3 |= 1;
                                                i55 = i52 * 1000;
                                            } else {
                                                i55 = i52 * 1250;
                                            }
                                        }
                                        z7 = true;
                                    }
                                    i55 = i52 * 1000;
                                } else {
                                    i55 = i52 * PathInterpolatorCompat.MAX_NUM_POINTS;
                                }
                                num2 = num2;
                                z7 = true;
                            }
                            Log.w(TAG, "Unsupported profile " + codecProfileLevel.profile + " for " + mimeType);
                            i3 |= 2;
                            z7 = false;
                            i55 = i52 * 1000;
                        }
                        if (z7) {
                            i3 &= -5;
                        }
                        jMax = Math.max(i50, jMax);
                        iMax3 = Math.max(i51, iMax3);
                        iMax2 = Math.max(i55, iMax2);
                        iMax4 = Math.max(iMax4, i53);
                        i63++;
                        length = length;
                        num2 = num2;
                        i61 = 2;
                        i62 = 1;
                    } else {
                        i50 = 1485;
                        i51 = 99;
                        i52 = 64;
                    }
                    i53 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                    i54 = codecProfileLevel.profile;
                    if (i54 != i62) {
                        z7 = true;
                        i55 = i52 * 1000;
                    } else {
                        z7 = true;
                        i55 = i52 * 1000;
                    }
                    if (z7) {
                        i3 &= -5;
                    }
                    jMax = Math.max(i50, jMax);
                    iMax3 = Math.max(i51, iMax3);
                    iMax2 = Math.max(i55, iMax2);
                    iMax4 = Math.max(iMax4, i53);
                    i63++;
                    length = length;
                    num2 = num2;
                    i61 = 2;
                    i62 = 1;
                }
                num = num2;
                int iSqrt = (int) Math.sqrt(iMax3 * 8);
                applyMacroBlockLimits(iSqrt, iSqrt, iMax3, jMax, 16, 16, 1, 1);
                i2 = iMax2;
            } else {
                num = num2;
                if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_MPEG2)) {
                    int length2 = codecProfileLevelArr4.length;
                    long jMax2 = 1485;
                    int iMax5 = 64000;
                    int iMax6 = 99;
                    int i65 = 0;
                    int iMax7 = 9;
                    int iMax8 = 11;
                    int iMax9 = 15;
                    i3 = 4;
                    while (i65 < length2) {
                        CodecProfileLevel codecProfileLevel2 = codecProfileLevelArr4[i65];
                        int i66 = codecProfileLevel2.profile;
                        if (i66 != 0) {
                            i40 = length2;
                            if (i66 == 1) {
                                int i67 = codecProfileLevel2.level;
                                if (i67 == 0) {
                                    i45 = 4000;
                                    i46 = 30;
                                    i41 = 22;
                                    i42 = 18;
                                    i44 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                    i43 = 11880;
                                } else if (i67 != 1) {
                                    if (i67 != 2) {
                                        if (i67 == 3) {
                                            i46 = 60;
                                            i41 = 120;
                                            i42 = 68;
                                            i47 = 244800;
                                        } else if (i67 != 4) {
                                            Log.w(str5, "Unrecognized profile/level " + codecProfileLevel2.profile + "/" + codecProfileLevel2.level + str4 + mimeType);
                                        } else {
                                            i46 = 60;
                                            i41 = 120;
                                            i42 = 68;
                                            i47 = 489600;
                                        }
                                        i48 = 8160;
                                        i49 = 80000;
                                    } else {
                                        i46 = 60;
                                        i41 = 90;
                                        i42 = 68;
                                        i47 = 183600;
                                        i48 = 6120;
                                        i49 = MediaPlayer.ProvisioningThread.TIMEOUT_MS;
                                    }
                                    i43 = i47;
                                    i44 = i48;
                                    i45 = i49;
                                } else {
                                    i41 = 45;
                                    i42 = 36;
                                    i43 = 40500;
                                    i44 = 1620;
                                    i45 = 15000;
                                    i46 = 30;
                                }
                                z6 = true;
                            } else if (i66 == 2 || i66 == 3 || i66 == 4 || i66 == 5) {
                                Log.i(str5, "Unsupported profile " + codecProfileLevel2.profile + str4 + mimeType);
                                i3 |= 2;
                                codecProfileLevelArr4 = codecProfileLevelArr4;
                                str4 = str4;
                                str5 = str5;
                                i45 = 0;
                                i46 = 0;
                                i41 = 0;
                                i42 = 0;
                                i44 = 0;
                                i43 = 0;
                                z6 = false;
                            } else {
                                Log.w(str5, "Unrecognized profile " + codecProfileLevel2.profile + str4 + mimeType);
                            }
                            i3 |= 1;
                            i45 = 0;
                            i46 = 0;
                            i41 = 0;
                            i42 = 0;
                            i44 = 0;
                            i43 = 0;
                            z6 = true;
                        } else {
                            i40 = length2;
                            if (codecProfileLevel2.level != 1) {
                                Log.w(str5, "Unrecognized profile/level " + codecProfileLevel2.profile + "/" + codecProfileLevel2.level + str4 + mimeType);
                                i3 |= 1;
                                i45 = 0;
                                i46 = 0;
                                i41 = 0;
                                i42 = 0;
                                i44 = 0;
                                i43 = 0;
                            } else {
                                i41 = 45;
                                i42 = 36;
                                i43 = 40500;
                                i44 = 1620;
                                i45 = 15000;
                                i46 = 30;
                            }
                            z6 = true;
                        }
                        if (z6) {
                            i3 &= -5;
                        }
                        jMax2 = Math.max(i43, jMax2);
                        iMax6 = Math.max(i44, iMax6);
                        iMax5 = Math.max(i45 * 1000, iMax5);
                        iMax8 = Math.max(i41, iMax8);
                        iMax7 = Math.max(i42, iMax7);
                        iMax9 = Math.max(i46, iMax9);
                        i65++;
                        length2 = i40;
                        str5 = str5;
                        str4 = str4;
                        codecProfileLevelArr4 = codecProfileLevelArr4;
                    }
                    applyMacroBlockLimits(iMax8, iMax7, iMax6, jMax2, 16, 16, 1, 1);
                    this.mFrameRateRange = this.mFrameRateRange.intersect(12, Integer.valueOf(iMax9));
                    i2 = iMax5;
                } else {
                    String str6 = " for ";
                    String str7 = TAG;
                    if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_MPEG4)) {
                        int length3 = codecProfileLevelArr3.length;
                        long jMax3 = 1485;
                        int iMax10 = 64000;
                        int i68 = 11;
                        int i69 = 9;
                        int iMax11 = 99;
                        int i70 = 0;
                        int iMax12 = 15;
                        i3 = 4;
                        while (i70 < length3) {
                            CodecProfileLevel codecProfileLevel3 = codecProfileLevelArr3[i70];
                            int i71 = codecProfileLevel3.profile;
                            if (i71 != 1) {
                                if (i71 != 2) {
                                    switch (i71) {
                                        case 4:
                                        case 8:
                                        case 16:
                                        case 32:
                                        case 64:
                                        case 128:
                                        case 256:
                                        case 512:
                                        case 1024:
                                        case 2048:
                                        case 4096:
                                        case 8192:
                                        case 16384:
                                            break;
                                        case 32768:
                                            str2 = str7;
                                            str3 = str6;
                                            int i72 = codecProfileLevel3.level;
                                            i30 = length3;
                                            if (i72 == 1 || i72 == 4) {
                                                i36 = 2970;
                                                codecProfileLevelArr3 = codecProfileLevelArr3;
                                                str2 = str2;
                                                str3 = str3;
                                                i31 = 30;
                                                i32 = 11;
                                                i33 = 128;
                                                i34 = 99;
                                                i35 = 9;
                                            } else {
                                                if (i72 != 8) {
                                                    if (i72 == 16) {
                                                        i37 = 768;
                                                    } else if (i72 != 24) {
                                                        if (i72 == 32) {
                                                            i32 = 44;
                                                            i35 = 36;
                                                            i36 = 23760;
                                                            i38 = MetricsProto.MetricsEvent.DEFAULT_AUTOFILL_PICKER;
                                                            i39 = PathInterpolatorCompat.MAX_NUM_POINTS;
                                                        } else if (i72 != 128) {
                                                            Log.w(str2, "Unrecognized profile/level " + codecProfileLevel3.profile + "/" + codecProfileLevel3.level + str3 + mimeType);
                                                            i3 |= 1;
                                                            str2 = str2;
                                                            str3 = str3;
                                                            i31 = 0;
                                                            i32 = 0;
                                                            i33 = 0;
                                                            i34 = 0;
                                                            i35 = 0;
                                                            i36 = 0;
                                                        } else {
                                                            i32 = 45;
                                                            i35 = 36;
                                                            i36 = 48600;
                                                            i38 = 1620;
                                                            i39 = 8000;
                                                        }
                                                        codecProfileLevelArr3 = codecProfileLevelArr3;
                                                        str3 = str3;
                                                        i34 = i38;
                                                        i31 = 30;
                                                        z5 = false;
                                                        str2 = str2;
                                                        i33 = i39;
                                                        z4 = true;
                                                    } else {
                                                        i37 = 1500;
                                                    }
                                                    str2 = str2;
                                                    str3 = str3;
                                                    i31 = 30;
                                                    i34 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                                    i35 = 18;
                                                    i36 = 11880;
                                                } else {
                                                    i36 = 5940;
                                                    i37 = MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION;
                                                    str2 = str2;
                                                    str3 = str3;
                                                    i31 = 30;
                                                    i34 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                                    i35 = 18;
                                                }
                                                z4 = true;
                                                z5 = false;
                                                i33 = i37;
                                                i32 = 22;
                                            }
                                            z4 = true;
                                            z5 = false;
                                            break;
                                        default:
                                            StringBuilder sb = new StringBuilder("Unrecognized profile ");
                                            sb.append(codecProfileLevel3.profile);
                                            String str8 = str6;
                                            sb.append(str8);
                                            sb.append(mimeType);
                                            String str9 = str7;
                                            Log.w(str9, sb.toString());
                                            i3 |= 1;
                                            i30 = length3;
                                            str3 = str8;
                                            str2 = str9;
                                            i31 = 0;
                                            i32 = 0;
                                            i33 = 0;
                                            i34 = 0;
                                            i35 = 0;
                                            i36 = 0;
                                            z4 = true;
                                            z5 = false;
                                            break;
                                    }
                                }
                                codecProfileLevelArr3 = codecProfileLevelArr4;
                                String str10 = str7;
                                String str11 = str6;
                                i30 = length3;
                                Log.i(str10, "Unsupported profile " + codecProfileLevel3.profile + str11 + mimeType);
                                i3 |= 2;
                                codecProfileLevelArr3 = codecProfileLevelArr3;
                                str2 = str10;
                                str3 = str11;
                                i31 = 0;
                                i32 = 0;
                                i33 = 0;
                                i34 = 0;
                                i35 = 0;
                                i36 = 0;
                                z4 = false;
                                z5 = false;
                            } else {
                                str2 = str7;
                                str3 = str6;
                                i30 = length3;
                                int i73 = codecProfileLevel3.level;
                                if (i73 == 1) {
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i31 = 15;
                                    i32 = 11;
                                    i33 = 64;
                                } else if (i73 != 2) {
                                    if (i73 == 4) {
                                        codecProfileLevelArr3 = codecProfileLevelArr4;
                                        codecProfileLevelArr3 = codecProfileLevelArr3;
                                        str2 = str2;
                                        str3 = str3;
                                        i31 = 30;
                                        i32 = 11;
                                        i33 = 64;
                                        i34 = 99;
                                        i35 = 9;
                                        i36 = 1485;
                                    } else if (i73 == 8) {
                                        codecProfileLevelArr3 = codecProfileLevelArr4;
                                        i36 = 5940;
                                        codecProfileLevelArr3 = codecProfileLevelArr3;
                                        str2 = str2;
                                        str3 = str3;
                                        i31 = 30;
                                        i32 = 22;
                                        i33 = 128;
                                        i34 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                        i35 = 18;
                                    } else if (i73 == 16) {
                                        codecProfileLevelArr3 = codecProfileLevelArr4;
                                        i37 = MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION;
                                        str2 = str2;
                                        str3 = str3;
                                        i31 = 30;
                                        i34 = MetricsProto.MetricsEvent.ACTION_DATA_SAVER_BLACKLIST;
                                        i35 = 18;
                                        i36 = 11880;
                                        z4 = true;
                                        z5 = false;
                                        i33 = i37;
                                        i32 = 22;
                                    } else if (i73 != 64) {
                                        if (i73 == 128) {
                                            codecProfileLevelArr3 = codecProfileLevelArr4;
                                            i32 = 45;
                                            i35 = 36;
                                            i36 = 40500;
                                            i38 = 1620;
                                            i39 = 8000;
                                        } else if (i73 != 256) {
                                            codecProfileLevelArr3 = codecProfileLevelArr4;
                                            Log.w(str2, "Unrecognized profile/level " + codecProfileLevel3.profile + "/" + codecProfileLevel3.level + str3 + mimeType);
                                            i3 |= 1;
                                            str2 = str2;
                                            str3 = str3;
                                            i31 = 0;
                                            i32 = 0;
                                            i33 = 0;
                                            i34 = 0;
                                            i35 = 0;
                                            i36 = 0;
                                        } else {
                                            codecProfileLevelArr3 = codecProfileLevelArr4;
                                            i32 = 80;
                                            i35 = 45;
                                            i36 = 108000;
                                            i38 = 3600;
                                            i39 = 12000;
                                        }
                                        codecProfileLevelArr3 = codecProfileLevelArr3;
                                        str3 = str3;
                                        i34 = i38;
                                        i31 = 30;
                                        z5 = false;
                                        str2 = str2;
                                        i33 = i39;
                                        z4 = true;
                                    } else {
                                        i32 = 40;
                                        i36 = 36000;
                                        codecProfileLevelArr3 = codecProfileLevelArr3;
                                        str3 = str3;
                                        i34 = 1200;
                                        i31 = 30;
                                        z4 = true;
                                        z5 = false;
                                        str2 = str2;
                                        i33 = 4000;
                                        i35 = 30;
                                    }
                                    z4 = true;
                                    z5 = false;
                                } else {
                                    codecProfileLevelArr3 = codecProfileLevelArr4;
                                    i31 = 15;
                                    i32 = 11;
                                    i33 = 128;
                                }
                                i34 = 99;
                                i35 = 9;
                                i36 = 1485;
                                z4 = true;
                                z5 = true;
                            }
                            if (z4) {
                                codecProfileLevelArr3 = codecProfileLevelArr4;
                                i3 &= -5;
                            }
                            codecProfileLevelArr3 = codecProfileLevelArr4;
                            int i74 = i70;
                            jMax3 = Math.max(i36, jMax3);
                            iMax11 = Math.max(i34, iMax11);
                            iMax10 = Math.max(i33 * 1000, iMax10);
                            if (z5) {
                                int iMax13 = Math.max(i32, i68);
                                int iMax14 = Math.max(i35, i69);
                                iMax12 = Math.max(i31, iMax12);
                                i68 = iMax13;
                                i69 = iMax14;
                            } else {
                                int iSqrt2 = (int) Math.sqrt(i34 * 2);
                                int iMax15 = Math.max(iSqrt2, i68);
                                int iMax16 = Math.max(iSqrt2, i69);
                                iMax12 = Math.max(Math.max(i31, 60), iMax12);
                                i69 = iMax16;
                                i68 = iMax15;
                            }
                            i70 = i74 + 1;
                            length3 = i30;
                            str7 = str2;
                            str6 = str3;
                            codecProfileLevelArr3 = codecProfileLevelArr3;
                        }
                        codecProfileLevelArr3 = codecProfileLevelArr4;
                        applyMacroBlockLimits(i68, i69, iMax11, jMax3, 16, 16, 1, 1);
                        this.mFrameRateRange = this.mFrameRateRange.intersect(12, Integer.valueOf(iMax12));
                        i2 = iMax10;
                    } else {
                        String str12 = str7;
                        String str13 = str6;
                        if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_H263)) {
                            int length4 = codecProfileLevelArr2.length;
                            int i75 = 16;
                            long jMax4 = 1485;
                            iMax = 64000;
                            int iMin = 11;
                            int iMin2 = 9;
                            int iMax17 = 11;
                            int iMax18 = 9;
                            int iMax19 = 99;
                            int i76 = 0;
                            int i77 = 15;
                            i3 = 4;
                            while (i76 < length4) {
                                CodecProfileLevel codecProfileLevel4 = codecProfileLevelArr2[i76];
                                int i78 = length4;
                                int i79 = codecProfileLevel4.level;
                                CodecProfileLevel[] codecProfileLevelArr5 = codecProfileLevelArr2;
                                if (i79 != 1) {
                                    if (i79 != 2) {
                                        if (i79 != 4) {
                                            if (i79 == 8) {
                                                codecProfileLevelArr2 = codecProfileLevelArr4;
                                                i27 = 32;
                                            } else if (i79 != 16) {
                                                if (i79 == 32) {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    i23 = 60;
                                                    i19 = 19800;
                                                    i20 = 18;
                                                    i21 = 22;
                                                    i75 = 4;
                                                    i22 = 64;
                                                } else if (i79 == 64) {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    i23 = 60;
                                                    i21 = 45;
                                                    i19 = 40500;
                                                    i20 = 18;
                                                    i75 = 4;
                                                    i22 = 128;
                                                } else if (i79 != 128) {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    StringBuilder sb2 = new StringBuilder("Unrecognized profile/level ");
                                                    sb2.append(codecProfileLevel4.profile);
                                                    sb2.append("/");
                                                    sb2.append(codecProfileLevel4.level);
                                                    str13 = str13;
                                                    sb2.append(str13);
                                                    sb2.append(mimeType);
                                                    i75 = i75;
                                                    str12 = str12;
                                                    Log.w(str12, sb2.toString());
                                                    i3 |= 1;
                                                    i17 = iMin;
                                                    iMin = i17;
                                                    i18 = iMin2;
                                                    iMin2 = i18;
                                                    i76 = i76;
                                                    i19 = 0;
                                                    i20 = 0;
                                                    i21 = 0;
                                                    i22 = 0;
                                                    z2 = false;
                                                    i23 = 0;
                                                } else {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    str12 = str12;
                                                    str13 = str13;
                                                    i22 = 256;
                                                    i23 = 60;
                                                    iMin = iMin;
                                                    iMin2 = iMin2;
                                                    i20 = 36;
                                                    i19 = 81000;
                                                    z2 = false;
                                                    i17 = 1;
                                                    i18 = 1;
                                                    i76 = i76;
                                                    i21 = 45;
                                                    i75 = 4;
                                                }
                                                z2 = false;
                                                i17 = 1;
                                                i18 = 1;
                                            } else {
                                                i75 = i75;
                                                int i80 = codecProfileLevel4.profile;
                                                if (i80 == 1 || i80 == 4) {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                                if (z3) {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    i28 = iMin;
                                                    i29 = iMin2;
                                                } else {
                                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                                    i28 = 1;
                                                    i75 = 4;
                                                    i29 = 1;
                                                }
                                                z2 = z3;
                                                iMin = iMin;
                                                iMin2 = iMin2;
                                                i17 = i28;
                                                i18 = i29;
                                                i19 = 1485;
                                                i20 = 9;
                                                i21 = 11;
                                                i22 = 2;
                                            }
                                            i24 = codecProfileLevel4.profile;
                                            int i81 = i77;
                                            if (i24 != 1 && i24 != 2 && i24 != 4 && i24 != 8 && i24 != 16 && i24 != 32 && i24 != 64 && i24 != 128 && i24 != 256) {
                                                Log.w(str12, "Unrecognized profile " + codecProfileLevel4.profile + str13 + mimeType);
                                                i3 |= 1;
                                            }
                                            if (z2) {
                                                i25 = 11;
                                                i26 = 9;
                                            } else {
                                                this.mAllowMbOverride = true;
                                                i25 = i17;
                                                i26 = i18;
                                            }
                                            i3 &= -5;
                                            str13 = str13;
                                            jMax4 = Math.max(i19, jMax4);
                                            iMax19 = Math.max(i21 * i20, iMax19);
                                            iMax = Math.max(64000 * i22, iMax);
                                            iMax17 = Math.max(i21, iMax17);
                                            iMax18 = Math.max(i20, iMax18);
                                            int iMax20 = Math.max(i23, i81);
                                            iMin = Math.min(i25, iMin);
                                            iMin2 = Math.min(i26, iMin2);
                                            i76++;
                                            i77 = iMax20;
                                            str12 = str12;
                                            length4 = i78;
                                            i75 = i75;
                                            codecProfileLevelArr2 = codecProfileLevelArr5;
                                        } else {
                                            codecProfileLevelArr2 = codecProfileLevelArr4;
                                            i27 = 6;
                                        }
                                        i22 = i27;
                                        i17 = iMin;
                                        iMin = i17;
                                        i18 = iMin2;
                                        iMin2 = i18;
                                        i19 = 11880;
                                        i20 = 18;
                                        i21 = 22;
                                    } else {
                                        codecProfileLevelArr2 = codecProfileLevelArr4;
                                        i76 = i76;
                                        i75 = i75;
                                        str12 = str12;
                                        str13 = str13;
                                        i17 = iMin;
                                        iMin = i17;
                                        i18 = iMin2;
                                        iMin2 = i18;
                                        i19 = 5940;
                                        i20 = 18;
                                        i21 = 22;
                                        i22 = 2;
                                    }
                                    z2 = true;
                                    i23 = 30;
                                    i24 = codecProfileLevel4.profile;
                                    int i82 = i77;
                                    if (i24 != 1) {
                                        Log.w(str12, "Unrecognized profile " + codecProfileLevel4.profile + str13 + mimeType);
                                        i3 |= 1;
                                    }
                                    if (z2) {
                                        i25 = 11;
                                        i26 = 9;
                                    } else {
                                        this.mAllowMbOverride = true;
                                        i25 = i17;
                                        i26 = i18;
                                    }
                                    i3 &= -5;
                                    str13 = str13;
                                    jMax4 = Math.max(i19, jMax4);
                                    iMax19 = Math.max(i21 * i20, iMax19);
                                    iMax = Math.max(64000 * i22, iMax);
                                    iMax17 = Math.max(i21, iMax17);
                                    iMax18 = Math.max(i20, iMax18);
                                    int iMax21 = Math.max(i23, i82);
                                    iMin = Math.min(i25, iMin);
                                    iMin2 = Math.min(i26, iMin2);
                                    i76++;
                                    i77 = iMax21;
                                    str12 = str12;
                                    length4 = i78;
                                    i75 = i75;
                                    codecProfileLevelArr2 = codecProfileLevelArr5;
                                } else {
                                    codecProfileLevelArr2 = codecProfileLevelArr4;
                                    i75 = i75;
                                    i17 = iMin;
                                    iMin = i17;
                                    i18 = iMin2;
                                    iMin2 = i18;
                                    i19 = 1485;
                                    i20 = 9;
                                    i21 = 11;
                                    i22 = 1;
                                    z2 = true;
                                }
                                i23 = 15;
                                i24 = codecProfileLevel4.profile;
                                int i83 = i77;
                                if (i24 != 1) {
                                    Log.w(str12, "Unrecognized profile " + codecProfileLevel4.profile + str13 + mimeType);
                                    i3 |= 1;
                                }
                                if (z2) {
                                    i25 = 11;
                                    i26 = 9;
                                } else {
                                    this.mAllowMbOverride = true;
                                    i25 = i17;
                                    i26 = i18;
                                }
                                i3 &= -5;
                                str13 = str13;
                                jMax4 = Math.max(i19, jMax4);
                                iMax19 = Math.max(i21 * i20, iMax19);
                                iMax = Math.max(64000 * i22, iMax);
                                iMax17 = Math.max(i21, iMax17);
                                iMax18 = Math.max(i20, iMax18);
                                int iMax22 = Math.max(i23, i83);
                                iMin = Math.min(i25, iMin);
                                iMin2 = Math.min(i26, iMin2);
                                i76++;
                                i77 = iMax22;
                                str12 = str12;
                                length4 = i78;
                                i75 = i75;
                                codecProfileLevelArr2 = codecProfileLevelArr5;
                            }
                            codecProfileLevelArr2 = codecProfileLevelArr4;
                            int i84 = i75;
                            int i85 = i77;
                            if (!this.mAllowMbOverride) {
                                this.mBlockAspectRatioRange = Range.create(new Rational(11, 9), new Rational(11, 9));
                            }
                            applyMacroBlockLimits(iMin, iMin2, iMax17, iMax18, iMax19, jMax4, 16, 16, i84, i84);
                            this.mFrameRateRange = Range.create(num, Integer.valueOf(i85));
                        } else {
                            Integer num3 = num;
                            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_VP8)) {
                                int length5 = codecProfileLevelArr4.length;
                                int i86 = 0;
                                i3 = 4;
                                while (i86 < length5) {
                                    CodecProfileLevel codecProfileLevel5 = codecProfileLevelArr4[i86];
                                    int i87 = codecProfileLevel5.level;
                                    if (i87 == 1 || i87 == 2 || i87 == 4 || i87 == 8) {
                                        str = str13;
                                    } else {
                                        StringBuilder sb3 = new StringBuilder("Unrecognized level ");
                                        sb3.append(codecProfileLevel5.level);
                                        str = str13;
                                        sb3.append(str);
                                        sb3.append(mimeType);
                                        Log.w(str12, sb3.toString());
                                        i3 |= 1;
                                    }
                                    if (codecProfileLevel5.profile != 1) {
                                        Log.w(str12, "Unrecognized profile " + codecProfileLevel5.profile + str + mimeType);
                                        i3 |= 1;
                                    }
                                    i3 &= -5;
                                    i86++;
                                    str13 = str;
                                }
                                applyMacroBlockLimits(SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS, SmartSelectionEventTracker.SelectionEvent.OUT_OF_BOUNDS, Integer.MAX_VALUE, 2147483647L, 16, 16, 1, 1);
                                i2 = 100000000;
                                num = num3;
                            } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_VP9)) {
                                int length6 = codecProfileLevelArr.length;
                                long jMax5 = 829440;
                                int iMax23 = 36864;
                                int i88 = 0;
                                i3 = 4;
                                iMax = 200000;
                                int iMax24 = 512;
                                while (i88 < length6) {
                                    CodecProfileLevel codecProfileLevel6 = codecProfileLevelArr[i88];
                                    int i89 = codecProfileLevel6.level;
                                    if (i89 == 1) {
                                        codecProfileLevelArr = codecProfileLevelArr4;
                                        j2 = 829440;
                                        i8 = 36864;
                                        i9 = 200;
                                        i10 = 512;
                                    } else if (i89 != 2) {
                                        switch (i89) {
                                            case 4:
                                                j2 = 4608000;
                                                i8 = 122880;
                                                i9 = 1800;
                                                i10 = 960;
                                                break;
                                            case 8:
                                                j2 = 9216000;
                                                i8 = 245760;
                                                i9 = 3600;
                                                i10 = BluetoothClass.Device.PERIPHERAL_KEYBOARD;
                                                break;
                                            case 16:
                                                j2 = 20736000;
                                                i8 = 552960;
                                                i9 = 7200;
                                                i10 = 2048;
                                                break;
                                            case 32:
                                                j2 = 36864000;
                                                i8 = SurfaceControl.FX_SURFACE_MASK;
                                                i9 = 12000;
                                                i10 = 2752;
                                                break;
                                            case 64:
                                                j2 = 83558400;
                                                i8 = 2228224;
                                                i9 = 18000;
                                                i10 = 4160;
                                                break;
                                            case 128:
                                                j2 = 160432128;
                                                i8 = 2228224;
                                                i9 = 30000;
                                                i10 = 4160;
                                                break;
                                            case 256:
                                                j2 = 311951360;
                                                i15 = MediaPlayer.ProvisioningThread.TIMEOUT_MS;
                                                i11 = i15;
                                                i12 = 8384;
                                                i13 = 8912896;
                                                break;
                                            case 512:
                                                j2 = 588251136;
                                                i15 = 120000;
                                                i11 = i15;
                                                i12 = 8384;
                                                i13 = 8912896;
                                                break;
                                            case 1024:
                                                j2 = 1176502272;
                                                i15 = 180000;
                                                i11 = i15;
                                                i12 = 8384;
                                                i13 = 8912896;
                                                break;
                                            case 2048:
                                                j2 = 1176502272;
                                                i16 = 180000;
                                                i11 = i16;
                                                i12 = 16832;
                                                i13 = 35651584;
                                                break;
                                            case 4096:
                                                j2 = 2353004544L;
                                                i16 = 240000;
                                                i11 = i16;
                                                i12 = 16832;
                                                i13 = 35651584;
                                                break;
                                            case 8192:
                                                j2 = 4706009088L;
                                                i16 = 480000;
                                                i11 = i16;
                                                i12 = 16832;
                                                i13 = 35651584;
                                                break;
                                            default:
                                                Log.w(str12, "Unrecognized level " + codecProfileLevel6.level + str13 + mimeType);
                                                i3 |= 1;
                                                j2 = 0;
                                                i13 = 0;
                                                i12 = 0;
                                                i11 = 0;
                                                break;
                                        }
                                        i14 = codecProfileLevel6.profile;
                                        int i90 = i88;
                                        if (i14 == 1 && i14 != 2 && i14 != 4 && i14 != 8 && i14 != 4096 && i14 != 8192) {
                                            Log.w(str12, "Unrecognized profile " + codecProfileLevel6.profile + str13 + mimeType);
                                            i3 |= 1;
                                        }
                                        i3 &= -5;
                                        jMax5 = Math.max(j2, jMax5);
                                        iMax23 = Math.max(i13, iMax23);
                                        iMax = Math.max(i11 * 1000, iMax);
                                        iMax24 = Math.max(i12, iMax24);
                                        i88 = i90 + 1;
                                        length6 = length6;
                                        num3 = num3;
                                        codecProfileLevelArr = codecProfileLevelArr;
                                    } else {
                                        codecProfileLevelArr = codecProfileLevelArr4;
                                        j2 = 2764800;
                                        i8 = 73728;
                                        i9 = 800;
                                        i10 = 768;
                                    }
                                    i11 = i9;
                                    i12 = i10;
                                    i13 = i8;
                                    i14 = codecProfileLevel6.profile;
                                    int i91 = i88;
                                    if (i14 == 1) {
                                    }
                                    i3 &= -5;
                                    jMax5 = Math.max(j2, jMax5);
                                    iMax23 = Math.max(i13, iMax23);
                                    iMax = Math.max(i11 * 1000, iMax);
                                    iMax24 = Math.max(i12, iMax24);
                                    i88 = i91 + 1;
                                    length6 = length6;
                                    num3 = num3;
                                    codecProfileLevelArr = codecProfileLevelArr;
                                }
                                codecProfileLevelArr = codecProfileLevelArr4;
                                num = num3;
                                int iDivUp = Utils.divUp(iMax24, 8);
                                applyMacroBlockLimits(iDivUp, iDivUp, Utils.divUp(iMax23, 64), Utils.divUp(jMax5, 64L), 8, 8, 1, 1);
                            } else {
                                num = num3;
                                if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_VIDEO_HEVC)) {
                                    CodecProfileLevel[] codecProfileLevelArr6 = codecProfileLevelArr;
                                    int length7 = codecProfileLevelArr6.length;
                                    int iMax25 = MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_CANCEL_CONNECT;
                                    int iMax26 = 128000;
                                    int i92 = 4;
                                    long jMax6 = 8640;
                                    int i93 = 0;
                                    while (i93 < length7) {
                                        CodecProfileLevel codecProfileLevel7 = codecProfileLevelArr6[i93];
                                        int i94 = codecProfileLevel7.level;
                                        if (i94 != 1 && i94 != 2) {
                                            codecProfileLevelArr = codecProfileLevelArr4;
                                            double d3 = 30.0d;
                                            switch (i94) {
                                                case 4:
                                                case 8:
                                                    i6 = 122880;
                                                    i7 = 1500;
                                                    double d4 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d4;
                                                    break;
                                                case 16:
                                                case 32:
                                                    i6 = 245760;
                                                    i7 = PathInterpolatorCompat.MAX_NUM_POINTS;
                                                    double d5 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d5;
                                                    break;
                                                case 64:
                                                case 128:
                                                    i6 = 552960;
                                                    i7 = BluetoothHealth.HEALTH_OPERATION_SUCCESS;
                                                    double d6 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d6;
                                                    break;
                                                case 256:
                                                case 512:
                                                    d3 = 33.75d;
                                                    i6 = SurfaceControl.FX_SURFACE_MASK;
                                                    i7 = 10000;
                                                    double d7 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d7;
                                                    break;
                                                case 1024:
                                                    i6 = 2228224;
                                                    i7 = 12000;
                                                    double d8 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d8;
                                                    break;
                                                case 2048:
                                                    i6 = 2228224;
                                                    i7 = 30000;
                                                    double d9 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d9;
                                                    break;
                                                case 4096:
                                                    d3 = 60.0d;
                                                    i6 = 2228224;
                                                    i7 = 20000;
                                                    double d10 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d10;
                                                    break;
                                                case 8192:
                                                    d3 = 60.0d;
                                                    i6 = 2228224;
                                                    i7 = 50000;
                                                    double d11 = d3;
                                                    i4 = i6;
                                                    i5 = i7;
                                                    d2 = d11;
                                                    break;
                                                case 16384:
                                                    i5 = 25000;
                                                    d2 = d3;
                                                    i4 = 8912896;
                                                    break;
                                                case 32768:
                                                    i5 = UserHandle.PER_USER_RANGE;
                                                    d2 = d3;
                                                    i4 = 8912896;
                                                    break;
                                                case 65536:
                                                    d3 = 60.0d;
                                                    i5 = HealthKeys.BASE_PACKAGE;
                                                    d2 = d3;
                                                    i4 = 8912896;
                                                    break;
                                                case 131072:
                                                    d3 = 60.0d;
                                                    i5 = Protocol.BASE_WIFI_SCANNER_SERVICE;
                                                    d2 = d3;
                                                    i4 = 8912896;
                                                    break;
                                                case 262144:
                                                    d3 = 120.0d;
                                                    i5 = MediaPlayer.ProvisioningThread.TIMEOUT_MS;
                                                    d2 = d3;
                                                    i4 = 8912896;
                                                    break;
                                                case 524288:
                                                    d3 = 120.0d;
                                                    i5 = 240000;
                                                    d2 = d3;
                                                    i4 = 8912896;
                                                    break;
                                                case 1048576:
                                                    i5 = MediaPlayer.ProvisioningThread.TIMEOUT_MS;
                                                    d2 = d3;
                                                    i4 = 35651584;
                                                    break;
                                                case 2097152:
                                                    i5 = 240000;
                                                    d2 = d3;
                                                    i4 = 35651584;
                                                    break;
                                                case 4194304:
                                                    d3 = 60.0d;
                                                    i5 = 120000;
                                                    d2 = d3;
                                                    i4 = 35651584;
                                                    break;
                                                case 8388608:
                                                    d3 = 60.0d;
                                                    i5 = 480000;
                                                    d2 = d3;
                                                    i4 = 35651584;
                                                    break;
                                                case 16777216:
                                                    d3 = 120.0d;
                                                    i5 = 240000;
                                                    d2 = d3;
                                                    i4 = 35651584;
                                                    break;
                                                case 33554432:
                                                    d3 = 120.0d;
                                                    i5 = 800000;
                                                    d2 = d3;
                                                    i4 = 35651584;
                                                    break;
                                                default:
                                                    Log.w(str12, "Unrecognized level " + codecProfileLevel7.level + str13 + mimeType);
                                                    i92 |= 1;
                                                    d2 = 0.0d;
                                                    i5 = 0;
                                                    i4 = 0;
                                                    break;
                                            }
                                        } else {
                                            codecProfileLevelArr = codecProfileLevelArr4;
                                            codecProfileLevelArr = codecProfileLevelArr4;
                                            d2 = 15.0d;
                                            i4 = 36864;
                                            i5 = 128;
                                        }
                                        int i95 = codecProfileLevel7.profile;
                                        CodecProfileLevel[] codecProfileLevelArr7 = codecProfileLevelArr6;
                                        if (i95 != 1 && i95 != 2 && i95 != 4096) {
                                            Log.w(str12, "Unrecognized profile " + codecProfileLevel7.profile + str13 + mimeType);
                                            i92 |= 1;
                                        }
                                        int i96 = i4 >> 6;
                                        i92 &= -5;
                                        jMax6 = Math.max((int) (d2 * ((double) i96)), jMax6);
                                        iMax25 = Math.max(i96, iMax25);
                                        iMax26 = Math.max(i5 * 1000, iMax26);
                                        i93++;
                                        length7 = length7;
                                        codecProfileLevelArr6 = codecProfileLevelArr7;
                                    }
                                    codecProfileLevelArr = codecProfileLevelArr4;
                                    int iSqrt3 = (int) Math.sqrt(iMax25 * 8);
                                    applyMacroBlockLimits(iSqrt3, iSqrt3, iMax25, jMax6, 8, 8, 1, 1);
                                    i2 = iMax26;
                                    i3 = i92;
                                } else {
                                    codecProfileLevelArr = codecProfileLevelArr4;
                                    Log.w(str12, "Unsupported mime ".concat(mimeType));
                                    i2 = 64000;
                                    i3 = 6;
                                }
                            }
                        }
                        i2 = iMax;
                    }
                }
            }
            this.mBitrateRange = Range.create(num, Integer.valueOf(i2));
            this.mParent.mError |= i3;
        }

        private void applyMacroBlockLimits(int i2, int i3, int i4, long j2, int i5, int i6, int i7, int i8) {
            applyMacroBlockLimits(1, 1, i2, i3, i4, j2, i5, i6, i7, i8);
        }

        public static VideoCapabilities create(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            VideoCapabilities videoCapabilities = new VideoCapabilities();
            videoCapabilities.init(mediaFormat, codecCapabilities);
            return videoCapabilities;
        }

        public static int equivalentVP9Level(MediaFormat mediaFormat) {
            long jLongValue;
            Map<String, Object> map = mediaFormat.getMap();
            Size size = Utils.parseSize(map.get("block-size"), new Size(8, 8));
            int height = size.getHeight() * size.getWidth();
            Range<Integer> intRange = Utils.parseIntRange(map.get("block-count-range"), null);
            int iIntValue = intRange == null ? 0 : ((Integer) intRange.getUpper()).intValue() * height;
            Range<Long> longRange = Utils.parseLongRange(map.get("blocks-per-second-range"), null);
            if (longRange == null) {
                jLongValue = 0;
            } else {
                jLongValue = ((Long) longRange.getUpper()).longValue() * ((long) height);
            }
            Pair<Range<Integer>, Range<Integer>> widthHeightRanges = parseWidthHeightRanges(map.get("size-range"));
            int iMax = widthHeightRanges == null ? 0 : Math.max(((Integer) widthHeightRanges.first.getUpper()).intValue(), ((Integer) widthHeightRanges.second.getUpper()).intValue());
            Range<Integer> intRange2 = Utils.parseIntRange(map.get("bitrate-range"), null);
            int iDivUp = intRange2 != null ? Utils.divUp(((Integer) intRange2.getUpper()).intValue(), 1000) : 0;
            if (jLongValue <= 829440 && iIntValue <= 36864 && iDivUp <= 200 && iMax <= 512) {
                return 1;
            }
            if (jLongValue <= 2764800 && iIntValue <= 73728 && iDivUp <= 800 && iMax <= 768) {
                return 2;
            }
            if (jLongValue <= 4608000 && iIntValue <= 122880 && iDivUp <= 1800 && iMax <= 960) {
                return 4;
            }
            if (jLongValue <= 9216000 && iIntValue <= 245760 && iDivUp <= 3600 && iMax <= 1344) {
                return 8;
            }
            if (jLongValue <= 20736000 && iIntValue <= 552960 && iDivUp <= 7200 && iMax <= 2048) {
                return 16;
            }
            if (jLongValue <= 36864000 && iIntValue <= 983040 && iDivUp <= 12000 && iMax <= 2752) {
                return 32;
            }
            if (jLongValue <= 83558400 && iIntValue <= 2228224 && iDivUp <= 18000 && iMax <= 4160) {
                return 64;
            }
            if (jLongValue <= 160432128 && iIntValue <= 2228224 && iDivUp <= 30000 && iMax <= 4160) {
                return 128;
            }
            if (jLongValue <= 311951360 && iIntValue <= 8912896 && iDivUp <= 60000 && iMax <= 8384) {
                return 256;
            }
            if (jLongValue <= 588251136 && iIntValue <= 8912896 && iDivUp <= 120000 && iMax <= 8384) {
                return 512;
            }
            if (jLongValue <= 1176502272 && iIntValue <= 8912896 && iDivUp <= 180000 && iMax <= 8384) {
                return 1024;
            }
            if (jLongValue > 1176502272 || iIntValue > 35651584 || iDivUp > 180000 || iMax > 16832) {
                return (jLongValue > 2353004544L || iIntValue > 35651584 || iDivUp > 240000 || iMax > 16832) ? 8192 : 4096;
            }
            return 2048;
        }

        private Range<Double> estimateFrameRatesFor(int i2, int i3) {
            Size sizeFindClosestSize = findClosestSize(i2, i3);
            Range<Long> range = this.mMeasuredFrameRates.get(sizeFindClosestSize);
            Double dValueOf = Double.valueOf(((double) getBlockCount(sizeFindClosestSize.getWidth(), sizeFindClosestSize.getHeight())) / ((double) Math.max(getBlockCount(i2, i3), 1)));
            return Range.create(Double.valueOf(dValueOf.doubleValue() * ((Long) range.getLower()).longValue()), Double.valueOf(dValueOf.doubleValue() * ((Long) range.getUpper()).longValue()));
        }

        private Size findClosestSize(int i2, int i3) {
            int blockCount = getBlockCount(i2, i3);
            Size size = null;
            int i4 = Integer.MAX_VALUE;
            for (Size size2 : this.mMeasuredFrameRates.keySet()) {
                int iAbs = Math.abs(blockCount - getBlockCount(size2.getWidth(), size2.getHeight()));
                if (iAbs < i4) {
                    size = size2;
                    i4 = iAbs;
                }
            }
            return size;
        }

        private int getBlockCount(int i2, int i3) {
            return Utils.divUp(i2, this.mBlockWidth) * Utils.divUp(i3, this.mBlockHeight);
        }

        private Map<Size, Range<Long>> getMeasuredFrameRates(Map<String, Object> map) {
            Size size;
            Range<Long> longRange;
            HashMap map2 = new HashMap();
            for (String str : map.keySet()) {
                if (str.startsWith("measured-frame-rate-")) {
                    str.substring(20);
                    String[] strArrSplit = str.split(NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
                    if (strArrSplit.length == 5 && (size = Utils.parseSize(strArrSplit[3], null)) != null) {
                        if (size.getHeight() * size.getWidth() > 0 && (longRange = Utils.parseLongRange(map.get(str), null)) != null && ((Long) longRange.getLower()).longValue() >= 0 && ((Long) longRange.getUpper()).longValue() >= 0) {
                            map2.put(size, longRange);
                        }
                    }
                }
            }
            return map2;
        }

        private void initWithPlatformLimits() {
            this.mBitrateRange = MediaCodecInfo.BITRATE_RANGE;
            this.mWidthRange = MediaCodecInfo.SIZE_RANGE;
            this.mHeightRange = MediaCodecInfo.SIZE_RANGE;
            this.mFrameRateRange = MediaCodecInfo.FRAME_RATE_RANGE;
            this.mHorizontalBlockRange = MediaCodecInfo.SIZE_RANGE;
            this.mVerticalBlockRange = MediaCodecInfo.SIZE_RANGE;
            this.mBlockCountRange = MediaCodecInfo.POSITIVE_INTEGERS;
            this.mBlocksPerSecondRange = MediaCodecInfo.POSITIVE_LONGS;
            this.mBlockAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS;
            this.mAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS;
            this.mWidthAlignment = 2;
            this.mHeightAlignment = 2;
            this.mBlockWidth = 2;
            this.mBlockHeight = 2;
            this.mSmallerDimensionUpperLimit = ((Integer) MediaCodecInfo.SIZE_RANGE.getUpper()).intValue();
        }

        private void parseFromInfo(MediaFormat mediaFormat) {
            Range<Integer> range;
            Range<Integer> range2;
            Range<Integer> rangeExtend;
            Range<Integer> range3;
            Range<Integer> range4;
            Range range5;
            Map<String, Object> map = mediaFormat.getMap();
            Size size = new Size(this.mBlockWidth, this.mBlockHeight);
            Size size2 = new Size(this.mWidthAlignment, this.mHeightAlignment);
            Size size3 = Utils.parseSize(map.get("block-size"), size);
            Size size4 = Utils.parseSize(map.get("alignment"), size2);
            Range rangeIntersect = null;
            Range<Integer> intRange = Utils.parseIntRange(map.get("block-count-range"), null);
            Range<Long> longRange = Utils.parseLongRange(map.get("blocks-per-second-range"), null);
            this.mMeasuredFrameRates = getMeasuredFrameRates(map);
            Pair<Range<Integer>, Range<Integer>> widthHeightRanges = parseWidthHeightRanges(map.get("size-range"));
            if (widthHeightRanges != null) {
                range2 = widthHeightRanges.first;
                range = widthHeightRanges.second;
            } else {
                range = null;
                range2 = null;
            }
            if (!map.containsKey("feature-can-swap-width-height")) {
                rangeExtend = range;
                range3 = range2;
            } else if (range2 != null) {
                this.mSmallerDimensionUpperLimit = Math.min(((Integer) range2.getUpper()).intValue(), ((Integer) range.getUpper()).intValue());
                rangeExtend = range2.extend(range);
                range3 = rangeExtend;
            } else {
                Log.w(TAG, "feature can-swap-width-height is best used with size-range");
                this.mSmallerDimensionUpperLimit = Math.min(((Integer) this.mWidthRange.getUpper()).intValue(), ((Integer) this.mHeightRange.getUpper()).intValue());
                Range rangeExtend2 = this.mWidthRange.extend(this.mHeightRange);
                this.mHeightRange = rangeExtend2;
                this.mWidthRange = rangeExtend2;
                rangeExtend = range;
                range3 = range2;
            }
            Range<Rational> rationalRange = Utils.parseRationalRange(map.get("block-aspect-ratio-range"), null);
            Range<Rational> rationalRange2 = Utils.parseRationalRange(map.get("pixel-aspect-ratio-range"), null);
            Range<Integer> intRange2 = Utils.parseIntRange(map.get("frame-rate-range"), null);
            if (intRange2 != null) {
                try {
                    intRange2 = intRange2.intersect(MediaCodecInfo.FRAME_RATE_RANGE);
                } catch (IllegalArgumentException unused) {
                    Log.w(TAG, "frame rate range (" + intRange2 + ") is out of limits: " + MediaCodecInfo.FRAME_RATE_RANGE);
                    range4 = null;
                }
            }
            range4 = intRange2;
            Range<Integer> intRange3 = Utils.parseIntRange(map.get("bitrate-range"), null);
            if (intRange3 != null) {
                try {
                    rangeIntersect = intRange3.intersect(MediaCodecInfo.BITRATE_RANGE);
                } catch (IllegalArgumentException unused2) {
                    Log.w(TAG, "bitrate range (" + intRange3 + ") is out of limits: " + MediaCodecInfo.BITRATE_RANGE);
                }
                range5 = rangeIntersect;
            } else {
                range5 = intRange3;
            }
            MediaCodecInfo.checkPowerOfTwo(size3.getWidth(), "block-size width must be power of two");
            MediaCodecInfo.checkPowerOfTwo(size3.getHeight(), "block-size height must be power of two");
            MediaCodecInfo.checkPowerOfTwo(size4.getWidth(), "alignment width must be power of two");
            MediaCodecInfo.checkPowerOfTwo(size4.getHeight(), "alignment height must be power of two");
            Range range6 = range5;
            Range<Integer> range7 = range4;
            applyMacroBlockLimits(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Long.MAX_VALUE, size3.getWidth(), size3.getHeight(), size4.getWidth(), size4.getHeight());
            if ((this.mParent.mError & 2) != 0 || this.mAllowMbOverride) {
                if (range3 != null) {
                    this.mWidthRange = MediaCodecInfo.SIZE_RANGE.intersect(range3);
                }
                if (rangeExtend != null) {
                    this.mHeightRange = MediaCodecInfo.SIZE_RANGE.intersect(rangeExtend);
                }
                if (intRange != null) {
                    this.mBlockCountRange = MediaCodecInfo.POSITIVE_INTEGERS.intersect(Utils.factorRange(intRange, ((this.mBlockWidth * this.mBlockHeight) / size3.getWidth()) / size3.getHeight()));
                }
                if (longRange != null) {
                    this.mBlocksPerSecondRange = MediaCodecInfo.POSITIVE_LONGS.intersect(Utils.factorRange(longRange, ((this.mBlockWidth * this.mBlockHeight) / size3.getWidth()) / size3.getHeight()));
                }
                if (rationalRange2 != null) {
                    this.mBlockAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS.intersect(Utils.scaleRange(rationalRange2, this.mBlockHeight / size3.getHeight(), this.mBlockWidth / size3.getWidth()));
                }
                if (rationalRange != null) {
                    this.mAspectRatioRange = MediaCodecInfo.POSITIVE_RATIONALS.intersect(rationalRange);
                }
                if (range7 != null) {
                    this.mFrameRateRange = MediaCodecInfo.FRAME_RATE_RANGE.intersect(range7);
                }
                if (range6 != null) {
                    if ((this.mParent.mError & 2) != 0) {
                        this.mBitrateRange = MediaCodecInfo.BITRATE_RANGE.intersect(range6);
                    } else {
                        this.mBitrateRange = this.mBitrateRange.intersect(range6);
                    }
                }
            } else {
                if (range3 != null) {
                    this.mWidthRange = this.mWidthRange.intersect(range3);
                }
                if (rangeExtend != null) {
                    this.mHeightRange = this.mHeightRange.intersect(rangeExtend);
                }
                if (intRange != null) {
                    this.mBlockCountRange = this.mBlockCountRange.intersect(Utils.factorRange(intRange, ((this.mBlockWidth * this.mBlockHeight) / size3.getWidth()) / size3.getHeight()));
                }
                if (longRange != null) {
                    this.mBlocksPerSecondRange = this.mBlocksPerSecondRange.intersect(Utils.factorRange(longRange, ((this.mBlockWidth * this.mBlockHeight) / size3.getWidth()) / size3.getHeight()));
                }
                if (rationalRange2 != null) {
                    this.mBlockAspectRatioRange = this.mBlockAspectRatioRange.intersect(Utils.scaleRange(rationalRange2, this.mBlockHeight / size3.getHeight(), this.mBlockWidth / size3.getWidth()));
                }
                if (rationalRange != null) {
                    this.mAspectRatioRange = this.mAspectRatioRange.intersect(rationalRange);
                }
                if (range7 != null) {
                    this.mFrameRateRange = this.mFrameRateRange.intersect(range7);
                }
                if (range6 != null) {
                    this.mBitrateRange = this.mBitrateRange.intersect(range6);
                }
            }
            updateLimits();
        }

        private static Pair<Range<Integer>, Range<Integer>> parseWidthHeightRanges(Object obj) {
            Pair<Size, Size> sizeRange = Utils.parseSizeRange(obj);
            if (sizeRange == null) {
                return null;
            }
            try {
                return Pair.create(Range.create(Integer.valueOf(sizeRange.first.getWidth()), Integer.valueOf(sizeRange.second.getWidth())), Range.create(Integer.valueOf(sizeRange.first.getHeight()), Integer.valueOf(sizeRange.second.getHeight())));
            } catch (IllegalArgumentException unused) {
                Log.w(TAG, "could not parse size range '" + obj + "'");
                return null;
            }
        }

        private boolean supports(Integer num, Integer num2, Number number) {
            boolean z2 = false;
            boolean zContains = num == null || (this.mWidthRange.contains(num) && num.intValue() % this.mWidthAlignment == 0);
            if (zContains && num2 != null) {
                zContains = this.mHeightRange.contains(num2) && num2.intValue() % this.mHeightAlignment == 0;
            }
            if (zContains && number != null) {
                zContains = this.mFrameRateRange.contains(Utils.intRangeFor(number.doubleValue()));
            }
            if (!zContains || num2 == null || num == null) {
                return zContains;
            }
            boolean z3 = Math.min(num2.intValue(), num.intValue()) <= this.mSmallerDimensionUpperLimit;
            int iDivUp = Utils.divUp(num.intValue(), this.mBlockWidth);
            int iDivUp2 = Utils.divUp(num2.intValue(), this.mBlockHeight);
            int i2 = iDivUp * iDivUp2;
            if (z3 && this.mBlockCountRange.contains(Integer.valueOf(i2)) && this.mBlockAspectRatioRange.contains(new Rational(iDivUp, iDivUp2)) && this.mAspectRatioRange.contains(new Rational(num.intValue(), num2.intValue()))) {
                z2 = true;
            }
            if (!z2 || number == null) {
                return z2;
            }
            return this.mBlocksPerSecondRange.contains(Utils.longRangeFor(number.doubleValue() * ((double) i2)));
        }

        private void updateLimits() {
            Range rangeIntersect = this.mHorizontalBlockRange.intersect(Utils.factorRange(this.mWidthRange, this.mBlockWidth));
            this.mHorizontalBlockRange = rangeIntersect;
            this.mHorizontalBlockRange = rangeIntersect.intersect(Range.create(Integer.valueOf(((Integer) this.mBlockCountRange.getLower()).intValue() / ((Integer) this.mVerticalBlockRange.getUpper()).intValue()), Integer.valueOf(((Integer) this.mBlockCountRange.getUpper()).intValue() / ((Integer) this.mVerticalBlockRange.getLower()).intValue())));
            Range rangeIntersect2 = this.mVerticalBlockRange.intersect(Utils.factorRange(this.mHeightRange, this.mBlockHeight));
            this.mVerticalBlockRange = rangeIntersect2;
            this.mVerticalBlockRange = rangeIntersect2.intersect(Range.create(Integer.valueOf(((Integer) this.mBlockCountRange.getLower()).intValue() / ((Integer) this.mHorizontalBlockRange.getUpper()).intValue()), Integer.valueOf(((Integer) this.mBlockCountRange.getUpper()).intValue() / ((Integer) this.mHorizontalBlockRange.getLower()).intValue())));
            this.mBlockCountRange = this.mBlockCountRange.intersect(Range.create(Integer.valueOf(((Integer) this.mVerticalBlockRange.getLower()).intValue() * ((Integer) this.mHorizontalBlockRange.getLower()).intValue()), Integer.valueOf(((Integer) this.mVerticalBlockRange.getUpper()).intValue() * ((Integer) this.mHorizontalBlockRange.getUpper()).intValue())));
            this.mBlockAspectRatioRange = this.mBlockAspectRatioRange.intersect(new Rational(((Integer) this.mHorizontalBlockRange.getLower()).intValue(), ((Integer) this.mVerticalBlockRange.getUpper()).intValue()), new Rational(((Integer) this.mHorizontalBlockRange.getUpper()).intValue(), ((Integer) this.mVerticalBlockRange.getLower()).intValue()));
            this.mWidthRange = this.mWidthRange.intersect(Integer.valueOf(((((Integer) this.mHorizontalBlockRange.getLower()).intValue() - 1) * this.mBlockWidth) + this.mWidthAlignment), Integer.valueOf(((Integer) this.mHorizontalBlockRange.getUpper()).intValue() * this.mBlockWidth));
            this.mHeightRange = this.mHeightRange.intersect(Integer.valueOf(((((Integer) this.mVerticalBlockRange.getLower()).intValue() - 1) * this.mBlockHeight) + this.mHeightAlignment), Integer.valueOf(((Integer) this.mVerticalBlockRange.getUpper()).intValue() * this.mBlockHeight));
            this.mAspectRatioRange = this.mAspectRatioRange.intersect(new Rational(((Integer) this.mWidthRange.getLower()).intValue(), ((Integer) this.mHeightRange.getUpper()).intValue()), new Rational(((Integer) this.mWidthRange.getUpper()).intValue(), ((Integer) this.mHeightRange.getLower()).intValue()));
            this.mSmallerDimensionUpperLimit = Math.min(this.mSmallerDimensionUpperLimit, Math.min(((Integer) this.mWidthRange.getUpper()).intValue(), ((Integer) this.mHeightRange.getUpper()).intValue()));
            Range rangeIntersect3 = this.mBlocksPerSecondRange.intersect(Long.valueOf(((long) ((Integer) this.mBlockCountRange.getLower()).intValue()) * ((long) ((Integer) this.mFrameRateRange.getLower()).intValue())), Long.valueOf(((long) ((Integer) this.mBlockCountRange.getUpper()).intValue()) * ((long) ((Integer) this.mFrameRateRange.getUpper()).intValue())));
            this.mBlocksPerSecondRange = rangeIntersect3;
            this.mFrameRateRange = this.mFrameRateRange.intersect(Integer.valueOf((int) (((Long) rangeIntersect3.getLower()).longValue() / ((long) ((Integer) this.mBlockCountRange.getUpper()).intValue()))), Integer.valueOf((int) (((Long) this.mBlocksPerSecondRange.getUpper()).longValue() / ((double) ((Integer) this.mBlockCountRange.getLower()).intValue()))));
        }

        public boolean areSizeAndRateSupported(int i2, int i3, double d2) {
            return supports(Integer.valueOf(i2), Integer.valueOf(i3), Double.valueOf(d2));
        }

        public Range<Double> getAchievableFrameRatesFor(int i2, int i3) {
            if (!supports(Integer.valueOf(i2), Integer.valueOf(i3), null)) {
                throw new IllegalArgumentException("unsupported size");
            }
            Map<Size, Range<Long>> map = this.mMeasuredFrameRates;
            if (map != null && map.size() > 0) {
                return estimateFrameRatesFor(i2, i3);
            }
            Log.w(TAG, "Codec did not publish any measurement data.");
            return null;
        }

        public Range<Rational> getAspectRatioRange(boolean z2) {
            return z2 ? this.mBlockAspectRatioRange : this.mAspectRatioRange;
        }

        public Range<Integer> getBitrateRange() {
            return this.mBitrateRange;
        }

        public Range<Integer> getBlockCountRange() {
            return this.mBlockCountRange;
        }

        public Size getBlockSize() {
            return new Size(this.mBlockWidth, this.mBlockHeight);
        }

        public Range<Long> getBlocksPerSecondRange() {
            return this.mBlocksPerSecondRange;
        }

        public int getHeightAlignment() {
            return this.mHeightAlignment;
        }

        public int getSmallerDimensionUpperLimit() {
            return this.mSmallerDimensionUpperLimit;
        }

        public Range<Integer> getSupportedFrameRates() {
            return this.mFrameRateRange;
        }

        public Range<Double> getSupportedFrameRatesFor(int i2, int i3) {
            if (!supports(Integer.valueOf(i2), Integer.valueOf(i3), null)) {
                throw new IllegalArgumentException("unsupported size");
            }
            double dDivUp = Utils.divUp(i2, this.mBlockWidth) * Utils.divUp(i3, this.mBlockHeight);
            return Range.create(Double.valueOf(Math.max(((Long) this.mBlocksPerSecondRange.getLower()).longValue() / dDivUp, ((Integer) this.mFrameRateRange.getLower()).intValue())), Double.valueOf(Math.min(((Long) this.mBlocksPerSecondRange.getUpper()).longValue() / dDivUp, ((Integer) this.mFrameRateRange.getUpper()).intValue())));
        }

        public Range<Integer> getSupportedHeights() {
            return this.mHeightRange;
        }

        public Range<Integer> getSupportedHeightsFor(int i2) {
            try {
                Range<Integer> range = this.mHeightRange;
                if (!this.mWidthRange.contains(Integer.valueOf(i2)) || i2 % this.mWidthAlignment != 0) {
                    throw new IllegalArgumentException("unsupported width");
                }
                int iDivUp = Utils.divUp(i2, this.mBlockWidth);
                double d2 = iDivUp;
                Range rangeIntersect = range.intersect(Integer.valueOf(((Math.max(Utils.divUp(((Integer) this.mBlockCountRange.getLower()).intValue(), iDivUp), (int) Math.ceil(d2 / ((Rational) this.mBlockAspectRatioRange.getUpper()).doubleValue())) - 1) * this.mBlockHeight) + this.mHeightAlignment), Integer.valueOf(Math.min(((Integer) this.mBlockCountRange.getUpper()).intValue() / iDivUp, (int) (d2 / ((Rational) this.mBlockAspectRatioRange.getLower()).doubleValue())) * this.mBlockHeight));
                if (i2 > this.mSmallerDimensionUpperLimit) {
                    rangeIntersect = rangeIntersect.intersect(1, Integer.valueOf(this.mSmallerDimensionUpperLimit));
                }
                double d3 = i2;
                return rangeIntersect.intersect(Integer.valueOf((int) Math.ceil(d3 / ((Rational) this.mAspectRatioRange.getUpper()).doubleValue())), Integer.valueOf((int) (d3 / ((Rational) this.mAspectRatioRange.getLower()).doubleValue())));
            } catch (IllegalArgumentException unused) {
                Log.v(TAG, "could not get supported heights for " + i2);
                throw new IllegalArgumentException("unsupported width");
            }
        }

        public Range<Integer> getSupportedWidths() {
            return this.mWidthRange;
        }

        public Range<Integer> getSupportedWidthsFor(int i2) {
            try {
                Range<Integer> range = this.mWidthRange;
                if (!this.mHeightRange.contains(Integer.valueOf(i2)) || i2 % this.mHeightAlignment != 0) {
                    throw new IllegalArgumentException("unsupported height");
                }
                int iDivUp = Utils.divUp(i2, this.mBlockHeight);
                double d2 = iDivUp;
                Range rangeIntersect = range.intersect(Integer.valueOf(((Math.max(Utils.divUp(((Integer) this.mBlockCountRange.getLower()).intValue(), iDivUp), (int) Math.ceil(((Rational) this.mBlockAspectRatioRange.getLower()).doubleValue() * d2)) - 1) * this.mBlockWidth) + this.mWidthAlignment), Integer.valueOf(Math.min(((Integer) this.mBlockCountRange.getUpper()).intValue() / iDivUp, (int) (((Rational) this.mBlockAspectRatioRange.getUpper()).doubleValue() * d2)) * this.mBlockWidth));
                if (i2 > this.mSmallerDimensionUpperLimit) {
                    rangeIntersect = rangeIntersect.intersect(1, Integer.valueOf(this.mSmallerDimensionUpperLimit));
                }
                double d3 = i2;
                return rangeIntersect.intersect(Integer.valueOf((int) Math.ceil(((Rational) this.mAspectRatioRange.getLower()).doubleValue() * d3)), Integer.valueOf((int) (((Rational) this.mAspectRatioRange.getUpper()).doubleValue() * d3)));
            } catch (IllegalArgumentException unused) {
                Log.v(TAG, "could not get supported widths for " + i2);
                throw new IllegalArgumentException("unsupported height");
            }
        }

        public int getWidthAlignment() {
            return this.mWidthAlignment;
        }

        public void init(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            this.mParent = codecCapabilities;
            initWithPlatformLimits();
            applyLevelLimits();
            parseFromInfo(mediaFormat);
            updateLimits();
        }

        public boolean isSizeSupported(int i2, int i3) {
            return supports(Integer.valueOf(i2), Integer.valueOf(i3), null);
        }

        public boolean supportsFormat(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            return supports((Integer) map.get("width"), (Integer) map.get("height"), (Number) map.get(MediaFormat.KEY_FRAME_RATE)) && CodecCapabilities.supportsBitrate(this.mBitrateRange, mediaFormat);
        }

        private void applyMacroBlockLimits(int i2, int i3, int i4, int i5, int i6, long j2, int i7, int i8, int i9, int i10) {
            applyAlignment(i9, i10);
            applyBlockLimits(i7, i8, Range.create(1, Integer.valueOf(i6)), Range.create(1L, Long.valueOf(j2)), Range.create(new Rational(1, i5), new Rational(i4, 1)));
            this.mHorizontalBlockRange = this.mHorizontalBlockRange.intersect(Integer.valueOf(Utils.divUp(i2, this.mBlockWidth / i7)), Integer.valueOf(i4 / (this.mBlockWidth / i7)));
            this.mVerticalBlockRange = this.mVerticalBlockRange.intersect(Integer.valueOf(Utils.divUp(i3, this.mBlockHeight / i8)), Integer.valueOf(i5 / (this.mBlockHeight / i8)));
        }
    }

    public MediaCodecInfo(String str, boolean z2, CodecCapabilities[] codecCapabilitiesArr) {
        this.mName = str;
        this.mIsEncoder = z2;
        for (CodecCapabilities codecCapabilities : codecCapabilitiesArr) {
            this.mCaps.put(codecCapabilities.getMimeType(), codecCapabilities);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int checkPowerOfTwo(int i2, String str) {
        if (((i2 - 1) & i2) == 0) {
            return i2;
        }
        throw new IllegalArgumentException(str);
    }

    public final CodecCapabilities getCapabilitiesForType(String str) {
        CodecCapabilities codecCapabilities = this.mCaps.get(str);
        if (codecCapabilities != null) {
            return codecCapabilities.dup();
        }
        throw new IllegalArgumentException("codec does not support type");
    }

    public final String getName() {
        return this.mName;
    }

    public final String[] getSupportedTypes() {
        Set<String> setKeySet = this.mCaps.keySet();
        String[] strArr = (String[]) setKeySet.toArray(new String[setKeySet.size()]);
        Arrays.sort(strArr);
        return strArr;
    }

    public final boolean isEncoder() {
        return this.mIsEncoder;
    }

    public MediaCodecInfo makeRegular() {
        ArrayList arrayList = new ArrayList();
        for (CodecCapabilities codecCapabilities : this.mCaps.values()) {
            if (codecCapabilities.isRegular()) {
                arrayList.add(codecCapabilities);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList.size() == this.mCaps.size() ? this : new MediaCodecInfo(this.mName, this.mIsEncoder, (CodecCapabilities[]) arrayList.toArray(new CodecCapabilities[arrayList.size()]));
    }

    public static final class AudioCapabilities {
        private static final int MAX_INPUT_CHANNEL_COUNT = 30;
        private static final String TAG = "AudioCapabilities";
        private Range<Integer> mBitrateRange;
        private int mMaxInputChannelCount;
        private CodecCapabilities mParent;
        private Range<Integer>[] mSampleRateRanges;
        private int[] mSampleRates;

        private AudioCapabilities() {
        }

        /* JADX WARN: Code duplicated, block: B:47:0x0186  */
        /* JADX WARN: Code duplicated, block: B:48:0x018a A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:49:0x018c  */
        private void applyLevelLimits() {
            int[] iArr;
            Range<Integer> rangeCreate;
            Range<Integer> rangeCreate2;
            Range<Integer> rangeCreate3;
            String mimeType = this.mParent.getMimeType();
            int i2 = 2;
            int[] iArr2 = null;
            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_MPEG)) {
                iArr = new int[]{8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000};
                rangeCreate = Range.create(8000, 320000);
            } else {
                if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_NB)) {
                    iArr = new int[]{8000};
                    rangeCreate = Range.create(4750, 12200);
                } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AMR_WB)) {
                    iArr = new int[]{16000};
                    rangeCreate = Range.create(6600, 23850);
                } else {
                    if (!mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AAC)) {
                        if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_VORBIS)) {
                            Range<Integer> rangeCreate4 = Range.create(32000, 500000);
                            i2 = 255;
                            rangeCreate3 = Range.create(8000, Integer.valueOf(AudioFormat.SAMPLE_RATE_HZ_MAX));
                            rangeCreate = rangeCreate4;
                            rangeCreate2 = rangeCreate3;
                        } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_OPUS)) {
                            i2 = 255;
                            rangeCreate = Range.create(Integer.valueOf(BluetoothHealth.HEALTH_OPERATION_SUCCESS), 510000);
                            rangeCreate2 = null;
                            iArr2 = new int[]{8000, 12000, 16000, 24000, 48000};
                        } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_RAW)) {
                            rangeCreate2 = Range.create(1, 96000);
                            rangeCreate = Range.create(1, 10000000);
                            i2 = AudioTrack.CHANNEL_COUNT_MAX;
                        } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_FLAC)) {
                            rangeCreate2 = Range.create(1, 655350);
                            rangeCreate = null;
                            i2 = 255;
                        } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_ALAW) || mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_G711_MLAW)) {
                            iArr = new int[]{8000};
                            rangeCreate = Range.create(64000, 64000);
                            i2 = 30;
                        } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_MSGSM)) {
                            iArr = new int[]{8000};
                            rangeCreate = Range.create(13000, 13000);
                        } else {
                            if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_AC3)) {
                                i2 = 6;
                            } else if (mimeType.equalsIgnoreCase(MediaFormat.MIMETYPE_AUDIO_EAC3)) {
                                i2 = 16;
                            } else {
                                Log.w(TAG, "Unsupported mime ".concat(mimeType));
                                this.mParent.mError |= 2;
                                i2 = 30;
                            }
                            rangeCreate2 = null;
                            rangeCreate = null;
                        }
                        if (iArr2 != null) {
                            limitSampleRates(iArr2);
                        } else if (rangeCreate2 != null) {
                            limitSampleRates(new Range[]{rangeCreate2});
                        }
                        applyLimits(i2, rangeCreate);
                    }
                    iArr = new int[]{7350, 8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000, 64000, 88200, 96000};
                    rangeCreate = Range.create(8000, 510000);
                    i2 = 48;
                }
                i2 = 1;
            }
            rangeCreate3 = null;
            iArr2 = iArr;
            rangeCreate2 = rangeCreate3;
            if (iArr2 != null) {
                limitSampleRates(iArr2);
            } else if (rangeCreate2 != null) {
                limitSampleRates(new Range[]{rangeCreate2});
            }
            applyLimits(i2, rangeCreate);
        }

        private void applyLimits(int i2, Range<Integer> range) {
            this.mMaxInputChannelCount = ((Integer) Range.create(1, Integer.valueOf(this.mMaxInputChannelCount)).clamp(Integer.valueOf(i2))).intValue();
            if (range != null) {
                this.mBitrateRange = this.mBitrateRange.intersect(range);
            }
        }

        public static AudioCapabilities create(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            AudioCapabilities audioCapabilities = new AudioCapabilities();
            audioCapabilities.init(mediaFormat, codecCapabilities);
            return audioCapabilities;
        }

        private void createDiscreteSampleRates() {
            this.mSampleRates = new int[this.mSampleRateRanges.length];
            int i2 = 0;
            while (true) {
                Range<Integer>[] rangeArr = this.mSampleRateRanges;
                if (i2 >= rangeArr.length) {
                    return;
                }
                this.mSampleRates[i2] = ((Integer) rangeArr[i2].getLower()).intValue();
                i2++;
            }
        }

        private void initWithPlatformLimits() {
            this.mBitrateRange = Range.create(0, Integer.MAX_VALUE);
            this.mMaxInputChannelCount = 30;
            this.mSampleRateRanges = new Range[]{Range.create(8000, 96000)};
            this.mSampleRates = null;
        }

        private void limitSampleRates(int[] iArr) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i2 : iArr) {
                if (supports(Integer.valueOf(i2), null)) {
                    arrayList.add(Range.create(Integer.valueOf(i2), Integer.valueOf(i2)));
                }
            }
            this.mSampleRateRanges = (Range[]) arrayList.toArray(new Range[arrayList.size()]);
            createDiscreteSampleRates();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void parseFromInfo(MediaFormat mediaFormat) {
            Range rangeIntersect = MediaCodecInfo.POSITIVE_INTEGERS;
            int intSafely = 0;
            if (mediaFormat.containsKey("sample-rate-ranges")) {
                String[] strArrSplit = mediaFormat.getString("sample-rate-ranges").split(",");
                Range[] rangeArr = new Range[strArrSplit.length];
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    rangeArr[i2] = Utils.parseIntRange(strArrSplit[i2], null);
                }
                limitSampleRates((Range<Integer>[]) rangeArr);
            }
            if (mediaFormat.containsKey("max-channel-count")) {
                intSafely = Utils.parseIntSafely(mediaFormat.getString("max-channel-count"), 30);
            } else if ((this.mParent.mError & 2) == 0) {
                intSafely = 30;
            }
            if (mediaFormat.containsKey("bitrate-range")) {
                rangeIntersect = rangeIntersect.intersect(Utils.parseIntRange(mediaFormat.getString("bitrate-range"), rangeIntersect));
            }
            applyLimits(intSafely, rangeIntersect);
        }

        private boolean supports(Integer num, Integer num2) {
            if (num2 == null || (num2.intValue() >= 1 && num2.intValue() <= this.mMaxInputChannelCount)) {
                return num == null || Utils.binarySearchDistinctRanges(this.mSampleRateRanges, num) >= 0;
            }
            return false;
        }

        public Range<Integer> getBitrateRange() {
            return this.mBitrateRange;
        }

        public int getMaxInputChannelCount() {
            return this.mMaxInputChannelCount;
        }

        public Range<Integer>[] getSupportedSampleRateRanges() {
            Range<Integer>[] rangeArr = this.mSampleRateRanges;
            return (Range[]) Arrays.copyOf(rangeArr, rangeArr.length);
        }

        public int[] getSupportedSampleRates() {
            int[] iArr = this.mSampleRates;
            return Arrays.copyOf(iArr, iArr.length);
        }

        public void init(MediaFormat mediaFormat, CodecCapabilities codecCapabilities) {
            this.mParent = codecCapabilities;
            initWithPlatformLimits();
            applyLevelLimits();
            parseFromInfo(mediaFormat);
        }

        public boolean isSampleRateSupported(int i2) {
            return supports(Integer.valueOf(i2), null);
        }

        public void setDefaultFormat(MediaFormat mediaFormat) {
            if (((Integer) this.mBitrateRange.getLower()).equals(this.mBitrateRange.getUpper())) {
                mediaFormat.setInteger(MediaFormat.KEY_BIT_RATE, ((Integer) this.mBitrateRange.getLower()).intValue());
            }
            if (this.mMaxInputChannelCount == 1) {
                mediaFormat.setInteger(MediaFormat.KEY_CHANNEL_COUNT, 1);
            }
            int[] iArr = this.mSampleRates;
            if (iArr == null || iArr.length != 1) {
                return;
            }
            mediaFormat.setInteger(MediaFormat.KEY_SAMPLE_RATE, iArr[0]);
        }

        public boolean supportsFormat(MediaFormat mediaFormat) {
            Map<String, Object> map = mediaFormat.getMap();
            return supports((Integer) map.get(MediaFormat.KEY_SAMPLE_RATE), (Integer) map.get(MediaFormat.KEY_CHANNEL_COUNT)) && CodecCapabilities.supportsBitrate(this.mBitrateRange, mediaFormat);
        }

        private void limitSampleRates(Range<Integer>[] rangeArr) {
            Utils.sortDistinctRanges(rangeArr);
            Range<Integer>[] rangeArrIntersectSortedDistinctRanges = Utils.intersectSortedDistinctRanges(this.mSampleRateRanges, rangeArr);
            this.mSampleRateRanges = rangeArrIntersectSortedDistinctRanges;
            for (Range<Integer> range : rangeArrIntersectSortedDistinctRanges) {
                if (!((Integer) range.getLower()).equals(range.getUpper())) {
                    this.mSampleRates = null;
                    return;
                }
            }
            createDiscreteSampleRates();
        }
    }
}
