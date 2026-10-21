package com.google.android.projection.protocol;

import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes3.dex */
public class InputSource implements CarServiceProvider, InputSourceCallbacks {
    private static final boolean DBG_TRACE = false;
    private static final String TAG = "AHU.INPUT";
    private OnInputFeedbackListener mFeedbackListener;

    @Nullable
    private final InputInjector mInputInjector;

    @UsedByNative
    private long mNativeInputSource;
    private boolean mOverrideMotionEvent;
    public static final int FEEDBACK_EVENT_SELECT = Protos.FeedbackEvent.FEEDBACK_SELECT.getNumber();
    public static final int FEEDBACK_EVENT_FOCUS_CHANGE = Protos.FeedbackEvent.FEEDBACK_FOCUS_CHANGE.getNumber();
    public static final int FEEDBACK_EVENT_DRAG_SELECT = Protos.FeedbackEvent.FEEDBACK_DRAG_SELECT.getNumber();
    public static final int FEEDBACK_EVENT_DRAG_START = Protos.FeedbackEvent.FEEDBACK_DRAG_START.getNumber();
    public static final int FEEDBACK_EVENT_DRAG_END = Protos.FeedbackEvent.FEEDBACK_DRAG_END.getNumber();
    public static final int TOUCHSCREEN_TYPE_CAPACITIVE = Protos.TouchScreenType.CAPACITIVE.getNumber();
    public static final int TOUCHSCREEN_TYPE_RESISTIVE = Protos.TouchScreenType.RESISTIVE.getNumber();

    public interface InputInjector {
        void onKeyEvent(KeyEvent keyEvent);

        void onMotionEvent(MotionEvent motionEvent);

        void onRelativeEvent(int i2, int i3);
    }

    public interface OnInputFeedbackListener {
        void onInputFeedback(int i2);
    }

    public InputSource(@Nullable InputInjector inputInjector) {
        this.mInputInjector = inputInjector;
    }

    private native int nativeInit(int i2, long j2);

    private native void nativeRegisterFeedbackEvents(int[] iArr);

    private native void nativeRegisterKeyCodes(int[] iArr);

    private native void nativeRegisterTouchPad(int i2, int i3, boolean z2, int i4, int i5, boolean z3, boolean z4);

    private native void nativeRegisterTouchScreen(int i2, int i3, int i4);

    private native int nativeSendAbsoluteEvent(long j2, int i2, int i3);

    private native int nativeSendKeyEvent(long j2, int i2, boolean z2, int i3);

    private native int nativeSendKeyLongEvent(long j2, int i2, int i3);

    private native int nativeSendRelativeEvent(long j2, int i2, int i3);

    private native int nativeSendTouchEvent(long j2, int[] iArr, int[] iArr2, int[] iArr3, int i2, int i3);

    private native int nativeSendTouchPadEvent(long j2, int[] iArr, int[] iArr2, int[] iArr3, int i2, int i3);

    private native void nativeSetDisplayId(int i2);

    private native void nativeShutdown();

    private int translateKeycode(int i2) {
        return i2;
    }

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        return nativeInit(i2, j2) == 0;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeInputSource;
    }

    public void injectForTest(Protos.InputReport inputReport) {
        Log.d("AHU.INPUT", "Received an input report");
        if (this.mInputInjector == null) {
            Log.d("AHU.INPUT", "Input Injector is null.");
            return;
        }
        if (inputReport.getTouchEvent().getPointerDataCount() > 0) {
            int number = inputReport.getTouchEvent().getAction().getNumber();
            int actionIndex = inputReport.getTouchEvent().getActionIndex();
            int pointerDataCount = inputReport.getTouchEvent().getPointerDataCount();
            MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerDataCount];
            MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerDataCount];
            for (int i2 = 0; i2 < pointerDataCount; i2++) {
                MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
                pointerCoords.f207x = inputReport.getTouchEvent().getPointerData(i2).getX();
                pointerCoords.f208y = inputReport.getTouchEvent().getPointerData(i2).getY();
                pointerCoordsArr[i2] = pointerCoords;
                MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                if (inputReport.getTouchEvent().getPointerData(i2).hasPointerId()) {
                    pointerProperties.id = inputReport.getTouchEvent().getPointerData(i2).getPointerId();
                }
                pointerPropertiesArr[i2] = pointerProperties;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(inputReport.getTimestamp(), inputReport.getTimestamp(), (actionIndex << 8) + number, pointerDataCount, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 4098, 0);
            synchronized (this) {
                this.mOverrideMotionEvent = true;
                this.mInputInjector.onMotionEvent(motionEventObtain);
            }
            motionEventObtain.recycle();
        }
        if (inputReport.getKeyEvent().getKeysCount() > 0) {
            if (inputReport.getKeyEvent().getKeysCount() > 1) {
                this.mInputInjector.onKeyEvent(new KeyEvent(0, 4));
                return;
            }
            Protos.KeyEvent.Key keys = inputReport.getKeyEvent().getKeys(0);
            this.mInputInjector.onKeyEvent(new KeyEvent(SystemClock.elapsedRealtimeNanos(), SystemClock.elapsedRealtimeNanos(), !keys.getDown() ? 1 : 0, keys.getKeycode(), 0, keys.getMetastate()));
        }
        if (inputReport.getRelativeEvent().getDataCount() > 0) {
            for (Protos.RelativeEvent.Rel rel : inputReport.getRelativeEvent().getDataList()) {
                this.mInputInjector.onRelativeEvent(rel.getKeycode(), rel.getDelta());
            }
        }
        inputReport.getAbsoluteEvent().getDataCount();
    }

    @Override // com.google.android.projection.protocol.InputSourceCallbacks
    public void onInputFeedback(int i2) {
        OnInputFeedbackListener onInputFeedbackListener = this.mFeedbackListener;
        if (onInputFeedbackListener != null) {
            onInputFeedbackListener.onInputFeedback(i2);
        }
    }

    public void registerFeedbackEvents(int[] iArr, OnInputFeedbackListener onInputFeedbackListener) {
        this.mFeedbackListener = onInputFeedbackListener;
        nativeRegisterFeedbackEvents(iArr);
    }

    public void registerKeyCodes(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = translateKeycode(iArr[i2]);
        }
        nativeRegisterKeyCodes(iArr);
    }

    public void registerTouchPad(int i2, int i3, boolean z2, int i4, int i5, boolean z3, boolean z4) {
        nativeRegisterTouchPad(i2, i3, z2, i4, i5, z3, z4);
    }

    public void registerTouchScreen(int i2, int i3, int i4) {
        nativeRegisterTouchScreen(i2, i3, i4);
    }

    @CanIgnoreReturnValue
    public boolean sendAbsoluteEvent(int i2, int i3) {
        return nativeSendAbsoluteEvent(SystemClock.elapsedRealtimeNanos(), i2, i3) == 0;
    }

    @CanIgnoreReturnValue
    public boolean sendBackEvent() {
        int iTranslateKeycode = translateKeycode(4);
        return nativeSendKeyEvent(SystemClock.elapsedRealtimeNanos(), iTranslateKeycode, true, 0) == 0 && nativeSendKeyEvent(SystemClock.elapsedRealtimeNanos(), iTranslateKeycode, false, 0) == 0;
    }

    @CanIgnoreReturnValue
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        return nativeSendKeyEvent(SystemClock.elapsedRealtimeNanos(), translateKeycode(keyEvent.getKeyCode()), keyEvent.getAction() == 0, keyEvent.getMetaState()) == 0;
    }

    @CanIgnoreReturnValue
    public boolean sendKeyLongEvent(KeyEvent keyEvent) {
        return nativeSendKeyLongEvent(SystemClock.elapsedRealtimeNanos(), translateKeycode(keyEvent.getKeyCode()), keyEvent.getMetaState()) == 0;
    }

    @CanIgnoreReturnValue
    public boolean sendRelativeEvent(int i2, int i3) {
        return nativeSendRelativeEvent(SystemClock.elapsedRealtimeNanos(), i2, i3) == 0;
    }

    @CanIgnoreReturnValue
    public synchronized boolean sendTouchEvent(MotionEvent motionEvent) {
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        if (this.mOverrideMotionEvent) {
            jElapsedRealtimeNanos = motionEvent.getEventTime();
            this.mOverrideMotionEvent = false;
        }
        long j2 = jElapsedRealtimeNanos;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5 && actionMasked != 2 && actionMasked != 6 && actionMasked != 1) {
            return false;
        }
        int pointerCount = motionEvent.getPointerCount();
        int[] iArr = new int[pointerCount];
        int[] iArr2 = new int[pointerCount];
        int[] iArr3 = new int[pointerCount];
        for (int i2 = 0; i2 < pointerCount; i2++) {
            iArr[i2] = (int) motionEvent.getX(i2);
            iArr2[i2] = (int) motionEvent.getY(i2);
            iArr3[i2] = motionEvent.getPointerId(i2);
        }
        return nativeSendTouchEvent(j2, iArr3, iArr, iArr2, actionMasked, motionEvent.getActionIndex()) == 0;
    }

    @CanIgnoreReturnValue
    public boolean sendTouchPadEvent(MotionEvent motionEvent) {
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5 && actionMasked != 2 && actionMasked != 6 && actionMasked != 1) {
            return false;
        }
        int pointerCount = motionEvent.getPointerCount();
        int[] iArr = new int[pointerCount];
        int[] iArr2 = new int[pointerCount];
        int[] iArr3 = new int[pointerCount];
        for (int i2 = 0; i2 < pointerCount; i2++) {
            iArr[i2] = (int) motionEvent.getX(i2);
            iArr2[i2] = (int) motionEvent.getY(i2);
            iArr3[i2] = motionEvent.getPointerId(i2);
        }
        return nativeSendTouchPadEvent(jElapsedRealtimeNanos, iArr3, iArr, iArr2, actionMasked, motionEvent.getActionIndex()) == 0;
    }

    public void setDisplayId(int i2) {
        nativeSetDisplayId(i2);
    }
}
