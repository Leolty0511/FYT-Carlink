package android.filterfw.core;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FrameFormat {
    public static final int BYTES_PER_SAMPLE_UNSPECIFIED = 1;
    protected static final int SIZE_UNKNOWN = -1;
    public static final int SIZE_UNSPECIFIED = 0;
    public static final int TARGET_GPU = 3;
    public static final int TARGET_NATIVE = 2;
    public static final int TARGET_RS = 5;
    public static final int TARGET_SIMPLE = 1;
    public static final int TARGET_UNSPECIFIED = 0;
    public static final int TARGET_VERTEXBUFFER = 4;
    public static final int TYPE_BIT = 1;
    public static final int TYPE_BYTE = 2;
    public static final int TYPE_DOUBLE = 6;
    public static final int TYPE_FLOAT = 5;
    public static final int TYPE_INT16 = 3;
    public static final int TYPE_INT32 = 4;
    public static final int TYPE_OBJECT = 8;
    public static final int TYPE_POINTER = 7;
    public static final int TYPE_UNSPECIFIED = 0;
    protected int mBaseType;
    protected int mBytesPerSample;
    protected int[] mDimensions;
    protected KeyValueMap mMetaData;
    protected Class mObjectClass;
    protected int mSize;
    protected int mTarget;

    public FrameFormat() {
        this.mBaseType = 0;
        this.mBytesPerSample = 1;
        this.mSize = -1;
        this.mTarget = 0;
    }

    public static String baseTypeToString(int i2) {
        switch (i2) {
            case 0:
                return "unspecified";
            case 1:
                return "bit";
            case 2:
                return "byte";
            case 3:
            case 4:
                return "int";
            case 5:
                return TypedValues.Custom.S_FLOAT;
            case 6:
                return "double";
            case 7:
                return "pointer";
            case 8:
                return "object";
            default:
                return "unknown";
        }
    }

    public static int bytesPerSampleOf(int i2) {
        if (i2 == 3) {
            return 2;
        }
        if (i2 != 4 && i2 != 5) {
            if (i2 == 6) {
                return 8;
            }
            if (i2 != 7) {
                return 1;
            }
        }
        return 4;
    }

    public static String dimensionsToString(int[] iArr) {
        StringBuffer stringBuffer = new StringBuffer();
        if (iArr != null) {
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (iArr[i2] == 0) {
                    stringBuffer.append("[]");
                } else {
                    stringBuffer.append("[" + String.valueOf(iArr[i2]) + "]");
                }
            }
        }
        return stringBuffer.toString();
    }

    private void initDefaults() {
        this.mBytesPerSample = bytesPerSampleOf(this.mBaseType);
    }

    public static String metaDataToString(KeyValueMap keyValueMap) {
        if (keyValueMap == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer("{ ");
        for (Map.Entry<String, Object> entry : keyValueMap.entrySet()) {
            stringBuffer.append(entry.getKey() + ": " + entry.getValue() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    public static int readTargetString(String str) {
        if (str.equalsIgnoreCase("CPU") || str.equalsIgnoreCase("NATIVE")) {
            return 2;
        }
        if (str.equalsIgnoreCase("GPU")) {
            return 3;
        }
        if (str.equalsIgnoreCase("SIMPLE")) {
            return 1;
        }
        if (str.equalsIgnoreCase("VERTEXBUFFER")) {
            return 4;
        }
        if (str.equalsIgnoreCase("UNSPECIFIED")) {
            return 0;
        }
        throw new RuntimeException(c.k("Unknown target type '", str, "'!"));
    }

    public static String targetToString(int i2) {
        if (i2 == 0) {
            return "unspecified";
        }
        if (i2 == 1) {
            return "simple";
        }
        if (i2 == 2) {
            return "native";
        }
        if (i2 == 3) {
            return "gpu";
        }
        if (i2 != 4) {
            return i2 != 5 ? "unknown" : "renderscript";
        }
        return "vbo";
    }

    public static FrameFormat unspecified() {
        return new FrameFormat(0, 0);
    }

    public int calcSize(int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return 0;
        }
        int bytesPerSample = getBytesPerSample();
        for (int i2 : iArr) {
            bytesPerSample *= i2;
        }
        return bytesPerSample;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FrameFormat)) {
            return false;
        }
        FrameFormat frameFormat = (FrameFormat) obj;
        return frameFormat.mBaseType == this.mBaseType && frameFormat.mTarget == this.mTarget && frameFormat.mBytesPerSample == this.mBytesPerSample && Arrays.equals(frameFormat.mDimensions, this.mDimensions) && frameFormat.mMetaData.equals(this.mMetaData);
    }

    public int getBaseType() {
        return this.mBaseType;
    }

    public int getBytesPerSample() {
        return this.mBytesPerSample;
    }

    public int getDepth() {
        int[] iArr = this.mDimensions;
        if (iArr == null || iArr.length < 3) {
            return -1;
        }
        return iArr[2];
    }

    public int getDimension(int i2) {
        return this.mDimensions[i2];
    }

    public int getDimensionCount() {
        int[] iArr = this.mDimensions;
        if (iArr == null) {
            return 0;
        }
        return iArr.length;
    }

    public int[] getDimensions() {
        return this.mDimensions;
    }

    public int getHeight() {
        int[] iArr = this.mDimensions;
        if (iArr == null || iArr.length < 2) {
            return -1;
        }
        return iArr[1];
    }

    public int getLength() {
        int[] iArr = this.mDimensions;
        if (iArr == null || iArr.length < 1) {
            return -1;
        }
        return iArr[0];
    }

    public Object getMetaValue(String str) {
        KeyValueMap keyValueMap = this.mMetaData;
        if (keyValueMap != null) {
            return keyValueMap.get(str);
        }
        return null;
    }

    public int getNumberOfDimensions() {
        int[] iArr = this.mDimensions;
        if (iArr != null) {
            return iArr.length;
        }
        return 0;
    }

    public Class getObjectClass() {
        return this.mObjectClass;
    }

    public int getSize() {
        if (this.mSize == -1) {
            this.mSize = calcSize(this.mDimensions);
        }
        return this.mSize;
    }

    public int getTarget() {
        return this.mTarget;
    }

    public int getValuesPerSample() {
        return this.mBytesPerSample / bytesPerSampleOf(this.mBaseType);
    }

    public int getWidth() {
        return getLength();
    }

    public boolean hasMetaKey(String str) {
        KeyValueMap keyValueMap = this.mMetaData;
        if (keyValueMap != null) {
            return keyValueMap.containsKey(str);
        }
        return false;
    }

    public int hashCode() {
        return ((this.mBaseType ^ 4211) ^ this.mBytesPerSample) ^ getSize();
    }

    public boolean isBinaryDataType() {
        int i2 = this.mBaseType;
        return i2 >= 1 && i2 <= 6;
    }

    public boolean isCompatibleWith(FrameFormat frameFormat) {
        if (frameFormat.getBaseType() != 0 && getBaseType() != frameFormat.getBaseType()) {
            return false;
        }
        if (frameFormat.getTarget() != 0 && getTarget() != frameFormat.getTarget()) {
            return false;
        }
        if (frameFormat.getBytesPerSample() != 1 && getBytesPerSample() != frameFormat.getBytesPerSample()) {
            return false;
        }
        if (frameFormat.getDimensionCount() > 0 && getDimensionCount() != frameFormat.getDimensionCount()) {
            return false;
        }
        for (int i2 = 0; i2 < frameFormat.getDimensionCount(); i2++) {
            int dimension = frameFormat.getDimension(i2);
            if (dimension != 0 && getDimension(i2) != dimension) {
                return false;
            }
        }
        if (frameFormat.getObjectClass() != null && (getObjectClass() == null || !frameFormat.getObjectClass().isAssignableFrom(getObjectClass()))) {
            return false;
        }
        KeyValueMap keyValueMap = frameFormat.mMetaData;
        if (keyValueMap != null) {
            for (String str : keyValueMap.keySet()) {
                KeyValueMap keyValueMap2 = this.mMetaData;
                if (keyValueMap2 == null || !keyValueMap2.containsKey(str) || !this.mMetaData.get(str).equals(frameFormat.mMetaData.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isReplaceableBy(FrameFormat frameFormat) {
        return this.mTarget == frameFormat.mTarget && getSize() == frameFormat.getSize() && Arrays.equals(frameFormat.mDimensions, this.mDimensions);
    }

    public boolean mayBeCompatibleWith(FrameFormat frameFormat) {
        if (frameFormat.getBaseType() != 0 && getBaseType() != 0 && getBaseType() != frameFormat.getBaseType()) {
            return false;
        }
        if (frameFormat.getTarget() != 0 && getTarget() != 0 && getTarget() != frameFormat.getTarget()) {
            return false;
        }
        if (frameFormat.getBytesPerSample() != 1 && getBytesPerSample() != 1 && getBytesPerSample() != frameFormat.getBytesPerSample()) {
            return false;
        }
        if (frameFormat.getDimensionCount() > 0 && getDimensionCount() > 0 && getDimensionCount() != frameFormat.getDimensionCount()) {
            return false;
        }
        for (int i2 = 0; i2 < frameFormat.getDimensionCount(); i2++) {
            int dimension = frameFormat.getDimension(i2);
            if (dimension != 0 && getDimension(i2) != 0 && getDimension(i2) != dimension) {
                return false;
            }
        }
        if (frameFormat.getObjectClass() != null && getObjectClass() != null && !frameFormat.getObjectClass().isAssignableFrom(getObjectClass())) {
            return false;
        }
        KeyValueMap keyValueMap = frameFormat.mMetaData;
        if (keyValueMap != null && this.mMetaData != null) {
            for (String str : keyValueMap.keySet()) {
                if (this.mMetaData.containsKey(str) && !this.mMetaData.get(str).equals(frameFormat.mMetaData.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    public MutableFrameFormat mutableCopy() {
        MutableFrameFormat mutableFrameFormat = new MutableFrameFormat();
        mutableFrameFormat.setBaseType(getBaseType());
        mutableFrameFormat.setTarget(getTarget());
        mutableFrameFormat.setBytesPerSample(getBytesPerSample());
        mutableFrameFormat.setDimensions(getDimensions());
        mutableFrameFormat.setObjectClass(getObjectClass());
        KeyValueMap keyValueMap = this.mMetaData;
        mutableFrameFormat.mMetaData = keyValueMap == null ? null : (KeyValueMap) keyValueMap.clone();
        return mutableFrameFormat;
    }

    public String toString() {
        String str;
        int valuesPerSample = getValuesPerSample();
        String str2 = "";
        String strValueOf = valuesPerSample == 1 ? "" : String.valueOf(valuesPerSample);
        if (this.mTarget == 0) {
            str = "";
        } else {
            str = targetToString(this.mTarget) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
        }
        if (this.mObjectClass != null) {
            str2 = " class(" + this.mObjectClass.getSimpleName() + ") ";
        }
        StringBuilder sbR = c.r(str);
        sbR.append(baseTypeToString(this.mBaseType));
        sbR.append(strValueOf);
        sbR.append(dimensionsToString(this.mDimensions));
        sbR.append(str2);
        sbR.append(metaDataToString(this.mMetaData));
        return sbR.toString();
    }

    public boolean hasMetaKey(String str, Class cls) {
        KeyValueMap keyValueMap = this.mMetaData;
        if (keyValueMap == null || !keyValueMap.containsKey(str)) {
            return false;
        }
        if (cls.isAssignableFrom(this.mMetaData.get(str).getClass())) {
            return true;
        }
        StringBuilder sbV = c.v("FrameFormat meta-key '", str, "' is of type ");
        sbV.append(this.mMetaData.get(str).getClass());
        sbV.append(" but expected to be of type ");
        sbV.append(cls);
        sbV.append("!");
        throw new RuntimeException(sbV.toString());
    }

    public FrameFormat(int i2, int i3) {
        this.mBytesPerSample = 1;
        this.mSize = -1;
        this.mBaseType = i2;
        this.mTarget = i3;
        initDefaults();
    }
}
