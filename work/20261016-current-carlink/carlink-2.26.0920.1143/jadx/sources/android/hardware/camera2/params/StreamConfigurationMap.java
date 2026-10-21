package android.hardware.camera2.params;

import android.accessibilityservice.c;
import android.app.m;
import android.graphics.ImageFormat;
import android.graphics.PixelFormat;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.utils.HashCodeHelpers;
import android.hardware.camera2.utils.SurfaceUtils;
import android.media.ImageReader;
import android.media.MediaCodec;
import android.media.MediaRecorder;
import android.renderscript.Allocation;
import android.util.Range;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.android.internal.telephony.IccCardConstants;
import com.android.internal.util.Preconditions;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class StreamConfigurationMap {
    private static final long DURATION_20FPS_NS = 50000000;
    private static final int DURATION_MIN_FRAME = 0;
    private static final int DURATION_STALL = 1;
    private static final int HAL_DATASPACE_DEPTH = 4096;
    private static final int HAL_DATASPACE_RANGE_SHIFT = 27;
    private static final int HAL_DATASPACE_STANDARD_SHIFT = 16;
    private static final int HAL_DATASPACE_TRANSFER_SHIFT = 22;
    private static final int HAL_DATASPACE_UNKNOWN = 0;
    private static final int HAL_DATASPACE_V0_JFIF = 146931712;
    private static final int HAL_PIXEL_FORMAT_BLOB = 33;
    private static final int HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED = 34;
    private static final int HAL_PIXEL_FORMAT_RAW10 = 37;
    private static final int HAL_PIXEL_FORMAT_RAW12 = 38;
    private static final int HAL_PIXEL_FORMAT_RAW16 = 32;
    private static final int HAL_PIXEL_FORMAT_RAW_OPAQUE = 36;
    private static final int HAL_PIXEL_FORMAT_Y16 = 540422489;
    private static final int HAL_PIXEL_FORMAT_YCbCr_420_888 = 35;
    private static final String TAG = "StreamConfigurationMap";
    private final StreamConfiguration[] mConfigurations;
    private final StreamConfiguration[] mDepthConfigurations;
    private final StreamConfigurationDuration[] mDepthMinFrameDurations;
    private final StreamConfigurationDuration[] mDepthStallDurations;
    private final HighSpeedVideoConfiguration[] mHighSpeedVideoConfigurations;
    private final ReprocessFormatsMap mInputOutputFormatsMap;
    private final boolean mListHighResolution;
    private final StreamConfigurationDuration[] mMinFrameDurations;
    private final StreamConfigurationDuration[] mStallDurations;
    private final SparseIntArray mOutputFormats = new SparseIntArray();
    private final SparseIntArray mHighResOutputFormats = new SparseIntArray();
    private final SparseIntArray mAllOutputFormats = new SparseIntArray();
    private final SparseIntArray mInputFormats = new SparseIntArray();
    private final SparseIntArray mDepthOutputFormats = new SparseIntArray();
    private final HashMap<Size, Integer> mHighSpeedVideoSizeMap = new HashMap<>();
    private final HashMap<Range<Integer>, Integer> mHighSpeedVideoFpsRangeMap = new HashMap<>();

    public StreamConfigurationMap(StreamConfiguration[] streamConfigurationArr, StreamConfigurationDuration[] streamConfigurationDurationArr, StreamConfigurationDuration[] streamConfigurationDurationArr2, StreamConfiguration[] streamConfigurationArr2, StreamConfigurationDuration[] streamConfigurationDurationArr3, StreamConfigurationDuration[] streamConfigurationDurationArr4, HighSpeedVideoConfiguration[] highSpeedVideoConfigurationArr, ReprocessFormatsMap reprocessFormatsMap, boolean z2) {
        SparseIntArray sparseIntArray;
        long duration;
        if (streamConfigurationArr == null) {
            Preconditions.checkArrayElementsNotNull(streamConfigurationArr2, "depthConfigurations");
            this.mConfigurations = new StreamConfiguration[0];
            this.mMinFrameDurations = new StreamConfigurationDuration[0];
            this.mStallDurations = new StreamConfigurationDuration[0];
        } else {
            this.mConfigurations = (StreamConfiguration[]) Preconditions.checkArrayElementsNotNull(streamConfigurationArr, "configurations");
            this.mMinFrameDurations = (StreamConfigurationDuration[]) Preconditions.checkArrayElementsNotNull(streamConfigurationDurationArr, "minFrameDurations");
            this.mStallDurations = (StreamConfigurationDuration[]) Preconditions.checkArrayElementsNotNull(streamConfigurationDurationArr2, "stallDurations");
        }
        this.mListHighResolution = z2;
        if (streamConfigurationArr2 == null) {
            this.mDepthConfigurations = new StreamConfiguration[0];
            this.mDepthMinFrameDurations = new StreamConfigurationDuration[0];
            this.mDepthStallDurations = new StreamConfigurationDuration[0];
        } else {
            this.mDepthConfigurations = (StreamConfiguration[]) Preconditions.checkArrayElementsNotNull(streamConfigurationArr2, "depthConfigurations");
            this.mDepthMinFrameDurations = (StreamConfigurationDuration[]) Preconditions.checkArrayElementsNotNull(streamConfigurationDurationArr3, "depthMinFrameDurations");
            this.mDepthStallDurations = (StreamConfigurationDuration[]) Preconditions.checkArrayElementsNotNull(streamConfigurationDurationArr4, "depthStallDurations");
        }
        if (highSpeedVideoConfigurationArr == null) {
            this.mHighSpeedVideoConfigurations = new HighSpeedVideoConfiguration[0];
        } else {
            this.mHighSpeedVideoConfigurations = (HighSpeedVideoConfiguration[]) Preconditions.checkArrayElementsNotNull(highSpeedVideoConfigurationArr, "highSpeedVideoConfigurations");
        }
        for (StreamConfiguration streamConfiguration : this.mConfigurations) {
            int format = streamConfiguration.getFormat();
            if (streamConfiguration.isOutput()) {
                SparseIntArray sparseIntArray2 = this.mAllOutputFormats;
                sparseIntArray2.put(format, sparseIntArray2.get(format) + 1);
                if (!this.mListHighResolution) {
                    duration = 0;
                    break;
                }
                StreamConfigurationDuration[] streamConfigurationDurationArr5 = this.mMinFrameDurations;
                int length = streamConfigurationDurationArr5.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        duration = 0;
                        break;
                    }
                    StreamConfigurationDuration streamConfigurationDuration = streamConfigurationDurationArr5[i2];
                    if (streamConfigurationDuration.getFormat() == format && streamConfigurationDuration.getWidth() == streamConfiguration.getSize().getWidth() && streamConfigurationDuration.getHeight() == streamConfiguration.getSize().getHeight()) {
                        duration = streamConfigurationDuration.getDuration();
                        break;
                    }
                    i2++;
                }
                sparseIntArray = duration <= DURATION_20FPS_NS ? this.mOutputFormats : this.mHighResOutputFormats;
            } else {
                sparseIntArray = this.mInputFormats;
            }
            sparseIntArray.put(format, sparseIntArray.get(format) + 1);
        }
        for (StreamConfiguration streamConfiguration2 : this.mDepthConfigurations) {
            if (streamConfiguration2.isOutput()) {
                this.mDepthOutputFormats.put(streamConfiguration2.getFormat(), this.mDepthOutputFormats.get(streamConfiguration2.getFormat()) + 1);
            }
        }
        if (streamConfigurationArr != null && this.mOutputFormats.indexOfKey(34) < 0) {
            throw new AssertionError("At least one stream configuration for IMPLEMENTATION_DEFINED must exist");
        }
        for (HighSpeedVideoConfiguration highSpeedVideoConfiguration : this.mHighSpeedVideoConfigurations) {
            Size size = highSpeedVideoConfiguration.getSize();
            Range<Integer> fpsRange = highSpeedVideoConfiguration.getFpsRange();
            Integer num = this.mHighSpeedVideoSizeMap.get(size);
            this.mHighSpeedVideoSizeMap.put(size, Integer.valueOf((num == null ? 0 : num).intValue() + 1));
            Integer num2 = this.mHighSpeedVideoFpsRangeMap.get(fpsRange);
            if (num2 == null) {
                num2 = 0;
            }
            this.mHighSpeedVideoFpsRangeMap.put(fpsRange, Integer.valueOf(num2.intValue() + 1));
        }
        this.mInputOutputFormatsMap = reprocessFormatsMap;
    }

    private void appendHighResOutputsString(StringBuilder sb) {
        sb.append("HighResolutionOutputs(");
        for (int i2 : getOutputFormats()) {
            Size[] highResolutionOutputSizes = getHighResolutionOutputSizes(i2);
            if (highResolutionOutputSizes != null) {
                for (Size size : highResolutionOutputSizes) {
                    sb.append(String.format("[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], ", Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight()), formatToString(i2), Integer.valueOf(i2), Long.valueOf(getOutputMinFrameDuration(i2, size)), Long.valueOf(getOutputStallDuration(i2, size))));
                }
            }
        }
        if (sb.charAt(sb.length() - 1) == ' ') {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(")");
    }

    private void appendHighSpeedVideoConfigurationsString(StringBuilder sb) {
        sb.append("HighSpeedVideoConfigurations(");
        for (Size size : getHighSpeedVideoSizes()) {
            for (Range<Integer> range : getHighSpeedVideoFpsRangesFor(size)) {
                sb.append(String.format("[w:%d, h:%d, min_fps:%d, max_fps:%d], ", Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight()), range.getLower(), range.getUpper()));
            }
        }
        if (sb.charAt(sb.length() - 1) == ' ') {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(")");
    }

    private void appendInputsString(StringBuilder sb) {
        sb.append("Inputs(");
        for (int i2 : getInputFormats()) {
            for (Size size : getInputSizes(i2)) {
                sb.append(String.format("[w:%d, h:%d, format:%s(%d)], ", Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight()), formatToString(i2), Integer.valueOf(i2)));
            }
        }
        if (sb.charAt(sb.length() - 1) == ' ') {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(")");
    }

    private void appendOutputsString(StringBuilder sb) {
        sb.append("Outputs(");
        for (int i2 : getOutputFormats()) {
            for (Size size : getOutputSizes(i2)) {
                sb.append(String.format("[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], ", Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight()), formatToString(i2), Integer.valueOf(i2), Long.valueOf(getOutputMinFrameDuration(i2, size)), Long.valueOf(getOutputStallDuration(i2, size))));
            }
        }
        if (sb.charAt(sb.length() - 1) == ' ') {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(")");
    }

    private void appendValidOutputFormatsForInputString(StringBuilder sb) {
        sb.append("ValidOutputFormatsForInput(");
        for (int i2 : getInputFormats()) {
            sb.append(String.format("[in:%s(%d), out:", formatToString(i2), Integer.valueOf(i2)));
            int[] validOutputFormatsForInput = getValidOutputFormatsForInput(i2);
            for (int i3 = 0; i3 < validOutputFormatsForInput.length; i3++) {
                sb.append(String.format("%s(%d)", formatToString(validOutputFormatsForInput[i3]), Integer.valueOf(validOutputFormatsForInput[i3])));
                if (i3 < validOutputFormatsForInput.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("], ");
        }
        if (sb.charAt(sb.length() - 1) == ' ') {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(")");
    }

    private static <T> boolean arrayContains(T[] tArr, T t2) {
        if (tArr == null) {
            return false;
        }
        for (T t3 : tArr) {
            if (Objects.equals(t3, t2)) {
                return true;
            }
        }
        return false;
    }

    public static int checkArgumentFormat(int i2) {
        if (ImageFormat.isPublicFormat(i2) || PixelFormat.isPublicFormat(i2)) {
            return i2;
        }
        throw new IllegalArgumentException(String.format("format 0x%x was not defined in either ImageFormat or PixelFormat", Integer.valueOf(i2)));
    }

    public static int checkArgumentFormatInternal(int i2) {
        if (i2 != 33 && i2 != 34 && i2 != 36) {
            if (i2 == 256) {
                throw new IllegalArgumentException("ImageFormat.JPEG is an unknown internal format");
            }
            if (i2 != 540422489) {
                return checkArgumentFormat(i2);
            }
        }
        return i2;
    }

    private int checkArgumentFormatSupported(int i2, boolean z2) {
        checkArgumentFormat(i2);
        int iImageFormatToInternal = imageFormatToInternal(i2);
        int iImageFormatToDataspace = imageFormatToDataspace(i2);
        if (z2) {
            if (iImageFormatToDataspace == 4096) {
                if (this.mDepthOutputFormats.indexOfKey(iImageFormatToInternal) >= 0) {
                    return i2;
                }
            } else if (this.mAllOutputFormats.indexOfKey(iImageFormatToInternal) >= 0) {
                return i2;
            }
        } else if (this.mInputFormats.indexOfKey(iImageFormatToInternal) >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(String.format("format %x is not supported by this stream configuration map", Integer.valueOf(i2)));
    }

    public static int depthFormatToPublic(int i2) {
        if (i2 == 256) {
            throw new IllegalArgumentException("ImageFormat.JPEG is an unknown internal format");
        }
        if (i2 == 540422489) {
            return ImageFormat.DEPTH16;
        }
        switch (i2) {
            case 32:
                return 4098;
            case 33:
                return 257;
            case 34:
                throw new IllegalArgumentException("IMPLEMENTATION_DEFINED must not leak to public API");
            default:
                throw new IllegalArgumentException(c.d("Unknown DATASPACE_DEPTH format ", i2));
        }
    }

    private String formatToString(int i2) {
        if (i2 == 1) {
            return "RGBA_8888";
        }
        if (i2 == 2) {
            return "RGBX_8888";
        }
        if (i2 == 3) {
            return "RGB_888";
        }
        if (i2 == 4) {
            return "RGB_565";
        }
        if (i2 == 16) {
            return "NV16";
        }
        if (i2 == 17) {
            return "NV21";
        }
        if (i2 == 256) {
            return "JPEG";
        }
        if (i2 == 257) {
            return "DEPTH_POINT_CLOUD";
        }
        switch (i2) {
            case 20:
                return "YUY2";
            case 32:
                return "RAW_SENSOR";
            case 4098:
                return "RAW_DEPTH";
            case ImageFormat.Y8 /* 538982489 */:
                return "Y8";
            case 540422489:
                return "Y16";
            case ImageFormat.YV12 /* 842094169 */:
                return "YV12";
            case ImageFormat.DEPTH16 /* 1144402265 */:
                return "DEPTH16";
            default:
                switch (i2) {
                    case 34:
                        return "PRIVATE";
                    case 35:
                        return "YUV_420_888";
                    case 36:
                        return "RAW_PRIVATE";
                    case 37:
                        return "RAW10";
                    default:
                        return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
                }
        }
    }

    private StreamConfigurationDuration[] getDurations(int i2, int i3) {
        if (i2 == 0) {
            return i3 == 4096 ? this.mDepthMinFrameDurations : this.mMinFrameDurations;
        }
        if (i2 == 1) {
            return i3 == 4096 ? this.mDepthStallDurations : this.mStallDurations;
        }
        throw new IllegalArgumentException("duration was invalid");
    }

    private SparseIntArray getFormatsMap(boolean z2) {
        return z2 ? this.mAllOutputFormats : this.mInputFormats;
    }

    private long getInternalFormatDuration(int i2, int i3, Size size, int i4) {
        if (!isSupportedInternalConfiguration(i2, i3, size)) {
            throw new IllegalArgumentException("size was not supported");
        }
        for (StreamConfigurationDuration streamConfigurationDuration : getDurations(i4, i3)) {
            if (streamConfigurationDuration.getFormat() == i2 && streamConfigurationDuration.getWidth() == size.getWidth() && streamConfigurationDuration.getHeight() == size.getHeight()) {
                return streamConfigurationDuration.getDuration();
            }
        }
        return 0L;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00aa  */
    private Size[] getInternalFormatSizes(int i2, int i3, boolean z2, boolean z3) {
        SparseIntArray sparseIntArray;
        long duration;
        StreamConfigurationMap streamConfigurationMap = this;
        int i4 = i2;
        int i5 = 0;
        if (i3 == 4096 && z3) {
            return new Size[0];
        }
        if (!z2) {
            sparseIntArray = streamConfigurationMap.mInputFormats;
        } else if (i3 == 4096) {
            sparseIntArray = streamConfigurationMap.mDepthOutputFormats;
        } else {
            sparseIntArray = z3 ? streamConfigurationMap.mHighResOutputFormats : streamConfigurationMap.mOutputFormats;
        }
        int i6 = sparseIntArray.get(i4);
        if (((!z2 || i3 == 4096) && i6 == 0) || (z2 && i3 != 4096 && streamConfigurationMap.mAllOutputFormats.get(i4) == 0)) {
            throw new IllegalArgumentException("format not available");
        }
        Size[] sizeArr = new Size[i6];
        StreamConfiguration[] streamConfigurationArr = i3 == 4096 ? streamConfigurationMap.mDepthConfigurations : streamConfigurationMap.mConfigurations;
        StreamConfigurationDuration[] streamConfigurationDurationArr = i3 == 4096 ? streamConfigurationMap.mDepthMinFrameDurations : streamConfigurationMap.mMinFrameDurations;
        int length = streamConfigurationArr.length;
        int i7 = 0;
        while (i5 < length) {
            StreamConfiguration streamConfiguration = streamConfigurationArr[i5];
            int format = streamConfiguration.getFormat();
            if (format == i4 && streamConfiguration.isOutput() == z2) {
                if (z2 && streamConfigurationMap.mListHighResolution) {
                    int i8 = 0;
                    while (true) {
                        if (i8 >= streamConfigurationDurationArr.length) {
                            duration = 0;
                            break;
                        }
                        StreamConfigurationDuration streamConfigurationDuration = streamConfigurationDurationArr[i8];
                        if (streamConfigurationDuration.getFormat() == format && streamConfigurationDuration.getWidth() == streamConfiguration.getSize().getWidth() && streamConfigurationDuration.getHeight() == streamConfiguration.getSize().getHeight()) {
                            duration = streamConfigurationDuration.getDuration();
                            break;
                        }
                        i8++;
                    }
                    if (i3 == 4096) {
                        sizeArr[i7] = streamConfiguration.getSize();
                        i7++;
                    } else {
                        if (z3 == (duration > DURATION_20FPS_NS)) {
                            sizeArr[i7] = streamConfiguration.getSize();
                            i7++;
                        }
                    }
                } else {
                    sizeArr[i7] = streamConfiguration.getSize();
                    i7++;
                }
            }
            i5++;
            streamConfigurationMap = this;
            i4 = i2;
        }
        if (i7 == i6) {
            return sizeArr;
        }
        throw new AssertionError(m.f("Too few sizes (expected ", i6, ", actual ", i7, ")"));
    }

    private int getPublicFormatCount(boolean z2) {
        int size = getFormatsMap(z2).size();
        return z2 ? size + this.mDepthOutputFormats.size() : size;
    }

    private Size[] getPublicFormatSizes(int i2, boolean z2, boolean z3) {
        try {
            checkArgumentFormatSupported(i2, z2);
            return getInternalFormatSizes(imageFormatToInternal(i2), imageFormatToDataspace(i2), z2, z3);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    private int[] getPublicFormats(boolean z2) {
        int publicFormatCount = getPublicFormatCount(z2);
        int[] iArr = new int[publicFormatCount];
        SparseIntArray formatsMap = getFormatsMap(z2);
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < formatsMap.size()) {
            iArr[i4] = imageFormatToPublic(formatsMap.keyAt(i3));
            i3++;
            i4++;
        }
        if (z2) {
            while (i2 < this.mDepthOutputFormats.size()) {
                iArr[i4] = depthFormatToPublic(this.mDepthOutputFormats.keyAt(i2));
                i2++;
                i4++;
            }
        }
        if (publicFormatCount == i4) {
            return iArr;
        }
        throw new AssertionError(m.e("Too few formats ", i4, ", expected ", publicFormatCount));
    }

    public static int imageFormatToDataspace(int i2) {
        if (i2 != 256) {
            return (i2 == 257 || i2 == 4098 || i2 == 1144402265) ? 4096 : 0;
        }
        return HAL_DATASPACE_V0_JFIF;
    }

    public static int imageFormatToInternal(int i2) {
        if (i2 == 256 || i2 == 257) {
            return 33;
        }
        if (i2 == 4098) {
            return 32;
        }
        if (i2 != 1144402265) {
            return i2;
        }
        return 540422489;
    }

    public static int imageFormatToPublic(int i2) {
        if (i2 == 33) {
            return 256;
        }
        if (i2 != 256) {
            return i2;
        }
        throw new IllegalArgumentException("ImageFormat.JPEG is an unknown internal format");
    }

    private boolean isSupportedInternalConfiguration(int i2, int i3, Size size) {
        StreamConfiguration[] streamConfigurationArr = i3 == 4096 ? this.mDepthConfigurations : this.mConfigurations;
        for (int i4 = 0; i4 < streamConfigurationArr.length; i4++) {
            if (streamConfigurationArr[i4].getFormat() == i2 && streamConfigurationArr[i4].getSize().equals(size)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamConfigurationMap)) {
            return false;
        }
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) obj;
        return Arrays.equals(this.mConfigurations, streamConfigurationMap.mConfigurations) && Arrays.equals(this.mMinFrameDurations, streamConfigurationMap.mMinFrameDurations) && Arrays.equals(this.mStallDurations, streamConfigurationMap.mStallDurations) && Arrays.equals(this.mDepthConfigurations, streamConfigurationMap.mDepthConfigurations) && Arrays.equals(this.mHighSpeedVideoConfigurations, streamConfigurationMap.mHighSpeedVideoConfigurations);
    }

    public Size[] getHighResolutionOutputSizes(int i2) {
        if (this.mListHighResolution) {
            return getPublicFormatSizes(i2, true, true);
        }
        return null;
    }

    public Range<Integer>[] getHighSpeedVideoFpsRanges() {
        Set<Range<Integer>> setKeySet = this.mHighSpeedVideoFpsRangeMap.keySet();
        return (Range[]) setKeySet.toArray(new Range[setKeySet.size()]);
    }

    public Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size) {
        Integer num = this.mHighSpeedVideoSizeMap.get(size);
        if (num == null || num.intValue() == 0) {
            throw new IllegalArgumentException(String.format("Size %s does not support high speed video recording", size));
        }
        Range<Integer>[] rangeArr = new Range[num.intValue()];
        int i2 = 0;
        for (HighSpeedVideoConfiguration highSpeedVideoConfiguration : this.mHighSpeedVideoConfigurations) {
            if (size.equals(highSpeedVideoConfiguration.getSize())) {
                rangeArr[i2] = highSpeedVideoConfiguration.getFpsRange();
                i2++;
            }
        }
        return rangeArr;
    }

    public Size[] getHighSpeedVideoSizes() {
        Set<Size> setKeySet = this.mHighSpeedVideoSizeMap.keySet();
        return (Size[]) setKeySet.toArray(new Size[setKeySet.size()]);
    }

    public Size[] getHighSpeedVideoSizesFor(Range<Integer> range) {
        Integer num = this.mHighSpeedVideoFpsRangeMap.get(range);
        if (num == null || num.intValue() == 0) {
            throw new IllegalArgumentException(String.format("FpsRange %s does not support high speed video recording", range));
        }
        Size[] sizeArr = new Size[num.intValue()];
        int i2 = 0;
        for (HighSpeedVideoConfiguration highSpeedVideoConfiguration : this.mHighSpeedVideoConfigurations) {
            if (range.equals(highSpeedVideoConfiguration.getFpsRange())) {
                sizeArr[i2] = highSpeedVideoConfiguration.getSize();
                i2++;
            }
        }
        return sizeArr;
    }

    public final int[] getInputFormats() {
        return getPublicFormats(false);
    }

    public Size[] getInputSizes(int i2) {
        return getPublicFormatSizes(i2, false, false);
    }

    public final int[] getOutputFormats() {
        return getPublicFormats(true);
    }

    public long getOutputMinFrameDuration(int i2, Size size) {
        Preconditions.checkNotNull(size, "size must not be null");
        checkArgumentFormatSupported(i2, true);
        return getInternalFormatDuration(imageFormatToInternal(i2), imageFormatToDataspace(i2), size, 0);
    }

    public <T> Size[] getOutputSizes(Class<T> cls) {
        if (isOutputSupportedFor(cls)) {
            return getInternalFormatSizes(34, 0, true, false);
        }
        return null;
    }

    public long getOutputStallDuration(int i2, Size size) {
        checkArgumentFormatSupported(i2, true);
        return getInternalFormatDuration(imageFormatToInternal(i2), imageFormatToDataspace(i2), size, 1);
    }

    public final int[] getValidOutputFormatsForInput(int i2) {
        ReprocessFormatsMap reprocessFormatsMap = this.mInputOutputFormatsMap;
        return reprocessFormatsMap == null ? new int[0] : reprocessFormatsMap.getOutputs(i2);
    }

    public int hashCode() {
        return HashCodeHelpers.hashCodeGeneric(this.mConfigurations, this.mMinFrameDurations, this.mStallDurations, this.mDepthConfigurations, this.mHighSpeedVideoConfigurations);
    }

    public boolean isOutputSupportedFor(int i2) {
        checkArgumentFormat(i2);
        int iImageFormatToInternal = imageFormatToInternal(i2);
        if (imageFormatToDataspace(i2) == 4096) {
            return this.mDepthOutputFormats.indexOfKey(iImageFormatToInternal) >= 0;
        }
        return getFormatsMap(true).indexOfKey(iImageFormatToInternal) >= 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StreamConfiguration(");
        appendOutputsString(sb);
        sb.append(", ");
        appendHighResOutputsString(sb);
        sb.append(", ");
        appendInputsString(sb);
        sb.append(", ");
        appendValidOutputFormatsForInputString(sb);
        sb.append(", ");
        appendHighSpeedVideoConfigurationsString(sb);
        sb.append(")");
        return sb.toString();
    }

    public static int[] imageFormatToInternal(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = imageFormatToInternal(iArr[i2]);
        }
        return iArr;
    }

    public static int[] imageFormatToPublic(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = imageFormatToPublic(iArr[i2]);
        }
        return iArr;
    }

    public Size[] getOutputSizes(int i2) {
        return getPublicFormatSizes(i2, true, false);
    }

    public <T> long getOutputStallDuration(Class<T> cls, Size size) {
        if (isOutputSupportedFor(cls)) {
            return getInternalFormatDuration(34, 0, size, 1);
        }
        throw new IllegalArgumentException("klass was not supported");
    }

    public static <T> boolean isOutputSupportedFor(Class<T> cls) {
        Preconditions.checkNotNull(cls, "klass must not be null");
        return cls == ImageReader.class || cls == MediaRecorder.class || cls == MediaCodec.class || cls == Allocation.class || cls == SurfaceHolder.class || cls == SurfaceTexture.class;
    }

    public <T> long getOutputMinFrameDuration(Class<T> cls, Size size) {
        if (isOutputSupportedFor(cls)) {
            return getInternalFormatDuration(34, 0, size, 0);
        }
        throw new IllegalArgumentException("klass was not supported");
    }

    public boolean isOutputSupportedFor(Surface surface) {
        Preconditions.checkNotNull(surface, "surface must not be null");
        Size surfaceSize = SurfaceUtils.getSurfaceSize(surface);
        int surfaceFormat = SurfaceUtils.getSurfaceFormat(surface);
        int surfaceDataspace = SurfaceUtils.getSurfaceDataspace(surface);
        boolean zIsFlexibleConsumer = SurfaceUtils.isFlexibleConsumer(surface);
        for (StreamConfiguration streamConfiguration : surfaceDataspace != 4096 ? this.mConfigurations : this.mDepthConfigurations) {
            if (streamConfiguration.getFormat() == surfaceFormat && streamConfiguration.isOutput()) {
                if (streamConfiguration.getSize().equals(surfaceSize)) {
                    return true;
                }
                if (zIsFlexibleConsumer && streamConfiguration.getSize().getWidth() <= 1920) {
                    return true;
                }
            }
        }
        return false;
    }
}
