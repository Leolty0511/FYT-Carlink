package com.android.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.hardware.input.InputManager;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Slog;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManagerPolicy;
import android.view.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class PointerLocationView extends View implements InputManager.InputDeviceListener, WindowManagerPolicy.PointerEventListener {
    private static final String ALT_STRATEGY_PROPERY_KEY = "debug.velocitytracker.alt";
    private static final String TAG = "Pointer";
    private final int ESTIMATE_FUTURE_POINTS;
    private final float ESTIMATE_INTERVAL;
    private final int ESTIMATE_PAST_POINTS;
    private int mActivePointerId;
    private final VelocityTracker mAltVelocity;
    private boolean mCurDown;
    private int mCurNumPointers;
    private final Paint mCurrentPointPaint;
    private int mHeaderBottom;
    private final InputManager mIm;
    private int mMaxNumPointers;
    private final Paint mPaint;
    private final Paint mPathPaint;
    private final ArrayList<PointerState> mPointers;
    private boolean mPrintCoords;
    private RectF mReusableOvalRect;
    private final Paint mTargetPaint;
    private final MotionEvent.PointerCoords mTempCoords;
    private final FasterStringBuilder mText;
    private final Paint mTextBackgroundPaint;
    private final Paint mTextLevelPaint;
    private final Paint.FontMetricsInt mTextMetrics;
    private final Paint mTextPaint;
    private final ViewConfiguration mVC;
    private final VelocityTracker mVelocity;

    public static class PointerState {
        private float mAltXVelocity;
        private float mAltYVelocity;
        private float mBoundingBottom;
        private float mBoundingLeft;
        private float mBoundingRight;
        private float mBoundingTop;
        private boolean mCurDown;
        private boolean mHasBoundingBox;
        private int mToolType;
        private int mTraceCount;
        private float mXVelocity;
        private float mYVelocity;
        private float[] mTraceX = new float[32];
        private float[] mTraceY = new float[32];
        private boolean[] mTraceCurrent = new boolean[32];
        private MotionEvent.PointerCoords mCoords = new MotionEvent.PointerCoords();
        private VelocityTracker.Estimator mEstimator = new VelocityTracker.Estimator();
        private VelocityTracker.Estimator mAltEstimator = new VelocityTracker.Estimator();

        public static /* synthetic */ int access$000(PointerState pointerState) {
            return pointerState.mTraceCount;
        }

        public static /* synthetic */ boolean access$100(PointerState pointerState) {
            return pointerState.mCurDown;
        }

        public static /* synthetic */ float access$1000(PointerState pointerState) {
            return pointerState.mAltXVelocity;
        }

        public static /* synthetic */ float access$1100(PointerState pointerState) {
            return pointerState.mAltYVelocity;
        }

        public static /* synthetic */ int access$1200(PointerState pointerState) {
            return pointerState.mToolType;
        }

        public static /* synthetic */ boolean access$1300(PointerState pointerState) {
            return pointerState.mHasBoundingBox;
        }

        public static /* synthetic */ float access$1400(PointerState pointerState) {
            return pointerState.mBoundingLeft;
        }

        public static /* synthetic */ float access$1500(PointerState pointerState) {
            return pointerState.mBoundingTop;
        }

        public static /* synthetic */ float access$1600(PointerState pointerState) {
            return pointerState.mBoundingRight;
        }

        public static /* synthetic */ float access$1700(PointerState pointerState) {
            return pointerState.mBoundingBottom;
        }

        public static /* synthetic */ MotionEvent.PointerCoords access$200(PointerState pointerState) {
            return pointerState.mCoords;
        }

        public static /* synthetic */ float[] access$300(PointerState pointerState) {
            return pointerState.mTraceX;
        }

        public static /* synthetic */ float[] access$400(PointerState pointerState) {
            return pointerState.mTraceY;
        }

        public static /* synthetic */ float access$500(PointerState pointerState) {
            return pointerState.mXVelocity;
        }

        public static /* synthetic */ float access$600(PointerState pointerState) {
            return pointerState.mYVelocity;
        }

        public static /* synthetic */ boolean[] access$700(PointerState pointerState) {
            return pointerState.mTraceCurrent;
        }

        public static /* synthetic */ VelocityTracker.Estimator access$800(PointerState pointerState) {
            return pointerState.mEstimator;
        }

        public static /* synthetic */ VelocityTracker.Estimator access$900(PointerState pointerState) {
            return pointerState.mAltEstimator;
        }

        public void addTrace(float f2, float f3, boolean z2) {
            float[] fArr = this.mTraceX;
            int length = fArr.length;
            int i2 = this.mTraceCount;
            if (i2 == length) {
                int i3 = length * 2;
                float[] fArr2 = new float[i3];
                System.arraycopy(fArr, 0, fArr2, 0, i2);
                this.mTraceX = fArr2;
                float[] fArr3 = new float[i3];
                System.arraycopy(this.mTraceY, 0, fArr3, 0, this.mTraceCount);
                this.mTraceY = fArr3;
                boolean[] zArr = new boolean[i3];
                System.arraycopy(this.mTraceCurrent, 0, zArr, 0, this.mTraceCount);
                this.mTraceCurrent = zArr;
            }
            float[] fArr4 = this.mTraceX;
            int i4 = this.mTraceCount;
            fArr4[i4] = f2;
            this.mTraceY[i4] = f3;
            this.mTraceCurrent[i4] = z2;
            this.mTraceCount = i4 + 1;
        }

        public void clearTrace() {
            this.mTraceCount = 0;
        }
    }

    public PointerLocationView(Context context) {
        super(context);
        this.ESTIMATE_PAST_POINTS = 4;
        this.ESTIMATE_FUTURE_POINTS = 2;
        this.ESTIMATE_INTERVAL = 0.02f;
        this.mTextMetrics = new Paint.FontMetricsInt();
        ArrayList<PointerState> arrayList = new ArrayList<>();
        this.mPointers = arrayList;
        this.mTempCoords = new MotionEvent.PointerCoords();
        this.mText = new FasterStringBuilder();
        this.mPrintCoords = true;
        this.mReusableOvalRect = new RectF();
        setFocusableInTouchMode(true);
        this.mIm = (InputManager) context.getSystemService(InputManager.class);
        this.mVC = ViewConfiguration.get(context);
        Paint paint = new Paint();
        this.mTextPaint = paint;
        paint.setAntiAlias(true);
        paint.setTextSize(getResources().getDisplayMetrics().density * 10.0f);
        paint.setARGB(255, 0, 0, 0);
        Paint paint2 = new Paint();
        this.mTextBackgroundPaint = paint2;
        paint2.setAntiAlias(false);
        paint2.setARGB(128, 255, 255, 255);
        Paint paint3 = new Paint();
        this.mTextLevelPaint = paint3;
        paint3.setAntiAlias(false);
        paint3.setARGB(192, 255, 0, 0);
        Paint paint4 = new Paint();
        this.mPaint = paint4;
        paint4.setAntiAlias(true);
        paint4.setARGB(255, 255, 255, 255);
        Paint.Style style = Paint.Style.STROKE;
        paint4.setStyle(style);
        paint4.setStrokeWidth(2.0f);
        Paint paint5 = new Paint();
        this.mCurrentPointPaint = paint5;
        paint5.setAntiAlias(true);
        paint5.setARGB(255, 255, 0, 0);
        paint5.setStyle(style);
        paint5.setStrokeWidth(2.0f);
        Paint paint6 = new Paint();
        this.mTargetPaint = paint6;
        paint6.setAntiAlias(false);
        paint6.setARGB(255, 0, 0, 192);
        Paint paint7 = new Paint();
        this.mPathPaint = paint7;
        paint7.setAntiAlias(false);
        paint7.setARGB(255, 0, 96, 255);
        paint4.setStyle(style);
        paint4.setStrokeWidth(1.0f);
        arrayList.add(new PointerState());
        this.mActivePointerId = 0;
        this.mVelocity = VelocityTracker.obtain();
        String str = SystemProperties.get(ALT_STRATEGY_PROPERY_KEY);
        if (str.length() == 0) {
            this.mAltVelocity = null;
        } else {
            Log.d(TAG, "Comparing default velocity tracker strategy with ".concat(str));
            this.mAltVelocity = VelocityTracker.obtain(str);
        }
    }

    private void drawOval(Canvas canvas, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        canvas.save(1);
        canvas.rotate((float) (((double) (f6 * 180.0f)) / 3.141592653589793d), f2, f3);
        RectF rectF = this.mReusableOvalRect;
        float f7 = f5 / 2.0f;
        rectF.left = f2 - f7;
        rectF.right = f2 + f7;
        float f8 = f4 / 2.0f;
        rectF.top = f3 - f8;
        rectF.bottom = f3 + f8;
        canvas.drawOval(rectF, paint);
        canvas.restore();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    private void logCoords(String str, int i2, int i3, MotionEvent.PointerCoords pointerCoords, int i4, MotionEvent motionEvent) {
        int toolType = motionEvent.getToolType(i3);
        int buttonState = motionEvent.getButtonState();
        String string = "UP";
        switch (i2 & 255) {
            case 0:
                string = "DOWN";
                break;
            case 1:
                break;
            case 2:
                string = "MOVE";
                break;
            case 3:
                string = "CANCEL";
                break;
            case 4:
                string = "OUTSIDE";
                break;
            case 5:
                if (i3 != ((i2 & 65280) >> 8)) {
                    string = "MOVE";
                } else {
                    string = "DOWN";
                }
                break;
            case 6:
                if (i3 != ((i2 & 65280) >> 8)) {
                    string = "MOVE";
                }
                break;
            case 7:
                string = "HOVER MOVE";
                break;
            case 8:
                string = "SCROLL";
                break;
            case 9:
                string = "HOVER ENTER";
                break;
            case 10:
                string = "HOVER EXIT";
                break;
            default:
                string = Integer.toString(i2);
                break;
        }
        Log.i(TAG, this.mText.clear().append(str).append(" id ").append(i4 + 1).append(": ").append(string).append(" (").append(pointerCoords.f207x, 3).append(", ").append(pointerCoords.f208y, 3).append(") Pressure=").append(pointerCoords.pressure, 3).append(" Size=").append(pointerCoords.size, 3).append(" TouchMajor=").append(pointerCoords.touchMajor, 3).append(" TouchMinor=").append(pointerCoords.touchMinor, 3).append(" ToolMajor=").append(pointerCoords.toolMajor, 3).append(" ToolMinor=").append(pointerCoords.toolMinor, 3).append(" Orientation=").append((float) (((double) (pointerCoords.orientation * 180.0f)) / 3.141592653589793d), 1).append("deg").append(" Tilt=").append((float) (((double) (pointerCoords.getAxisValue(25) * 180.0f)) / 3.141592653589793d), 1).append("deg").append(" Distance=").append(pointerCoords.getAxisValue(24), 1).append(" VScroll=").append(pointerCoords.getAxisValue(9), 1).append(" HScroll=").append(pointerCoords.getAxisValue(10), 1).append(" BoundingBox=[(").append(motionEvent.getAxisValue(32), 3).append(", ").append(motionEvent.getAxisValue(33), 3).append(")").append(", (").append(motionEvent.getAxisValue(34), 3).append(", ").append(motionEvent.getAxisValue(35), 3).append(")]").append(" ToolType=").append(MotionEvent.toolTypeToString(toolType)).append(" ButtonState=").append(MotionEvent.buttonStateToString(buttonState)).toString());
    }

    private void logInputDeviceState(int i2, String str) {
        InputDevice inputDevice = this.mIm.getInputDevice(i2);
        if (inputDevice != null) {
            Log.i(TAG, str + ": " + inputDevice);
            return;
        }
        Log.i(TAG, str + ": " + i2);
    }

    private void logInputDevices() {
        for (int i2 : InputDevice.getDeviceIds()) {
            logInputDeviceState(i2, "Device Enumerated");
        }
    }

    private void logMotionEvent(String str, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < historySize; i2++) {
            for (int i3 = 0; i3 < pointerCount; i3++) {
                int pointerId = motionEvent.getPointerId(i3);
                motionEvent.getHistoricalPointerCoords(i3, i2, this.mTempCoords);
                logCoords(str, action, i3, this.mTempCoords, pointerId, motionEvent);
            }
        }
        for (int i4 = 0; i4 < pointerCount; i4++) {
            int pointerId2 = motionEvent.getPointerId(i4);
            motionEvent.getPointerCoords(i4, this.mTempCoords);
            logCoords(str, action, i4, this.mTempCoords, pointerId2, motionEvent);
        }
    }

    private static boolean shouldLogKey(int i2) {
        switch (i2) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return KeyEvent.isGamepadButton(i2) || KeyEvent.isModifierKey(i2);
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIm.registerInputDeviceListener(this, getHandler());
        logInputDevices();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIm.unregisterInputDeviceListener(this);
    }

    /* JADX WARN: Failed to calculate best type for var: r0v161 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v161 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v162 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v162 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v163 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v163 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v172 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v172 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v173 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v173 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v174 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v174 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r10v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v10 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r10v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v10 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r10v11 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v11 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r23v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r23v0 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v25 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v25 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v27 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v27 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r7v11 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v11 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r23v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r23v0 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v10 ??, new type: float
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        */
    @Override // android.view.View
    public void onDraw(android.graphics.Canvas r23) {
        /*
            Method dump skipped, instruction units count: 1363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.widget.PointerLocationView.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int source = motionEvent.getSource();
        if ((source & 2) != 0) {
            onPointerEvent(motionEvent);
            return true;
        }
        if ((source & 16) != 0) {
            logMotionEvent("Joystick", motionEvent);
            return true;
        }
        if ((source & 8) != 0) {
            logMotionEvent("Position", motionEvent);
            return true;
        }
        logMotionEvent("Generic", motionEvent);
        return true;
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceAdded(int i2) {
        logInputDeviceState(i2, "Device Added");
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceChanged(int i2) {
        logInputDeviceState(i2, "Device Changed");
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceRemoved(int i2) {
        logInputDeviceState(i2, "Device Removed");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!shouldLogKey(i2)) {
            return super.onKeyDown(i2, keyEvent);
        }
        int repeatCount = keyEvent.getRepeatCount();
        if (repeatCount == 0) {
            Log.i(TAG, "Key Down: " + keyEvent);
            return true;
        }
        Log.i(TAG, "Key Repeat #" + repeatCount + ": " + keyEvent);
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (!shouldLogKey(i2)) {
            return super.onKeyUp(i2, keyEvent);
        }
        Log.i(TAG, "Key Up: " + keyEvent);
        return true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.mTextPaint.getFontMetricsInt(this.mTextMetrics);
        Paint.FontMetricsInt fontMetricsInt = this.mTextMetrics;
        this.mHeaderBottom = (-fontMetricsInt.ascent) + fontMetricsInt.descent + 2;
    }

    @Override // android.view.WindowManagerPolicy.PointerEventListener
    public final /* synthetic */ void onPointerEvent(MotionEvent motionEvent, int i2) {
        l.a(this, motionEvent, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        onPointerEvent(motionEvent);
        if (motionEvent.getAction() != 0 || isFocused()) {
            return true;
        }
        requestFocus();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        logMotionEvent("Trackball", motionEvent);
        return true;
    }

    public void setPrintCoords(boolean z2) {
        this.mPrintCoords = z2;
    }

    @Override // android.view.WindowManagerPolicy.PointerEventListener
    public void onPointerEvent(MotionEvent motionEvent) {
        MotionEvent.PointerCoords pointerCoords;
        int action = motionEvent.getAction();
        int size = this.mPointers.size();
        if (action == 0 || (action & 255) == 5) {
            int i2 = (65280 & action) >> 8;
            if (action == 0) {
                for (int i3 = 0; i3 < size; i3++) {
                    PointerState pointerState = this.mPointers.get(i3);
                    pointerState.clearTrace();
                    pointerState.mCurDown = false;
                }
                this.mCurDown = true;
                this.mCurNumPointers = 0;
                this.mMaxNumPointers = 0;
                this.mVelocity.clear();
                VelocityTracker velocityTracker = this.mAltVelocity;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            }
            int i4 = this.mCurNumPointers + 1;
            this.mCurNumPointers = i4;
            if (this.mMaxNumPointers < i4) {
                this.mMaxNumPointers = i4;
            }
            int pointerId = motionEvent.getPointerId(i2);
            while (size <= pointerId) {
                this.mPointers.add(new PointerState());
                size++;
            }
            int i5 = this.mActivePointerId;
            if (i5 < 0 || !this.mPointers.get(i5).mCurDown) {
                this.mActivePointerId = pointerId;
            }
            PointerState pointerState2 = this.mPointers.get(pointerId);
            pointerState2.mCurDown = true;
            InputDevice device = InputDevice.getDevice(motionEvent.getDeviceId());
            pointerState2.mHasBoundingBox = (device == null || device.getMotionRange(32) == null) ? false : true;
        }
        int i6 = size;
        int pointerCount = motionEvent.getPointerCount();
        this.mVelocity.addMovement(motionEvent);
        this.mVelocity.computeCurrentVelocity(1);
        VelocityTracker velocityTracker2 = this.mAltVelocity;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
            this.mAltVelocity.computeCurrentVelocity(1);
        }
        int historySize = motionEvent.getHistorySize();
        for (int i7 = 0; i7 < historySize; i7++) {
            for (int i8 = 0; i8 < pointerCount; i8++) {
                int pointerId2 = motionEvent.getPointerId(i8);
                PointerState pointerState3 = this.mCurDown ? this.mPointers.get(pointerId2) : null;
                MotionEvent.PointerCoords pointerCoords2 = pointerState3 != null ? pointerState3.mCoords : this.mTempCoords;
                motionEvent.getHistoricalPointerCoords(i8, i7, pointerCoords2);
                if (this.mPrintCoords) {
                    pointerCoords = pointerCoords2;
                    logCoords(TAG, action, i8, pointerCoords, pointerId2, motionEvent);
                } else {
                    pointerCoords = pointerCoords2;
                }
                if (pointerState3 != 0) {
                    MotionEvent.PointerCoords pointerCoords3 = pointerCoords;
                    pointerState3.addTrace(pointerCoords3.f207x, pointerCoords3.f208y, false);
                }
            }
        }
        for (int i9 = 0; i9 < pointerCount; i9++) {
            int pointerId3 = motionEvent.getPointerId(i9);
            PointerState pointerState4 = this.mCurDown ? this.mPointers.get(pointerId3) : null;
            MotionEvent.PointerCoords pointerCoords4 = pointerState4 != null ? pointerState4.mCoords : this.mTempCoords;
            motionEvent.getPointerCoords(i9, pointerCoords4);
            if (this.mPrintCoords) {
                logCoords(TAG, action, i9, pointerCoords4, pointerId3, motionEvent);
            }
            if (pointerState4 != null) {
                pointerState4.addTrace(pointerCoords4.f207x, pointerCoords4.f208y, true);
                pointerState4.mXVelocity = this.mVelocity.getXVelocity(pointerId3);
                pointerState4.mYVelocity = this.mVelocity.getYVelocity(pointerId3);
                this.mVelocity.getEstimator(pointerId3, pointerState4.mEstimator);
                VelocityTracker velocityTracker3 = this.mAltVelocity;
                if (velocityTracker3 != null) {
                    pointerState4.mAltXVelocity = velocityTracker3.getXVelocity(pointerId3);
                    pointerState4.mAltYVelocity = this.mAltVelocity.getYVelocity(pointerId3);
                    this.mAltVelocity.getEstimator(pointerId3, pointerState4.mAltEstimator);
                }
                pointerState4.mToolType = motionEvent.getToolType(i9);
                if (pointerState4.mHasBoundingBox) {
                    pointerState4.mBoundingLeft = motionEvent.getAxisValue(32, i9);
                    pointerState4.mBoundingTop = motionEvent.getAxisValue(33, i9);
                    pointerState4.mBoundingRight = motionEvent.getAxisValue(34, i9);
                    pointerState4.mBoundingBottom = motionEvent.getAxisValue(35, i9);
                }
            }
        }
        if (action == 1 || action == 3 || (action & 255) == 6) {
            int i10 = (65280 & action) >> 8;
            int pointerId4 = motionEvent.getPointerId(i10);
            if (pointerId4 >= i6) {
                StringBuilder sbT = android.accessibilityservice.c.t("Got pointer ID out of bounds: id=", pointerId4, " arraysize=", i6, " pointerindex=");
                sbT.append(i10);
                sbT.append(" action=0x");
                sbT.append(Integer.toHexString(action));
                Slog.wtf(TAG, sbT.toString());
                return;
            }
            PointerState pointerState5 = this.mPointers.get(pointerId4);
            pointerState5.mCurDown = false;
            if (action == 1 || action == 3) {
                this.mCurDown = false;
                this.mCurNumPointers = 0;
            } else {
                this.mCurNumPointers--;
                if (this.mActivePointerId == pointerId4) {
                    this.mActivePointerId = motionEvent.getPointerId(i10 == 0 ? 1 : 0);
                }
                pointerState5.addTrace(Float.NaN, Float.NaN, false);
            }
        }
        invalidate();
    }

    public static final class FasterStringBuilder {
        private char[] mChars = new char[64];
        private int mLength;

        private int reserve(int i2) {
            int i3 = this.mLength;
            int i4 = i2 + i3;
            char[] cArr = this.mChars;
            int length = cArr.length;
            if (i4 > length) {
                char[] cArr2 = new char[length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i3);
                this.mChars = cArr2;
            }
            return i3;
        }

        public FasterStringBuilder append(String str) {
            int length = str.length();
            str.getChars(0, length, this.mChars, reserve(length));
            this.mLength += length;
            return this;
        }

        public FasterStringBuilder clear() {
            this.mLength = 0;
            return this;
        }

        public String toString() {
            return new String(this.mChars, 0, this.mLength);
        }

        public FasterStringBuilder append(int i2) {
            return append(i2, 0);
        }

        public FasterStringBuilder append(int i2, int i3) {
            boolean z2 = i2 < 0;
            if (z2 && (i2 = -i2) < 0) {
                append("-2147483648");
                return this;
            }
            int iReserve = reserve(11);
            char[] cArr = this.mChars;
            if (i2 == 0) {
                cArr[iReserve] = '0';
                this.mLength++;
                return this;
            }
            if (z2) {
                cArr[iReserve] = '-';
                iReserve++;
            }
            int i4 = 1000000000;
            int i5 = 10;
            while (i2 < i4) {
                i4 /= 10;
                i5--;
                if (i5 < i3) {
                    cArr[iReserve] = '0';
                    iReserve++;
                }
            }
            while (true) {
                int i6 = i2 / i4;
                i2 -= i6 * i4;
                i4 /= 10;
                int i7 = iReserve + 1;
                cArr[iReserve] = (char) (i6 + 48);
                if (i4 == 0) {
                    this.mLength = i7;
                    return this;
                }
                iReserve = i7;
            }
        }

        public FasterStringBuilder append(float f2, int i2) {
            int i3 = 1;
            for (int i4 = 0; i4 < i2; i4++) {
                i3 *= 10;
            }
            float f3 = i3;
            float fRint = (float) (Math.rint(f2 * f3) / ((double) i3));
            append((int) fRint);
            if (i2 != 0) {
                append(".");
                double dAbs = Math.abs(fRint);
                append((int) (((float) (dAbs - Math.floor(dAbs))) * f3), i2);
            }
            return this;
        }
    }
}
