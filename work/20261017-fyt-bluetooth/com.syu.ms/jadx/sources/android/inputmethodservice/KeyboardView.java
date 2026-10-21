package android.inputmethodservice;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import i.a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class KeyboardView extends View implements View.OnClickListener {
    private static final int DEBOUNCE_TIME = 70;
    private static final boolean DEBUG = false;
    private static final int DELAY_AFTER_PREVIEW = 70;
    private static final int DELAY_BEFORE_PREVIEW = 0;
    private static final int MSG_LONGPRESS = 4;
    private static final int MSG_REMOVE_PREVIEW = 2;
    private static final int MSG_REPEAT = 3;
    private static final int MSG_SHOW_PREVIEW = 1;
    private static final int MULTITAP_INTERVAL = 800;
    private static final int NOT_A_KEY = -1;
    private static final int REPEAT_INTERVAL = 50;
    private static final int REPEAT_START_DELAY = 400;
    private boolean mAbortKey;
    private AccessibilityManager mAccessibilityManager;
    private AudioManager mAudioManager;
    private float mBackgroundDimAmount;
    private Bitmap mBuffer;
    private Canvas mCanvas;
    private Rect mClipRegion;
    private final int[] mCoordinates;
    private int mCurrentKey;
    private int mCurrentKeyIndex;
    private long mCurrentKeyTime;
    private Rect mDirtyRect;
    private boolean mDisambiguateSwipe;
    private int[] mDistances;
    private int mDownKey;
    private long mDownTime;
    private boolean mDrawPending;
    private GestureDetector mGestureDetector;
    public Handler mHandler;
    private boolean mHeadsetRequiredToHearPasswordsAnnounced;
    private boolean mInMultiTap;
    private Keyboard.Key mInvalidatedKey;
    private Drawable mKeyBackground;
    private int[] mKeyIndices;
    private int mKeyTextColor;
    private int mKeyTextSize;
    private Keyboard mKeyboard;
    private OnKeyboardActionListener mKeyboardActionListener;
    private boolean mKeyboardChanged;
    private Keyboard.Key[] mKeys;
    private int mLabelTextSize;
    private int mLastCodeX;
    private int mLastCodeY;
    private int mLastKey;
    private long mLastKeyTime;
    private long mLastMoveTime;
    private int mLastSentIndex;
    private long mLastTapTime;
    private int mLastX;
    private int mLastY;
    private KeyboardView mMiniKeyboard;
    private Map<Keyboard.Key, View> mMiniKeyboardCache;
    private View mMiniKeyboardContainer;
    private int mMiniKeyboardOffsetX;
    private int mMiniKeyboardOffsetY;
    private boolean mMiniKeyboardOnScreen;
    private int mOldPointerCount;
    private float mOldPointerX;
    private float mOldPointerY;
    private Rect mPadding;
    private Paint mPaint;
    private PopupWindow mPopupKeyboard;
    private int mPopupLayout;
    private View mPopupParent;
    private int mPopupPreviewX;
    private int mPopupPreviewY;
    private int mPopupX;
    private int mPopupY;
    private boolean mPossiblePoly;
    private boolean mPreviewCentered;
    private int mPreviewHeight;
    private StringBuilder mPreviewLabel;
    private int mPreviewOffset;
    private PopupWindow mPreviewPopup;
    private TextView mPreviewText;
    private int mPreviewTextSizeLarge;
    private boolean mProximityCorrectOn;
    private int mProximityThreshold;
    private int mRepeatKeyIndex;
    private int mShadowColor;
    private float mShadowRadius;
    private boolean mShowPreview;
    private boolean mShowTouchPoints;
    private int mStartX;
    private int mStartY;
    private int mSwipeThreshold;
    private SwipeTracker mSwipeTracker;
    private int mTapCount;
    private int mVerticalCorrection;
    private static final int[] KEY_DELETE = {-5};
    private static final int[] LONG_PRESSABLE_STATE_SET = {R.attr.state_long_pressable};
    private static final int LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
    private static int MAX_NEARBY_KEYS = 12;

    public interface OnKeyboardActionListener {
        void onKey(int i2, int[] iArr);

        void onPress(int i2);

        void onRelease(int i2);

        void onText(CharSequence charSequence);

        void swipeDown();

        void swipeLeft();

        void swipeRight();

        void swipeUp();
    }

    public static class SwipeTracker {
        public static final int LONGEST_PAST_TIME = 200;
        public static final int NUM_PAST = 4;
        public final long[] mPastTime;
        public final float[] mPastX;
        public final float[] mPastY;
        public float mXVelocity;
        public float mYVelocity;

        private SwipeTracker() {
            this.mPastX = new float[4];
            this.mPastY = new float[4];
            this.mPastTime = new long[4];
        }

        private void addPoint(float f2, float f3, long j2) {
            long[] jArr = this.mPastTime;
            int i2 = -1;
            int i3 = 0;
            while (i3 < 4 && jArr[i3] != 0) {
                if (jArr[i3] < j2 - 200) {
                    i2 = i3;
                }
                i3++;
            }
            if (i3 == 4 && i2 < 0) {
                i2 = 0;
            }
            if (i2 == i3) {
                i2--;
            }
            float[] fArr = this.mPastX;
            float[] fArr2 = this.mPastY;
            if (i2 >= 0) {
                int i4 = i2 + 1;
                int i5 = (4 - i2) - 1;
                System.arraycopy(fArr, i4, fArr, 0, i5);
                System.arraycopy(fArr2, i4, fArr2, 0, i5);
                System.arraycopy(jArr, i4, jArr, 0, i5);
                i3 -= i4;
            }
            fArr[i3] = f2;
            fArr2[i3] = f3;
            jArr[i3] = j2;
            int i6 = i3 + 1;
            if (i6 < 4) {
                jArr[i6] = 0;
            }
        }

        public void addMovement(MotionEvent motionEvent) {
            long eventTime = motionEvent.getEventTime();
            int historySize = motionEvent.getHistorySize();
            for (int i2 = 0; i2 < historySize; i2++) {
                addPoint(motionEvent.getHistoricalX(i2), motionEvent.getHistoricalY(i2), motionEvent.getHistoricalEventTime(i2));
            }
            addPoint(motionEvent.getX(), motionEvent.getY(), eventTime);
        }

        public void clear() {
            this.mPastTime[0] = 0;
        }

        public void computeCurrentVelocity(int i2) {
            computeCurrentVelocity(i2, Float.MAX_VALUE);
        }

        public float getXVelocity() {
            return this.mXVelocity;
        }

        public float getYVelocity() {
            return this.mYVelocity;
        }

        public void computeCurrentVelocity(int i2, float f2) {
            float[] fArr;
            float[] fArr2 = this.mPastX;
            float[] fArr3 = this.mPastY;
            long[] jArr = this.mPastTime;
            int i3 = 0;
            float f3 = fArr2[0];
            float f4 = fArr3[0];
            long j2 = jArr[0];
            while (i3 < 4 && jArr[i3] != 0) {
                i3++;
            }
            int i4 = 1;
            float f5 = 0.0f;
            float f6 = 0.0f;
            while (i4 < i3) {
                int i5 = (int) (jArr[i4] - j2);
                if (i5 == 0) {
                    fArr = fArr2;
                } else {
                    float f7 = i5;
                    float f8 = (fArr2[i4] - f3) / f7;
                    fArr = fArr2;
                    float f9 = i2;
                    float f10 = f8 * f9;
                    f5 = f5 == 0.0f ? f10 : (f5 + f10) * 0.5f;
                    float f11 = ((fArr3[i4] - f4) / f7) * f9;
                    f6 = f6 == 0.0f ? f11 : (f6 + f11) * 0.5f;
                }
                i4++;
                fArr2 = fArr;
            }
            this.mXVelocity = f5 < 0.0f ? Math.max(f5, -f2) : Math.min(f5, f2);
            this.mYVelocity = f6 < 0.0f ? Math.max(f6, -f2) : Math.min(f6, f2);
        }
    }

    public KeyboardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843855);
    }

    private CharSequence adjustCase(CharSequence charSequence) {
        return (!this.mKeyboard.isShifted() || charSequence == null || charSequence.length() >= 3 || !Character.isLowerCase(charSequence.charAt(0))) ? charSequence : charSequence.toString().toUpperCase();
    }

    private void checkMultiTap(long j2, int i2) {
        if (i2 == -1) {
            return;
        }
        int[] iArr = this.mKeys[i2].codes;
        if (iArr.length <= 1) {
            if (j2 > this.mLastTapTime + 800 || i2 != this.mLastSentIndex) {
                resetMultiTap();
                return;
            }
            return;
        }
        this.mInMultiTap = true;
        if (j2 >= this.mLastTapTime + 800 || i2 != this.mLastSentIndex) {
            this.mTapCount = -1;
        } else {
            this.mTapCount = (this.mTapCount + 1) % iArr.length;
        }
    }

    private void computeProximityThreshold(Keyboard keyboard) {
        Keyboard.Key[] keyArr;
        if (keyboard == null || (keyArr = this.mKeys) == null) {
            return;
        }
        int length = keyArr.length;
        int iMin = 0;
        for (Keyboard.Key key : keyArr) {
            iMin += Math.min(key.width, key.height) + key.gap;
        }
        if (iMin < 0 || length == 0) {
            return;
        }
        int i2 = (int) ((iMin * 1.4f) / length);
        this.mProximityThreshold = i2;
        this.mProximityThreshold = i2 * i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detectAndSendKey(int i2, int i3, int i4, long j2) {
        if (i2 != -1) {
            Keyboard.Key[] keyArr = this.mKeys;
            if (i2 < keyArr.length) {
                Keyboard.Key key = keyArr[i2];
                CharSequence charSequence = key.text;
                if (charSequence != null) {
                    this.mKeyboardActionListener.onText(charSequence);
                    this.mKeyboardActionListener.onRelease(-1);
                } else {
                    int i5 = key.codes[0];
                    int[] iArr = new int[MAX_NEARBY_KEYS];
                    Arrays.fill(iArr, -1);
                    getKeyIndices(i3, i4, iArr);
                    if (this.mInMultiTap) {
                        if (this.mTapCount != -1) {
                            this.mKeyboardActionListener.onKey(-5, KEY_DELETE);
                        } else {
                            this.mTapCount = 0;
                        }
                        i5 = key.codes[this.mTapCount];
                    }
                    this.mKeyboardActionListener.onKey(i5, iArr);
                    this.mKeyboardActionListener.onRelease(i5);
                }
                this.mLastSentIndex = i2;
                this.mLastTapTime = j2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissPopupKeyboard() {
        if (this.mPopupKeyboard.isShowing()) {
            this.mPopupKeyboard.dismiss();
            this.mMiniKeyboardOnScreen = false;
            invalidateAllKeys();
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003f A[PHI: r15
  0x003f: PHI (r15v3 int) = (r15v2 int), (r15v4 int) binds: [B:13:0x003d, B:10:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:21:0x0050  */
    /* JADX WARN: Code duplicated, block: B:24:0x0056  */
    /* JADX WARN: Code duplicated, block: B:28:0x006b A[LOOP:2: B:27:0x0069->B:28:0x006b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x007a A[LOOP:1: B:22:0x0051->B:29:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:37:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0081 A[EDGE_INSN: B:38:0x0081->B:30:0x0081 BREAK  A[LOOP:1: B:22:0x0051->B:29:0x007a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x005a A[SYNTHETIC] */
    private int getKeyIndices(int i2, int i3, int[] iArr) {
        int iSquaredDistanceFrom;
        int[] iArr2;
        int length;
        int i4;
        int[] iArr3;
        int i5;
        int i6 = i2;
        int i7 = i3;
        Keyboard.Key[] keyArr = this.mKeys;
        int i8 = this.mProximityThreshold + 1;
        Arrays.fill(this.mDistances, Integer.MAX_VALUE);
        int[] nearestKeys = this.mKeyboard.getNearestKeys(i6, i7);
        int length2 = nearestKeys.length;
        int i9 = 0;
        int i10 = 0;
        int i11 = -1;
        int i12 = -1;
        while (i10 < length2) {
            Keyboard.Key key = keyArr[nearestKeys[i10]];
            boolean zIsInside = key.isInside(i6, i7);
            if (zIsInside) {
                i11 = nearestKeys[i10];
            }
            if (this.mProximityCorrectOn) {
                iSquaredDistanceFrom = key.squaredDistanceFrom(i6, i7);
                if (iSquaredDistanceFrom < this.mProximityThreshold) {
                    iArr2 = key.codes;
                    if (iArr2[i9] > 32) {
                        length = iArr2.length;
                        if (iSquaredDistanceFrom < i8) {
                            i12 = nearestKeys[i10];
                            i8 = iSquaredDistanceFrom;
                        }
                        if (iArr == null) {
                            i4 = 0;
                            while (true) {
                                iArr3 = this.mDistances;
                                if (i4 >= iArr3.length) {
                                    break;
                                }
                                if (iArr3[i4] > iSquaredDistanceFrom) {
                                    int i13 = i4 + length;
                                    System.arraycopy(iArr3, i4, iArr3, i13, (iArr3.length - i4) - length);
                                    System.arraycopy(iArr, i4, iArr, i13, (iArr.length - i4) - length);
                                    for (i5 = 0; i5 < length; i5++) {
                                        int i14 = i4 + i5;
                                        iArr[i14] = key.codes[i5];
                                        this.mDistances[i14] = iSquaredDistanceFrom;
                                    }
                                    break;
                                }
                                i4++;
                            }
                        }
                    }
                }
                i10++;
                i6 = i2;
                i7 = i3;
                i9 = 0;
            } else {
                iSquaredDistanceFrom = i9;
            }
            if (zIsInside) {
                iArr2 = key.codes;
                if (iArr2[i9] > 32) {
                    length = iArr2.length;
                    if (iSquaredDistanceFrom < i8) {
                        i12 = nearestKeys[i10];
                        i8 = iSquaredDistanceFrom;
                    }
                    if (iArr == null) {
                        i4 = 0;
                        while (true) {
                            iArr3 = this.mDistances;
                            if (i4 >= iArr3.length) {
                                break;
                                break;
                            }
                            if (iArr3[i4] > iSquaredDistanceFrom) {
                                int i15 = i4 + length;
                                System.arraycopy(iArr3, i4, iArr3, i15, (iArr3.length - i4) - length);
                                System.arraycopy(iArr, i4, iArr, i15, (iArr.length - i4) - length);
                                while (i5 < length) {
                                    int i16 = i4 + i5;
                                    iArr[i16] = key.codes[i5];
                                    this.mDistances[i16] = iSquaredDistanceFrom;
                                }
                                break;
                                break;
                            }
                            i4++;
                        }
                    }
                }
            }
            i10++;
            i6 = i2;
            i7 = i3;
            i9 = 0;
        }
        return i11 == -1 ? i12 : i11;
    }

    private CharSequence getPreviewText(Keyboard.Key key) {
        if (!this.mInMultiTap) {
            return adjustCase(key.label);
        }
        this.mPreviewLabel.setLength(0);
        StringBuilder sb = this.mPreviewLabel;
        int[] iArr = key.codes;
        int i2 = this.mTapCount;
        sb.append((char) iArr[i2 >= 0 ? i2 : 0]);
        return adjustCase(this.mPreviewLabel);
    }

    private void initGestureDetector() {
        GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: android.inputmethodservice.KeyboardView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                if (KeyboardView.this.mPossiblePoly) {
                    return false;
                }
                float fAbs = Math.abs(f2);
                float fAbs2 = Math.abs(f3);
                float x2 = motionEvent2.getX() - motionEvent.getX();
                float y2 = motionEvent2.getY() - motionEvent.getY();
                int width = KeyboardView.this.getWidth() / 2;
                int height = KeyboardView.this.getHeight() / 2;
                KeyboardView.this.mSwipeTracker.computeCurrentVelocity(1000);
                float xVelocity = KeyboardView.this.mSwipeTracker.getXVelocity();
                float yVelocity = KeyboardView.this.mSwipeTracker.getYVelocity();
                boolean z2 = true;
                if (f2 <= KeyboardView.this.mSwipeThreshold || fAbs2 >= fAbs || x2 <= width) {
                    if (f2 >= (-KeyboardView.this.mSwipeThreshold) || fAbs2 >= fAbs || x2 >= (-width)) {
                        if (f3 >= (-KeyboardView.this.mSwipeThreshold) || fAbs >= fAbs2 || y2 >= (-height)) {
                            if (f3 <= KeyboardView.this.mSwipeThreshold || fAbs >= fAbs2 / 2.0f || y2 <= height) {
                                z2 = false;
                            } else if (!KeyboardView.this.mDisambiguateSwipe || yVelocity >= f3 / 4.0f) {
                                KeyboardView.this.swipeDown();
                                return true;
                            }
                        } else if (!KeyboardView.this.mDisambiguateSwipe || yVelocity <= f3 / 4.0f) {
                            KeyboardView.this.swipeUp();
                            return true;
                        }
                    } else if (!KeyboardView.this.mDisambiguateSwipe || xVelocity <= f2 / 4.0f) {
                        KeyboardView.this.swipeLeft();
                        return true;
                    }
                } else if (!KeyboardView.this.mDisambiguateSwipe || xVelocity >= f2 / 4.0f) {
                    KeyboardView.this.swipeRight();
                    return true;
                }
                if (z2) {
                    KeyboardView keyboardView = KeyboardView.this;
                    keyboardView.detectAndSendKey(keyboardView.mDownKey, KeyboardView.this.mStartX, KeyboardView.this.mStartY, motionEvent.getEventTime());
                }
                return false;
            }
        });
        this.mGestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009d  */
    private void onBufferDraw() {
        boolean z2;
        Bitmap bitmap = this.mBuffer;
        if (bitmap == null || this.mKeyboardChanged) {
            if (bitmap == null || (this.mKeyboardChanged && (bitmap.getWidth() != getWidth() || this.mBuffer.getHeight() != getHeight()))) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(1, getWidth()), Math.max(1, getHeight()), Bitmap.Config.ARGB_8888);
                this.mBuffer = bitmapCreateBitmap;
                this.mCanvas = new Canvas(bitmapCreateBitmap);
            }
            invalidateAllKeys();
            this.mKeyboardChanged = false;
        }
        Canvas canvas = this.mCanvas;
        canvas.clipRect(this.mDirtyRect, Region.Op.REPLACE);
        if (this.mKeyboard == null) {
            return;
        }
        Paint paint = this.mPaint;
        Drawable drawable = this.mKeyBackground;
        Rect rect = this.mClipRegion;
        Rect rect2 = this.mPadding;
        int i2 = this.mPaddingLeft;
        int i3 = this.mPaddingTop;
        Keyboard.Key[] keyArr = this.mKeys;
        Keyboard.Key key = this.mInvalidatedKey;
        paint.setColor(this.mKeyTextColor);
        if (key == null || !canvas.getClipBounds(rect)) {
            z2 = false;
        } else {
            int i4 = key.f141x;
            if ((i4 + i2) - 1 <= rect.left) {
                int i5 = key.f142y;
                if ((i5 + i3) - 1 > rect.top || i4 + key.width + i2 + 1 < rect.right || i5 + key.height + i3 + 1 < rect.bottom) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
        }
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        int length = keyArr.length;
        int i6 = 0;
        while (i6 < length) {
            Keyboard.Key key2 = keyArr[i6];
            if (!z2 || key == key2) {
                drawable.setState(key2.getCurrentDrawableState());
                CharSequence charSequence = key2.label;
                String string = charSequence == null ? null : adjustCase(charSequence).toString();
                Rect bounds = drawable.getBounds();
                int i7 = key2.width;
                if (i7 != bounds.right || key2.height != bounds.bottom) {
                    drawable.setBounds(0, 0, i7, key2.height);
                }
                canvas.translate(key2.f141x + i2, key2.f142y + i3);
                drawable.draw(canvas);
                if (string != null) {
                    if (string.length() <= 1 || key2.codes.length >= 2) {
                        paint.setTextSize(this.mKeyTextSize);
                        paint.setTypeface(Typeface.DEFAULT);
                    } else {
                        paint.setTextSize(this.mLabelTextSize);
                        paint.setTypeface(Typeface.DEFAULT_BOLD);
                    }
                    paint.setShadowLayer(this.mShadowRadius, 0.0f, 0.0f, this.mShadowColor);
                    int i8 = key2.width;
                    int i9 = rect2.left;
                    canvas.drawText(string, (((i8 - i9) - rect2.right) / 2) + i9, (((key2.height - rect2.top) - rect2.bottom) / 2) + ((paint.getTextSize() - paint.descent()) / 2.0f) + rect2.top, paint);
                    paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                } else {
                    Drawable drawable2 = key2.icon;
                    if (drawable2 != null) {
                        int intrinsicWidth = ((((key2.width - rect2.left) - rect2.right) - drawable2.getIntrinsicWidth()) / 2) + rect2.left;
                        int intrinsicHeight = ((((key2.height - rect2.top) - rect2.bottom) - key2.icon.getIntrinsicHeight()) / 2) + rect2.top;
                        canvas.translate(intrinsicWidth, intrinsicHeight);
                        Drawable drawable3 = key2.icon;
                        drawable3.setBounds(0, 0, drawable3.getIntrinsicWidth(), key2.icon.getIntrinsicHeight());
                        key2.icon.draw(canvas);
                        canvas.translate(-intrinsicWidth, -intrinsicHeight);
                    }
                    canvas.translate((-key2.f141x) - i2, (-key2.f142y) - i3);
                }
                canvas.translate((-key2.f141x) - i2, (-key2.f142y) - i3);
            } else {
                drawable = drawable;
                rect2 = rect2;
            }
            i6++;
            z2 = z2;
            drawable = drawable;
            rect2 = rect2;
        }
        this.mInvalidatedKey = null;
        if (this.mMiniKeyboardOnScreen) {
            paint.setColor(((int) (this.mBackgroundDimAmount * 255.0f)) << 24);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
        }
        this.mDrawPending = false;
        this.mDirtyRect.setEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:75:0x019a  */
    /* JADX WARN: Code duplicated, block: B:77:0x019e  */
    private boolean onModifiedTouchEvent(MotionEvent motionEvent, boolean z2) {
        int i2;
        int i3;
        int i4;
        boolean z3;
        int x2 = ((int) motionEvent.getX()) - this.mPaddingLeft;
        int y2 = ((int) motionEvent.getY()) - this.mPaddingTop;
        int i5 = this.mVerticalCorrection;
        if (y2 >= (-i5)) {
            y2 += i5;
        }
        int action = motionEvent.getAction();
        long eventTime = motionEvent.getEventTime();
        int keyIndices = getKeyIndices(x2, y2, null);
        this.mPossiblePoly = z2;
        if (action == 0) {
            this.mSwipeTracker.clear();
        }
        this.mSwipeTracker.addMovement(motionEvent);
        if (this.mAbortKey && action != 0 && action != 3) {
            return true;
        }
        if (this.mGestureDetector.onTouchEvent(motionEvent)) {
            showPreview(-1);
            this.mHandler.removeMessages(3);
            this.mHandler.removeMessages(4);
            return true;
        }
        if (this.mMiniKeyboardOnScreen && action != 3) {
            return true;
        }
        if (action == 0) {
            this.mAbortKey = false;
            this.mStartX = x2;
            this.mStartY = y2;
            this.mLastCodeX = x2;
            this.mLastCodeY = y2;
            this.mLastKeyTime = 0L;
            this.mCurrentKeyTime = 0L;
            this.mLastKey = -1;
            this.mCurrentKey = keyIndices;
            this.mDownKey = keyIndices;
            long eventTime2 = motionEvent.getEventTime();
            this.mDownTime = eventTime2;
            this.mLastMoveTime = eventTime2;
            checkMultiTap(eventTime, keyIndices);
            this.mKeyboardActionListener.onPress(keyIndices != -1 ? this.mKeys[keyIndices].codes[0] : 0);
            int i6 = this.mCurrentKey;
            if (i6 < 0 || !this.mKeys[i6].repeatable) {
                if (this.mCurrentKey != -1) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(4, motionEvent), LONGPRESS_TIMEOUT);
                }
                showPreview(keyIndices);
            } else {
                this.mRepeatKeyIndex = i6;
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(3), 400L);
                repeatKey();
                if (this.mAbortKey) {
                    this.mRepeatKeyIndex = -1;
                } else {
                    if (this.mCurrentKey != -1) {
                        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(4, motionEvent), LONGPRESS_TIMEOUT);
                    }
                    showPreview(keyIndices);
                }
            }
        } else if (action == 1) {
            removeMessages();
            if (keyIndices == this.mCurrentKey) {
                this.mCurrentKeyTime += eventTime - this.mLastMoveTime;
            } else {
                resetMultiTap();
                this.mLastKey = this.mCurrentKey;
                this.mLastKeyTime = (this.mCurrentKeyTime + eventTime) - this.mLastMoveTime;
                this.mCurrentKey = keyIndices;
                this.mCurrentKeyTime = 0L;
            }
            long j2 = this.mCurrentKeyTime;
            if (j2 >= this.mLastKeyTime || j2 >= 70 || (i4 = this.mLastKey) == -1) {
                i2 = x2;
                i3 = y2;
            } else {
                this.mCurrentKey = i4;
                i2 = this.mLastCodeX;
                i3 = this.mLastCodeY;
            }
            showPreview(-1);
            Arrays.fill(this.mKeyIndices, -1);
            if (this.mRepeatKeyIndex == -1 && !this.mMiniKeyboardOnScreen && !this.mAbortKey) {
                detectAndSendKey(this.mCurrentKey, i2, i3, eventTime);
            }
            invalidateKey(keyIndices);
            this.mRepeatKeyIndex = -1;
            x2 = i2;
            y2 = i3;
        } else if (action == 2) {
            if (keyIndices == -1) {
                z3 = false;
            } else {
                int i7 = this.mCurrentKey;
                if (i7 == -1) {
                    this.mCurrentKey = keyIndices;
                    this.mCurrentKeyTime = eventTime - this.mDownTime;
                } else if (keyIndices == i7) {
                    this.mCurrentKeyTime += eventTime - this.mLastMoveTime;
                    z3 = true;
                } else if (this.mRepeatKeyIndex == -1) {
                    resetMultiTap();
                    this.mLastKey = this.mCurrentKey;
                    this.mLastCodeX = this.mLastX;
                    this.mLastCodeY = this.mLastY;
                    this.mLastKeyTime = (this.mCurrentKeyTime + eventTime) - this.mLastMoveTime;
                    this.mCurrentKey = keyIndices;
                    this.mCurrentKeyTime = 0L;
                }
                z3 = false;
            }
            if (!z3) {
                this.mHandler.removeMessages(4);
                if (keyIndices != -1) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(4, motionEvent), LONGPRESS_TIMEOUT);
                }
            }
            showPreview(this.mCurrentKey);
            this.mLastMoveTime = eventTime;
        } else if (action == 3) {
            removeMessages();
            dismissPopupKeyboard();
            this.mAbortKey = true;
            showPreview(-1);
            invalidateKey(this.mCurrentKey);
        }
        this.mLastX = x2;
        this.mLastY = y2;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean openPopupIfRequired(MotionEvent motionEvent) {
        int i2;
        if (this.mPopupLayout != 0 && (i2 = this.mCurrentKey) >= 0) {
            Keyboard.Key[] keyArr = this.mKeys;
            if (i2 < keyArr.length) {
                boolean zOnLongPress = onLongPress(keyArr[i2]);
                if (zOnLongPress) {
                    this.mAbortKey = true;
                    showPreview(-1);
                }
                return zOnLongPress;
            }
        }
        return false;
    }

    private void removeMessages() {
        this.mHandler.removeMessages(3);
        this.mHandler.removeMessages(4);
        this.mHandler.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean repeatKey() {
        Keyboard.Key key = this.mKeys[this.mRepeatKeyIndex];
        detectAndSendKey(this.mCurrentKey, key.f141x, key.f142y, this.mLastTapTime);
        return true;
    }

    private void resetMultiTap() {
        this.mLastSentIndex = -1;
        this.mTapCount = 0;
        this.mLastTapTime = -1L;
        this.mInMultiTap = false;
    }

    private void sendAccessibilityEventForUnicodeCharacter(int i2, int i3) {
        String string;
        if (this.mAccessibilityManager.isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
            onInitializeAccessibilityEvent(accessibilityEventObtain);
            if ((Settings.Secure.getInt(this.mContext.getContentResolver(), Settings.Secure.ACCESSIBILITY_SPEAK_PASSWORD, 0) != 0) || this.mAudioManager.isBluetoothA2dpOn() || this.mAudioManager.isWiredHeadsetOn()) {
                if (i3 != 10) {
                    switch (i3) {
                        case -6:
                            string = this.mContext.getString(17040637);
                            break;
                        case -5:
                            string = this.mContext.getString(17040639);
                            break;
                        case -4:
                            string = this.mContext.getString(17040640);
                            break;
                        case -3:
                            string = this.mContext.getString(17040638);
                            break;
                        case -2:
                            string = this.mContext.getString(17040641);
                            break;
                        case -1:
                            string = this.mContext.getString(17040642);
                            break;
                        default:
                            string = String.valueOf((char) i3);
                            break;
                    }
                } else {
                    string = this.mContext.getString(17040643);
                }
            } else if (this.mHeadsetRequiredToHearPasswordsAnnounced) {
                string = this.mContext.getString(17040660);
            } else {
                if (i2 == 256) {
                    this.mHeadsetRequiredToHearPasswordsAnnounced = true;
                }
                string = this.mContext.getString(17040659);
            }
            accessibilityEventObtain.getText().add(string);
            this.mAccessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKey(int i2) {
        PopupWindow popupWindow = this.mPreviewPopup;
        Keyboard.Key[] keyArr = this.mKeys;
        if (i2 < 0 || i2 >= keyArr.length) {
            return;
        }
        Keyboard.Key key = keyArr[i2];
        Drawable drawable = key.icon;
        if (drawable != null) {
            TextView textView = this.mPreviewText;
            Drawable drawable2 = key.iconPreview;
            if (drawable2 != null) {
                drawable = drawable2;
            }
            textView.setCompoundDrawables(null, null, null, drawable);
            this.mPreviewText.setText((CharSequence) null);
        } else {
            this.mPreviewText.setCompoundDrawables(null, null, null, null);
            this.mPreviewText.setText(getPreviewText(key));
            if (key.label.length() <= 1 || key.codes.length >= 2) {
                this.mPreviewText.setTextSize(0, this.mPreviewTextSizeLarge);
                this.mPreviewText.setTypeface(Typeface.DEFAULT);
            } else {
                this.mPreviewText.setTextSize(0, this.mKeyTextSize);
                this.mPreviewText.setTypeface(Typeface.DEFAULT_BOLD);
            }
        }
        this.mPreviewText.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int iMax = Math.max(this.mPreviewText.getMeasuredWidth(), key.width + this.mPreviewText.getPaddingLeft() + this.mPreviewText.getPaddingRight());
        int i3 = this.mPreviewHeight;
        ViewGroup.LayoutParams layoutParams = this.mPreviewText.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = iMax;
            layoutParams.height = i3;
        }
        if (this.mPreviewCentered) {
            this.mPopupPreviewX = 160 - (this.mPreviewText.getMeasuredWidth() / 2);
            this.mPopupPreviewY = -this.mPreviewText.getMeasuredHeight();
        } else {
            this.mPopupPreviewX = (key.f141x - this.mPreviewText.getPaddingLeft()) + this.mPaddingLeft;
            this.mPopupPreviewY = (key.f142y - i3) + this.mPreviewOffset;
        }
        this.mHandler.removeMessages(2);
        getLocationInWindow(this.mCoordinates);
        int[] iArr = this.mCoordinates;
        iArr[0] = iArr[0] + this.mMiniKeyboardOffsetX;
        iArr[1] = iArr[1] + this.mMiniKeyboardOffsetY;
        this.mPreviewText.getBackground().setState(key.popupResId != 0 ? LONG_PRESSABLE_STATE_SET : View.EMPTY_STATE_SET);
        int i4 = this.mPopupPreviewX;
        int[] iArr2 = this.mCoordinates;
        this.mPopupPreviewX = i4 + iArr2[0];
        this.mPopupPreviewY += iArr2[1];
        getLocationOnScreen(iArr2);
        if (this.mPopupPreviewY + this.mCoordinates[1] < 0) {
            if (key.f141x + key.width <= getWidth() / 2) {
                this.mPopupPreviewX += (int) (((double) key.width) * 2.5d);
            } else {
                this.mPopupPreviewX -= (int) (((double) key.width) * 2.5d);
            }
            this.mPopupPreviewY += i3;
        }
        if (popupWindow.isShowing()) {
            popupWindow.update(this.mPopupPreviewX, this.mPopupPreviewY, iMax, i3);
        } else {
            popupWindow.setWidth(iMax);
            popupWindow.setHeight(i3);
            popupWindow.showAtLocation(this.mPopupParent, 0, this.mPopupPreviewX, this.mPopupPreviewY);
        }
        this.mPreviewText.setVisibility(0);
    }

    private void showPreview(int i2) {
        int i3 = this.mCurrentKeyIndex;
        PopupWindow popupWindow = this.mPreviewPopup;
        this.mCurrentKeyIndex = i2;
        Keyboard.Key[] keyArr = this.mKeys;
        if (i3 != i2) {
            if (i3 != -1 && keyArr.length > i3) {
                Keyboard.Key key = keyArr[i3];
                key.onReleased(i2 == -1);
                invalidateKey(i3);
                int i4 = key.codes[0];
                sendAccessibilityEventForUnicodeCharacter(256, i4);
                sendAccessibilityEventForUnicodeCharacter(65536, i4);
            }
            int i5 = this.mCurrentKeyIndex;
            if (i5 != -1 && keyArr.length > i5) {
                Keyboard.Key key2 = keyArr[i5];
                key2.onPressed();
                invalidateKey(this.mCurrentKeyIndex);
                int i6 = key2.codes[0];
                sendAccessibilityEventForUnicodeCharacter(128, i6);
                sendAccessibilityEventForUnicodeCharacter(32768, i6);
            }
        }
        if (i3 == this.mCurrentKeyIndex || !this.mShowPreview) {
            return;
        }
        this.mHandler.removeMessages(1);
        if (popupWindow.isShowing() && i2 == -1) {
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(2), 70L);
        }
        if (i2 != -1) {
            if (popupWindow.isShowing() && this.mPreviewText.getVisibility() == 0) {
                showKey(i2);
            } else {
                Handler handler2 = this.mHandler;
                handler2.sendMessageDelayed(handler2.obtainMessage(1, i2, 0), 0L);
            }
        }
    }

    public void closing() {
        if (this.mPreviewPopup.isShowing()) {
            this.mPreviewPopup.dismiss();
        }
        removeMessages();
        dismissPopupKeyboard();
        this.mBuffer = null;
        this.mCanvas = null;
        this.mMiniKeyboardCache.clear();
    }

    public Keyboard getKeyboard() {
        return this.mKeyboard;
    }

    public OnKeyboardActionListener getOnKeyboardActionListener() {
        return this.mKeyboardActionListener;
    }

    public boolean handleBack() {
        if (!this.mPopupKeyboard.isShowing()) {
            return false;
        }
        dismissPopupKeyboard();
        return true;
    }

    public void invalidateAllKeys() {
        this.mDirtyRect.union(0, 0, getWidth(), getHeight());
        this.mDrawPending = true;
        invalidate();
    }

    public void invalidateKey(int i2) {
        Keyboard.Key[] keyArr = this.mKeys;
        if (keyArr != null && i2 >= 0 && i2 < keyArr.length) {
            Keyboard.Key key = keyArr[i2];
            this.mInvalidatedKey = key;
            Rect rect = this.mDirtyRect;
            int i3 = key.f141x;
            int i4 = this.mPaddingLeft;
            int i5 = key.f142y;
            int i6 = this.mPaddingTop;
            rect.union(i3 + i4, i5 + i6, i3 + key.width + i4, i5 + key.height + i6);
            onBufferDraw();
            int i7 = key.f141x;
            int i8 = this.mPaddingLeft;
            int i9 = key.f142y;
            int i10 = this.mPaddingTop;
            invalidate(i7 + i8, i9 + i10, i7 + key.width + i8, i9 + key.height + i10);
        }
    }

    public boolean isPreviewEnabled() {
        return this.mShowPreview;
    }

    public boolean isProximityCorrectionEnabled() {
        return this.mProximityCorrectOn;
    }

    public boolean isShifted() {
        Keyboard keyboard = this.mKeyboard;
        if (keyboard != null) {
            return keyboard.isShifted();
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismissPopupKeyboard();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        closing();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawPending || this.mBuffer == null || this.mKeyboardChanged) {
            onBufferDraw();
        }
        canvas.drawBitmap(this.mBuffer, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (!this.mAccessibilityManager.isTouchExplorationEnabled() || motionEvent.getPointerCount() != 1) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 7) {
            motionEvent.setAction(2);
        } else if (action == 9) {
            motionEvent.setAction(0);
        } else if (action == 10) {
            motionEvent.setAction(1);
        }
        return onTouchEvent(motionEvent);
    }

    public boolean onLongPress(Keyboard.Key key) {
        Keyboard keyboard;
        int i2 = key.popupResId;
        if (i2 == 0) {
            return false;
        }
        View view = this.mMiniKeyboardCache.get(key);
        this.mMiniKeyboardContainer = view;
        if (view == null) {
            View viewInflate = ((LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(this.mPopupLayout, (ViewGroup) null);
            this.mMiniKeyboardContainer = viewInflate;
            this.mMiniKeyboard = (KeyboardView) viewInflate.findViewById(R.id.keyboardView);
            View viewFindViewById = this.mMiniKeyboardContainer.findViewById(R.id.closeButton);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this);
            }
            this.mMiniKeyboard.setOnKeyboardActionListener(new OnKeyboardActionListener() { // from class: android.inputmethodservice.KeyboardView.3
                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void onKey(int i3, int[] iArr) {
                    KeyboardView.this.mKeyboardActionListener.onKey(i3, iArr);
                    KeyboardView.this.dismissPopupKeyboard();
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void onPress(int i3) {
                    KeyboardView.this.mKeyboardActionListener.onPress(i3);
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void onRelease(int i3) {
                    KeyboardView.this.mKeyboardActionListener.onRelease(i3);
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void onText(CharSequence charSequence) {
                    KeyboardView.this.mKeyboardActionListener.onText(charSequence);
                    KeyboardView.this.dismissPopupKeyboard();
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void swipeDown() {
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void swipeLeft() {
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void swipeRight() {
                }

                @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
                public void swipeUp() {
                }
            });
            if (key.popupCharacters != null) {
                keyboard = new Keyboard(getContext(), i2, key.popupCharacters, -1, getPaddingRight() + getPaddingLeft());
            } else {
                keyboard = new Keyboard(getContext(), i2);
            }
            this.mMiniKeyboard.setKeyboard(keyboard);
            this.mMiniKeyboard.setPopupParent(this);
            this.mMiniKeyboardContainer.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
            this.mMiniKeyboardCache.put(key, this.mMiniKeyboardContainer);
        } else {
            this.mMiniKeyboard = (KeyboardView) view.findViewById(R.id.keyboardView);
        }
        getLocationInWindow(this.mCoordinates);
        int i3 = key.f141x + this.mPaddingLeft;
        this.mPopupX = i3;
        this.mPopupY = key.f142y + this.mPaddingTop;
        this.mPopupX = (i3 + key.width) - this.mMiniKeyboardContainer.getMeasuredWidth();
        this.mPopupY -= this.mMiniKeyboardContainer.getMeasuredHeight();
        int paddingRight = this.mPopupX + this.mMiniKeyboardContainer.getPaddingRight() + this.mCoordinates[0];
        int paddingBottom = this.mPopupY + this.mMiniKeyboardContainer.getPaddingBottom() + this.mCoordinates[1];
        this.mMiniKeyboard.setPopupOffset(paddingRight < 0 ? 0 : paddingRight, paddingBottom);
        this.mMiniKeyboard.setShifted(isShifted());
        this.mPopupKeyboard.setContentView(this.mMiniKeyboardContainer);
        this.mPopupKeyboard.setWidth(this.mMiniKeyboardContainer.getMeasuredWidth());
        this.mPopupKeyboard.setHeight(this.mMiniKeyboardContainer.getMeasuredHeight());
        this.mPopupKeyboard.showAtLocation(this, 0, paddingRight, paddingBottom);
        this.mMiniKeyboardOnScreen = true;
        invalidateAllKeys();
        return true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        Keyboard keyboard = this.mKeyboard;
        if (keyboard == null) {
            setMeasuredDimension(this.mPaddingLeft + this.mPaddingRight, this.mPaddingTop + this.mPaddingBottom);
            return;
        }
        int minWidth = keyboard.getMinWidth() + this.mPaddingLeft + this.mPaddingRight;
        if (View.MeasureSpec.getSize(i2) < minWidth + 10) {
            minWidth = View.MeasureSpec.getSize(i2);
        }
        setMeasuredDimension(minWidth, this.mKeyboard.getHeight() + this.mPaddingTop + this.mPaddingBottom);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Keyboard keyboard = this.mKeyboard;
        if (keyboard != null) {
            keyboard.resize(i2, i3);
        }
        this.mBuffer = null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        long eventTime = motionEvent.getEventTime();
        boolean zOnModifiedTouchEvent = true;
        if (pointerCount != this.mOldPointerCount) {
            if (pointerCount == 1) {
                MotionEvent motionEventObtain = MotionEvent.obtain(eventTime, eventTime, 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
                boolean zOnModifiedTouchEvent2 = onModifiedTouchEvent(motionEventObtain, false);
                motionEventObtain.recycle();
                zOnModifiedTouchEvent = action == 1 ? onModifiedTouchEvent(motionEvent, true) : zOnModifiedTouchEvent2;
            } else {
                MotionEvent motionEventObtain2 = MotionEvent.obtain(eventTime, eventTime, 1, this.mOldPointerX, this.mOldPointerY, motionEvent.getMetaState());
                zOnModifiedTouchEvent = onModifiedTouchEvent(motionEventObtain2, true);
                motionEventObtain2.recycle();
            }
        } else if (pointerCount == 1) {
            zOnModifiedTouchEvent = onModifiedTouchEvent(motionEvent, false);
            this.mOldPointerX = motionEvent.getX();
            this.mOldPointerY = motionEvent.getY();
        }
        this.mOldPointerCount = pointerCount;
        return zOnModifiedTouchEvent;
    }

    public void setKeyboard(Keyboard keyboard) {
        if (this.mKeyboard != null) {
            showPreview(-1);
        }
        removeMessages();
        this.mKeyboard = keyboard;
        List<Keyboard.Key> keys = keyboard.getKeys();
        this.mKeys = (Keyboard.Key[]) keys.toArray(new Keyboard.Key[keys.size()]);
        requestLayout();
        this.mKeyboardChanged = true;
        invalidateAllKeys();
        computeProximityThreshold(keyboard);
        this.mMiniKeyboardCache.clear();
        this.mAbortKey = true;
    }

    public void setOnKeyboardActionListener(OnKeyboardActionListener onKeyboardActionListener) {
        this.mKeyboardActionListener = onKeyboardActionListener;
    }

    public void setPopupOffset(int i2, int i3) {
        this.mMiniKeyboardOffsetX = i2;
        this.mMiniKeyboardOffsetY = i3;
        if (this.mPreviewPopup.isShowing()) {
            this.mPreviewPopup.dismiss();
        }
    }

    public void setPopupParent(View view) {
        this.mPopupParent = view;
    }

    public void setPreviewEnabled(boolean z2) {
        this.mShowPreview = z2;
    }

    public void setProximityCorrectionEnabled(boolean z2) {
        this.mProximityCorrectOn = z2;
    }

    public boolean setShifted(boolean z2) {
        Keyboard keyboard = this.mKeyboard;
        if (keyboard == null || !keyboard.setShifted(z2)) {
            return false;
        }
        invalidateAllKeys();
        return true;
    }

    public void setVerticalCorrection(int i2) {
    }

    public void swipeDown() {
        this.mKeyboardActionListener.swipeDown();
    }

    public void swipeLeft() {
        this.mKeyboardActionListener.swipeLeft();
    }

    public void swipeRight() {
        this.mKeyboardActionListener.swipeRight();
    }

    public void swipeUp() {
        this.mKeyboardActionListener.swipeUp();
    }

    public KeyboardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mCurrentKeyIndex = -1;
        this.mCoordinates = new int[2];
        this.mPreviewCentered = false;
        this.mShowPreview = true;
        this.mShowTouchPoints = true;
        this.mCurrentKey = -1;
        this.mDownKey = -1;
        this.mKeyIndices = new int[12];
        this.mRepeatKeyIndex = -1;
        this.mClipRegion = new Rect(0, 0, 0, 0);
        this.mSwipeTracker = new SwipeTracker();
        this.mOldPointerCount = 1;
        this.mDistances = new int[MAX_NEARBY_KEYS];
        this.mPreviewLabel = new StringBuilder(1);
        this.mDirtyRect = new Rect();
        this.mHandler = new Handler() { // from class: android.inputmethodservice.KeyboardView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i3 = message.what;
                if (i3 == 1) {
                    KeyboardView.this.showKey(message.arg1);
                    return;
                }
                if (i3 == 2) {
                    KeyboardView.this.mPreviewText.setVisibility(4);
                    return;
                }
                if (i3 != 3) {
                    if (i3 != 4) {
                        return;
                    }
                    KeyboardView.this.openPopupIfRequired((MotionEvent) message.obj);
                } else if (KeyboardView.this.repeatKey()) {
                    sendMessageDelayed(Message.obtain(this, 3), 50L);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.KeyboardView, i2, 0);
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        int resourceId = 0;
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            switch (index) {
                case 0:
                    this.mShadowColor = typedArrayObtainStyledAttributes.getColor(index, 0);
                    break;
                case 1:
                    this.mShadowRadius = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    break;
                case 2:
                    this.mKeyBackground = typedArrayObtainStyledAttributes.getDrawable(index);
                    break;
                case 3:
                    this.mKeyTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 18);
                    break;
                case 4:
                    this.mLabelTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 14);
                    break;
                case 5:
                    this.mKeyTextColor = typedArrayObtainStyledAttributes.getColor(index, -16777216);
                    break;
                case 6:
                    resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    break;
                case 7:
                    this.mPreviewOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    break;
                case 8:
                    this.mPreviewHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 80);
                    break;
                case 9:
                    this.mVerticalCorrection = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    break;
                case 10:
                    this.mPopupLayout = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    break;
            }
        }
        this.mBackgroundDimAmount = this.mContext.obtainStyledAttributes(a.Theme).getFloat(2, 0.5f);
        this.mPreviewPopup = new PopupWindow(context);
        if (resourceId != 0) {
            TextView textView = (TextView) layoutInflater.inflate(resourceId, (ViewGroup) null);
            this.mPreviewText = textView;
            this.mPreviewTextSizeLarge = (int) textView.getTextSize();
            this.mPreviewPopup.setContentView(this.mPreviewText);
            this.mPreviewPopup.setBackgroundDrawable(null);
        } else {
            this.mShowPreview = false;
        }
        this.mPreviewPopup.setTouchable(false);
        PopupWindow popupWindow = new PopupWindow(context);
        this.mPopupKeyboard = popupWindow;
        popupWindow.setBackgroundDrawable(null);
        this.mPopupParent = this;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setTextSize(0);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mPaint.setAlpha(255);
        this.mPadding = new Rect(0, 0, 0, 0);
        this.mMiniKeyboardCache = new HashMap();
        this.mKeyBackground.getPadding(this.mPadding);
        this.mSwipeThreshold = (int) (getResources().getDisplayMetrics().density * 500.0f);
        this.mDisambiguateSwipe = getResources().getBoolean(17891374);
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mAudioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        resetMultiTap();
        initGestureDetector();
    }
}
