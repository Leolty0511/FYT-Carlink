package android.view;

import android.hardware.Camera;
import android.hardware.input.InputManager;
import android.os.NullVibrator;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Vibrator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class InputDevice implements Parcelable {
    public static final Parcelable.Creator<InputDevice> CREATOR = new Parcelable.Creator<InputDevice>() { // from class: android.view.InputDevice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputDevice createFromParcel(Parcel parcel) {
            return new InputDevice(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputDevice[] newArray(int i2) {
            return new InputDevice[i2];
        }
    };
    public static final int KEYBOARD_TYPE_ALPHABETIC = 2;
    public static final int KEYBOARD_TYPE_NONE = 0;
    public static final int KEYBOARD_TYPE_NON_ALPHABETIC = 1;

    @Deprecated
    public static final int MOTION_RANGE_ORIENTATION = 8;

    @Deprecated
    public static final int MOTION_RANGE_PRESSURE = 2;

    @Deprecated
    public static final int MOTION_RANGE_SIZE = 3;

    @Deprecated
    public static final int MOTION_RANGE_TOOL_MAJOR = 6;

    @Deprecated
    public static final int MOTION_RANGE_TOOL_MINOR = 7;

    @Deprecated
    public static final int MOTION_RANGE_TOUCH_MAJOR = 4;

    @Deprecated
    public static final int MOTION_RANGE_TOUCH_MINOR = 5;

    @Deprecated
    public static final int MOTION_RANGE_X = 0;

    @Deprecated
    public static final int MOTION_RANGE_Y = 1;
    public static final int SOURCE_ANY = -256;
    public static final int SOURCE_CLASS_BUTTON = 1;
    public static final int SOURCE_CLASS_JOYSTICK = 16;
    public static final int SOURCE_CLASS_MASK = 255;
    public static final int SOURCE_CLASS_NONE = 0;
    public static final int SOURCE_CLASS_POINTER = 2;
    public static final int SOURCE_CLASS_POSITION = 8;
    public static final int SOURCE_CLASS_TRACKBALL = 4;
    public static final int SOURCE_DPAD = 513;
    public static final int SOURCE_GAMEPAD = 1025;
    public static final int SOURCE_JOYSTICK = 16777232;
    public static final int SOURCE_KEYBOARD = 257;
    public static final int SOURCE_MOUSE = 8194;
    public static final int SOURCE_STYLUS = 16386;
    public static final int SOURCE_TOUCHPAD = 1048584;
    public static final int SOURCE_TOUCHSCREEN = 4098;
    public static final int SOURCE_TOUCH_NAVIGATION = 2097152;
    public static final int SOURCE_TRACKBALL = 65540;
    public static final int SOURCE_UNKNOWN = 0;
    private final int mControllerNumber;
    private final String mDescriptor;
    private final int mGeneration;
    private final boolean mHasButtonUnderPad;
    private final boolean mHasVibrator;
    private final int mId;
    private final boolean mIsExternal;
    private final KeyCharacterMap mKeyCharacterMap;
    private final int mKeyboardType;
    private final ArrayList<MotionRange> mMotionRanges;
    private final String mName;
    private final int mProductId;
    private final int mSources;
    private final int mVendorId;
    private Vibrator mVibrator;

    public static final class MotionRange {
        private int mAxis;
        private float mFlat;
        private float mFuzz;
        private float mMax;
        private float mMin;
        private float mResolution;
        private int mSource;

        public int getAxis() {
            return this.mAxis;
        }

        public float getFlat() {
            return this.mFlat;
        }

        public float getFuzz() {
            return this.mFuzz;
        }

        public float getMax() {
            return this.mMax;
        }

        public float getMin() {
            return this.mMin;
        }

        public float getRange() {
            return this.mMax - this.mMin;
        }

        public float getResolution() {
            return this.mResolution;
        }

        public int getSource() {
            return this.mSource;
        }

        public boolean isFromSource(int i2) {
            return (getSource() & i2) == i2;
        }

        private MotionRange(int i2, int i3, float f2, float f3, float f4, float f5, float f6) {
            this.mAxis = i2;
            this.mSource = i3;
            this.mMin = f2;
            this.mMax = f3;
            this.mFlat = f4;
            this.mFuzz = f5;
            this.mResolution = f6;
        }
    }

    private void addMotionRange(int i2, int i3, float f2, float f3, float f4, float f5, float f6) {
        this.mMotionRanges.add(new MotionRange(i2, i3, f2, f3, f4, f5, f6));
    }

    private void appendSourceDescriptionIfApplicable(StringBuilder sb, int i2, String str) {
        if ((this.mSources & i2) == i2) {
            sb.append(" ");
            sb.append(str);
        }
    }

    public static InputDevice getDevice(int i2) {
        return InputManager.getInstance().getInputDevice(i2);
    }

    public static int[] getDeviceIds() {
        return InputManager.getInstance().getInputDeviceIds();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getControllerNumber() {
        return this.mControllerNumber;
    }

    public String getDescriptor() {
        return this.mDescriptor;
    }

    public int getGeneration() {
        return this.mGeneration;
    }

    public int getId() {
        return this.mId;
    }

    public KeyCharacterMap getKeyCharacterMap() {
        return this.mKeyCharacterMap;
    }

    public int getKeyboardType() {
        return this.mKeyboardType;
    }

    public MotionRange getMotionRange(int i2) {
        int size = this.mMotionRanges.size();
        for (int i3 = 0; i3 < size; i3++) {
            MotionRange motionRange = this.mMotionRanges.get(i3);
            if (motionRange.mAxis == i2) {
                return motionRange;
            }
        }
        return null;
    }

    public List<MotionRange> getMotionRanges() {
        return this.mMotionRanges;
    }

    public String getName() {
        return this.mName;
    }

    public int getProductId() {
        return this.mProductId;
    }

    public int getSources() {
        return this.mSources;
    }

    public int getVendorId() {
        return this.mVendorId;
    }

    public Vibrator getVibrator() {
        Vibrator vibrator;
        synchronized (this.mMotionRanges) {
            if (this.mVibrator == null) {
                if (this.mHasVibrator) {
                    this.mVibrator = InputManager.getInstance().getInputDeviceVibrator(this.mId);
                } else {
                    this.mVibrator = NullVibrator.getInstance();
                }
            }
            vibrator = this.mVibrator;
        }
        return vibrator;
    }

    public boolean hasButtonUnderPad() {
        return this.mHasButtonUnderPad;
    }

    public boolean[] hasKeys(int... iArr) {
        return InputManager.getInstance().deviceHasKeys(this.mId, iArr);
    }

    public boolean isExternal() {
        return this.mIsExternal;
    }

    public boolean isFullKeyboard() {
        return (this.mSources & 257) == 257 && this.mKeyboardType == 2;
    }

    public boolean isVirtual() {
        return this.mId < 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Input Device ");
        sb.append(this.mId);
        sb.append(": ");
        sb.append(this.mName);
        sb.append("\n");
        sb.append("  Descriptor: ");
        sb.append(this.mDescriptor);
        sb.append("\n");
        sb.append("  Generation: ");
        sb.append(this.mGeneration);
        sb.append("\n");
        sb.append("  Location: ");
        sb.append(this.mIsExternal ? "external" : "built-in");
        sb.append("\n");
        sb.append("  Keyboard Type: ");
        int i2 = this.mKeyboardType;
        if (i2 == 0) {
            sb.append(Camera.Parameters.EFFECT_NONE);
        } else if (i2 == 1) {
            sb.append("non-alphabetic");
        } else if (i2 == 2) {
            sb.append("alphabetic");
        }
        sb.append("\n");
        sb.append("  Has Vibrator: ");
        sb.append(this.mHasVibrator);
        sb.append("\n");
        sb.append("  Sources: 0x");
        sb.append(Integer.toHexString(this.mSources));
        sb.append(" (");
        appendSourceDescriptionIfApplicable(sb, 257, "keyboard");
        appendSourceDescriptionIfApplicable(sb, 513, "dpad");
        appendSourceDescriptionIfApplicable(sb, SOURCE_TOUCHSCREEN, "touchscreen");
        appendSourceDescriptionIfApplicable(sb, 8194, "mouse");
        appendSourceDescriptionIfApplicable(sb, 16386, "stylus");
        appendSourceDescriptionIfApplicable(sb, SOURCE_TRACKBALL, "trackball");
        appendSourceDescriptionIfApplicable(sb, SOURCE_TOUCHPAD, "touchpad");
        appendSourceDescriptionIfApplicable(sb, SOURCE_JOYSTICK, "joystick");
        appendSourceDescriptionIfApplicable(sb, SOURCE_GAMEPAD, "gamepad");
        sb.append(" )\n");
        int size = this.mMotionRanges.size();
        for (int i3 = 0; i3 < size; i3++) {
            MotionRange motionRange = this.mMotionRanges.get(i3);
            sb.append("    ");
            sb.append(MotionEvent.axisToString(motionRange.mAxis));
            sb.append(": source=0x");
            sb.append(Integer.toHexString(motionRange.mSource));
            sb.append(" min=");
            sb.append(motionRange.mMin);
            sb.append(" max=");
            sb.append(motionRange.mMax);
            sb.append(" flat=");
            sb.append(motionRange.mFlat);
            sb.append(" fuzz=");
            sb.append(motionRange.mFuzz);
            sb.append(" resolution=");
            sb.append(motionRange.mResolution);
            sb.append("\n");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mGeneration);
        parcel.writeInt(this.mControllerNumber);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mVendorId);
        parcel.writeInt(this.mProductId);
        parcel.writeString(this.mDescriptor);
        parcel.writeInt(this.mIsExternal ? 1 : 0);
        parcel.writeInt(this.mSources);
        parcel.writeInt(this.mKeyboardType);
        this.mKeyCharacterMap.writeToParcel(parcel, i2);
        parcel.writeInt(this.mHasVibrator ? 1 : 0);
        parcel.writeInt(this.mHasButtonUnderPad ? 1 : 0);
        int size = this.mMotionRanges.size();
        for (int i3 = 0; i3 < size; i3++) {
            MotionRange motionRange = this.mMotionRanges.get(i3);
            parcel.writeInt(motionRange.mAxis);
            parcel.writeInt(motionRange.mSource);
            parcel.writeFloat(motionRange.mMin);
            parcel.writeFloat(motionRange.mMax);
            parcel.writeFloat(motionRange.mFlat);
            parcel.writeFloat(motionRange.mFuzz);
            parcel.writeFloat(motionRange.mResolution);
        }
        parcel.writeInt(-1);
    }

    private InputDevice(int i2, int i3, int i4, String str, int i5, int i6, String str2, boolean z2, int i7, int i8, KeyCharacterMap keyCharacterMap, boolean z3, boolean z4) {
        this.mMotionRanges = new ArrayList<>();
        this.mId = i2;
        this.mGeneration = i3;
        this.mControllerNumber = i4;
        this.mName = str;
        this.mVendorId = i5;
        this.mProductId = i6;
        this.mDescriptor = str2;
        this.mIsExternal = z2;
        this.mSources = i7;
        this.mKeyboardType = i8;
        this.mKeyCharacterMap = keyCharacterMap;
        this.mHasVibrator = z3;
        this.mHasButtonUnderPad = z4;
    }

    public MotionRange getMotionRange(int i2, int i3) {
        int size = this.mMotionRanges.size();
        for (int i4 = 0; i4 < size; i4++) {
            MotionRange motionRange = this.mMotionRanges.get(i4);
            if (motionRange.mAxis == i2 && motionRange.mSource == i3) {
                return motionRange;
            }
        }
        return null;
    }

    private InputDevice(Parcel parcel) {
        this.mMotionRanges = new ArrayList<>();
        this.mId = parcel.readInt();
        this.mGeneration = parcel.readInt();
        this.mControllerNumber = parcel.readInt();
        this.mName = parcel.readString();
        this.mVendorId = parcel.readInt();
        this.mProductId = parcel.readInt();
        this.mDescriptor = parcel.readString();
        this.mIsExternal = parcel.readInt() != 0;
        this.mSources = parcel.readInt();
        this.mKeyboardType = parcel.readInt();
        this.mKeyCharacterMap = KeyCharacterMap.CREATOR.createFromParcel(parcel);
        this.mHasVibrator = parcel.readInt() != 0;
        this.mHasButtonUnderPad = parcel.readInt() != 0;
        while (true) {
            int i2 = parcel.readInt();
            if (i2 < 0) {
                return;
            } else {
                addMotionRange(i2, parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
            }
        }
    }
}
