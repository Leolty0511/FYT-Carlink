package android.filterfw.core;

import android.accessibilityservice.c;
import com.android.internal.content.NativeLibraryHelper;

/* JADX INFO: loaded from: classes.dex */
public class NativeProgram extends Program {
    private boolean mHasGetValueFunction;
    private boolean mHasInitFunction;
    private boolean mHasResetFunction;
    private boolean mHasSetValueFunction;
    private boolean mHasTeardownFunction;
    private boolean mTornDown = false;
    private int nativeProgramId;

    static {
        System.loadLibrary("filterfw");
    }

    public NativeProgram(String str, String str2) {
        this.mHasInitFunction = false;
        this.mHasTeardownFunction = false;
        this.mHasSetValueFunction = false;
        this.mHasGetValueFunction = false;
        this.mHasResetFunction = false;
        allocate();
        String strK = c.k(NativeLibraryHelper.LIB_DIR_NAME, str, ".so");
        if (!openNativeLibrary(strK)) {
            throw new RuntimeException(c.k("Could not find native library named '", strK, "' required for native program!"));
        }
        String strD = c.D(str2, "_process");
        if (!bindProcessFunction(strD)) {
            throw new RuntimeException("Could not find native program function name " + strD + " in library " + strK + "! This function is required!");
        }
        this.mHasInitFunction = bindInitFunction(c.D(str2, "_init"));
        this.mHasTeardownFunction = bindTeardownFunction(c.D(str2, "_teardown"));
        this.mHasSetValueFunction = bindSetValueFunction(c.D(str2, "_setvalue"));
        this.mHasGetValueFunction = bindGetValueFunction(c.D(str2, "_getvalue"));
        this.mHasResetFunction = bindResetFunction(c.D(str2, "_reset"));
        if (this.mHasInitFunction && !callNativeInit()) {
            throw new RuntimeException("Could not initialize NativeProgram!");
        }
    }

    private native boolean allocate();

    private native boolean bindGetValueFunction(String str);

    private native boolean bindInitFunction(String str);

    private native boolean bindProcessFunction(String str);

    private native boolean bindResetFunction(String str);

    private native boolean bindSetValueFunction(String str);

    private native boolean bindTeardownFunction(String str);

    private native String callNativeGetValue(String str);

    private native boolean callNativeInit();

    private native boolean callNativeProcess(NativeFrame[] nativeFrameArr, NativeFrame nativeFrame);

    private native boolean callNativeReset();

    private native boolean callNativeSetValue(String str, String str2);

    private native boolean callNativeTeardown();

    private native boolean deallocate();

    private native boolean nativeInit();

    private native boolean openNativeLibrary(String str);

    public void finalize() {
        tearDown();
    }

    @Override // android.filterfw.core.Program
    public Object getHostValue(String str) {
        if (this.mTornDown) {
            throw new RuntimeException("NativeProgram already torn down!");
        }
        if (this.mHasGetValueFunction) {
            return callNativeGetValue(str);
        }
        throw new RuntimeException("Attempting to get native variable, but native code does not define native getvalue function!");
    }

    @Override // android.filterfw.core.Program
    public void process(Frame[] frameArr, Frame frame) {
        if (this.mTornDown) {
            throw new RuntimeException("NativeProgram already torn down!");
        }
        NativeFrame[] nativeFrameArr = new NativeFrame[frameArr.length];
        for (int i2 = 0; i2 < frameArr.length; i2++) {
            Frame frame2 = frameArr[i2];
            if (frame2 != null && !(frame2 instanceof NativeFrame)) {
                throw new RuntimeException(c.e("NativeProgram got non-native frame as input ", i2, "!"));
            }
            nativeFrameArr[i2] = (NativeFrame) frame2;
        }
        if (frame != null && !(frame instanceof NativeFrame)) {
            throw new RuntimeException("NativeProgram got non-native output frame!");
        }
        if (!callNativeProcess(nativeFrameArr, (NativeFrame) frame)) {
            throw new RuntimeException("Calling native process() caused error!");
        }
    }

    @Override // android.filterfw.core.Program
    public void reset() {
        if (this.mHasResetFunction && !callNativeReset()) {
            throw new RuntimeException("Could not reset NativeProgram!");
        }
    }

    @Override // android.filterfw.core.Program
    public void setHostValue(String str, Object obj) {
        if (this.mTornDown) {
            throw new RuntimeException("NativeProgram already torn down!");
        }
        if (!this.mHasSetValueFunction) {
            throw new RuntimeException("Attempting to set native variable, but native code does not define native setvalue function!");
        }
        if (!callNativeSetValue(str, obj.toString())) {
            throw new RuntimeException(c.k("Error setting native value for variable '", str, "'!"));
        }
    }

    public void tearDown() {
        if (this.mTornDown) {
            return;
        }
        if (this.mHasTeardownFunction && !callNativeTeardown()) {
            throw new RuntimeException("Could not tear down NativeProgram!");
        }
        deallocate();
        this.mTornDown = true;
    }
}
