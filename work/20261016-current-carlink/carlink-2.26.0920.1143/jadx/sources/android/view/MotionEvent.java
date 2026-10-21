package android.view;

import android.graphics.Matrix;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes2.dex */
public final class MotionEvent extends InputEvent {
    public static final int ACTION_BUTTON_PRESS = 11;
    public static final int ACTION_BUTTON_RELEASE = 12;
    public static final int ACTION_CANCEL = 3;
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_HOVER_ENTER = 9;
    public static final int ACTION_HOVER_EXIT = 10;
    public static final int ACTION_HOVER_MOVE = 7;
    public static final int ACTION_MASK = 255;
    public static final int ACTION_MOVE = 2;
    public static final int ACTION_OUTSIDE = 4;

    @Deprecated
    public static final int ACTION_POINTER_1_DOWN = 5;

    @Deprecated
    public static final int ACTION_POINTER_1_UP = 6;

    @Deprecated
    public static final int ACTION_POINTER_2_DOWN = 261;

    @Deprecated
    public static final int ACTION_POINTER_2_UP = 262;

    @Deprecated
    public static final int ACTION_POINTER_3_DOWN = 517;

    @Deprecated
    public static final int ACTION_POINTER_3_UP = 518;
    public static final int ACTION_POINTER_DOWN = 5;

    @Deprecated
    public static final int ACTION_POINTER_ID_MASK = 65280;

    @Deprecated
    public static final int ACTION_POINTER_ID_SHIFT = 8;
    public static final int ACTION_POINTER_INDEX_MASK = 65280;
    public static final int ACTION_POINTER_INDEX_SHIFT = 8;
    public static final int ACTION_POINTER_UP = 6;
    public static final int ACTION_SCROLL = 8;
    public static final int ACTION_UP = 1;
    public static final int AXIS_BRAKE = 23;
    public static final int AXIS_DISTANCE = 24;
    public static final int AXIS_GAS = 22;
    public static final int AXIS_GENERIC_1 = 32;
    public static final int AXIS_GENERIC_10 = 41;
    public static final int AXIS_GENERIC_11 = 42;
    public static final int AXIS_GENERIC_12 = 43;
    public static final int AXIS_GENERIC_13 = 44;
    public static final int AXIS_GENERIC_14 = 45;
    public static final int AXIS_GENERIC_15 = 46;
    public static final int AXIS_GENERIC_16 = 47;
    public static final int AXIS_GENERIC_2 = 33;
    public static final int AXIS_GENERIC_3 = 34;
    public static final int AXIS_GENERIC_4 = 35;
    public static final int AXIS_GENERIC_5 = 36;
    public static final int AXIS_GENERIC_6 = 37;
    public static final int AXIS_GENERIC_7 = 38;
    public static final int AXIS_GENERIC_8 = 39;
    public static final int AXIS_GENERIC_9 = 40;
    public static final int AXIS_HAT_X = 15;
    public static final int AXIS_HAT_Y = 16;
    public static final int AXIS_HSCROLL = 10;
    public static final int AXIS_LTRIGGER = 17;
    public static final int AXIS_ORIENTATION = 8;
    public static final int AXIS_PRESSURE = 2;
    public static final int AXIS_RELATIVE_X = 27;
    public static final int AXIS_RELATIVE_Y = 28;
    public static final int AXIS_RTRIGGER = 18;
    public static final int AXIS_RUDDER = 20;
    public static final int AXIS_RX = 12;
    public static final int AXIS_RY = 13;
    public static final int AXIS_RZ = 14;
    public static final int AXIS_SCROLL = 26;
    public static final int AXIS_SIZE = 3;
    private static final SparseArray<String> AXIS_SYMBOLIC_NAMES;
    public static final int AXIS_THROTTLE = 19;
    public static final int AXIS_TILT = 25;
    public static final int AXIS_TOOL_MAJOR = 6;
    public static final int AXIS_TOOL_MINOR = 7;
    public static final int AXIS_TOUCH_MAJOR = 4;
    public static final int AXIS_TOUCH_MINOR = 5;
    public static final int AXIS_VSCROLL = 9;
    public static final int AXIS_WHEEL = 21;
    public static final int AXIS_X = 0;
    public static final int AXIS_Y = 1;
    public static final int AXIS_Z = 11;
    public static final int BUTTON_BACK = 8;
    public static final int BUTTON_FORWARD = 16;
    public static final int BUTTON_PRIMARY = 1;
    public static final int BUTTON_SECONDARY = 2;
    public static final int BUTTON_STYLUS_PRIMARY = 32;
    public static final int BUTTON_STYLUS_SECONDARY = 64;
    private static final String[] BUTTON_SYMBOLIC_NAMES;
    public static final int BUTTON_TERTIARY = 4;
    public static final Parcelable.Creator<MotionEvent> CREATOR;
    public static final int EDGE_BOTTOM = 2;
    public static final int EDGE_LEFT = 4;
    public static final int EDGE_RIGHT = 8;
    public static final int EDGE_TOP = 1;
    public static final int FLAG_HOVER_EXIT_PENDING = 4;
    public static final int FLAG_IS_GENERATED_GESTURE = 8;
    public static final int FLAG_TAINTED = Integer.MIN_VALUE;
    public static final int FLAG_TARGET_ACCESSIBILITY_FOCUS = 1073741824;
    public static final int FLAG_WINDOW_IS_OBSCURED = 1;
    public static final int FLAG_WINDOW_IS_PARTIALLY_OBSCURED = 2;
    private static final int HISTORY_CURRENT = Integer.MIN_VALUE;
    public static final int INVALID_POINTER_ID = -1;
    private static final String LABEL_PREFIX = "AXIS_";
    private static final int MAX_RECYCLED = 10;
    private static final long NS_PER_MS = 1000000;
    public static final int TOOL_TYPE_ERASER = 4;
    public static final int TOOL_TYPE_FINGER = 1;
    public static final int TOOL_TYPE_MOUSE = 3;
    public static final int TOOL_TYPE_STYLUS = 2;
    private static final SparseArray<String> TOOL_TYPE_SYMBOLIC_NAMES;
    public static final int TOOL_TYPE_UNKNOWN = 0;
    private static final Object gRecyclerLock;
    private static MotionEvent gRecyclerTop;
    private static int gRecyclerUsed;
    private static final Object gSharedTempLock;
    private static PointerCoords[] gSharedTempPointerCoords;
    private static int[] gSharedTempPointerIndexMap;
    private static PointerProperties[] gSharedTempPointerProperties;
    private long mNativePtr;
    private MotionEvent mNext;

    public static final class PointerCoords {
        private static final int INITIAL_PACKED_AXIS_VALUES = 8;
        private long mPackedAxisBits;
        private float[] mPackedAxisValues;
        public float orientation;
        public float pressure;
        public float size;
        public float toolMajor;
        public float toolMinor;
        public float touchMajor;
        public float touchMinor;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f207x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public float f208y;

        public PointerCoords() {
        }

        public static PointerCoords[] createArray(int i2) {
            PointerCoords[] pointerCoordsArr = new PointerCoords[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                pointerCoordsArr[i3] = new PointerCoords();
            }
            return pointerCoordsArr;
        }

        public void clear() {
            this.mPackedAxisBits = 0L;
            this.f207x = 0.0f;
            this.f208y = 0.0f;
            this.pressure = 0.0f;
            this.size = 0.0f;
            this.touchMajor = 0.0f;
            this.touchMinor = 0.0f;
            this.toolMajor = 0.0f;
            this.toolMinor = 0.0f;
            this.orientation = 0.0f;
        }

        public void copyFrom(PointerCoords pointerCoords) {
            long j2 = pointerCoords.mPackedAxisBits;
            this.mPackedAxisBits = j2;
            if (j2 != 0) {
                float[] fArr = pointerCoords.mPackedAxisValues;
                int iBitCount = Long.bitCount(j2);
                float[] fArr2 = this.mPackedAxisValues;
                if (fArr2 == null || iBitCount > fArr2.length) {
                    fArr2 = new float[fArr.length];
                    this.mPackedAxisValues = fArr2;
                }
                System.arraycopy(fArr, 0, fArr2, 0, iBitCount);
            }
            this.f207x = pointerCoords.f207x;
            this.f208y = pointerCoords.f208y;
            this.pressure = pointerCoords.pressure;
            this.size = pointerCoords.size;
            this.touchMajor = pointerCoords.touchMajor;
            this.touchMinor = pointerCoords.touchMinor;
            this.toolMajor = pointerCoords.toolMajor;
            this.toolMinor = pointerCoords.toolMinor;
            this.orientation = pointerCoords.orientation;
        }

        public float getAxisValue(int i2) {
            switch (i2) {
                case 0:
                    return this.f207x;
                case 1:
                    return this.f208y;
                case 2:
                    return this.pressure;
                case 3:
                    return this.size;
                case 4:
                    return this.touchMajor;
                case 5:
                    return this.touchMinor;
                case 6:
                    return this.toolMajor;
                case 7:
                    return this.toolMinor;
                case 8:
                    return this.orientation;
                default:
                    if (i2 < 0 || i2 > 63) {
                        throw new IllegalArgumentException("Axis out of range.");
                    }
                    long j2 = this.mPackedAxisBits;
                    if ((((-9223372036854775808) >>> i2) & j2) == 0) {
                        return 0.0f;
                    }
                    return this.mPackedAxisValues[Long.bitCount(j2 & (~((-1) >>> i2)))];
            }
        }

        public void setAxisValue(int i2, float f2) {
            switch (i2) {
                case 0:
                    this.f207x = f2;
                    return;
                case 1:
                    this.f208y = f2;
                    return;
                case 2:
                    this.pressure = f2;
                    return;
                case 3:
                    this.size = f2;
                    return;
                case 4:
                    this.touchMajor = f2;
                    return;
                case 5:
                    this.touchMinor = f2;
                    return;
                case 6:
                    this.toolMajor = f2;
                    return;
                case 7:
                    this.toolMinor = f2;
                    return;
                case 8:
                    this.orientation = f2;
                    return;
                default:
                    if (i2 < 0 || i2 > 63) {
                        throw new IllegalArgumentException("Axis out of range.");
                    }
                    long j2 = this.mPackedAxisBits;
                    long j3 = (-9223372036854775808) >>> i2;
                    int iBitCount = Long.bitCount((~((-1) >>> i2)) & j2);
                    float[] fArr = this.mPackedAxisValues;
                    if ((j2 & j3) == 0) {
                        if (fArr == null) {
                            fArr = new float[8];
                            this.mPackedAxisValues = fArr;
                        } else {
                            int iBitCount2 = Long.bitCount(j2);
                            if (iBitCount2 >= fArr.length) {
                                float[] fArr2 = new float[iBitCount2 * 2];
                                System.arraycopy(fArr, 0, fArr2, 0, iBitCount);
                                System.arraycopy(fArr, iBitCount, fArr2, iBitCount + 1, iBitCount2 - iBitCount);
                                this.mPackedAxisValues = fArr2;
                                fArr = fArr2;
                            } else if (iBitCount != iBitCount2) {
                                System.arraycopy(fArr, iBitCount, fArr, iBitCount + 1, iBitCount2 - iBitCount);
                            }
                        }
                        this.mPackedAxisBits = j2 | j3;
                    }
                    fArr[iBitCount] = f2;
                    return;
            }
        }

        public PointerCoords(PointerCoords pointerCoords) {
            copyFrom(pointerCoords);
        }
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        AXIS_SYMBOLIC_NAMES = sparseArray;
        sparseArray.append(0, "AXIS_X");
        sparseArray.append(1, "AXIS_Y");
        sparseArray.append(2, "AXIS_PRESSURE");
        sparseArray.append(3, "AXIS_SIZE");
        sparseArray.append(4, "AXIS_TOUCH_MAJOR");
        sparseArray.append(5, "AXIS_TOUCH_MINOR");
        sparseArray.append(6, "AXIS_TOOL_MAJOR");
        sparseArray.append(7, "AXIS_TOOL_MINOR");
        sparseArray.append(8, "AXIS_ORIENTATION");
        sparseArray.append(9, "AXIS_VSCROLL");
        sparseArray.append(10, "AXIS_HSCROLL");
        sparseArray.append(11, "AXIS_Z");
        sparseArray.append(12, "AXIS_RX");
        sparseArray.append(13, "AXIS_RY");
        sparseArray.append(14, "AXIS_RZ");
        sparseArray.append(15, "AXIS_HAT_X");
        sparseArray.append(16, "AXIS_HAT_Y");
        sparseArray.append(17, "AXIS_LTRIGGER");
        sparseArray.append(18, "AXIS_RTRIGGER");
        sparseArray.append(19, "AXIS_THROTTLE");
        sparseArray.append(20, "AXIS_RUDDER");
        sparseArray.append(21, "AXIS_WHEEL");
        sparseArray.append(22, "AXIS_GAS");
        sparseArray.append(23, "AXIS_BRAKE");
        sparseArray.append(24, "AXIS_DISTANCE");
        sparseArray.append(25, "AXIS_TILT");
        sparseArray.append(26, "AXIS_SCROLL");
        sparseArray.append(27, "AXIS_REALTIVE_X");
        sparseArray.append(28, "AXIS_REALTIVE_Y");
        sparseArray.append(32, "AXIS_GENERIC_1");
        sparseArray.append(33, "AXIS_GENERIC_2");
        sparseArray.append(34, "AXIS_GENERIC_3");
        sparseArray.append(35, "AXIS_GENERIC_4");
        sparseArray.append(36, "AXIS_GENERIC_5");
        sparseArray.append(37, "AXIS_GENERIC_6");
        sparseArray.append(38, "AXIS_GENERIC_7");
        sparseArray.append(39, "AXIS_GENERIC_8");
        sparseArray.append(40, "AXIS_GENERIC_9");
        sparseArray.append(41, "AXIS_GENERIC_10");
        sparseArray.append(42, "AXIS_GENERIC_11");
        sparseArray.append(43, "AXIS_GENERIC_12");
        sparseArray.append(44, "AXIS_GENERIC_13");
        sparseArray.append(45, "AXIS_GENERIC_14");
        sparseArray.append(46, "AXIS_GENERIC_15");
        sparseArray.append(47, "AXIS_GENERIC_16");
        BUTTON_SYMBOLIC_NAMES = new String[]{"BUTTON_PRIMARY", "BUTTON_SECONDARY", "BUTTON_TERTIARY", "BUTTON_BACK", "BUTTON_FORWARD", "BUTTON_STYLUS_PRIMARY", "BUTTON_STYLUS_SECONDARY", "0x00000080", "0x00000100", "0x00000200", "0x00000400", "0x00000800", "0x00001000", "0x00002000", "0x00004000", "0x00008000", "0x00010000", "0x00020000", "0x00040000", "0x00080000", "0x00100000", "0x00200000", "0x00400000", "0x00800000", "0x01000000", "0x02000000", "0x04000000", "0x08000000", "0x10000000", "0x20000000", "0x40000000", "0x80000000"};
        SparseArray<String> sparseArray2 = new SparseArray<>();
        TOOL_TYPE_SYMBOLIC_NAMES = sparseArray2;
        sparseArray2.append(0, "TOOL_TYPE_UNKNOWN");
        sparseArray2.append(1, "TOOL_TYPE_FINGER");
        sparseArray2.append(2, "TOOL_TYPE_STYLUS");
        sparseArray2.append(3, "TOOL_TYPE_MOUSE");
        sparseArray2.append(4, "TOOL_TYPE_ERASER");
        gRecyclerLock = new Object();
        gSharedTempLock = new Object();
        CREATOR = new Parcelable.Creator<MotionEvent>() { // from class: android.view.MotionEvent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MotionEvent createFromParcel(Parcel parcel) {
                parcel.readInt();
                return MotionEvent.createFromParcelBody(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MotionEvent[] newArray(int i2) {
                return new MotionEvent[i2];
            }
        };
    }

    private MotionEvent() {
    }

    public static String actionToString(int i2) {
        switch (i2) {
            case 0:
                return "ACTION_DOWN";
            case 1:
                return "ACTION_UP";
            case 2:
                return "ACTION_MOVE";
            case 3:
                return "ACTION_CANCEL";
            case 4:
                return "ACTION_OUTSIDE";
            case 5:
            case 6:
            default:
                int i3 = (65280 & i2) >> 8;
                int i4 = i2 & 255;
                if (i4 != 5) {
                    return i4 != 6 ? Integer.toString(i2) : android.accessibilityservice.c.e("ACTION_POINTER_UP(", i3, ")");
                }
                return android.accessibilityservice.c.e("ACTION_POINTER_DOWN(", i3, ")");
            case 7:
                return "ACTION_HOVER_MOVE";
            case 8:
                return "ACTION_SCROLL";
            case 9:
                return "ACTION_HOVER_ENTER";
            case 10:
                return "ACTION_HOVER_EXIT";
            case 11:
                return "ACTION_BUTTON_PRESS";
            case 12:
                return "ACTION_BUTTON_RELEASE";
        }
    }

    public static int axisFromString(String str) {
        int iNativeAxisFromString;
        if (str.startsWith(LABEL_PREFIX) && (iNativeAxisFromString = nativeAxisFromString((str = str.substring(5)))) >= 0) {
            return iNativeAxisFromString;
        }
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static String axisToString(int i2) {
        String strNativeAxisToString = nativeAxisToString(i2);
        return strNativeAxisToString != null ? LABEL_PREFIX.concat(strNativeAxisToString) : Integer.toString(i2);
    }

    public static String buttonStateToString(int i2) {
        if (i2 == 0) {
            return WifiEnterpriseConfig.ENGINE_DISABLE;
        }
        StringBuilder sb = null;
        int i3 = 0;
        while (i2 != 0) {
            boolean z2 = (i2 & 1) != 0;
            i2 >>>= 1;
            if (z2) {
                String str = BUTTON_SYMBOLIC_NAMES[i3];
                if (sb != null) {
                    sb.append('|');
                    sb.append(str);
                } else {
                    if (i2 == 0) {
                        return str;
                    }
                    sb = new StringBuilder(str);
                }
            }
            i3++;
        }
        return sb.toString();
    }

    private static final float clamp(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 > f4 ? f4 : f2;
    }

    public static MotionEvent createFromParcelBody(Parcel parcel) {
        MotionEvent motionEventObtain = obtain();
        motionEventObtain.mNativePtr = nativeReadFromParcel(motionEventObtain.mNativePtr, parcel);
        return motionEventObtain;
    }

    private static final void ensureSharedTempPointerCapacity(int i2) {
        PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
        if (pointerCoordsArr == null || pointerCoordsArr.length < i2) {
            int length = pointerCoordsArr != null ? pointerCoordsArr.length : 8;
            while (length < i2) {
                length *= 2;
            }
            gSharedTempPointerCoords = PointerCoords.createArray(length);
            gSharedTempPointerProperties = PointerProperties.createArray(length);
            gSharedTempPointerIndexMap = new int[length];
        }
    }

    private static native void nativeAddBatch(long j2, long j3, PointerCoords[] pointerCoordsArr, int i2);

    private static native int nativeAxisFromString(String str);

    private static native String nativeAxisToString(int i2);

    @CriticalNative
    private static native long nativeCopy(long j2, long j3, boolean z2);

    private static native void nativeDispose(long j2);

    @CriticalNative
    private static native int nativeFindPointerIndex(long j2, int i2);

    @CriticalNative
    private static native int nativeGetAction(long j2);

    @CriticalNative
    private static native int nativeGetActionButton(long j2);

    @FastNative
    private static native float nativeGetAxisValue(long j2, int i2, int i3, int i4);

    @CriticalNative
    private static native int nativeGetButtonState(long j2);

    @CriticalNative
    private static native int nativeGetDeviceId(long j2);

    @CriticalNative
    private static native long nativeGetDownTimeNanos(long j2);

    @CriticalNative
    private static native int nativeGetEdgeFlags(long j2);

    @FastNative
    private static native long nativeGetEventTimeNanos(long j2, int i2);

    @CriticalNative
    private static native int nativeGetFlags(long j2);

    @CriticalNative
    private static native int nativeGetHistorySize(long j2);

    @CriticalNative
    private static native int nativeGetMetaState(long j2);

    private static native void nativeGetPointerCoords(long j2, int i2, int i3, PointerCoords pointerCoords);

    @CriticalNative
    private static native int nativeGetPointerCount(long j2);

    @FastNative
    private static native int nativeGetPointerId(long j2, int i2);

    private static native void nativeGetPointerProperties(long j2, int i2, PointerProperties pointerProperties);

    @FastNative
    private static native float nativeGetRawAxisValue(long j2, int i2, int i3, int i4);

    @CriticalNative
    private static native int nativeGetSource(long j2);

    @FastNative
    private static native int nativeGetToolType(long j2, int i2);

    @CriticalNative
    private static native float nativeGetXOffset(long j2);

    @CriticalNative
    private static native float nativeGetXPrecision(long j2);

    @CriticalNative
    private static native float nativeGetYOffset(long j2);

    @CriticalNative
    private static native float nativeGetYPrecision(long j2);

    private static native long nativeInitialize(long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2, float f3, float f4, float f5, long j3, long j4, int i9, PointerProperties[] pointerPropertiesArr, PointerCoords[] pointerCoordsArr);

    @CriticalNative
    private static native boolean nativeIsTouchEvent(long j2);

    @CriticalNative
    private static native void nativeOffsetLocation(long j2, float f2, float f3);

    private static native long nativeReadFromParcel(long j2, Parcel parcel);

    @CriticalNative
    private static native void nativeScale(long j2, float f2);

    @CriticalNative
    private static native void nativeSetAction(long j2, int i2);

    @CriticalNative
    private static native void nativeSetActionButton(long j2, int i2);

    @CriticalNative
    private static native void nativeSetButtonState(long j2, int i2);

    @CriticalNative
    private static native void nativeSetDownTimeNanos(long j2, long j3);

    @CriticalNative
    private static native void nativeSetEdgeFlags(long j2, int i2);

    @CriticalNative
    private static native void nativeSetFlags(long j2, int i2);

    @CriticalNative
    private static native int nativeSetSource(long j2, int i2);

    @CriticalNative
    private static native void nativeTransform(long j2, long j3);

    private static native void nativeWriteToParcel(long j2, Parcel parcel);

    private static MotionEvent obtain() {
        synchronized (gRecyclerLock) {
            MotionEvent motionEvent = gRecyclerTop;
            if (motionEvent == null) {
                return new MotionEvent();
            }
            gRecyclerTop = motionEvent.mNext;
            gRecyclerUsed--;
            motionEvent.mNext = null;
            motionEvent.prepareForReuse();
            return motionEvent;
        }
    }

    public static MotionEvent obtainNoHistory(MotionEvent motionEvent) {
        if (motionEvent == null) {
            throw new IllegalArgumentException("other motion event must not be null");
        }
        MotionEvent motionEventObtain = obtain();
        motionEventObtain.mNativePtr = nativeCopy(motionEventObtain.mNativePtr, motionEvent.mNativePtr, false);
        return motionEventObtain;
    }

    public static String toolTypeToString(int i2) {
        String str = TOOL_TYPE_SYMBOLIC_NAMES.get(i2);
        return str != null ? str : Integer.toString(i2);
    }

    public final void addBatch(long j2, float f2, float f3, float f4, float f5, int i2) {
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(1);
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            pointerCoordsArr[0].clear();
            PointerCoords pointerCoords = pointerCoordsArr[0];
            pointerCoords.f207x = f2;
            pointerCoords.f208y = f3;
            pointerCoords.pressure = f4;
            pointerCoords.size = f5;
            nativeAddBatch(this.mNativePtr, 1000000 * j2, pointerCoordsArr, i2);
        }
    }

    @Override // android.view.InputEvent
    public final void cancel() {
        setAction(3);
    }

    public final MotionEvent clampNoHistory(float f2, float f3, float f4, float f5) {
        MotionEvent motionEventObtain = obtain();
        synchronized (gSharedTempLock) {
            int iNativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
            ensureSharedTempPointerCapacity(iNativeGetPointerCount);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            for (int i2 = 0; i2 < iNativeGetPointerCount; i2++) {
                nativeGetPointerProperties(this.mNativePtr, i2, pointerPropertiesArr[i2]);
                nativeGetPointerCoords(this.mNativePtr, i2, Integer.MIN_VALUE, pointerCoordsArr[i2]);
                PointerCoords pointerCoords = pointerCoordsArr[i2];
                pointerCoords.f207x = clamp(pointerCoords.f207x, f2, f4);
                PointerCoords pointerCoords2 = pointerCoordsArr[i2];
                pointerCoords2.f208y = clamp(pointerCoords2.f208y, f3, f5);
            }
            motionEventObtain.mNativePtr = nativeInitialize(motionEventObtain.mNativePtr, nativeGetDeviceId(this.mNativePtr), nativeGetSource(this.mNativePtr), nativeGetAction(this.mNativePtr), nativeGetFlags(this.mNativePtr), nativeGetEdgeFlags(this.mNativePtr), nativeGetMetaState(this.mNativePtr), nativeGetButtonState(this.mNativePtr), nativeGetXOffset(this.mNativePtr), nativeGetYOffset(this.mNativePtr), nativeGetXPrecision(this.mNativePtr), nativeGetYPrecision(this.mNativePtr), nativeGetDownTimeNanos(this.mNativePtr), nativeGetEventTimeNanos(this.mNativePtr, Integer.MIN_VALUE), iNativeGetPointerCount, pointerPropertiesArr, pointerCoordsArr);
        }
        return motionEventObtain;
    }

    public void finalize() throws Throwable {
        try {
            long j2 = this.mNativePtr;
            if (j2 != 0) {
                nativeDispose(j2);
                this.mNativePtr = 0L;
            }
        } finally {
            super.finalize();
        }
    }

    public final int findPointerIndex(int i2) {
        return nativeFindPointerIndex(this.mNativePtr, i2);
    }

    public final int getAction() {
        return nativeGetAction(this.mNativePtr);
    }

    public final int getActionButton() {
        return nativeGetActionButton(this.mNativePtr);
    }

    public final int getActionIndex() {
        return (nativeGetAction(this.mNativePtr) & 65280) >> 8;
    }

    public final int getActionMasked() {
        return nativeGetAction(this.mNativePtr) & 255;
    }

    public final float getAxisValue(int i2) {
        return nativeGetAxisValue(this.mNativePtr, i2, 0, Integer.MIN_VALUE);
    }

    public final int getButtonState() {
        return nativeGetButtonState(this.mNativePtr);
    }

    @Override // android.view.InputEvent
    public final int getDeviceId() {
        return nativeGetDeviceId(this.mNativePtr);
    }

    public final long getDownTime() {
        return nativeGetDownTimeNanos(this.mNativePtr) / 1000000;
    }

    public final int getEdgeFlags() {
        return nativeGetEdgeFlags(this.mNativePtr);
    }

    @Override // android.view.InputEvent
    public final long getEventTime() {
        return nativeGetEventTimeNanos(this.mNativePtr, Integer.MIN_VALUE) / 1000000;
    }

    @Override // android.view.InputEvent
    public final long getEventTimeNano() {
        return nativeGetEventTimeNanos(this.mNativePtr, Integer.MIN_VALUE);
    }

    public final int getFlags() {
        return nativeGetFlags(this.mNativePtr);
    }

    public final float getHistoricalAxisValue(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, i2, 0, i3);
    }

    public final long getHistoricalEventTime(int i2) {
        return nativeGetEventTimeNanos(this.mNativePtr, i2) / 1000000;
    }

    public final long getHistoricalEventTimeNano(int i2) {
        return nativeGetEventTimeNanos(this.mNativePtr, i2);
    }

    public final float getHistoricalOrientation(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 8, 0, i2);
    }

    public final void getHistoricalPointerCoords(int i2, int i3, PointerCoords pointerCoords) {
        nativeGetPointerCoords(this.mNativePtr, i2, i3, pointerCoords);
    }

    public final float getHistoricalPressure(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 2, 0, i2);
    }

    public final float getHistoricalSize(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 3, 0, i2);
    }

    public final float getHistoricalToolMajor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 6, 0, i2);
    }

    public final float getHistoricalToolMinor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 7, 0, i2);
    }

    public final float getHistoricalTouchMajor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 4, 0, i2);
    }

    public final float getHistoricalTouchMinor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 5, 0, i2);
    }

    public final float getHistoricalX(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 0, 0, i2);
    }

    public final float getHistoricalY(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 1, 0, i2);
    }

    public final int getHistorySize() {
        return nativeGetHistorySize(this.mNativePtr);
    }

    public final int getMetaState() {
        return nativeGetMetaState(this.mNativePtr);
    }

    public final float getOrientation() {
        return nativeGetAxisValue(this.mNativePtr, 8, 0, Integer.MIN_VALUE);
    }

    public final void getPointerCoords(int i2, PointerCoords pointerCoords) {
        nativeGetPointerCoords(this.mNativePtr, i2, Integer.MIN_VALUE, pointerCoords);
    }

    public final int getPointerCount() {
        return nativeGetPointerCount(this.mNativePtr);
    }

    public final int getPointerId(int i2) {
        return nativeGetPointerId(this.mNativePtr, i2);
    }

    public final int getPointerIdBits() {
        int iNativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
        int iNativeGetPointerId = 0;
        for (int i2 = 0; i2 < iNativeGetPointerCount; i2++) {
            iNativeGetPointerId |= 1 << nativeGetPointerId(this.mNativePtr, i2);
        }
        return iNativeGetPointerId;
    }

    public final void getPointerProperties(int i2, PointerProperties pointerProperties) {
        nativeGetPointerProperties(this.mNativePtr, i2, pointerProperties);
    }

    public final float getPressure() {
        return nativeGetAxisValue(this.mNativePtr, 2, 0, Integer.MIN_VALUE);
    }

    public final float getRawX() {
        return nativeGetRawAxisValue(this.mNativePtr, 0, 0, Integer.MIN_VALUE);
    }

    public final float getRawY() {
        return nativeGetRawAxisValue(this.mNativePtr, 1, 0, Integer.MIN_VALUE);
    }

    public final float getSize() {
        return nativeGetAxisValue(this.mNativePtr, 3, 0, Integer.MIN_VALUE);
    }

    @Override // android.view.InputEvent
    public final int getSource() {
        return nativeGetSource(this.mNativePtr);
    }

    public final float getToolMajor() {
        return nativeGetAxisValue(this.mNativePtr, 6, 0, Integer.MIN_VALUE);
    }

    public final float getToolMinor() {
        return nativeGetAxisValue(this.mNativePtr, 7, 0, Integer.MIN_VALUE);
    }

    public final int getToolType(int i2) {
        return nativeGetToolType(this.mNativePtr, i2);
    }

    public final float getTouchMajor() {
        return nativeGetAxisValue(this.mNativePtr, 4, 0, Integer.MIN_VALUE);
    }

    public final float getTouchMinor() {
        return nativeGetAxisValue(this.mNativePtr, 5, 0, Integer.MIN_VALUE);
    }

    public final float getX() {
        return nativeGetAxisValue(this.mNativePtr, 0, 0, Integer.MIN_VALUE);
    }

    public final float getXPrecision() {
        return nativeGetXPrecision(this.mNativePtr);
    }

    public final float getY() {
        return nativeGetAxisValue(this.mNativePtr, 1, 0, Integer.MIN_VALUE);
    }

    public final float getYPrecision() {
        return nativeGetYPrecision(this.mNativePtr);
    }

    public final boolean isButtonPressed(int i2) {
        return i2 != 0 && (getButtonState() & i2) == i2;
    }

    public final boolean isHoverExitPending() {
        return (getFlags() & 4) != 0;
    }

    @Override // android.view.InputEvent
    public final boolean isTainted() {
        return (getFlags() & Integer.MIN_VALUE) != 0;
    }

    public final boolean isTargetAccessibilityFocus() {
        return (getFlags() & 1073741824) != 0;
    }

    public final boolean isTouchEvent() {
        return nativeIsTouchEvent(this.mNativePtr);
    }

    public final boolean isWithinBoundsNoHistory(float f2, float f3, float f4, float f5) {
        int iNativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
        for (int i2 = 0; i2 < iNativeGetPointerCount; i2++) {
            float fNativeGetAxisValue = nativeGetAxisValue(this.mNativePtr, 0, i2, Integer.MIN_VALUE);
            float fNativeGetAxisValue2 = nativeGetAxisValue(this.mNativePtr, 1, i2, Integer.MIN_VALUE);
            if (fNativeGetAxisValue < f2 || fNativeGetAxisValue > f4 || fNativeGetAxisValue2 < f3 || fNativeGetAxisValue2 > f5) {
                return false;
            }
        }
        return true;
    }

    public final void offsetLocation(float f2, float f3) {
        if (f2 == 0.0f && f3 == 0.0f) {
            return;
        }
        nativeOffsetLocation(this.mNativePtr, f2, f3);
    }

    @Override // android.view.InputEvent
    public final void recycle() {
        super.recycle();
        synchronized (gRecyclerLock) {
            int i2 = gRecyclerUsed;
            if (i2 < 10) {
                gRecyclerUsed = i2 + 1;
                this.mNext = gRecyclerTop;
                gRecyclerTop = this;
            }
        }
    }

    public final void scale(float f2) {
        if (f2 != 1.0f) {
            nativeScale(this.mNativePtr, f2);
        }
    }

    public final void setAction(int i2) {
        nativeSetAction(this.mNativePtr, i2);
    }

    public final void setActionButton(int i2) {
        nativeSetActionButton(this.mNativePtr, i2);
    }

    public final void setButtonState(int i2) {
        nativeSetButtonState(this.mNativePtr, i2);
    }

    public final void setDownTime(long j2) {
        nativeSetDownTimeNanos(this.mNativePtr, j2 * 1000000);
    }

    public final void setEdgeFlags(int i2) {
        nativeSetEdgeFlags(this.mNativePtr, i2);
    }

    public void setHoverExitPending(boolean z2) {
        int flags = getFlags();
        nativeSetFlags(this.mNativePtr, z2 ? flags | 4 : flags & (-5));
    }

    public final void setLocation(float f2, float f3) {
        offsetLocation(f2 - getX(), f3 - getY());
    }

    @Override // android.view.InputEvent
    public final void setSource(int i2) {
        nativeSetSource(this.mNativePtr, i2);
    }

    @Override // android.view.InputEvent
    public final void setTainted(boolean z2) {
        int flags = getFlags();
        nativeSetFlags(this.mNativePtr, z2 ? Integer.MIN_VALUE | flags : Integer.MAX_VALUE & flags);
    }

    public final void setTargetAccessibilityFocus(boolean z2) {
        int flags = getFlags();
        nativeSetFlags(this.mNativePtr, z2 ? 1073741824 | flags : (-1073741825) & flags);
    }

    public final MotionEvent split(int i2) {
        int i3;
        int i4;
        int i5;
        MotionEvent motionEventObtain = obtain();
        synchronized (gSharedTempLock) {
            int iNativeGetPointerCount = nativeGetPointerCount(this.mNativePtr);
            ensureSharedTempPointerCapacity(iNativeGetPointerCount);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            int[] iArr = gSharedTempPointerIndexMap;
            int iNativeGetAction = nativeGetAction(this.mNativePtr);
            int i6 = iNativeGetAction & 255;
            int i7 = (65280 & iNativeGetAction) >> 8;
            int i8 = -1;
            int i9 = 0;
            for (int i10 = 0; i10 < iNativeGetPointerCount; i10++) {
                nativeGetPointerProperties(this.mNativePtr, i10, pointerPropertiesArr[i9]);
                if (((1 << pointerPropertiesArr[i9].id) & i2) != 0) {
                    if (i10 == i7) {
                        i8 = i9;
                    }
                    iArr[i9] = i10;
                    i9++;
                }
            }
            if (i9 == 0) {
                throw new IllegalArgumentException("idBits did not match any ids in the event");
            }
            if (i6 == 5 || i6 == 6) {
                if (i8 < 0) {
                    iNativeGetAction = 2;
                } else if (i9 == 1) {
                    iNativeGetAction = i6 == 5 ? 0 : 1;
                } else {
                    iNativeGetAction = i6 | (i8 << 8);
                }
            }
            int i11 = iNativeGetAction;
            int iNativeGetHistorySize = nativeGetHistorySize(this.mNativePtr);
            int i12 = 0;
            while (i12 <= iNativeGetHistorySize) {
                int i13 = i12 == iNativeGetHistorySize ? Integer.MIN_VALUE : i12;
                for (int i14 = 0; i14 < i9; i14++) {
                    nativeGetPointerCoords(this.mNativePtr, iArr[i14], i13, pointerCoordsArr[i14]);
                }
                long jNativeGetEventTimeNanos = nativeGetEventTimeNanos(this.mNativePtr, i13);
                if (i12 == 0) {
                    i3 = i12;
                    i4 = iNativeGetHistorySize;
                    i5 = i9;
                    motionEventObtain.mNativePtr = nativeInitialize(motionEventObtain.mNativePtr, nativeGetDeviceId(this.mNativePtr), nativeGetSource(this.mNativePtr), i11, nativeGetFlags(this.mNativePtr), nativeGetEdgeFlags(this.mNativePtr), nativeGetMetaState(this.mNativePtr), nativeGetButtonState(this.mNativePtr), nativeGetXOffset(this.mNativePtr), nativeGetYOffset(this.mNativePtr), nativeGetXPrecision(this.mNativePtr), nativeGetYPrecision(this.mNativePtr), nativeGetDownTimeNanos(this.mNativePtr), jNativeGetEventTimeNanos, i5, pointerPropertiesArr, pointerCoordsArr);
                } else {
                    i3 = i12;
                    i4 = iNativeGetHistorySize;
                    i5 = i9;
                    nativeAddBatch(motionEventObtain.mNativePtr, jNativeGetEventTimeNanos, pointerCoordsArr, 0);
                }
                i12 = i3 + 1;
                iNativeGetHistorySize = i4;
                i9 = i5;
            }
        }
        return motionEventObtain;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MotionEvent { action=");
        sb.append(actionToString(getAction()));
        sb.append(", actionButton=");
        sb.append(buttonStateToString(getActionButton()));
        int pointerCount = getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            sb.append(", id[");
            sb.append(i2);
            sb.append("]=");
            sb.append(getPointerId(i2));
            sb.append(", x[");
            sb.append(i2);
            sb.append("]=");
            sb.append(getX(i2));
            sb.append(", y[");
            sb.append(i2);
            sb.append("]=");
            sb.append(getY(i2));
            sb.append(", toolType[");
            sb.append(i2);
            sb.append("]=");
            sb.append(toolTypeToString(getToolType(i2)));
        }
        sb.append(", buttonState=");
        sb.append(buttonStateToString(getButtonState()));
        sb.append(", metaState=");
        sb.append(KeyEvent.metaStateToString(getMetaState()));
        sb.append(", flags=0x");
        sb.append(Integer.toHexString(getFlags()));
        sb.append(", edgeFlags=0x");
        sb.append(Integer.toHexString(getEdgeFlags()));
        sb.append(", pointerCount=");
        sb.append(pointerCount);
        sb.append(", historySize=");
        sb.append(getHistorySize());
        sb.append(", eventTime=");
        sb.append(getEventTime());
        sb.append(", downTime=");
        sb.append(getDownTime());
        sb.append(", deviceId=");
        sb.append(getDeviceId());
        sb.append(", source=0x");
        sb.append(Integer.toHexString(getSource()));
        sb.append(" }");
        return sb.toString();
    }

    public final void transform(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("matrix must not be null");
        }
        nativeTransform(this.mNativePtr, matrix.native_instance);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(1);
        nativeWriteToParcel(this.mNativePtr, parcel);
    }

    public static final class PointerProperties {
        public int id;
        public int toolType;

        public PointerProperties() {
            clear();
        }

        public static PointerProperties[] createArray(int i2) {
            PointerProperties[] pointerPropertiesArr = new PointerProperties[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                pointerPropertiesArr[i3] = new PointerProperties();
            }
            return pointerPropertiesArr;
        }

        public void clear() {
            this.id = -1;
            this.toolType = 0;
        }

        public void copyFrom(PointerProperties pointerProperties) {
            this.id = pointerProperties.id;
            this.toolType = pointerProperties.toolType;
        }

        public boolean equals(Object obj) {
            if (obj instanceof PointerProperties) {
                return equals((PointerProperties) obj);
            }
            return false;
        }

        public int hashCode() {
            return this.id | (this.toolType << 8);
        }

        public PointerProperties(PointerProperties pointerProperties) {
            copyFrom(pointerProperties);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean equals(PointerProperties pointerProperties) {
            return pointerProperties != null && this.id == pointerProperties.id && this.toolType == pointerProperties.toolType;
        }
    }

    @Override // android.view.InputEvent
    public MotionEvent copy() {
        return obtain(this);
    }

    public final float getAxisValue(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, i2, i3, Integer.MIN_VALUE);
    }

    public final float getHistoricalAxisValue(int i2, int i3, int i4) {
        return nativeGetAxisValue(this.mNativePtr, i2, i3, i4);
    }

    public final float getHistoricalOrientation(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 8, i2, i3);
    }

    public final float getHistoricalPressure(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 2, i2, i3);
    }

    public final float getHistoricalSize(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 3, i2, i3);
    }

    public final float getHistoricalToolMajor(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 6, i2, i3);
    }

    public final float getHistoricalToolMinor(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 7, i2, i3);
    }

    public final float getHistoricalTouchMajor(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 4, i2, i3);
    }

    public final float getHistoricalTouchMinor(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 5, i2, i3);
    }

    public final float getHistoricalX(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 0, i2, i3);
    }

    public final float getHistoricalY(int i2, int i3) {
        return nativeGetAxisValue(this.mNativePtr, 1, i2, i3);
    }

    public final float getOrientation(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 8, i2, Integer.MIN_VALUE);
    }

    public final float getPressure(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 2, i2, Integer.MIN_VALUE);
    }

    public final float getSize(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 3, i2, Integer.MIN_VALUE);
    }

    public final float getToolMajor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 6, i2, Integer.MIN_VALUE);
    }

    public final float getToolMinor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 7, i2, Integer.MIN_VALUE);
    }

    public final float getTouchMajor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 4, i2, Integer.MIN_VALUE);
    }

    public final float getTouchMinor(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 5, i2, Integer.MIN_VALUE);
    }

    public final float getX(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 0, i2, Integer.MIN_VALUE);
    }

    public final float getY(int i2) {
        return nativeGetAxisValue(this.mNativePtr, 1, i2, Integer.MIN_VALUE);
    }

    public static MotionEvent obtain(long j2, long j3, int i2, int i3, PointerProperties[] pointerPropertiesArr, PointerCoords[] pointerCoordsArr, int i4, int i5, float f2, float f3, int i6, int i7, int i8, int i9) {
        MotionEvent motionEventObtain = obtain();
        motionEventObtain.mNativePtr = nativeInitialize(motionEventObtain.mNativePtr, i6, i8, i2, i9, i7, i4, i5, 0.0f, 0.0f, f2, f3, j2 * 1000000, 1000000 * j3, i3, pointerPropertiesArr, pointerCoordsArr);
        return motionEventObtain;
    }

    public final void addBatch(long j2, PointerCoords[] pointerCoordsArr, int i2) {
        nativeAddBatch(this.mNativePtr, 1000000 * j2, pointerCoordsArr, i2);
    }

    @Deprecated
    public static MotionEvent obtain(long j2, long j3, int i2, int i3, int[] iArr, PointerCoords[] pointerCoordsArr, int i4, float f2, float f3, int i5, int i6, int i7, int i8) {
        MotionEvent motionEventObtain;
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(i3);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            for (int i9 = 0; i9 < i3; i9++) {
                pointerPropertiesArr[i9].clear();
                pointerPropertiesArr[i9].id = iArr[i9];
            }
            motionEventObtain = obtain(j2, j3, i2, i3, pointerPropertiesArr, pointerCoordsArr, i4, 0, f2, f3, i5, i6, i7, i8);
        }
        return motionEventObtain;
    }

    public final boolean addBatch(MotionEvent motionEvent) {
        int iNativeGetPointerCount;
        int iNativeGetAction = nativeGetAction(this.mNativePtr);
        if ((iNativeGetAction != 2 && iNativeGetAction != 7) || iNativeGetAction != nativeGetAction(motionEvent.mNativePtr) || nativeGetDeviceId(this.mNativePtr) != nativeGetDeviceId(motionEvent.mNativePtr) || nativeGetSource(this.mNativePtr) != nativeGetSource(motionEvent.mNativePtr) || nativeGetFlags(this.mNativePtr) != nativeGetFlags(motionEvent.mNativePtr) || (iNativeGetPointerCount = nativeGetPointerCount(this.mNativePtr)) != nativeGetPointerCount(motionEvent.mNativePtr)) {
            return false;
        }
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(Math.max(iNativeGetPointerCount, 2));
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            for (int i2 = 0; i2 < iNativeGetPointerCount; i2++) {
                nativeGetPointerProperties(this.mNativePtr, i2, pointerPropertiesArr[0]);
                nativeGetPointerProperties(motionEvent.mNativePtr, i2, pointerPropertiesArr[1]);
                if (!pointerPropertiesArr[0].equals(pointerPropertiesArr[1])) {
                    return false;
                }
            }
            int iNativeGetMetaState = nativeGetMetaState(motionEvent.mNativePtr);
            int iNativeGetHistorySize = nativeGetHistorySize(motionEvent.mNativePtr);
            int i3 = 0;
            while (i3 <= iNativeGetHistorySize) {
                int i4 = i3 == iNativeGetHistorySize ? Integer.MIN_VALUE : i3;
                for (int i5 = 0; i5 < iNativeGetPointerCount; i5++) {
                    nativeGetPointerCoords(motionEvent.mNativePtr, i5, i4, pointerCoordsArr[i5]);
                }
                nativeAddBatch(this.mNativePtr, nativeGetEventTimeNanos(motionEvent.mNativePtr, i4), pointerCoordsArr, iNativeGetMetaState);
                i3++;
            }
            return true;
        }
    }

    public static MotionEvent obtain(long j2, long j3, int i2, float f2, float f3, float f4, float f5, int i3, float f6, float f7, int i4, int i5) {
        MotionEvent motionEventObtain = obtain();
        synchronized (gSharedTempLock) {
            ensureSharedTempPointerCapacity(1);
            PointerProperties[] pointerPropertiesArr = gSharedTempPointerProperties;
            pointerPropertiesArr[0].clear();
            pointerPropertiesArr[0].id = 0;
            PointerCoords[] pointerCoordsArr = gSharedTempPointerCoords;
            pointerCoordsArr[0].clear();
            PointerCoords pointerCoords = pointerCoordsArr[0];
            pointerCoords.f207x = f2;
            pointerCoords.f208y = f3;
            pointerCoords.pressure = f4;
            pointerCoords.size = f5;
            motionEventObtain.mNativePtr = nativeInitialize(motionEventObtain.mNativePtr, i4, 0, i2, 0, i5, i3, 0, 0.0f, 0.0f, f6, f7, j2 * 1000000, j3 * 1000000, 1, pointerPropertiesArr, pointerCoordsArr);
        }
        return motionEventObtain;
    }

    @Deprecated
    public static MotionEvent obtain(long j2, long j3, int i2, int i3, float f2, float f3, float f4, float f5, int i4, float f6, float f7, int i5, int i6) {
        return obtain(j2, j3, i2, f2, f3, f4, f5, i4, f6, f7, i5, i6);
    }

    public static MotionEvent obtain(long j2, long j3, int i2, float f2, float f3, int i3) {
        return obtain(j2, j3, i2, f2, f3, 1.0f, 1.0f, i3, 1.0f, 1.0f, 0, 0);
    }

    public static MotionEvent obtain(MotionEvent motionEvent) {
        if (motionEvent != null) {
            MotionEvent motionEventObtain = obtain();
            motionEventObtain.mNativePtr = nativeCopy(motionEventObtain.mNativePtr, motionEvent.mNativePtr, true);
            return motionEventObtain;
        }
        throw new IllegalArgumentException("other motion event must not be null");
    }
}
