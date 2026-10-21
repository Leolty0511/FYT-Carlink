package android.widget;

import android.R;
import android.app.FragmentTransaction;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.UndoManager;
import android.content.res.ColorStateList;
import android.content.res.CompatibilityInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.ExtractEditText;
import android.mtp.MtpConstants;
import android.net.ProxyProperties;
import android.net.wifi.WifiStateMachine;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.BoringLayout;
import android.text.DynamicLayout;
import android.text.Editable;
import android.text.GetChars;
import android.text.GraphicsOperations;
import android.text.InputFilter;
import android.text.InputType;
import android.text.Layout;
import android.text.ParcelableSpan;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.AllCapsTransformationMethod;
import android.text.method.ArrowKeyMovementMethod;
import android.text.method.DateKeyListener;
import android.text.method.DateTimeKeyListener;
import android.text.method.DialerKeyListener;
import android.text.method.DigitsKeyListener;
import android.text.method.KeyListener;
import android.text.method.LinkMovementMethod;
import android.text.method.MetaKeyKeyListener;
import android.text.method.MovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.SingleLineTransformationMethod;
import android.text.method.TextKeyListener;
import android.text.method.TimeKeyListener;
import android.text.method.TransformationMethod;
import android.text.method.TransformationMethod2;
import android.text.method.WordIterator;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ParagraphStyle;
import android.text.style.SpellCheckSpan;
import android.text.style.SuggestionSpan;
import android.text.style.URLSpan;
import android.text.style.UpdateAppearance;
import android.text.util.Linkify;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.Gravity;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.SpellCheckerSubtype;
import android.view.textservice.TextServicesManager;
import com.android.internal.widget.b;
import i.a;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;
import u.d;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class TextView extends View implements ViewTreeObserver.OnPreDrawListener {
    private static final int ANIMATED_SCROLL_GAP = 250;
    private static final int CHANGE_WATCHER_PRIORITY = 100;
    public static final boolean DEBUG_EXTRACT = false;
    private static final int DECIMAL = 4;
    private static final int EMS = 1;
    public static final int ID_COPY = 16908321;
    public static final int ID_CUT = 16908320;
    public static final int ID_PASTE = 16908322;
    public static final int ID_SELECT_ALL = 16908319;
    public static long LAST_CUT_OR_COPY_TIME = 0;
    private static final int LINES = 1;
    public static final String LOG_TAG = "TextView";
    private static final int MARQUEE_FADE_NORMAL = 0;
    private static final int MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS = 1;
    private static final int MARQUEE_FADE_SWITCH_SHOW_FADE = 2;
    private static final int MONOSPACE = 3;
    private static final int PIXELS = 2;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int SIGNED = 2;
    private static final BoringLayout.Metrics UNKNOWN_BORING;
    private static final int VERY_WIDE = 1048576;
    private boolean mAllowTransformationLengthChange;
    private int mAutoLinkMask;
    private BoringLayout.Metrics mBoring;
    private BufferType mBufferType;
    private ChangeWatcher mChangeWatcher;
    private CharWrapper mCharWrapper;
    private int mCurHintTextColor;
    private int mCurTextColor;
    private volatile Locale mCurrentSpellCheckerLocaleCache;
    public int mCursorDrawableRes;
    private int mDeferScroll;
    private int mDesiredHeightAtMeasure;
    private boolean mDispatchTemporaryDetach;
    public Drawables mDrawables;
    private Editable.Factory mEditableFactory;
    private Editor mEditor;
    private TextUtils.TruncateAt mEllipsize;
    private InputFilter[] mFilters;
    private boolean mFreezesText;
    private int mGravity;
    public int mHighlightColor;
    private final Paint mHighlightPaint;
    private Path mHighlightPath;
    private boolean mHighlightPathBogus;
    private CharSequence mHint;
    private BoringLayout.Metrics mHintBoring;
    private Layout mHintLayout;
    private ColorStateList mHintTextColor;
    private boolean mHorizontallyScrolling;
    private boolean mIncludePad;
    private int mLastLayoutDirection;
    private long mLastScroll;
    private Layout mLayout;
    private ColorStateList mLinkTextColor;
    private boolean mLinksClickable;
    private ArrayList<TextWatcher> mListeners;
    private Marquee mMarquee;
    private int mMarqueeFadeMode;
    private int mMarqueeRepeatLimit;
    private int mMaxMode;
    private int mMaxWidth;
    private int mMaxWidthMode;
    private int mMaximum;
    private int mMinMode;
    private int mMinWidth;
    private int mMinWidthMode;
    private int mMinimum;
    private MovementMethod mMovement;
    private int mOldMaxMode;
    private int mOldMaximum;
    private boolean mPreDrawRegistered;
    private boolean mPreventDefaultMovement;
    private boolean mRestartMarquee;
    private BoringLayout mSavedHintLayout;
    private BoringLayout mSavedLayout;
    private Layout mSavedMarqueeModeLayout;
    private Scroller mScroller;
    private float mShadowDx;
    private float mShadowDy;
    private float mShadowRadius;
    private boolean mSingleLine;
    private float mSpacingAdd;
    private float mSpacingMult;
    private Spannable.Factory mSpannableFactory;
    private Rect mTempRect;
    private boolean mTemporaryDetach;

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT)
    private CharSequence mText;
    private ColorStateList mTextColor;
    private TextDirectionHeuristic mTextDir;
    public int mTextEditSuggestionItemLayout;
    private final TextPaint mTextPaint;
    public int mTextSelectHandleLeftRes;
    public int mTextSelectHandleRes;
    public int mTextSelectHandleRightRes;
    private TransformationMethod mTransformation;
    private CharSequence mTransformed;
    private boolean mUserSetTextScaleX;
    private static final RectF TEMP_RECTF = new RectF();
    private static final InputFilter[] NO_FILTERS = new InputFilter[0];
    private static final Spanned EMPTY_SPANNED = new SpannedString(ProxyProperties.LOCAL_EXCL_LIST);
    private static final int[] MULTILINE_STATE_SET = {R.attr.state_multiline};

    /* JADX INFO: renamed from: android.widget.TextView$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            $SwitchMap$android$text$Layout$Alignment = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Layout.Alignment.ALIGN_CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum BufferType {
        NORMAL,
        SPANNABLE,
        EDITABLE
    }

    public class ChangeWatcher implements TextWatcher, SpanWatcher {
        private CharSequence mBeforeText;

        private ChangeWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextView.this.sendAfterTextChanged(editable);
            if (MetaKeyKeyListener.getMetaState(editable, 2048) != 0) {
                MetaKeyKeyListener.stopSelecting(TextView.this, editable);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            if (AccessibilityManager.getInstance(TextView.this.mContext).isEnabled() && ((!TextView.isPasswordInputType(TextView.this.getInputType()) && !TextView.this.hasPasswordTransformationMethod()) || TextView.this.shouldSpeakPasswordsForAccessibility())) {
                this.mBeforeText = charSequence.toString();
            }
            TextView.this.sendBeforeTextChanged(charSequence, i2, i3, i4);
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i2, int i3) {
            TextView.this.spanChange(spannable, obj, -1, i2, -1, i3);
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5) {
            TextView.this.spanChange(spannable, obj, i2, i4, i3, i5);
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3) {
            TextView.this.spanChange(spannable, obj, i2, -1, i3, -1);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            TextView.this.handleTextChanged(charSequence, i2, i3, i4);
            if (AccessibilityManager.getInstance(TextView.this.mContext).isEnabled()) {
                if (TextView.this.isFocused() || (TextView.this.isSelected() && TextView.this.isShown())) {
                    TextView.this.sendAccessibilityEventTypeViewTextChanged(this.mBeforeText, i2, i3, i4);
                    this.mBeforeText = null;
                }
            }
        }
    }

    public static class CharWrapper implements CharSequence, GetChars, GraphicsOperations {
        private char[] mChars;
        private int mLength;
        private int mStart;

        public CharWrapper(char[] cArr, int i2, int i3) {
            this.mChars = cArr;
            this.mStart = i2;
            this.mLength = i3;
        }

        @Override // java.lang.CharSequence
        public char charAt(int i2) {
            return this.mChars[i2 + this.mStart];
        }

        @Override // android.text.GraphicsOperations
        public void drawText(Canvas canvas, int i2, int i3, float f2, float f3, Paint paint) {
            canvas.drawText(this.mChars, i2 + this.mStart, i3 - i2, f2, f3, paint);
        }

        @Override // android.text.GraphicsOperations
        public void drawTextRun(Canvas canvas, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint) {
            char[] cArr = this.mChars;
            int i7 = this.mStart;
            canvas.drawTextRun(cArr, i2 + i7, i3 - i2, i4 + i7, i5 - i4, f2, f3, i6, paint);
        }

        @Override // android.text.GetChars
        public void getChars(int i2, int i3, char[] cArr, int i4) {
            int i5;
            if (i2 >= 0 && i3 >= 0 && i2 <= (i5 = this.mLength) && i3 <= i5) {
                System.arraycopy(this.mChars, this.mStart + i2, cArr, i4, i3 - i2);
                return;
            }
            throw new IndexOutOfBoundsException(i2 + ", " + i3);
        }

        @Override // android.text.GraphicsOperations
        public float getTextRunAdvances(int i2, int i3, int i4, int i5, int i6, float[] fArr, int i7, Paint paint) {
            char[] cArr = this.mChars;
            int i8 = this.mStart;
            return paint.getTextRunAdvances(cArr, i2 + i8, i3 - i2, i4 + i8, i5 - i4, i6, fArr, i7);
        }

        @Override // android.text.GraphicsOperations
        public int getTextRunCursor(int i2, int i3, int i4, int i5, int i6, Paint paint) {
            int i7 = i3 - i2;
            char[] cArr = this.mChars;
            int i8 = this.mStart;
            return paint.getTextRunCursor(cArr, i2 + i8, i7, i4, i5 + i8, i6);
        }

        @Override // android.text.GraphicsOperations
        public int getTextWidths(int i2, int i3, float[] fArr, Paint paint) {
            return paint.getTextWidths(this.mChars, this.mStart + i2, i3 - i2, fArr);
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mLength;
        }

        @Override // android.text.GraphicsOperations
        public float measureText(int i2, int i3, Paint paint) {
            return paint.measureText(this.mChars, this.mStart + i2, i3 - i2);
        }

        public void set(char[] cArr, int i2, int i3) {
            this.mChars = cArr;
            this.mStart = i2;
            this.mLength = i3;
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            int i4;
            if (i2 >= 0 && i3 >= 0 && i2 <= (i4 = this.mLength) && i3 <= i4) {
                return new String(this.mChars, this.mStart + i2, i3 - i2);
            }
            throw new IndexOutOfBoundsException(i2 + ", " + i3);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            return new String(this.mChars, this.mStart, this.mLength);
        }
    }

    public static class Drawables {
        public static final int DRAWABLE_LEFT = 1;
        public static final int DRAWABLE_NONE = -1;
        public static final int DRAWABLE_RIGHT = 0;
        public Drawable mDrawableBottom;
        public Drawable mDrawableEnd;
        public Drawable mDrawableError;
        public int mDrawableHeightEnd;
        public int mDrawableHeightError;
        public int mDrawableHeightLeft;
        public int mDrawableHeightRight;
        public int mDrawableHeightStart;
        public int mDrawableHeightTemp;
        public Drawable mDrawableLeft;
        public Drawable mDrawableLeftInitial;
        public int mDrawablePadding;
        public Drawable mDrawableRight;
        public Drawable mDrawableRightInitial;
        public int mDrawableSizeBottom;
        public int mDrawableSizeEnd;
        public int mDrawableSizeError;
        public int mDrawableSizeLeft;
        public int mDrawableSizeRight;
        public int mDrawableSizeStart;
        public int mDrawableSizeTemp;
        public int mDrawableSizeTop;
        public Drawable mDrawableStart;
        public Drawable mDrawableTemp;
        public Drawable mDrawableTop;
        public int mDrawableWidthBottom;
        public int mDrawableWidthTop;
        public boolean mIsRtlCompatibilityMode;
        public boolean mOverride;
        public final Rect mCompoundRect = new Rect();
        public int mDrawableSaved = -1;

        public Drawables(Context context) {
            this.mIsRtlCompatibilityMode = context.getApplicationInfo().targetSdkVersion < 17 || !context.getApplicationInfo().hasRtlSupport();
            this.mOverride = false;
        }

        private void applyErrorDrawableIfNeeded(int i2) {
            int i3 = this.mDrawableSaved;
            if (i3 == 0) {
                this.mDrawableRight = this.mDrawableTemp;
                this.mDrawableSizeRight = this.mDrawableSizeTemp;
                this.mDrawableHeightRight = this.mDrawableHeightTemp;
            } else if (i3 == 1) {
                this.mDrawableLeft = this.mDrawableTemp;
                this.mDrawableSizeLeft = this.mDrawableSizeTemp;
                this.mDrawableHeightLeft = this.mDrawableHeightTemp;
            }
            Drawable drawable = this.mDrawableError;
            if (drawable != null) {
                if (i2 != 1) {
                    this.mDrawableSaved = 0;
                    this.mDrawableTemp = this.mDrawableRight;
                    this.mDrawableSizeTemp = this.mDrawableSizeRight;
                    this.mDrawableHeightTemp = this.mDrawableHeightRight;
                    this.mDrawableRight = drawable;
                    this.mDrawableSizeRight = this.mDrawableSizeError;
                    this.mDrawableHeightRight = this.mDrawableHeightError;
                    return;
                }
                this.mDrawableSaved = 1;
                this.mDrawableTemp = this.mDrawableLeft;
                this.mDrawableSizeTemp = this.mDrawableSizeLeft;
                this.mDrawableHeightTemp = this.mDrawableHeightLeft;
                this.mDrawableLeft = drawable;
                this.mDrawableSizeLeft = this.mDrawableSizeError;
                this.mDrawableHeightLeft = this.mDrawableHeightError;
            }
        }

        private void updateDrawablesLayoutDirection(int i2) {
            Drawable drawable = this.mDrawableLeft;
            if (drawable != null) {
                drawable.setLayoutDirection(i2);
            }
            Drawable drawable2 = this.mDrawableRight;
            if (drawable2 != null) {
                drawable2.setLayoutDirection(i2);
            }
            Drawable drawable3 = this.mDrawableTop;
            if (drawable3 != null) {
                drawable3.setLayoutDirection(i2);
            }
            Drawable drawable4 = this.mDrawableBottom;
            if (drawable4 != null) {
                drawable4.setLayoutDirection(i2);
            }
        }

        public void resolveWithLayoutDirection(int i2) {
            Drawable drawable = this.mDrawableLeftInitial;
            this.mDrawableLeft = drawable;
            Drawable drawable2 = this.mDrawableRightInitial;
            this.mDrawableRight = drawable2;
            if (this.mIsRtlCompatibilityMode) {
                Drawable drawable3 = this.mDrawableStart;
                if (drawable3 != null && drawable == null) {
                    this.mDrawableLeft = drawable3;
                    this.mDrawableSizeLeft = this.mDrawableSizeStart;
                    this.mDrawableHeightLeft = this.mDrawableHeightStart;
                }
                Drawable drawable4 = this.mDrawableEnd;
                if (drawable4 != null && drawable2 == null) {
                    this.mDrawableRight = drawable4;
                    this.mDrawableSizeRight = this.mDrawableSizeEnd;
                    this.mDrawableHeightRight = this.mDrawableHeightEnd;
                }
            } else if (i2 != 1) {
                if (this.mOverride) {
                    this.mDrawableLeft = this.mDrawableStart;
                    this.mDrawableSizeLeft = this.mDrawableSizeStart;
                    this.mDrawableHeightLeft = this.mDrawableHeightStart;
                    this.mDrawableRight = this.mDrawableEnd;
                    this.mDrawableSizeRight = this.mDrawableSizeEnd;
                    this.mDrawableHeightRight = this.mDrawableHeightEnd;
                }
            } else if (this.mOverride) {
                this.mDrawableRight = this.mDrawableStart;
                this.mDrawableSizeRight = this.mDrawableSizeStart;
                this.mDrawableHeightRight = this.mDrawableHeightStart;
                this.mDrawableLeft = this.mDrawableEnd;
                this.mDrawableSizeLeft = this.mDrawableSizeEnd;
                this.mDrawableHeightLeft = this.mDrawableHeightEnd;
            }
            applyErrorDrawableIfNeeded(i2);
            updateDrawablesLayoutDirection(i2);
        }

        public void setErrorDrawable(Drawable drawable, TextView textView) {
            Drawable drawable2 = this.mDrawableError;
            if (drawable2 != drawable && drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.mDrawableError = drawable;
            Rect rect = this.mCompoundRect;
            int[] drawableState = textView.getDrawableState();
            Drawable drawable3 = this.mDrawableError;
            if (drawable3 == null) {
                this.mDrawableHeightError = 0;
                this.mDrawableSizeError = 0;
                return;
            }
            drawable3.setState(drawableState);
            this.mDrawableError.copyBounds(rect);
            this.mDrawableError.setCallback(textView);
            this.mDrawableSizeError = rect.width();
            this.mDrawableHeightError = rect.height();
        }
    }

    public static final class Marquee extends Handler {
        private static final int MARQUEE_DELAY = 1200;
        private static final float MARQUEE_DELTA_MAX = 0.07f;
        private static final int MARQUEE_PIXELS_PER_SECOND = 30;
        private static final int MARQUEE_RESOLUTION = 33;
        private static final int MARQUEE_RESTART_DELAY = 1200;
        private static final byte MARQUEE_RUNNING = 2;
        private static final byte MARQUEE_STARTING = 1;
        private static final byte MARQUEE_STOPPED = 0;
        private static final int MESSAGE_RESTART = 3;
        private static final int MESSAGE_START = 1;
        private static final int MESSAGE_TICK = 2;
        private float mFadeStop;
        private float mGhostOffset;
        private float mGhostStart;
        private float mMaxFadeScroll;
        private float mMaxScroll;
        private int mRepeatLimit;
        private float mScroll;
        private final float mScrollUnit;
        private byte mStatus = 0;
        private final WeakReference<TextView> mView;

        public Marquee(TextView textView) {
            this.mScrollUnit = (textView.getContext().getResources().getDisplayMetrics().density * 30.0f) / 33.0f;
            this.mView = new WeakReference<>(textView);
        }

        private void resetScroll() {
            this.mScroll = 0.0f;
            TextView textView = this.mView.get();
            if (textView != null) {
                textView.invalidate();
            }
        }

        public float getGhostOffset() {
            return this.mGhostOffset;
        }

        public float getMaxFadeScroll() {
            return this.mMaxFadeScroll;
        }

        public float getScroll() {
            return this.mScroll;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                this.mStatus = (byte) 2;
                tick();
            } else {
                if (i2 == 2) {
                    tick();
                    return;
                }
                if (i2 == 3 && this.mStatus == 2) {
                    int i3 = this.mRepeatLimit;
                    if (i3 >= 0) {
                        this.mRepeatLimit = i3 - 1;
                    }
                    start(this.mRepeatLimit);
                }
            }
        }

        public boolean isRunning() {
            return this.mStatus == 2;
        }

        public boolean isStopped() {
            return this.mStatus == 0;
        }

        public boolean shouldDrawGhost() {
            return this.mStatus == 2 && this.mScroll > this.mGhostStart;
        }

        public boolean shouldDrawLeftFade() {
            return this.mScroll <= this.mFadeStop;
        }

        public void start(int i2) {
            if (i2 == 0) {
                stop();
                return;
            }
            this.mRepeatLimit = i2;
            TextView textView = this.mView.get();
            if (textView == null || textView.mLayout == null) {
                return;
            }
            this.mStatus = (byte) 1;
            this.mScroll = 0.0f;
            int width = (textView.getWidth() - textView.getCompoundPaddingLeft()) - textView.getCompoundPaddingRight();
            float lineWidth = textView.mLayout.getLineWidth(0);
            float f2 = width;
            float f3 = f2 / 3.0f;
            float f4 = (lineWidth - f2) + f3;
            this.mGhostStart = f4;
            this.mMaxScroll = f4 + f2;
            this.mGhostOffset = f3 + lineWidth;
            this.mFadeStop = (f2 / 6.0f) + lineWidth;
            this.mMaxFadeScroll = f4 + lineWidth + lineWidth;
            textView.invalidate();
            sendEmptyMessageDelayed(1, 1200L);
        }

        public void stop() {
            this.mStatus = (byte) 0;
            removeMessages(1);
            removeMessages(3);
            removeMessages(2);
            resetScroll();
        }

        public void tick() {
            if (this.mStatus != 2) {
                return;
            }
            removeMessages(2);
            TextView textView = this.mView.get();
            if (textView != null) {
                if (textView.isFocused() || textView.isSelected()) {
                    float f2 = this.mScroll + this.mScrollUnit;
                    this.mScroll = f2;
                    float f3 = this.mMaxScroll;
                    if (f2 > f3) {
                        this.mScroll = f3;
                        sendEmptyMessageDelayed(3, 1200L);
                    } else {
                        sendEmptyMessageDelayed(2, 33L);
                    }
                    textView.invalidate();
                }
            }
        }
    }

    public interface OnEditorActionListener {
        boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent);
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.TextView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public CharSequence error;
        public boolean frozenWithFocus;
        public int selEnd;
        public int selStart;
        public CharSequence text;

        public String toString() {
            String str = "TextView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " start=" + this.selStart + " end=" + this.selEnd;
            if (this.text != null) {
                str = str + " text=" + ((Object) this.text);
            }
            return str + "}";
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.selStart);
            parcel.writeInt(this.selEnd);
            parcel.writeInt(this.frozenWithFocus ? 1 : 0);
            TextUtils.writeToParcel(this.text, parcel, i2);
            if (this.error == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                TextUtils.writeToParcel(this.error, parcel, i2);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.selStart = parcel.readInt();
            this.selEnd = parcel.readInt();
            this.frozenWithFocus = parcel.readInt() != 0;
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.text = creator.createFromParcel(parcel);
            if (parcel.readInt() != 0) {
                this.error = creator.createFromParcel(parcel);
            }
        }
    }

    static {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.measureText("H");
        UNKNOWN_BORING = new BoringLayout.Metrics();
    }

    public TextView(Context context) {
        this(context, null);
    }

    private void applySingleLine(boolean z2, boolean z3, boolean z4) {
        this.mSingleLine = z2;
        if (z2) {
            setLines(1);
            setHorizontallyScrolling(true);
            if (z3) {
                setTransformationMethod(SingleLineTransformationMethod.getInstance());
                return;
            }
            return;
        }
        if (z4) {
            setMaxLines(Integer.MAX_VALUE);
        }
        setHorizontallyScrolling(false);
        if (z3) {
            setTransformationMethod(null);
        }
    }

    private void assumeLayout() {
        int compoundPaddingLeft = ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        if (compoundPaddingLeft < 1) {
            compoundPaddingLeft = 0;
        }
        int i2 = compoundPaddingLeft;
        int i3 = this.mHorizontallyScrolling ? 1048576 : i2;
        BoringLayout.Metrics metrics = UNKNOWN_BORING;
        makeNewLayout(i3, i2, metrics, metrics, i2, false);
    }

    private boolean bringTextIntoView() {
        int iFloor;
        int iCeil;
        Layout layout = isShowingHint() ? this.mHintLayout : this.mLayout;
        int lineCount = (this.mGravity & 112) == 80 ? layout.getLineCount() - 1 : 0;
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(lineCount);
        int paragraphDirection = layout.getParagraphDirection(lineCount);
        int compoundPaddingLeft = ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        int extendedPaddingTop = ((this.mBottom - this.mTop) - getExtendedPaddingTop()) - getExtendedPaddingBottom();
        int height = layout.getHeight();
        if (paragraphAlignment == Layout.Alignment.ALIGN_NORMAL) {
            paragraphAlignment = paragraphDirection == 1 ? Layout.Alignment.ALIGN_LEFT : Layout.Alignment.ALIGN_RIGHT;
        } else if (paragraphAlignment == Layout.Alignment.ALIGN_OPPOSITE) {
            paragraphAlignment = paragraphDirection == 1 ? Layout.Alignment.ALIGN_RIGHT : Layout.Alignment.ALIGN_LEFT;
        }
        if (paragraphAlignment == Layout.Alignment.ALIGN_CENTER) {
            iFloor = (int) FloatMath.floor(layout.getLineLeft(lineCount));
            iCeil = (int) FloatMath.ceil(layout.getLineRight(lineCount));
            if (iCeil - iFloor < compoundPaddingLeft) {
                iCeil = (iCeil + iFloor) / 2;
                compoundPaddingLeft /= 2;
            } else if (paragraphDirection < 0) {
            }
            iFloor = iCeil - compoundPaddingLeft;
        } else if (paragraphAlignment == Layout.Alignment.ALIGN_RIGHT) {
            iCeil = (int) FloatMath.ceil(layout.getLineRight(lineCount));
            iFloor = iCeil - compoundPaddingLeft;
        } else {
            iFloor = (int) FloatMath.floor(layout.getLineLeft(lineCount));
        }
        int i2 = (height >= extendedPaddingTop && (this.mGravity & 112) == 80) ? height - extendedPaddingTop : 0;
        if (iFloor == this.mScrollX && i2 == this.mScrollY) {
            return false;
        }
        scrollTo(iFloor, i2);
        return true;
    }

    private boolean canMarquee() {
        Layout layout;
        int compoundPaddingLeft = ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        if (compoundPaddingLeft <= 0) {
            return false;
        }
        float f2 = compoundPaddingLeft;
        return this.mLayout.getLineWidth(0) > f2 || !(this.mMarqueeFadeMode == 0 || (layout = this.mSavedMarqueeModeLayout) == null || layout.getLineWidth(0) <= f2);
    }

    private boolean canSelectText() {
        Editor editor;
        return (this.mText.length() == 0 || (editor = this.mEditor) == null || !editor.hasSelectionController()) ? false : true;
    }

    private void checkForRelayout() {
        Layout layout;
        if ((this.mLayoutParams.width == -2 && (this.mMaxWidthMode != this.mMinWidthMode || this.mMaxWidth != this.mMinWidth)) || ((this.mHint != null && this.mHintLayout == null) || ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight() <= 0)) {
            nullLayouts();
            requestLayout();
            invalidate();
            return;
        }
        int height = this.mLayout.getHeight();
        int width = this.mLayout.getWidth();
        Layout layout2 = this.mHintLayout;
        int width2 = layout2 == null ? 0 : layout2.getWidth();
        BoringLayout.Metrics metrics = UNKNOWN_BORING;
        makeNewLayout(width, width2, metrics, metrics, ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), false);
        if (this.mEllipsize != TextUtils.TruncateAt.MARQUEE) {
            int i2 = this.mLayoutParams.height;
            if (i2 != -2 && i2 != -1) {
                invalidate();
                return;
            } else if (this.mLayout.getHeight() == height && ((layout = this.mHintLayout) == null || layout.getHeight() == height)) {
                invalidate();
                return;
            }
        }
        requestLayout();
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0032 A[PHI: r2
  0x0032: PHI (r2v1 boolean) = (r2v0 boolean), (r2v2 boolean), (r2v2 boolean), (r2v2 boolean), (r2v2 boolean) binds: [B:3:0x0004, B:13:0x0023, B:15:0x0027, B:17:0x002f, B:10:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    private void checkForResize() {
        boolean z2 = true;
        boolean z3 = false;
        if (this.mLayout == null) {
            z2 = z3;
        } else {
            if (this.mLayoutParams.width == -2) {
                invalidate();
                z3 = true;
            }
            int i2 = this.mLayoutParams.height;
            if (i2 != -2 ? i2 != -1 || this.mDesiredHeightAtMeasure < 0 || getDesiredHeight() == this.mDesiredHeightAtMeasure : getDesiredHeight() == getHeight()) {
                z2 = z3;
            }
        }
        if (z2) {
            requestLayout();
        }
    }

    private boolean compressText(float f2) {
        if (!isHardwareAccelerated() && f2 > 0.0f && this.mLayout != null && getLineCount() == 1 && !this.mUserSetTextScaleX && this.mTextPaint.getTextScaleX() == 1.0f) {
            float lineWidth = ((this.mLayout.getLineWidth(0) + 1.0f) - f2) / f2;
            if (lineWidth > 0.0f && lineWidth <= 0.07f) {
                this.mTextPaint.setTextScaleX((1.0f - lineWidth) - 0.005f);
                post(new Runnable() { // from class: android.widget.TextView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        TextView.this.requestLayout();
                    }
                });
                return true;
            }
        }
        return false;
    }

    private void convertFromViewportToContentCoordinates(Rect rect) {
        int iViewportToContentHorizontalOffset = viewportToContentHorizontalOffset();
        rect.left += iViewportToContentHorizontalOffset;
        rect.right += iViewportToContentHorizontalOffset;
        int iViewportToContentVerticalOffset = viewportToContentVerticalOffset();
        rect.top += iViewportToContentVerticalOffset;
        rect.bottom += iViewportToContentVerticalOffset;
    }

    private void createEditorIfNeeded() {
        if (this.mEditor == null) {
            this.mEditor = new Editor(this);
        }
    }

    private static int desired(Layout layout) {
        int lineCount = layout.getLineCount();
        CharSequence text = layout.getText();
        for (int i2 = 0; i2 < lineCount - 1; i2++) {
            if (text.charAt(layout.getLineEnd(i2) - 1) != '\n') {
                return -1;
            }
        }
        float fMax = 0.0f;
        for (int i3 = 0; i3 < lineCount; i3++) {
            fMax = Math.max(fMax, layout.getLineWidth(i3));
        }
        return (int) FloatMath.ceil(fMax);
    }

    private int doKeyDown(int i2, KeyEvent keyEvent, KeyEvent keyEvent2) {
        boolean z2;
        boolean z3;
        Editor.InputContentType inputContentType;
        OnEditorActionListener onEditorActionListener;
        if (!isEnabled()) {
            return 0;
        }
        if (keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(i2)) {
            this.mPreventDefaultMovement = false;
        }
        if (i2 == 4) {
            Editor editor = this.mEditor;
            if (editor != null && editor.mSelectionActionMode != null) {
                stopSelectionActionMode();
                return -1;
            }
        } else if (i2 != 23) {
            if (i2 != 61) {
                if (i2 == 66 && keyEvent.hasNoModifiers()) {
                    Editor editor2 = this.mEditor;
                    if (editor2 != null && (inputContentType = editor2.mInputContentType) != null && (onEditorActionListener = inputContentType.onEditorActionListener) != null && onEditorActionListener.onEditorAction(this, 0, keyEvent)) {
                        this.mEditor.mInputContentType.enterDown = true;
                        return -1;
                    }
                    if ((keyEvent.getFlags() & 16) != 0 || shouldAdvanceFocusOnEnter()) {
                        return hasOnClickListeners() ? 0 : -1;
                    }
                }
            } else if ((keyEvent.hasNoModifiers() || keyEvent.hasModifiers(1)) && shouldAdvanceFocusOnTab()) {
                return 0;
            }
        } else if (keyEvent.hasNoModifiers() && shouldAdvanceFocusOnEnter()) {
            return 0;
        }
        Editor editor3 = this.mEditor;
        if (editor3 != null && editor3.mKeyListener != null) {
            resetErrorChangedFlag();
            if (keyEvent2 != null) {
                try {
                    beginBatchEdit();
                    boolean zOnKeyOther = this.mEditor.mKeyListener.onKeyOther(this, (Editable) this.mText, keyEvent2);
                    hideErrorIfUnchanged();
                    if (zOnKeyOther) {
                        endBatchEdit();
                        return -1;
                    }
                    endBatchEdit();
                    z3 = false;
                } catch (AbstractMethodError unused) {
                    endBatchEdit();
                    z3 = true;
                } catch (Throwable th) {
                    endBatchEdit();
                    throw th;
                }
            } else {
                z3 = true;
            }
            if (z3) {
                beginBatchEdit();
                boolean zOnKeyDown = this.mEditor.mKeyListener.onKeyDown(this, (Editable) this.mText, i2, keyEvent);
                endBatchEdit();
                hideErrorIfUnchanged();
                if (zOnKeyDown) {
                    return 1;
                }
            }
        }
        MovementMethod movementMethod = this.mMovement;
        if (movementMethod != null && this.mLayout != null) {
            if (keyEvent2 != null) {
                try {
                    if (movementMethod.onKeyOther(this, (Spannable) this.mText, keyEvent2)) {
                        return -1;
                    }
                    z2 = false;
                } catch (AbstractMethodError unused2) {
                    z2 = true;
                }
            } else {
                z2 = true;
            }
            if (z2 && this.mMovement.onKeyDown(this, (Spannable) this.mText, i2, keyEvent)) {
                if (keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(i2)) {
                    return 2;
                }
                this.mPreventDefaultMovement = true;
                return 2;
            }
        }
        return (!this.mPreventDefaultMovement || KeyEvent.isModifierKey(i2)) ? 0 : -1;
    }

    private void fixFocusableAndClickableSettings() {
        Editor editor;
        if (this.mMovement == null && ((editor = this.mEditor) == null || editor.mKeyListener == null)) {
            setFocusable(false);
            setClickable(false);
            setLongClickable(false);
        } else {
            setFocusable(true);
            setClickable(true);
            setLongClickable(true);
        }
    }

    private int getBottomVerticalOffset(boolean z2) {
        int boxHeight;
        int height;
        Layout layout;
        int i2 = this.mGravity & 112;
        Layout layout2 = this.mLayout;
        if (!z2 && this.mText.length() == 0 && (layout = this.mHintLayout) != null) {
            layout2 = layout;
        }
        if (i2 == 80 || (height = layout2.getHeight()) >= (boxHeight = getBoxHeight(layout2))) {
            return 0;
        }
        return i2 == 48 ? boxHeight - height : (boxHeight - height) >> 1;
    }

    private int getBoxHeight(Layout layout) {
        int extendedPaddingTop;
        int extendedPaddingBottom;
        Insets opticalInsets = View.isLayoutModeOptical(this.mParent) ? getOpticalInsets() : Insets.NONE;
        if (layout == this.mHintLayout) {
            extendedPaddingTop = getCompoundPaddingTop();
            extendedPaddingBottom = getCompoundPaddingBottom();
        } else {
            extendedPaddingTop = getExtendedPaddingTop();
            extendedPaddingBottom = getExtendedPaddingBottom();
        }
        return (getMeasuredHeight() - (extendedPaddingTop + extendedPaddingBottom)) + opticalInsets.top + opticalInsets.bottom;
    }

    private int getDesiredHeight() {
        return Math.max(getDesiredHeight(this.mLayout, true), getDesiredHeight(this.mHintLayout, this.mEllipsize != null));
    }

    private void getInterestingRect(Rect rect, int i2) {
        convertFromViewportToContentCoordinates(rect);
        if (i2 == 0) {
            rect.top -= getExtendedPaddingTop();
        }
        if (i2 == this.mLayout.getLineCount() - 1) {
            rect.bottom += getExtendedPaddingBottom();
        }
    }

    private Layout.Alignment getLayoutAlignment() {
        switch (getTextAlignment()) {
            case 1:
                int i2 = this.mGravity & 8388615;
                if (i2 == 1) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i2 == 3) {
                    return Layout.Alignment.ALIGN_LEFT;
                }
                if (i2 == 5) {
                    return Layout.Alignment.ALIGN_RIGHT;
                }
                if (i2 != 8388611) {
                    return i2 != 8388613 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                }
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
                return Layout.Alignment.ALIGN_NORMAL;
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 4:
                return Layout.Alignment.ALIGN_CENTER;
            case 5:
                return getLayoutDirection() == 1 ? Layout.Alignment.ALIGN_RIGHT : Layout.Alignment.ALIGN_LEFT;
            case 6:
                return getLayoutDirection() == 1 ? Layout.Alignment.ALIGN_LEFT : Layout.Alignment.ALIGN_RIGHT;
            default:
                return Layout.Alignment.ALIGN_NORMAL;
        }
    }

    private int getOffsetAtCoordinate(int i2, float f2) {
        return getLayout().getOffsetForHorizontal(i2, convertToLocalHorizontalCoordinate(f2));
    }

    public static int getTextColor(Context context, TypedArray typedArray, int i2) {
        ColorStateList textColors = getTextColors(context, typedArray);
        return textColors == null ? i2 : textColors.getDefaultColor();
    }

    private Locale getTextServicesLocale(boolean z2) {
        updateTextServicesLocaleAsync();
        return (this.mCurrentSpellCheckerLocaleCache != null || z2) ? this.mCurrentSpellCheckerLocaleCache : Locale.getDefault();
    }

    private Path getUpdatedHighlightPath() {
        Paint paint = this.mHighlightPaint;
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (this.mMovement != null && ((isFocused() || isPressed()) && selectionStart >= 0)) {
            if (selectionStart != selectionEnd) {
                if (this.mHighlightPathBogus) {
                    if (this.mHighlightPath == null) {
                        this.mHighlightPath = new Path();
                    }
                    this.mHighlightPath.reset();
                    this.mLayout.getSelectionPath(selectionStart, selectionEnd, this.mHighlightPath);
                    this.mHighlightPathBogus = false;
                }
                paint.setColor(this.mHighlightColor);
                paint.setStyle(Paint.Style.FILL);
                return this.mHighlightPath;
            }
            Editor editor = this.mEditor;
            if (editor != null && editor.isCursorVisible() && (SystemClock.uptimeMillis() - this.mEditor.mShowCursor) % 1000 < 500) {
                if (this.mHighlightPathBogus) {
                    if (this.mHighlightPath == null) {
                        this.mHighlightPath = new Path();
                    }
                    this.mHighlightPath.reset();
                    this.mLayout.getCursorPath(selectionStart, this.mHighlightPath, this.mText);
                    this.mEditor.updateCursorsPositions();
                    this.mHighlightPathBogus = false;
                }
                paint.setColor(this.mCurTextColor);
                paint.setStyle(Paint.Style.STROKE);
                return this.mHighlightPath;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasPasswordTransformationMethod() {
        return this.mTransformation instanceof PasswordTransformationMethod;
    }

    private static boolean isMultilineInputType(int i2) {
        return (i2 & WifiStateMachine.CMD_STATIC_IP_SUCCESS) == 131073;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPasswordInputType(int i2) {
        int i3 = i2 & FileObserver.ALL_EVENTS;
        return i3 == 129 || i3 == 225 || i3 == 18;
    }

    private boolean isShowingHint() {
        return TextUtils.isEmpty(this.mText) && !TextUtils.isEmpty(this.mHint);
    }

    private static boolean isVisiblePasswordInputType(int i2) {
        return (i2 & FileObserver.ALL_EVENTS) == 145;
    }

    private Layout makeSingleLayout(int i2, BoringLayout.Metrics metrics, int i3, Layout.Alignment alignment, boolean z2, TextUtils.TruncateAt truncateAt, boolean z3) {
        BoringLayout.Metrics metrics2;
        StaticLayout staticLayout;
        BoringLayout boringLayout;
        BoringLayout boringLayout2;
        if (this.mText instanceof Spannable) {
            return new DynamicLayout(this.mText, this.mTransformed, this.mTextPaint, i2, alignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad, getKeyListener() == null ? truncateAt : null, i3);
        }
        if (metrics == UNKNOWN_BORING) {
            BoringLayout.Metrics metricsIsBoring = BoringLayout.isBoring(this.mTransformed, this.mTextPaint, this.mTextDir, this.mBoring);
            if (metricsIsBoring != null) {
                this.mBoring = metricsIsBoring;
            }
            metrics2 = metricsIsBoring;
        } else {
            metrics2 = metrics;
        }
        if (metrics2 != null) {
            int i4 = metrics2.width;
            if (i4 <= i2 && (truncateAt == null || i4 <= i3)) {
                BoringLayout boringLayoutMake = (!z3 || (boringLayout2 = this.mSavedLayout) == null) ? BoringLayout.make(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad) : boringLayout2.replaceOrMake(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad);
                if (!z3) {
                    return boringLayoutMake;
                }
                this.mSavedLayout = boringLayoutMake;
                return boringLayoutMake;
            }
            if (z2 && i4 <= i2) {
                return (!z3 || (boringLayout = this.mSavedLayout) == null) ? BoringLayout.make(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad, truncateAt, i3) : boringLayout.replaceOrMake(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad, truncateAt, i3);
            }
            if (!z2) {
                return new StaticLayout(this.mTransformed, this.mTextPaint, i2, alignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad);
            }
            CharSequence charSequence = this.mTransformed;
            staticLayout = new StaticLayout(charSequence, 0, charSequence.length(), this.mTextPaint, i2, alignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad, truncateAt, i3, this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE);
        } else {
            if (!z2) {
                return new StaticLayout(this.mTransformed, this.mTextPaint, i2, alignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad);
            }
            CharSequence charSequence2 = this.mTransformed;
            staticLayout = new StaticLayout(charSequence2, 0, charSequence2.length(), this.mTextPaint, i2, alignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad, truncateAt, i3, this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE);
        }
        return staticLayout;
    }

    private void nullLayouts() {
        Layout layout = this.mLayout;
        if ((layout instanceof BoringLayout) && this.mSavedLayout == null) {
            this.mSavedLayout = (BoringLayout) layout;
        }
        Layout layout2 = this.mHintLayout;
        if ((layout2 instanceof BoringLayout) && this.mSavedHintLayout == null) {
            this.mSavedHintLayout = (BoringLayout) layout2;
        }
        this.mHintLayout = null;
        this.mLayout = null;
        this.mSavedMarqueeModeLayout = null;
        this.mHintBoring = null;
        this.mBoring = null;
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.prepareCursorControllers();
        }
    }

    private void paste(int i2, int i3) {
        ClipData primaryClip = ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).getPrimaryClip();
        if (primaryClip != null) {
            boolean z2 = false;
            for (int i4 = 0; i4 < primaryClip.getItemCount(); i4++) {
                CharSequence charSequenceCoerceToStyledText = primaryClip.getItemAt(i4).coerceToStyledText(getContext());
                if (charSequenceCoerceToStyledText != null) {
                    if (z2) {
                        ((Editable) this.mText).insert(getSelectionEnd(), "\n");
                        ((Editable) this.mText).insert(getSelectionEnd(), charSequenceCoerceToStyledText);
                    } else {
                        long jPrepareSpacesAroundPaste = prepareSpacesAroundPaste(i2, i3, charSequenceCoerceToStyledText);
                        int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(jPrepareSpacesAroundPaste);
                        int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(jPrepareSpacesAroundPaste);
                        Selection.setSelection((Spannable) this.mText, iUnpackRangeEndFromLong);
                        ((Editable) this.mText).replace(iUnpackRangeStartFromLong, iUnpackRangeEndFromLong, charSequenceCoerceToStyledText);
                        i3 = iUnpackRangeEndFromLong;
                        i2 = iUnpackRangeStartFromLong;
                        z2 = true;
                    }
                }
            }
            stopSelectionActionMode();
            LAST_CUT_OR_COPY_TIME = 0L;
        }
    }

    private void registerForPreDraw() {
        if (this.mPreDrawRegistered) {
            return;
        }
        getViewTreeObserver().addOnPreDrawListener(this);
        this.mPreDrawRegistered = true;
    }

    private <T> void removeIntersectingNonAdjacentSpans(int i2, int i3, Class<T> cls) {
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Editable) {
            Editable editable = (Editable) charSequence;
            Object[] spans = editable.getSpans(i2, i3, cls);
            int length = spans.length;
            for (int i4 = 0; i4 < length; i4++) {
                int spanStart = editable.getSpanStart(spans[i4]);
                if (editable.getSpanEnd(spans[i4]) == i2 || spanStart == i3) {
                    return;
                }
                editable.removeSpan(spans[i4]);
            }
        }
    }

    public static void removeParcelableSpans(Spannable spannable, int i2, int i3) {
        Object[] spans = spannable.getSpans(i2, i3, ParcelableSpan.class);
        int length = spans.length;
        while (length > 0) {
            length--;
            spannable.removeSpan(spans[length]);
        }
    }

    private void restartMarqueeIfNeeded() {
        if (this.mRestartMarquee && this.mEllipsize == TextUtils.TruncateAt.MARQUEE) {
            this.mRestartMarquee = false;
            startMarquee();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBeforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        ArrayList<TextWatcher> arrayList = this.mListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                arrayList.get(i5).beforeTextChanged(charSequence, i2, i3, i4);
            }
        }
        int i6 = i3 + i2;
        removeIntersectingNonAdjacentSpans(i2, i6, SpellCheckSpan.class);
        removeIntersectingNonAdjacentSpans(i2, i6, SuggestionSpan.class);
    }

    private void setInputTypeSingleLine(boolean z2) {
        Editor editor = this.mEditor;
        if (editor != null) {
            int i2 = editor.mInputType;
            if ((i2 & 15) == 1) {
                if (z2) {
                    editor.mInputType = (-131073) & i2;
                } else {
                    editor.mInputType = 131072 | i2;
                }
            }
        }
    }

    private void setKeyListenerOnly(KeyListener keyListener) {
        if (this.mEditor == null && keyListener == null) {
            return;
        }
        createEditorIfNeeded();
        Editor editor = this.mEditor;
        if (editor.mKeyListener != keyListener) {
            editor.mKeyListener = keyListener;
            if (keyListener != null) {
                CharSequence charSequence = this.mText;
                if (!(charSequence instanceof Editable)) {
                    setText(charSequence);
                }
            }
            setFilters((Editable) this.mText, this.mFilters);
        }
    }

    private void setPrimaryClip(ClipData clipData) {
        ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).setPrimaryClip(clipData);
        LAST_CUT_OR_COPY_TIME = SystemClock.uptimeMillis();
    }

    private void setRawTextSize(float f2) {
        if (f2 != this.mTextPaint.getTextSize()) {
            this.mTextPaint.setTextSize(f2);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    private void setRelativeDrawablesIfNeeded(Drawable drawable, Drawable drawable2) {
        if ((drawable == null && drawable2 == null) ? false : true) {
            Drawables drawables = this.mDrawables;
            if (drawables == null) {
                drawables = new Drawables(getContext());
                this.mDrawables = drawables;
            }
            this.mDrawables.mOverride = true;
            Rect rect = drawables.mCompoundRect;
            int[] drawableState = getDrawableState();
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                drawable.setState(drawableState);
                drawable.copyBounds(rect);
                drawable.setCallback(this);
                drawables.mDrawableStart = drawable;
                drawables.mDrawableSizeStart = rect.width();
                drawables.mDrawableHeightStart = rect.height();
            } else {
                drawables.mDrawableHeightStart = 0;
                drawables.mDrawableSizeStart = 0;
            }
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                drawable2.setState(drawableState);
                drawable2.copyBounds(rect);
                drawable2.setCallback(this);
                drawables.mDrawableEnd = drawable2;
                drawables.mDrawableSizeEnd = rect.width();
                drawables.mDrawableHeightEnd = rect.height();
            } else {
                drawables.mDrawableHeightEnd = 0;
                drawables.mDrawableSizeEnd = 0;
            }
            resetResolvedDrawables();
            resolveDrawables();
        }
    }

    private void setTypefaceFromAttrs(String str, int i2, int i3) {
        Typeface typefaceCreate;
        if (str != null) {
            typefaceCreate = Typeface.create(str, i3);
            if (typefaceCreate != null) {
                setTypeface(typefaceCreate);
                return;
            }
        } else {
            typefaceCreate = null;
        }
        if (i2 == 1) {
            typefaceCreate = Typeface.SANS_SERIF;
        } else if (i2 == 2) {
            typefaceCreate = Typeface.SERIF;
        } else if (i2 == 3) {
            typefaceCreate = Typeface.MONOSPACE;
        }
        setTypeface(typefaceCreate, i3);
    }

    private boolean shouldAdvanceFocusOnEnter() {
        int i2;
        if (getKeyListener() == null) {
            return false;
        }
        if (this.mSingleLine) {
            return true;
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            int i3 = editor.mInputType;
            if ((i3 & 15) == 1 && ((i2 = i3 & InputType.TYPE_MASK_VARIATION) == 32 || i2 == 48)) {
                return true;
            }
        }
        return false;
    }

    private boolean shouldAdvanceFocusOnTab() {
        Editor editor;
        int i2;
        if (getKeyListener() != null && !this.mSingleLine && (editor = this.mEditor) != null) {
            int i3 = editor.mInputType;
            if ((i3 & 15) == 1 && ((i2 = i3 & InputType.TYPE_MASK_VARIATION) == 262144 || i2 == 131072)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldSpeakPasswordsForAccessibility() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), Settings.Secure.ACCESSIBILITY_SPEAK_PASSWORD, 0) == 1;
    }

    private void startMarquee() {
        if (getKeyListener() == null && !compressText((getWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight())) {
            Marquee marquee = this.mMarquee;
            if (marquee == null || marquee.isStopped()) {
                if ((isFocused() || isSelected()) && getLineCount() == 1 && canMarquee()) {
                    if (this.mMarqueeFadeMode == 1) {
                        this.mMarqueeFadeMode = 2;
                        Layout layout = this.mLayout;
                        this.mLayout = this.mSavedMarqueeModeLayout;
                        this.mSavedMarqueeModeLayout = layout;
                        setHorizontalFadingEdgeEnabled(true);
                        requestLayout();
                        invalidate();
                    }
                    if (this.mMarquee == null) {
                        this.mMarquee = new Marquee(this);
                    }
                    this.mMarquee.start(this.mMarqueeRepeatLimit);
                }
            }
        }
    }

    private void startStopMarquee(boolean z2) {
        if (this.mEllipsize == TextUtils.TruncateAt.MARQUEE) {
            if (z2) {
                startMarquee();
            } else {
                stopMarquee();
            }
        }
    }

    private void stopMarquee() {
        Marquee marquee = this.mMarquee;
        if (marquee != null && !marquee.isStopped()) {
            this.mMarquee.stop();
        }
        if (this.mMarqueeFadeMode == 2) {
            this.mMarqueeFadeMode = 1;
            Layout layout = this.mSavedMarqueeModeLayout;
            this.mSavedMarqueeModeLayout = this.mLayout;
            this.mLayout = layout;
            setHorizontalFadingEdgeEnabled(false);
            requestLayout();
            invalidate();
        }
    }

    private void updateTextColors() {
        boolean z2;
        int colorForState;
        int colorForState2 = this.mTextColor.getColorForState(getDrawableState(), 0);
        boolean z3 = true;
        if (colorForState2 != this.mCurTextColor) {
            this.mCurTextColor = colorForState2;
            z2 = true;
        } else {
            z2 = false;
        }
        ColorStateList colorStateList = this.mLinkTextColor;
        if (colorStateList != null) {
            int colorForState3 = colorStateList.getColorForState(getDrawableState(), 0);
            TextPaint textPaint = this.mTextPaint;
            if (colorForState3 != textPaint.linkColor) {
                textPaint.linkColor = colorForState3;
                z2 = true;
            }
        }
        ColorStateList colorStateList2 = this.mHintTextColor;
        if (colorStateList2 == null || (colorForState = colorStateList2.getColorForState(getDrawableState(), 0)) == this.mCurHintTextColor || this.mText.length() != 0) {
            z3 = z2;
        } else {
            this.mCurHintTextColor = colorForState;
        }
        if (z3) {
            Editor editor = this.mEditor;
            if (editor != null) {
                editor.invalidateTextDisplayList();
            }
            invalidate();
        }
    }

    private void updateTextServicesLocaleAsync() {
        AsyncTask.execute(new Runnable() { // from class: android.widget.TextView.3
            @Override // java.lang.Runnable
            public void run() {
                TextView.this.updateTextServicesLocaleLocked();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTextServicesLocaleLocked() {
        SpellCheckerSubtype currentSpellCheckerSubtype = ((TextServicesManager) this.mContext.getSystemService(Context.TEXT_SERVICES_MANAGER_SERVICE)).getCurrentSpellCheckerSubtype(true);
        this.mCurrentSpellCheckerLocaleCache = currentSpellCheckerSubtype != null ? SpellCheckerSubtype.constructLocaleFromString(currentSpellCheckerSubtype.getLocale()) : null;
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(textWatcher);
    }

    public final void append(CharSequence charSequence) {
        append(charSequence, 0, charSequence.length());
    }

    public void beginBatchEdit() {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.beginBatchEdit();
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x00f1  */
    public boolean bringPointIntoView(int i2) {
        int paragraphDirection;
        int i3;
        boolean z2;
        if (isLayoutRequested()) {
            this.mDeferScroll = i2;
            return false;
        }
        Layout layout = isShowingHint() ? this.mHintLayout : this.mLayout;
        if (layout == null) {
            return false;
        }
        int lineForOffset = layout.getLineForOffset(i2);
        int i4 = AnonymousClass4.$SwitchMap$android$text$Layout$Alignment[layout.getParagraphAlignment(lineForOffset).ordinal()];
        if (i4 == 1) {
            paragraphDirection = 1;
        } else if (i4 == 2) {
            paragraphDirection = -1;
        } else if (i4 != 3) {
            paragraphDirection = i4 != 4 ? 0 : -layout.getParagraphDirection(lineForOffset);
        } else {
            paragraphDirection = layout.getParagraphDirection(lineForOffset);
        }
        int primaryHorizontal = (int) layout.getPrimaryHorizontal(i2, paragraphDirection > 0);
        int lineTop = layout.getLineTop(lineForOffset);
        int lineTop2 = layout.getLineTop(lineForOffset + 1);
        int iFloor = (int) FloatMath.floor(layout.getLineLeft(lineForOffset));
        int iCeil = (int) FloatMath.ceil(layout.getLineRight(lineForOffset));
        int height = layout.getHeight();
        int compoundPaddingLeft = ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        int extendedPaddingTop = ((this.mBottom - this.mTop) - getExtendedPaddingTop()) - getExtendedPaddingBottom();
        if (!this.mHorizontallyScrolling && iCeil - iFloor > compoundPaddingLeft && iCeil > primaryHorizontal) {
            iCeil = Math.max(primaryHorizontal, iFloor + compoundPaddingLeft);
        }
        int i5 = (lineTop2 - lineTop) / 2;
        int i6 = extendedPaddingTop / 4;
        if (i5 <= i6) {
            i6 = i5;
        }
        int i7 = compoundPaddingLeft / 4;
        if (i5 > i7) {
            i5 = i7;
        }
        int i8 = this.mScrollX;
        int i9 = this.mScrollY;
        int i10 = lineTop - i9 < i6 ? lineTop - i6 : i9;
        int i11 = extendedPaddingTop - i6;
        if (lineTop2 - i10 > i11) {
            i10 = lineTop2 - i11;
        }
        if (height - i10 < extendedPaddingTop) {
            i10 = height - extendedPaddingTop;
        }
        if (0 - i10 > 0) {
            i10 = 0;
        }
        if (paragraphDirection != 0) {
            i3 = primaryHorizontal - i8 < i5 ? primaryHorizontal - i5 : i8;
            int i12 = compoundPaddingLeft - i5;
            if (primaryHorizontal - i3 > i12) {
                i3 = primaryHorizontal - i12;
            }
        } else {
            i3 = i8;
        }
        if (paragraphDirection < 0) {
            if (iFloor - i3 <= 0) {
                iFloor = i3;
            }
            if (iCeil - iFloor < compoundPaddingLeft) {
                iFloor = iCeil - compoundPaddingLeft;
            }
        } else if (paragraphDirection > 0) {
            if (iCeil - i3 < compoundPaddingLeft) {
                i3 = iCeil - compoundPaddingLeft;
            }
            if (iFloor - i3 <= 0) {
                iFloor = i3;
            }
        } else {
            int i13 = iCeil - iFloor;
            if (i13 <= compoundPaddingLeft) {
                iFloor -= (compoundPaddingLeft - i13) / 2;
            } else if (primaryHorizontal > iCeil - i5) {
                iFloor = iCeil - compoundPaddingLeft;
            } else if (primaryHorizontal >= iFloor + i5 && iFloor <= i3) {
                if (iCeil < i3 + compoundPaddingLeft) {
                    iFloor = iCeil - compoundPaddingLeft;
                } else {
                    if (primaryHorizontal - i3 < i5) {
                        i3 = primaryHorizontal - i5;
                    }
                    iFloor = i3;
                    int i14 = compoundPaddingLeft - i5;
                    if (primaryHorizontal - iFloor > i14) {
                        iFloor = primaryHorizontal - i14;
                    }
                }
            }
        }
        if (iFloor == i8 && i10 == i9) {
            z2 = false;
        } else {
            if (this.mScroller == null) {
                scrollTo(iFloor, i10);
            } else {
                long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll;
                int i15 = this.mScrollX;
                int i16 = iFloor - i15;
                int i17 = this.mScrollY;
                int i18 = i10 - i17;
                if (jCurrentAnimationTimeMillis > 250) {
                    this.mScroller.startScroll(i15, i17, i16, i18);
                    awakenScrollBars(this.mScroller.getDuration());
                    invalidate();
                } else {
                    if (!this.mScroller.isFinished()) {
                        this.mScroller.abortAnimation();
                    }
                    scrollBy(i16, i18);
                }
                this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
            }
            z2 = true;
        }
        if (isFocused()) {
            if (this.mTempRect == null) {
                this.mTempRect = new Rect();
            }
            this.mTempRect.set(primaryHorizontal - 2, lineTop, primaryHorizontal + 2, lineTop2);
            getInterestingRect(this.mTempRect, lineForOffset);
            this.mTempRect.offset(this.mScrollX, this.mScrollY);
            if (requestRectangleOnScreen(this.mTempRect)) {
                return true;
            }
        }
        return z2;
    }

    public boolean canCopy() {
        return !hasPasswordTransformationMethod() && this.mText.length() > 0 && hasSelection();
    }

    public boolean canCut() {
        Editor editor;
        return !hasPasswordTransformationMethod() && this.mText.length() > 0 && hasSelection() && (this.mText instanceof Editable) && (editor = this.mEditor) != null && editor.mKeyListener != null;
    }

    public boolean canPaste() {
        Editor editor;
        return (this.mText instanceof Editable) && (editor = this.mEditor) != null && editor.mKeyListener != null && getSelectionStart() >= 0 && getSelectionEnd() >= 0 && ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).hasPrimaryClip();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.mIgnoreActionUpEvent = true;
        }
    }

    public void clearComposingText() {
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Spannable) {
            BaseInputConnection.removeComposingSpans((Spannable) charSequence);
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        Layout layout = this.mLayout;
        if (layout != null) {
            return (this.mSingleLine && (this.mGravity & 7) == 3) ? (int) layout.getLineWidth(0) : layout.getWidth();
        }
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        Scroller scroller = this.mScroller;
        if (scroller == null || !scroller.computeScrollOffset()) {
            return;
        }
        this.mScrollX = this.mScroller.getCurrX();
        this.mScrollY = this.mScroller.getCurrY();
        invalidateParentCaches();
        postInvalidate();
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return (getHeight() - getCompoundPaddingTop()) - getCompoundPaddingBottom();
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        Layout layout = this.mLayout;
        return layout != null ? layout.getHeight() : super.computeVerticalScrollRange();
    }

    public float convertToLocalHorizontalCoordinate(float f2) {
        return Math.min((getWidth() - getTotalPaddingRight()) - 1, Math.max(0.0f, f2 - getTotalPaddingLeft())) + getScrollX();
    }

    @Override // android.view.View
    public void debug(int i2) {
        String str;
        super.debug(i2);
        String str2 = View.debugIndent(i2) + "frame={" + this.mLeft + ", " + this.mTop + ", " + this.mRight + ", " + this.mBottom + "} scroll={" + this.mScrollX + ", " + this.mScrollY + "} ";
        if (this.mText != null) {
            str = str2 + "mText=\"" + ((Object) this.mText) + "\" ";
            if (this.mLayout != null) {
                str = str + "mLayout width=" + this.mLayout.getWidth() + " height=" + this.mLayout.getHeight();
            }
        } else {
            str = str2 + "mText=NULL";
        }
        Log.d(View.VIEW_LOG_TAG, str);
    }

    public void deleteText_internal(int i2, int i3) {
        ((Editable) this.mText).delete(i2, i3);
    }

    public boolean didTouchFocusSelect() {
        Editor editor = this.mEditor;
        return editor != null && editor.mTouchFocusSelected;
    }

    @Override // android.view.View
    public void dispatchFinishTemporaryDetach() {
        this.mDispatchTemporaryDetach = true;
        super.dispatchFinishTemporaryDetach();
        this.mDispatchTemporaryDetach = false;
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        super.drawableStateChanged();
        ColorStateList colorStateList3 = this.mTextColor;
        if ((colorStateList3 != null && colorStateList3.isStateful()) || (((colorStateList = this.mHintTextColor) != null && colorStateList.isStateful()) || ((colorStateList2 = this.mLinkTextColor) != null && colorStateList2.isStateful()))) {
            updateTextColors();
        }
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            int[] drawableState = getDrawableState();
            Drawable drawable = drawables.mDrawableTop;
            if (drawable != null && drawable.isStateful()) {
                drawables.mDrawableTop.setState(drawableState);
            }
            Drawable drawable2 = drawables.mDrawableBottom;
            if (drawable2 != null && drawable2.isStateful()) {
                drawables.mDrawableBottom.setState(drawableState);
            }
            Drawable drawable3 = drawables.mDrawableLeft;
            if (drawable3 != null && drawable3.isStateful()) {
                drawables.mDrawableLeft.setState(drawableState);
            }
            Drawable drawable4 = drawables.mDrawableRight;
            if (drawable4 != null && drawable4.isStateful()) {
                drawables.mDrawableRight.setState(drawableState);
            }
            Drawable drawable5 = drawables.mDrawableStart;
            if (drawable5 != null && drawable5.isStateful()) {
                drawables.mDrawableStart.setState(drawableState);
            }
            Drawable drawable6 = drawables.mDrawableEnd;
            if (drawable6 == null || !drawable6.isStateful()) {
                return;
            }
            drawables.mDrawableEnd.setState(drawableState);
        }
    }

    public void endBatchEdit() {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.endBatchEdit();
        }
    }

    public boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        createEditorIfNeeded();
        return this.mEditor.extractText(extractedTextRequest, extractedText);
    }

    @Override // android.view.View
    public void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i2) {
        super.findViewsWithText(arrayList, charSequence, i2);
        if (arrayList.contains(this) || (i2 & 1) == 0 || TextUtils.isEmpty(charSequence) || TextUtils.isEmpty(this.mText)) {
            return;
        }
        if (this.mText.toString().toLowerCase().contains(charSequence.toString().toLowerCase())) {
            arrayList.add(this);
        }
    }

    @Override // android.view.View
    public int getAccessibilitySelectionEnd() {
        return getSelectionEnd();
    }

    @Override // android.view.View
    public int getAccessibilitySelectionStart() {
        return getSelectionStart();
    }

    public final int getAutoLinkMask() {
        return this.mAutoLinkMask;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.mLayout == null) {
            return super.getBaseline();
        }
        int verticalOffset = (this.mGravity & 112) != 48 ? getVerticalOffset(true) : 0;
        if (View.isLayoutModeOptical(this.mParent)) {
            verticalOffset -= getOpticalInsets().top;
        }
        return getExtendedPaddingTop() + verticalOffset + this.mLayout.getLineBaseline(0);
    }

    @Override // android.view.View
    public int getBottomPaddingOffset() {
        return (int) Math.max(0.0f, this.mShadowDy + this.mShadowRadius);
    }

    public int getCompoundDrawablePadding() {
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            return drawables.mDrawablePadding;
        }
        return 0;
    }

    public Drawable[] getCompoundDrawables() {
        Drawables drawables = this.mDrawables;
        return drawables != null ? new Drawable[]{drawables.mDrawableLeft, drawables.mDrawableTop, drawables.mDrawableRight, drawables.mDrawableBottom} : new Drawable[]{null, null, null, null};
    }

    public Drawable[] getCompoundDrawablesRelative() {
        Drawables drawables = this.mDrawables;
        return drawables != null ? new Drawable[]{drawables.mDrawableStart, drawables.mDrawableTop, drawables.mDrawableEnd, drawables.mDrawableBottom} : new Drawable[]{null, null, null, null};
    }

    public int getCompoundPaddingBottom() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mDrawableBottom == null) ? this.mPaddingBottom : this.mPaddingBottom + drawables.mDrawablePadding + drawables.mDrawableSizeBottom;
    }

    public int getCompoundPaddingEnd() {
        resolveDrawables();
        return getLayoutDirection() != 1 ? getCompoundPaddingRight() : getCompoundPaddingLeft();
    }

    public int getCompoundPaddingLeft() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mDrawableLeft == null) ? this.mPaddingLeft : this.mPaddingLeft + drawables.mDrawablePadding + drawables.mDrawableSizeLeft;
    }

    public int getCompoundPaddingRight() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mDrawableRight == null) ? this.mPaddingRight : this.mPaddingRight + drawables.mDrawablePadding + drawables.mDrawableSizeRight;
    }

    public int getCompoundPaddingStart() {
        resolveDrawables();
        return getLayoutDirection() != 1 ? getCompoundPaddingLeft() : getCompoundPaddingRight();
    }

    public int getCompoundPaddingTop() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mDrawableTop == null) ? this.mPaddingTop : this.mPaddingTop + drawables.mDrawablePadding + drawables.mDrawableSizeTop;
    }

    public final int getCurrentHintTextColor() {
        return this.mHintTextColor != null ? this.mCurHintTextColor : this.mCurTextColor;
    }

    public final int getCurrentTextColor() {
        return this.mCurTextColor;
    }

    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return null;
        }
        return editor.mCustomSelectionActionModeCallback;
    }

    public boolean getDefaultEditable() {
        return false;
    }

    public MovementMethod getDefaultMovementMethod() {
        return null;
    }

    public Editable getEditableText() {
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Editable) {
            return (Editable) charSequence;
        }
        return null;
    }

    @ViewDebug.ExportedProperty
    public TextUtils.TruncateAt getEllipsize() {
        return this.mEllipsize;
    }

    public CharSequence getError() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return null;
        }
        return editor.mError;
    }

    public int getExtendedPaddingBottom() {
        if (this.mMaxMode != 1) {
            return getCompoundPaddingBottom();
        }
        if (this.mLayout.getLineCount() <= this.mMaximum) {
            return getCompoundPaddingBottom();
        }
        int compoundPaddingTop = getCompoundPaddingTop();
        int compoundPaddingBottom = getCompoundPaddingBottom();
        int height = (getHeight() - compoundPaddingTop) - compoundPaddingBottom;
        int lineTop = this.mLayout.getLineTop(this.mMaximum);
        if (lineTop >= height) {
            return compoundPaddingBottom;
        }
        int i2 = this.mGravity & 112;
        if (i2 == 48) {
            return (compoundPaddingBottom + height) - lineTop;
        }
        return i2 == 80 ? compoundPaddingBottom : compoundPaddingBottom + ((height - lineTop) / 2);
    }

    public int getExtendedPaddingTop() {
        int i2;
        if (this.mMaxMode != 1) {
            return getCompoundPaddingTop();
        }
        if (this.mLayout.getLineCount() <= this.mMaximum) {
            return getCompoundPaddingTop();
        }
        int compoundPaddingTop = getCompoundPaddingTop();
        int height = (getHeight() - compoundPaddingTop) - getCompoundPaddingBottom();
        int lineTop = this.mLayout.getLineTop(this.mMaximum);
        if (lineTop < height && (i2 = this.mGravity & 112) != 48) {
            return i2 == 80 ? (compoundPaddingTop + height) - lineTop : compoundPaddingTop + ((height - lineTop) / 2);
        }
        return compoundPaddingTop;
    }

    @Override // android.view.View
    public int getFadeHeight(boolean z2) {
        Layout layout = this.mLayout;
        if (layout != null) {
            return layout.getHeight();
        }
        return 0;
    }

    @Override // android.view.View
    public int getFadeTop(boolean z2) {
        if (this.mLayout == null) {
            return 0;
        }
        int verticalOffset = (this.mGravity & 112) != 48 ? getVerticalOffset(true) : 0;
        if (z2) {
            verticalOffset += getTopPaddingOffset();
        }
        return getExtendedPaddingTop() + verticalOffset;
    }

    public InputFilter[] getFilters() {
        return this.mFilters;
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.mLayout == null) {
            super.getFocusedRect(rect);
            return;
        }
        int selectionEnd = getSelectionEnd();
        if (selectionEnd < 0) {
            super.getFocusedRect(rect);
            return;
        }
        int selectionStart = getSelectionStart();
        if (selectionStart < 0 || selectionStart >= selectionEnd) {
            int lineForOffset = this.mLayout.getLineForOffset(selectionEnd);
            rect.top = this.mLayout.getLineTop(lineForOffset);
            rect.bottom = this.mLayout.getLineBottom(lineForOffset);
            int primaryHorizontal = ((int) this.mLayout.getPrimaryHorizontal(selectionEnd)) - 2;
            rect.left = primaryHorizontal;
            rect.right = primaryHorizontal + 4;
        } else {
            int lineForOffset2 = this.mLayout.getLineForOffset(selectionStart);
            int lineForOffset3 = this.mLayout.getLineForOffset(selectionEnd);
            rect.top = this.mLayout.getLineTop(lineForOffset2);
            rect.bottom = this.mLayout.getLineBottom(lineForOffset3);
            if (lineForOffset2 == lineForOffset3) {
                rect.left = (int) this.mLayout.getPrimaryHorizontal(selectionStart);
                rect.right = (int) this.mLayout.getPrimaryHorizontal(selectionEnd);
            } else {
                if (this.mHighlightPathBogus) {
                    if (this.mHighlightPath == null) {
                        this.mHighlightPath = new Path();
                    }
                    this.mHighlightPath.reset();
                    this.mLayout.getSelectionPath(selectionStart, selectionEnd, this.mHighlightPath);
                    this.mHighlightPathBogus = false;
                }
                RectF rectF = TEMP_RECTF;
                synchronized (rectF) {
                    this.mHighlightPath.computeBounds(rectF, true);
                    rect.left = ((int) rectF.left) - 1;
                    rect.right = ((int) rectF.right) + 1;
                }
            }
        }
        int compoundPaddingLeft = getCompoundPaddingLeft();
        int extendedPaddingTop = getExtendedPaddingTop();
        if ((this.mGravity & 112) != 48) {
            extendedPaddingTop += getVerticalOffset(false);
        }
        rect.offset(compoundPaddingLeft, extendedPaddingTop);
        rect.bottom += getExtendedPaddingBottom();
    }

    public boolean getFreezesText() {
        return this.mFreezesText;
    }

    public int getGravity() {
        return this.mGravity;
    }

    public int getHighlightColor() {
        return this.mHighlightColor;
    }

    @ViewDebug.CapturedViewProperty
    public CharSequence getHint() {
        return this.mHint;
    }

    public final Layout getHintLayout() {
        return this.mHintLayout;
    }

    public final ColorStateList getHintTextColors() {
        return this.mHintTextColor;
    }

    public int getHorizontalOffsetForDrawables() {
        return 0;
    }

    public boolean getHorizontallyScrolling() {
        return this.mHorizontallyScrolling;
    }

    public int getImeActionId() {
        Editor.InputContentType inputContentType;
        Editor editor = this.mEditor;
        if (editor == null || (inputContentType = editor.mInputContentType) == null) {
            return 0;
        }
        return inputContentType.imeActionId;
    }

    public CharSequence getImeActionLabel() {
        Editor.InputContentType inputContentType;
        Editor editor = this.mEditor;
        if (editor == null || (inputContentType = editor.mInputContentType) == null) {
            return null;
        }
        return inputContentType.imeActionLabel;
    }

    public int getImeOptions() {
        Editor.InputContentType inputContentType;
        Editor editor = this.mEditor;
        if (editor == null || (inputContentType = editor.mInputContentType) == null) {
            return 0;
        }
        return inputContentType.imeOptions;
    }

    public boolean getIncludeFontPadding() {
        return this.mIncludePad;
    }

    public Bundle getInputExtras(boolean z2) {
        if (this.mEditor == null && !z2) {
            return null;
        }
        createEditorIfNeeded();
        Editor editor = this.mEditor;
        if (editor.mInputContentType == null) {
            if (!z2) {
                return null;
            }
            editor.createInputContentTypeIfNeeded();
        }
        Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
        if (inputContentType.extras == null) {
            if (!z2) {
                return null;
            }
            inputContentType.extras = new Bundle();
        }
        return this.mEditor.mInputContentType.extras;
    }

    public int getInputType() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return 0;
        }
        return editor.mInputType;
    }

    @Override // android.view.View
    public CharSequence getIterableTextForAccessibility() {
        CharSequence charSequence = this.mText;
        if (!(charSequence instanceof Spannable)) {
            setText(charSequence, BufferType.SPANNABLE);
        }
        return this.mText;
    }

    @Override // android.view.View
    public android.view.AccessibilityIterators.TextSegmentIterator getIteratorForGranularity(int i2) {
        if (i2 == 4) {
            Spannable spannable = (Spannable) getIterableTextForAccessibility();
            if (!TextUtils.isEmpty(spannable) && getLayout() != null) {
                AccessibilityIterators.LineTextSegmentIterator lineTextSegmentIterator = AccessibilityIterators.LineTextSegmentIterator.getInstance();
                lineTextSegmentIterator.initialize(spannable, getLayout());
                return lineTextSegmentIterator;
            }
        } else if (i2 == 16 && !TextUtils.isEmpty((Spannable) getIterableTextForAccessibility()) && getLayout() != null) {
            AccessibilityIterators.PageTextSegmentIterator pageTextSegmentIterator = AccessibilityIterators.PageTextSegmentIterator.getInstance();
            pageTextSegmentIterator.initialize(this);
            return pageTextSegmentIterator;
        }
        return super.getIteratorForGranularity(i2);
    }

    public final KeyListener getKeyListener() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return null;
        }
        return editor.mKeyListener;
    }

    public final Layout getLayout() {
        return this.mLayout;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
    
        if (r0 != 7) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getLeftFadingEdgeStrength() {
        /*
            r6 = this;
            android.text.TextUtils$TruncateAt r0 = r6.mEllipsize
            android.text.TextUtils$TruncateAt r1 = android.text.TextUtils.TruncateAt.MARQUEE
            if (r0 != r1) goto L9c
            int r0 = r6.mMarqueeFadeMode
            r1 = 1
            if (r0 == r1) goto L9c
            android.widget.TextView$Marquee r0 = r6.mMarquee
            r2 = 0
            if (r0 == 0) goto L2a
            boolean r0 = r0.isStopped()
            if (r0 != 0) goto L2a
            android.widget.TextView$Marquee r0 = r6.mMarquee
            boolean r1 = r0.shouldDrawLeftFade()
            if (r1 == 0) goto L29
            float r0 = r0.getScroll()
            int r1 = r6.getHorizontalFadingEdgeLength()
        L26:
            float r1 = (float) r1
            float r0 = r0 / r1
            return r0
        L29:
            return r2
        L2a:
            int r0 = r6.getLineCount()
            if (r0 != r1) goto L9c
            int r0 = r6.getLayoutDirection()
            int r3 = r6.mGravity
            int r0 = android.view.Gravity.getAbsoluteGravity(r3, r0)
            r3 = 7
            r0 = r0 & r3
            r4 = 0
            if (r0 == r1) goto L6e
            r5 = 3
            if (r0 == r5) goto L6d
            r5 = 5
            if (r0 == r5) goto L48
            if (r0 == r3) goto L6e
            goto L9c
        L48:
            android.text.Layout r0 = r6.mLayout
            float r0 = r0.getLineRight(r4)
            int r1 = r6.mRight
            int r2 = r6.mLeft
            int r1 = r1 - r2
            float r1 = (float) r1
            float r0 = r0 - r1
            int r1 = r6.getCompoundPaddingLeft()
            float r1 = (float) r1
            float r0 = r0 - r1
            int r1 = r6.getCompoundPaddingRight()
            float r1 = (float) r1
            float r0 = r0 - r1
            android.text.Layout r1 = r6.mLayout
            float r1 = r1.getLineLeft(r4)
            float r0 = r0 - r1
            int r1 = r6.getHorizontalFadingEdgeLength()
            goto L26
        L6d:
            return r2
        L6e:
            android.text.Layout r0 = r6.mLayout
            int r0 = r0.getParagraphDirection(r4)
            if (r0 != r1) goto L77
            return r2
        L77:
            android.text.Layout r0 = r6.mLayout
            float r0 = r0.getLineRight(r4)
            int r1 = r6.mRight
            int r2 = r6.mLeft
            int r1 = r1 - r2
            float r1 = (float) r1
            float r0 = r0 - r1
            int r1 = r6.getCompoundPaddingLeft()
            float r1 = (float) r1
            float r0 = r0 - r1
            int r1 = r6.getCompoundPaddingRight()
            float r1 = (float) r1
            float r0 = r0 - r1
            android.text.Layout r1 = r6.mLayout
            float r1 = r1.getLineLeft(r4)
            float r0 = r0 - r1
            int r1 = r6.getHorizontalFadingEdgeLength()
            goto L26
        L9c:
            float r0 = super.getLeftFadingEdgeStrength()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.TextView.getLeftFadingEdgeStrength():float");
    }

    @Override // android.view.View
    public int getLeftPaddingOffset() {
        return (getCompoundPaddingLeft() - this.mPaddingLeft) + ((int) Math.min(0.0f, this.mShadowDx - this.mShadowRadius));
    }

    public int getLineAtCoordinate(float f2) {
        return getLayout().getLineForVertical((int) (Math.min((getHeight() - getTotalPaddingBottom()) - 1, Math.max(0.0f, f2 - getTotalPaddingTop())) + getScrollY()));
    }

    public int getLineBounds(int i2, Rect rect) {
        Layout layout = this.mLayout;
        if (layout == null) {
            if (rect != null) {
                rect.set(0, 0, 0, 0);
            }
            return 0;
        }
        int lineBounds = layout.getLineBounds(i2, rect);
        int extendedPaddingTop = getExtendedPaddingTop();
        if ((this.mGravity & 112) != 48) {
            extendedPaddingTop += getVerticalOffset(true);
        }
        if (rect != null) {
            rect.offset(getCompoundPaddingLeft(), extendedPaddingTop);
        }
        return lineBounds + extendedPaddingTop;
    }

    public int getLineCount() {
        Layout layout = this.mLayout;
        if (layout != null) {
            return layout.getLineCount();
        }
        return 0;
    }

    public int getLineHeight() {
        return d.a((this.mTextPaint.getFontMetricsInt(null) * this.mSpacingMult) + this.mSpacingAdd);
    }

    public float getLineSpacingExtra() {
        return this.mSpacingAdd;
    }

    public float getLineSpacingMultiplier() {
        return this.mSpacingMult;
    }

    public final ColorStateList getLinkTextColors() {
        return this.mLinkTextColor;
    }

    public final boolean getLinksClickable() {
        return this.mLinksClickable;
    }

    public int getMarqueeRepeatLimit() {
        return this.mMarqueeRepeatLimit;
    }

    public int getMaxEms() {
        if (this.mMaxWidthMode == 1) {
            return this.mMaxWidth;
        }
        return -1;
    }

    public int getMaxHeight() {
        if (this.mMaxMode == 2) {
            return this.mMaximum;
        }
        return -1;
    }

    public int getMaxLines() {
        if (this.mMaxMode == 1) {
            return this.mMaximum;
        }
        return -1;
    }

    public int getMaxWidth() {
        if (this.mMaxWidthMode == 2) {
            return this.mMaxWidth;
        }
        return -1;
    }

    public int getMinEms() {
        if (this.mMinWidthMode == 1) {
            return this.mMinWidth;
        }
        return -1;
    }

    public int getMinHeight() {
        if (this.mMinMode == 2) {
            return this.mMinimum;
        }
        return -1;
    }

    public int getMinLines() {
        if (this.mMinMode == 1) {
            return this.mMinimum;
        }
        return -1;
    }

    public int getMinWidth() {
        if (this.mMinWidthMode == 2) {
            return this.mMinWidth;
        }
        return -1;
    }

    public final MovementMethod getMovementMethod() {
        return this.mMovement;
    }

    public int getOffsetForPosition(float f2, float f3) {
        if (getLayout() == null) {
            return -1;
        }
        return getOffsetAtCoordinate(getLineAtCoordinate(f3), f2);
    }

    public TextPaint getPaint() {
        return this.mTextPaint;
    }

    public int getPaintFlags() {
        return this.mTextPaint.getFlags();
    }

    public String getPrivateImeOptions() {
        Editor.InputContentType inputContentType;
        Editor editor = this.mEditor;
        if (editor == null || (inputContentType = editor.mInputContentType) == null) {
            return null;
        }
        return inputContentType.privateImeOptions;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0043, code lost:
    
        if (r0 != 7) goto L30;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float getRightFadingEdgeStrength() {
        /*
            r5 = this;
            android.text.TextUtils$TruncateAt r0 = r5.mEllipsize
            android.text.TextUtils$TruncateAt r1 = android.text.TextUtils.TruncateAt.MARQUEE
            if (r0 != r1) goto L8b
            int r0 = r5.mMarqueeFadeMode
            r1 = 1
            if (r0 == r1) goto L8b
            android.widget.TextView$Marquee r0 = r5.mMarquee
            if (r0 == 0) goto L27
            boolean r0 = r0.isStopped()
            if (r0 != 0) goto L27
            android.widget.TextView$Marquee r0 = r5.mMarquee
            float r1 = r0.getMaxFadeScroll()
            float r0 = r0.getScroll()
            float r1 = r1 - r0
            int r0 = r5.getHorizontalFadingEdgeLength()
        L24:
            float r0 = (float) r0
            float r1 = r1 / r0
            return r1
        L27:
            int r0 = r5.getLineCount()
            if (r0 != r1) goto L8b
            int r0 = r5.getLayoutDirection()
            int r2 = r5.mGravity
            int r0 = android.view.Gravity.getAbsoluteGravity(r2, r0)
            r2 = 7
            r0 = r0 & r2
            r3 = 0
            r4 = 0
            if (r0 == r1) goto L63
            r1 = 3
            if (r0 == r1) goto L47
            r1 = 5
            if (r0 == r1) goto L46
            if (r0 == r2) goto L63
            goto L8b
        L46:
            return r3
        L47:
            int r0 = r5.mRight
            int r1 = r5.mLeft
            int r0 = r0 - r1
            int r1 = r5.getCompoundPaddingLeft()
            int r0 = r0 - r1
            int r1 = r5.getCompoundPaddingRight()
            int r0 = r0 - r1
            android.text.Layout r1 = r5.mLayout
            float r1 = r1.getLineWidth(r4)
            float r0 = (float) r0
            float r1 = r1 - r0
            int r0 = r5.getHorizontalFadingEdgeLength()
            goto L24
        L63:
            android.text.Layout r0 = r5.mLayout
            int r0 = r0.getParagraphDirection(r4)
            r1 = -1
            if (r0 != r1) goto L6d
            return r3
        L6d:
            android.text.Layout r0 = r5.mLayout
            float r0 = r0.getLineWidth(r4)
            int r1 = r5.mRight
            int r2 = r5.mLeft
            int r1 = r1 - r2
            int r2 = r5.getCompoundPaddingLeft()
            int r1 = r1 - r2
            int r2 = r5.getCompoundPaddingRight()
            int r1 = r1 - r2
            float r1 = (float) r1
            float r0 = r0 - r1
            int r1 = r5.getHorizontalFadingEdgeLength()
            float r1 = (float) r1
            float r0 = r0 / r1
            return r0
        L8b:
            float r0 = super.getRightFadingEdgeStrength()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.widget.TextView.getRightFadingEdgeStrength():float");
    }

    @Override // android.view.View
    public int getRightPaddingOffset() {
        return (-(getCompoundPaddingRight() - this.mPaddingRight)) + ((int) Math.max(0.0f, this.mShadowDx + this.mShadowRadius));
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT)
    public int getSelectionEnd() {
        return Selection.getSelectionEnd(getText());
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT)
    public int getSelectionStart() {
        return Selection.getSelectionStart(getText());
    }

    public int getShadowColor() {
        return this.mTextPaint.shadowColor;
    }

    public float getShadowDx() {
        return this.mShadowDx;
    }

    public float getShadowDy() {
        return this.mShadowDy;
    }

    public float getShadowRadius() {
        return this.mShadowRadius;
    }

    public final boolean getShowSoftInputOnFocus() {
        Editor editor = this.mEditor;
        return editor == null || editor.mShowSoftInputOnFocus;
    }

    public Locale getSpellCheckerLocale() {
        return getTextServicesLocale(true);
    }

    @ViewDebug.CapturedViewProperty
    public CharSequence getText() {
        return this.mText;
    }

    public final ColorStateList getTextColors() {
        return this.mTextColor;
    }

    public TextDirectionHeuristic getTextDirectionHeuristic() {
        if (hasPasswordTransformationMethod()) {
            return TextDirectionHeuristics.LTR;
        }
        boolean z2 = getLayoutDirection() == 1;
        int textDirection = getTextDirection();
        if (textDirection == 2) {
            return TextDirectionHeuristics.ANYRTL_LTR;
        }
        if (textDirection == 3) {
            return TextDirectionHeuristics.LTR;
        }
        if (textDirection == 4) {
            return TextDirectionHeuristics.RTL;
        }
        if (textDirection != 5) {
            return z2 ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
        return TextDirectionHeuristics.LOCALE;
    }

    public CharSequence getTextForAccessibility() {
        CharSequence text = getText();
        return TextUtils.isEmpty(text) ? getHint() : text;
    }

    public Locale getTextLocale() {
        return this.mTextPaint.getTextLocale();
    }

    public float getTextScaleX() {
        return this.mTextPaint.getTextScaleX();
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT)
    public float getTextSize() {
        return this.mTextPaint.getTextSize();
    }

    @Override // android.view.View
    public int getTopPaddingOffset() {
        return (int) Math.min(0.0f, this.mShadowDy - this.mShadowRadius);
    }

    public int getTotalPaddingBottom() {
        return getExtendedPaddingBottom() + getBottomVerticalOffset(true);
    }

    public int getTotalPaddingEnd() {
        return getCompoundPaddingEnd();
    }

    public int getTotalPaddingLeft() {
        return getCompoundPaddingLeft();
    }

    public int getTotalPaddingRight() {
        return getCompoundPaddingRight();
    }

    public int getTotalPaddingStart() {
        return getCompoundPaddingStart();
    }

    public int getTotalPaddingTop() {
        return getExtendedPaddingTop() + getVerticalOffset(true);
    }

    public final TransformationMethod getTransformationMethod() {
        return this.mTransformation;
    }

    public CharSequence getTransformedText(int i2, int i3) {
        return removeSuggestionSpans(this.mTransformed.subSequence(i2, i3));
    }

    public Typeface getTypeface() {
        return this.mTextPaint.getTypeface();
    }

    public final UndoManager getUndoManager() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return null;
        }
        return editor.mUndoManager;
    }

    public URLSpan[] getUrls() {
        CharSequence charSequence = this.mText;
        return charSequence instanceof Spanned ? (URLSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), URLSpan.class) : new URLSpan[0];
    }

    public int getVerticalOffset(boolean z2) {
        int boxHeight;
        int height;
        Layout layout;
        int i2 = this.mGravity & 112;
        Layout layout2 = this.mLayout;
        if (!z2 && this.mText.length() == 0 && (layout = this.mHintLayout) != null) {
            layout2 = layout;
        }
        if (i2 == 48 || (height = layout2.getHeight()) >= (boxHeight = getBoxHeight(layout2))) {
            return 0;
        }
        return i2 == 80 ? boxHeight - height : (boxHeight - height) >> 1;
    }

    public WordIterator getWordIterator() {
        Editor editor = this.mEditor;
        if (editor != null) {
            return editor.getWordIterator();
        }
        return null;
    }

    public void handleTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        Editor editor = this.mEditor;
        Editor.InputMethodState inputMethodState = editor == null ? null : editor.mInputMethodState;
        if (inputMethodState == null || inputMethodState.mBatchEditNesting == 0) {
            updateAfterEdit();
        }
        if (inputMethodState != null) {
            inputMethodState.mContentChanged = true;
            int i5 = inputMethodState.mChangedStart;
            if (i5 < 0) {
                inputMethodState.mChangedStart = i2;
                inputMethodState.mChangedEnd = i2 + i3;
            } else {
                inputMethodState.mChangedStart = Math.min(i5, i2);
                inputMethodState.mChangedEnd = Math.max(inputMethodState.mChangedEnd, (i2 + i3) - inputMethodState.mChangedDelta);
            }
            inputMethodState.mChangedDelta += i4 - i3;
        }
        sendOnTextChanged(charSequence, i2, i3, i4);
        onTextChanged(charSequence, i2, i3, i4);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return !(getBackground() == null || getBackground().getCurrent() == null) || (this.mText instanceof Spannable) || hasSelection() || isHorizontalFadingEdgeEnabled();
    }

    public boolean hasSelection() {
        int selectionStart = getSelectionStart();
        return selectionStart >= 0 && selectionStart != getSelectionEnd();
    }

    public void hideErrorIfUnchanged() {
        Editor editor = this.mEditor;
        if (editor == null || editor.mError == null || editor.mErrorWasChanged) {
            return;
        }
        setError(null, null);
    }

    public void invalidateCursor() {
        int selectionEnd = getSelectionEnd();
        invalidateCursor(selectionEnd, selectionEnd, selectionEnd);
    }

    public void invalidateCursorPath() {
        if (this.mHighlightPathBogus) {
            invalidateCursor();
            return;
        }
        int compoundPaddingLeft = getCompoundPaddingLeft();
        int extendedPaddingTop = getExtendedPaddingTop() + getVerticalOffset(true);
        int i2 = 0;
        if (this.mEditor.mCursorCount == 0) {
            RectF rectF = TEMP_RECTF;
            synchronized (rectF) {
                float fCeil = FloatMath.ceil(this.mTextPaint.getStrokeWidth());
                if (fCeil < 1.0f) {
                    fCeil = 1.0f;
                }
                float f2 = fCeil / 2.0f;
                this.mHighlightPath.computeBounds(rectF, false);
                float f3 = compoundPaddingLeft;
                float f4 = extendedPaddingTop;
                invalidate((int) FloatMath.floor((rectF.left + f3) - f2), (int) FloatMath.floor((rectF.top + f4) - f2), (int) FloatMath.ceil(f3 + rectF.right + f2), (int) FloatMath.ceil(f4 + rectF.bottom + f2));
            }
            return;
        }
        while (true) {
            Editor editor = this.mEditor;
            if (i2 >= editor.mCursorCount) {
                return;
            }
            Rect bounds = editor.mCursorDrawable[i2].getBounds();
            invalidate(bounds.left + compoundPaddingLeft, bounds.top + extendedPaddingTop, bounds.right + compoundPaddingLeft, bounds.bottom + extendedPaddingTop);
            i2++;
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        int i2;
        int compoundPaddingTop;
        int i3;
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            int compoundPaddingRight = this.mScrollX;
            int i4 = this.mScrollY;
            Drawables drawables = this.mDrawables;
            if (drawables != null) {
                if (drawable == drawables.mDrawableLeft) {
                    compoundPaddingTop = getCompoundPaddingTop();
                    int compoundPaddingBottom = ((this.mBottom - this.mTop) - getCompoundPaddingBottom()) - compoundPaddingTop;
                    compoundPaddingRight += this.mPaddingLeft;
                    i3 = (compoundPaddingBottom - drawables.mDrawableHeightLeft) / 2;
                } else if (drawable == drawables.mDrawableRight) {
                    compoundPaddingTop = getCompoundPaddingTop();
                    int compoundPaddingBottom2 = ((this.mBottom - this.mTop) - getCompoundPaddingBottom()) - compoundPaddingTop;
                    compoundPaddingRight += ((this.mRight - this.mLeft) - this.mPaddingRight) - drawables.mDrawableSizeRight;
                    i3 = (compoundPaddingBottom2 - drawables.mDrawableHeightRight) / 2;
                } else {
                    if (drawable == drawables.mDrawableTop) {
                        int compoundPaddingLeft = getCompoundPaddingLeft();
                        compoundPaddingRight += compoundPaddingLeft + (((((this.mRight - this.mLeft) - getCompoundPaddingRight()) - compoundPaddingLeft) - drawables.mDrawableWidthTop) / 2);
                        i2 = this.mPaddingTop;
                    } else if (drawable == drawables.mDrawableBottom) {
                        int compoundPaddingLeft2 = getCompoundPaddingLeft();
                        compoundPaddingRight += compoundPaddingLeft2 + (((((this.mRight - this.mLeft) - getCompoundPaddingRight()) - compoundPaddingLeft2) - drawables.mDrawableWidthBottom) / 2);
                        i2 = ((this.mBottom - this.mTop) - this.mPaddingBottom) - drawables.mDrawableSizeBottom;
                    }
                    i4 += i2;
                }
                i2 = compoundPaddingTop + i3;
                i4 += i2;
            }
            invalidate(bounds.left + compoundPaddingRight, bounds.top + i4, bounds.right + compoundPaddingRight, bounds.bottom + i4);
        }
    }

    public void invalidateRegion(int i2, int i3, boolean z2) {
        int width;
        Layout layout = this.mLayout;
        if (layout == null) {
            invalidate();
            return;
        }
        int lineForOffset = layout.getLineForOffset(i2);
        int lineTop = this.mLayout.getLineTop(lineForOffset);
        if (lineForOffset > 0) {
            lineTop -= this.mLayout.getLineDescent(lineForOffset - 1);
        }
        int lineForOffset2 = i2 == i3 ? lineForOffset : this.mLayout.getLineForOffset(i3);
        int lineBottom = this.mLayout.getLineBottom(lineForOffset2);
        if (z2 && this.mEditor != null) {
            int i4 = 0;
            while (true) {
                Editor editor = this.mEditor;
                if (i4 >= editor.mCursorCount) {
                    break;
                }
                Rect bounds = editor.mCursorDrawable[i4].getBounds();
                lineTop = Math.min(lineTop, bounds.top);
                lineBottom = Math.max(lineBottom, bounds.bottom);
                i4++;
            }
        }
        int compoundPaddingLeft = getCompoundPaddingLeft();
        int extendedPaddingTop = getExtendedPaddingTop() + getVerticalOffset(true);
        if (lineForOffset != lineForOffset2 || z2) {
            width = getWidth() - getCompoundPaddingRight();
        } else {
            int primaryHorizontal = (int) this.mLayout.getPrimaryHorizontal(i2);
            width = ((int) (((double) this.mLayout.getPrimaryHorizontal(i3)) + 1.0d)) + compoundPaddingLeft;
            compoundPaddingLeft = primaryHorizontal + compoundPaddingLeft;
        }
        int i5 = this.mScrollX;
        invalidate(compoundPaddingLeft + i5, lineTop + extendedPaddingTop, i5 + width, extendedPaddingTop + lineBottom);
    }

    @Override // android.view.View
    public boolean isAccessibilitySelectionExtendable() {
        return true;
    }

    public boolean isCursorVisible() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return true;
        }
        return editor.mCursorVisible;
    }

    public boolean isInBatchEditMode() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return false;
        }
        Editor.InputMethodState inputMethodState = editor.mInputMethodState;
        if (inputMethodState != null) {
            return inputMethodState.mBatchEditNesting > 0;
        }
        return editor.mInBatchEditControllers;
    }

    public boolean isInputMethodTarget() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        return inputMethodManagerPeekInstance != null && inputMethodManagerPeekInstance.isActive(this);
    }

    @Override // android.view.View
    public boolean isPaddingOffsetRequired() {
        return (this.mShadowRadius == 0.0f && this.mDrawables == null) ? false : true;
    }

    public boolean isSingleLine() {
        return this.mSingleLine;
    }

    public boolean isSuggestionsEnabled() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return false;
        }
        int i2 = editor.mInputType;
        if ((i2 & 15) != 1 || (524288 & i2) > 0) {
            return false;
        }
        int i3 = i2 & InputType.TYPE_MASK_VARIATION;
        return i3 == 0 || i3 == 48 || i3 == 80 || i3 == 64 || i3 == 160;
    }

    public boolean isTextEditable() {
        return (this.mText instanceof Editable) && onCheckIsTextEditor() && isEnabled();
    }

    public boolean isTextSelectable() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return false;
        }
        return editor.mTextIsSelectable;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            Drawable drawable = drawables.mDrawableLeft;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
            Drawable drawable2 = this.mDrawables.mDrawableTop;
            if (drawable2 != null) {
                drawable2.jumpToCurrentState();
            }
            Drawable drawable3 = this.mDrawables.mDrawableRight;
            if (drawable3 != null) {
                drawable3.jumpToCurrentState();
            }
            Drawable drawable4 = this.mDrawables.mDrawableBottom;
            if (drawable4 != null) {
                drawable4.jumpToCurrentState();
            }
            Drawable drawable5 = this.mDrawables.mDrawableStart;
            if (drawable5 != null) {
                drawable5.jumpToCurrentState();
            }
            Drawable drawable6 = this.mDrawables.mDrawableEnd;
            if (drawable6 != null) {
                drawable6.jumpToCurrentState();
            }
        }
    }

    public int length() {
        return this.mText.length();
    }

    public void makeNewLayout(int i2, int i3, BoringLayout.Metrics metrics, BoringLayout.Metrics metrics2, int i4, boolean z2) {
        int i5;
        TextUtils.TruncateAt truncateAt;
        int i6;
        boolean z3;
        BoringLayout.Metrics metrics3;
        stopMarquee();
        this.mOldMaximum = this.mMaximum;
        this.mOldMaxMode = this.mMaxMode;
        this.mHighlightPathBogus = true;
        int i7 = i2 < 0 ? 0 : i2;
        int i8 = i3 < 0 ? 0 : i3;
        Layout.Alignment layoutAlignment = getLayoutAlignment();
        boolean z4 = this.mSingleLine && this.mLayout != null && (layoutAlignment == Layout.Alignment.ALIGN_NORMAL || layoutAlignment == Layout.Alignment.ALIGN_OPPOSITE);
        int paragraphDirection = z4 ? this.mLayout.getParagraphDirection(0) : 0;
        boolean z5 = this.mEllipsize != null && getKeyListener() == null;
        TextUtils.TruncateAt truncateAt2 = this.mEllipsize;
        TextUtils.TruncateAt truncateAt3 = TextUtils.TruncateAt.MARQUEE;
        boolean z6 = truncateAt2 == truncateAt3 && this.mMarqueeFadeMode != 0;
        if (truncateAt2 == truncateAt3 && this.mMarqueeFadeMode == 1) {
            truncateAt2 = TextUtils.TruncateAt.END_SMALL;
        }
        TextUtils.TruncateAt truncateAt4 = truncateAt2;
        if (this.mTextDir == null) {
            this.mTextDir = getTextDirectionHeuristic();
        }
        this.mLayout = makeSingleLayout(i7, metrics, i4, layoutAlignment, z5, truncateAt4, truncateAt4 == this.mEllipsize);
        if (z6) {
            this.mSavedMarqueeModeLayout = makeSingleLayout(i7, metrics, i4, layoutAlignment, z5, truncateAt4 == truncateAt3 ? TextUtils.TruncateAt.END : truncateAt3, truncateAt4 != this.mEllipsize);
        }
        boolean z7 = this.mEllipsize != null;
        this.mHintLayout = null;
        CharSequence charSequence = this.mHint;
        if (charSequence == null) {
            i5 = paragraphDirection;
            truncateAt = truncateAt3;
            i6 = i4;
            z3 = true;
        } else {
            int i9 = z7 ? i7 : i8;
            if (metrics2 == UNKNOWN_BORING) {
                BoringLayout.Metrics metricsIsBoring = BoringLayout.isBoring(charSequence, this.mTextPaint, this.mTextDir, this.mHintBoring);
                if (metricsIsBoring != null) {
                    this.mHintBoring = metricsIsBoring;
                }
                metrics3 = metricsIsBoring;
            } else {
                metrics3 = metrics2;
            }
            if (metrics3 != null) {
                int i10 = metrics3.width;
                if (i10 <= i9 && (!z7 || i10 <= i4)) {
                    BoringLayout boringLayout = this.mSavedHintLayout;
                    if (boringLayout != null) {
                        this.mHintLayout = boringLayout.replaceOrMake(this.mHint, this.mTextPaint, i9, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad);
                    } else {
                        this.mHintLayout = BoringLayout.make(this.mHint, this.mTextPaint, i9, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad);
                    }
                    this.mSavedHintLayout = (BoringLayout) this.mHintLayout;
                    i5 = paragraphDirection;
                    truncateAt = truncateAt3;
                    i6 = i4;
                    z3 = true;
                } else if (!z7 || i10 > i9) {
                    i5 = paragraphDirection;
                    truncateAt = truncateAt3;
                    i6 = i4;
                    z3 = true;
                    if (z7) {
                        CharSequence charSequence2 = this.mHint;
                        this.mHintLayout = new StaticLayout(charSequence2, 0, charSequence2.length(), this.mTextPaint, i9, layoutAlignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad, this.mEllipsize, i4, this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE);
                    } else {
                        this.mHintLayout = new StaticLayout(this.mHint, this.mTextPaint, i9, layoutAlignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad);
                    }
                } else {
                    BoringLayout boringLayout2 = this.mSavedHintLayout;
                    if (boringLayout2 != null) {
                        i5 = paragraphDirection;
                        z3 = true;
                        this.mHintLayout = boringLayout2.replaceOrMake(this.mHint, this.mTextPaint, i9, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad, this.mEllipsize, i4);
                        i6 = i4;
                        truncateAt = truncateAt3;
                    } else {
                        i5 = paragraphDirection;
                        truncateAt = truncateAt3;
                        z3 = true;
                        this.mHintLayout = BoringLayout.make(this.mHint, this.mTextPaint, i9, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad, this.mEllipsize, i4);
                        i6 = i4;
                    }
                }
            } else {
                i5 = paragraphDirection;
                truncateAt = truncateAt3;
                i6 = i4;
                z3 = true;
                if (z7) {
                    CharSequence charSequence3 = this.mHint;
                    this.mHintLayout = new StaticLayout(charSequence3, 0, charSequence3.length(), this.mTextPaint, i9, layoutAlignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad, this.mEllipsize, i4, this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE);
                } else {
                    this.mHintLayout = new StaticLayout(this.mHint, this.mTextPaint, i9, layoutAlignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad);
                }
            }
        }
        if (z2 || (z4 && i5 != this.mLayout.getParagraphDirection(0))) {
            registerForPreDraw();
        }
        if (this.mEllipsize == truncateAt && !compressText(i6)) {
            int i11 = this.mLayoutParams.height;
            if (i11 == -2 || i11 == -1) {
                this.mRestartMarquee = z3;
            } else {
                startMarquee();
            }
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.prepareCursorControllers();
        }
    }

    public boolean moveCursorToVisibleOffset() {
        int selectionStart;
        if (!(this.mText instanceof Spannable) || (selectionStart = getSelectionStart()) != getSelectionEnd()) {
            return false;
        }
        int lineForOffset = this.mLayout.getLineForOffset(selectionStart);
        int lineTop = this.mLayout.getLineTop(lineForOffset);
        int lineTop2 = this.mLayout.getLineTop(lineForOffset + 1);
        int extendedPaddingTop = ((this.mBottom - this.mTop) - getExtendedPaddingTop()) - getExtendedPaddingBottom();
        int i2 = lineTop2 - lineTop;
        int i3 = i2 / 2;
        int i4 = extendedPaddingTop / 4;
        if (i3 > i4) {
            i3 = i4;
        }
        int i5 = this.mScrollY;
        int i6 = i5 + i3;
        if (lineTop < i6) {
            lineForOffset = this.mLayout.getLineForVertical(i6 + i2);
        } else {
            int i7 = (extendedPaddingTop + i5) - i3;
            if (lineTop2 > i7) {
                lineForOffset = this.mLayout.getLineForVertical(i7 - i2);
            }
        }
        int compoundPaddingLeft = ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        int i8 = this.mScrollX;
        int offsetForHorizontal = this.mLayout.getOffsetForHorizontal(lineForOffset, i8);
        int offsetForHorizontal2 = this.mLayout.getOffsetForHorizontal(lineForOffset, compoundPaddingLeft + i8);
        int i9 = offsetForHorizontal < offsetForHorizontal2 ? offsetForHorizontal : offsetForHorizontal2;
        if (offsetForHorizontal <= offsetForHorizontal2) {
            offsetForHorizontal = offsetForHorizontal2;
        }
        if (selectionStart >= i9) {
            i9 = selectionStart > offsetForHorizontal ? offsetForHorizontal : selectionStart;
        }
        if (i9 == selectionStart) {
            return false;
        }
        Selection.setSelection((Spannable) this.mText, i9);
        return true;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mTemporaryDetach = false;
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onAttachedToWindow();
        }
    }

    public void onBeginBatchEdit() {
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        Editor editor = this.mEditor;
        return (editor == null || editor.mInputType == 0) ? false : true;
    }

    public void onCommitCompletion(CompletionInfo completionInfo) {
    }

    public void onCommitCorrection(CorrectionInfo correctionInfo) {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onCommitCorrection(correctionInfo);
        }
    }

    @Override // android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState;
        if (this.mSingleLine) {
            iArrOnCreateDrawableState = super.onCreateDrawableState(i2);
        } else {
            iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
            View.mergeDrawableStates(iArrOnCreateDrawableState, MULTILINE_STATE_SET);
        }
        if (isTextSelectable()) {
            int length = iArrOnCreateDrawableState.length;
            for (int i3 = 0; i3 < length; i3++) {
                if (iArrOnCreateDrawableState[i3] == 16842919) {
                    int[] iArr = new int[length - 1];
                    System.arraycopy(iArrOnCreateDrawableState, 0, iArr, 0, i3);
                    System.arraycopy(iArrOnCreateDrawableState, i3 + 1, iArr, i3, (length - i3) - 1);
                    return iArr;
                }
            }
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (!onCheckIsTextEditor() || !isEnabled()) {
            return null;
        }
        this.mEditor.createInputMethodStateIfNeeded();
        editorInfo.inputType = getInputType();
        Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
        if (inputContentType != null) {
            editorInfo.imeOptions = inputContentType.imeOptions;
            editorInfo.privateImeOptions = inputContentType.privateImeOptions;
            editorInfo.actionLabel = inputContentType.imeActionLabel;
            editorInfo.actionId = inputContentType.imeActionId;
            editorInfo.extras = inputContentType.extras;
        } else {
            editorInfo.imeOptions = 0;
        }
        if (focusSearch(130) != null) {
            editorInfo.imeOptions |= 134217728;
        }
        if (focusSearch(33) != null) {
            editorInfo.imeOptions |= 67108864;
        }
        int i2 = editorInfo.imeOptions;
        if ((i2 & 255) == 0) {
            if ((134217728 & i2) != 0) {
                editorInfo.imeOptions = i2 | 5;
            } else {
                editorInfo.imeOptions = i2 | 6;
            }
            if (!shouldAdvanceFocusOnEnter()) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (isMultilineInputType(editorInfo.inputType)) {
            editorInfo.imeOptions |= 1073741824;
        }
        editorInfo.hintText = this.mHint;
        if (!(this.mText instanceof Editable)) {
            return null;
        }
        b bVar = new b(this);
        editorInfo.initialSelStart = getSelectionStart();
        editorInfo.initialSelEnd = getSelectionEnd();
        editorInfo.initialCapsMode = bVar.getCursorCapsMode(getInputType());
        return bVar;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPreDrawRegistered) {
            getViewTreeObserver().removeOnPreDrawListener(this);
            this.mPreDrawRegistered = false;
        }
        resetResolvedDrawables();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        int action = dragEvent.getAction();
        if (action == 1) {
            Editor editor = this.mEditor;
            return editor != null && editor.hasInsertionController();
        }
        if (action == 2) {
            Selection.setSelection((Spannable) this.mText, getOffsetForPosition(dragEvent.getX(), dragEvent.getY()));
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                return true;
            }
            requestFocus();
            return true;
        }
        Editor editor2 = this.mEditor;
        if (editor2 != null) {
            editor2.onDrop(dragEvent);
        }
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        boolean z2;
        int i2;
        int verticalOffset;
        restartMarqueeIfNeeded();
        super.onDraw(canvas);
        int compoundPaddingLeft = getCompoundPaddingLeft();
        int compoundPaddingTop = getCompoundPaddingTop();
        int compoundPaddingRight = getCompoundPaddingRight();
        int compoundPaddingBottom = getCompoundPaddingBottom();
        int i3 = this.mScrollX;
        int i4 = this.mScrollY;
        int i5 = this.mRight;
        int i6 = this.mLeft;
        int i7 = this.mBottom;
        int i8 = this.mTop;
        boolean zIsLayoutRtl = isLayoutRtl();
        int horizontalOffsetForDrawables = getHorizontalOffsetForDrawables();
        int i9 = zIsLayoutRtl ? 0 : horizontalOffsetForDrawables;
        if (!zIsLayoutRtl) {
            horizontalOffsetForDrawables = 0;
        }
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            int i10 = ((i7 - i8) - compoundPaddingBottom) - compoundPaddingTop;
            int i11 = ((i5 - i6) - compoundPaddingRight) - compoundPaddingLeft;
            z2 = zIsLayoutRtl;
            if (drawables.mDrawableLeft != null) {
                canvas.save();
                canvas.translate(this.mPaddingLeft + i3 + i9, i4 + compoundPaddingTop + ((i10 - drawables.mDrawableHeightLeft) / 2));
                drawables.mDrawableLeft.draw(canvas);
                canvas.restore();
            }
            if (drawables.mDrawableRight != null) {
                canvas.save();
                canvas.translate(((((i3 + i5) - i6) - this.mPaddingRight) - drawables.mDrawableSizeRight) - horizontalOffsetForDrawables, i4 + compoundPaddingTop + ((i10 - drawables.mDrawableHeightRight) / 2));
                drawables.mDrawableRight.draw(canvas);
                canvas.restore();
            }
            if (drawables.mDrawableTop != null) {
                canvas.save();
                canvas.translate(i3 + compoundPaddingLeft + ((i11 - drawables.mDrawableWidthTop) / 2), this.mPaddingTop + i4);
                drawables.mDrawableTop.draw(canvas);
                canvas.restore();
            }
            if (drawables.mDrawableBottom != null) {
                canvas.save();
                canvas.translate(i3 + compoundPaddingLeft + ((i11 - drawables.mDrawableWidthBottom) / 2), (((i4 + i7) - i8) - this.mPaddingBottom) - drawables.mDrawableSizeBottom);
                drawables.mDrawableBottom.draw(canvas);
                canvas.restore();
            }
        } else {
            compoundPaddingRight = compoundPaddingRight;
            z2 = zIsLayoutRtl;
        }
        int i12 = this.mCurTextColor;
        if (this.mLayout == null) {
            assumeLayout();
        }
        Layout layout = this.mLayout;
        if (this.mHint != null && this.mText.length() == 0) {
            if (this.mHintTextColor != null) {
                i12 = this.mCurHintTextColor;
            }
            layout = this.mHintLayout;
        }
        this.mTextPaint.setColor(i12);
        this.mTextPaint.drawableState = getDrawableState();
        canvas.save();
        int extendedPaddingTop = getExtendedPaddingTop();
        int extendedPaddingBottom = getExtendedPaddingBottom();
        int height = this.mLayout.getHeight() - (((this.mBottom - this.mTop) - compoundPaddingBottom) - compoundPaddingTop);
        float fMin = compoundPaddingLeft + i3;
        float fMin2 = i4 == 0 ? 0.0f : extendedPaddingTop + i4;
        float fMax = ((i5 - i6) - compoundPaddingRight) + i3;
        int i13 = (i7 - i8) + i4;
        if (i4 == height) {
            extendedPaddingBottom = 0;
        }
        float fMax2 = i13 - extendedPaddingBottom;
        float f2 = this.mShadowRadius;
        if (f2 != 0.0f) {
            fMin += Math.min(0.0f, this.mShadowDx - f2);
            fMax += Math.max(0.0f, this.mShadowDx + this.mShadowRadius);
            fMin2 += Math.min(0.0f, this.mShadowDy - this.mShadowRadius);
            fMax2 += Math.max(0.0f, this.mShadowDy + this.mShadowRadius);
        }
        canvas.clipRect(fMin, fMin2, fMax, fMax2);
        if ((this.mGravity & 112) != 48) {
            int verticalOffset2 = getVerticalOffset(false);
            verticalOffset = getVerticalOffset(true);
            i2 = verticalOffset2;
        } else {
            i2 = 0;
            verticalOffset = 0;
        }
        canvas.translate(compoundPaddingLeft, extendedPaddingTop + i2);
        int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection());
        if (this.mEllipsize == TextUtils.TruncateAt.MARQUEE && this.mMarqueeFadeMode != 1) {
            if (!this.mSingleLine && getLineCount() == 1 && canMarquee() && (absoluteGravity & 7) != 3) {
                float lineRight = this.mLayout.getLineRight(0) - ((this.mRight - this.mLeft) - (getCompoundPaddingLeft() + getCompoundPaddingRight()));
                if (z2) {
                    lineRight = -lineRight;
                }
                canvas.translate(lineRight, 0.0f);
            }
            Marquee marquee = this.mMarquee;
            if (marquee != null && marquee.isRunning()) {
                float f3 = -this.mMarquee.getScroll();
                if (z2) {
                    f3 = -f3;
                }
                canvas.translate(f3, 0.0f);
            }
        }
        int i14 = verticalOffset - i2;
        Path updatedHighlightPath = getUpdatedHighlightPath();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onDraw(canvas, layout, updatedHighlightPath, this.mHighlightPaint, i14);
        } else {
            layout.draw(canvas, updatedHighlightPath, this.mHighlightPaint, i14);
        }
        Marquee marquee2 = this.mMarquee;
        if (marquee2 != null && marquee2.shouldDrawGhost()) {
            int ghostOffset = (int) this.mMarquee.getGhostOffset();
            if (z2) {
                ghostOffset = -ghostOffset;
            }
            canvas.translate(ghostOffset, 0.0f);
            layout.draw(canvas, updatedHighlightPath, this.mHighlightPaint, i14);
        }
        canvas.restore();
    }

    public void onEditorAction(int i2) {
        Editor editor = this.mEditor;
        Editor.InputContentType inputContentType = editor == null ? null : editor.mInputContentType;
        if (inputContentType != null) {
            OnEditorActionListener onEditorActionListener = inputContentType.onEditorActionListener;
            if (onEditorActionListener != null && onEditorActionListener.onEditorAction(this, i2, null)) {
                return;
            }
            if (i2 == 5) {
                View viewFocusSearch = focusSearch(2);
                if (viewFocusSearch != null && !viewFocusSearch.requestFocus(2)) {
                    throw new IllegalStateException("focus search returned a view that wasn't able to take focus!");
                }
                return;
            }
            if (i2 == 7) {
                View viewFocusSearch2 = focusSearch(1);
                if (viewFocusSearch2 != null && !viewFocusSearch2.requestFocus(1)) {
                    throw new IllegalStateException("focus search returned a view that wasn't able to take focus!");
                }
                return;
            }
            if (i2 == 6) {
                InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
                if (inputMethodManagerPeekInstance == null || !inputMethodManagerPeekInstance.isActive(this)) {
                    return;
                }
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(getWindowToken(), 0);
                return;
            }
        }
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            viewRootImpl.dispatchKeyFromIme(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, 66, 0, 0, -1, 0, 22));
            viewRootImpl.dispatchKeyFromIme(new KeyEvent(SystemClock.uptimeMillis(), jUptimeMillis, 1, 66, 0, 0, -1, 0, 22));
        }
    }

    public void onEndBatchEdit() {
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        if (!this.mDispatchTemporaryDetach) {
            this.mTemporaryDetach = false;
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.mTemporaryDetach = false;
        }
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        if (this.mTemporaryDetach) {
            super.onFocusChanged(z2, i2, rect);
            return;
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onFocusChanged(z2, i2);
        }
        if (z2) {
            CharSequence charSequence = this.mText;
            if (charSequence instanceof Spannable) {
                MetaKeyKeyListener.resetMetaState((Spannable) charSequence);
            }
        }
        startStopMarquee(z2);
        TransformationMethod transformationMethod = this.mTransformation;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(this, this.mText, z2, i2, rect);
        }
        super.onFocusChanged(z2, i2, rect);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        MovementMethod movementMethod = this.mMovement;
        if (movementMethod != null) {
            CharSequence charSequence = this.mText;
            if ((charSequence instanceof Spannable) && this.mLayout != null) {
                try {
                    if (movementMethod.onGenericMotionEvent(this, (Spannable) charSequence, motionEvent)) {
                        return true;
                    }
                } catch (AbstractMethodError unused) {
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TextView.class.getName());
        accessibilityEvent.setPassword(hasPasswordTransformationMethod());
        if (accessibilityEvent.getEventType() == 8192) {
            accessibilityEvent.setFromIndex(Selection.getSelectionStart(this.mText));
            accessibilityEvent.setToIndex(Selection.getSelectionEnd(this.mText));
            accessibilityEvent.setItemCount(this.mText.length());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextView.class.getName());
        boolean zHasPasswordTransformationMethod = hasPasswordTransformationMethod();
        accessibilityNodeInfo.setPassword(zHasPasswordTransformationMethod);
        if (!zHasPasswordTransformationMethod) {
            accessibilityNodeInfo.setText(getTextForAccessibility());
        }
        if (this.mBufferType == BufferType.EDITABLE) {
            accessibilityNodeInfo.setEditable(true);
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            accessibilityNodeInfo.setInputType(editor.mInputType);
            if (this.mEditor.mError != null) {
                accessibilityNodeInfo.setContentInvalid(true);
            }
        }
        if (!TextUtils.isEmpty(this.mText)) {
            accessibilityNodeInfo.addAction(256);
            accessibilityNodeInfo.addAction(512);
            accessibilityNodeInfo.setMovementGranularities(31);
        }
        if (isFocused()) {
            if (canSelectText()) {
                accessibilityNodeInfo.addAction(131072);
            }
            if (canCopy()) {
                accessibilityNodeInfo.addAction(16384);
            }
            if (canPaste()) {
                accessibilityNodeInfo.addAction(32768);
            }
            if (canCut()) {
                accessibilityNodeInfo.addAction(65536);
            }
        }
        if (isSingleLine()) {
            return;
        }
        accessibilityNodeInfo.setMultiLine(true);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (doKeyDown(i2, keyEvent, null) == 0) {
            return super.onKeyDown(i2, keyEvent);
        }
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        KeyEvent keyEventChangeAction = KeyEvent.changeAction(keyEvent, 0);
        int iDoKeyDown = doKeyDown(i2, keyEventChangeAction, keyEvent);
        if (iDoKeyDown == 0) {
            return super.onKeyMultiple(i2, i3, keyEvent);
        }
        if (iDoKeyDown == -1) {
            return true;
        }
        int i4 = i3 - 1;
        KeyEvent keyEventChangeAction2 = KeyEvent.changeAction(keyEvent, 1);
        if (iDoKeyDown != 1) {
            if (iDoKeyDown == 2) {
                this.mMovement.onKeyUp(this, (Spannable) this.mText, i2, keyEventChangeAction2);
                while (true) {
                    i4--;
                    if (i4 <= 0) {
                        break;
                    }
                    this.mMovement.onKeyDown(this, (Spannable) this.mText, i2, keyEventChangeAction);
                    this.mMovement.onKeyUp(this, (Spannable) this.mText, i2, keyEventChangeAction2);
                }
            }
        } else {
            this.mEditor.mKeyListener.onKeyUp(this, (Editable) this.mText, i2, keyEventChangeAction2);
            while (true) {
                i4--;
                if (i4 <= 0) {
                    break;
                }
                this.mEditor.mKeyListener.onKeyDown(this, (Editable) this.mText, i2, keyEventChangeAction);
                this.mEditor.mKeyListener.onKeyUp(this, (Editable) this.mText, i2, keyEventChangeAction2);
            }
            hideErrorIfUnchanged();
        }
        return true;
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            Editor editor = this.mEditor;
            if ((editor == null || editor.mSelectionActionMode == null) ? false : true) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        stopSelectionActionMode();
                        return true;
                    }
                }
            }
        }
        return super.onKeyPreIme(i2, keyEvent);
    }

    @Override // android.view.View
    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState() & (-28673))) {
            if (i2 != 29) {
                if (i2 != 31) {
                    if (i2 != 50) {
                        if (i2 == 52 && canCut()) {
                            return onTextContextMenuItem(16908320);
                        }
                    } else if (canPaste()) {
                        return onTextContextMenuItem(16908322);
                    }
                } else if (canCopy()) {
                    return onTextContextMenuItem(16908321);
                }
            } else if (canSelectText()) {
                return onTextContextMenuItem(16908319);
            }
        }
        return super.onKeyShortcut(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        KeyListener keyListener;
        InputMethodManager inputMethodManagerPeekInstance;
        Editor.InputContentType inputContentType;
        OnEditorActionListener onEditorActionListener;
        if (!isEnabled()) {
            return super.onKeyUp(i2, keyEvent);
        }
        if (!KeyEvent.isModifierKey(i2)) {
            this.mPreventDefaultMovement = false;
        }
        if (i2 == 23) {
            if (keyEvent.hasNoModifiers() && !hasOnClickListeners() && this.mMovement != null && (this.mText instanceof Editable) && this.mLayout != null && onCheckIsTextEditor()) {
                InputMethodManager inputMethodManagerPeekInstance2 = InputMethodManager.peekInstance();
                viewClicked(inputMethodManagerPeekInstance2);
                if (inputMethodManagerPeekInstance2 != null && getShowSoftInputOnFocus()) {
                    inputMethodManagerPeekInstance2.showSoftInput(this, 0);
                }
            }
            return super.onKeyUp(i2, keyEvent);
        }
        if (i2 != 66 || !keyEvent.hasNoModifiers()) {
            Editor editor = this.mEditor;
            if (editor != null && (keyListener = editor.mKeyListener) != null && keyListener.onKeyUp(this, (Editable) this.mText, i2, keyEvent)) {
                return true;
            }
            MovementMethod movementMethod = this.mMovement;
            if (movementMethod == null || this.mLayout == null || !movementMethod.onKeyUp(this, (Spannable) this.mText, i2, keyEvent)) {
                return super.onKeyUp(i2, keyEvent);
            }
            return true;
        }
        Editor editor2 = this.mEditor;
        if (editor2 != null && (inputContentType = editor2.mInputContentType) != null && (onEditorActionListener = inputContentType.onEditorActionListener) != null && inputContentType.enterDown) {
            inputContentType.enterDown = false;
            if (onEditorActionListener.onEditorAction(this, 0, keyEvent)) {
                return true;
            }
        }
        if (((keyEvent.getFlags() & 16) != 0 || shouldAdvanceFocusOnEnter()) && !hasOnClickListeners()) {
            View viewFocusSearch = focusSearch(130);
            if (viewFocusSearch != null) {
                if (!viewFocusSearch.requestFocus(130)) {
                    throw new IllegalStateException("focus search returned a view that wasn't able to take focus!");
                }
                super.onKeyUp(i2, keyEvent);
                return true;
            }
            if ((keyEvent.getFlags() & 16) != 0 && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null && inputMethodManagerPeekInstance.isActive(this)) {
                inputMethodManagerPeekInstance.hideSoftInputFromWindow(getWindowToken(), 0);
            }
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        int i6 = this.mDeferScroll;
        if (i6 >= 0) {
            this.mDeferScroll = -1;
            bringPointIntoView(Math.min(i6, this.mText.length()));
        }
    }

    public void onLocaleChanged() {
        this.mEditor.mWordIterator = null;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int iDesired;
        BoringLayout.Metrics metricsIsBoring;
        boolean z2;
        int iMax;
        int iMin;
        BoringLayout.Metrics metrics;
        BoringLayout.Metrics metricsIsBoring2;
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        BoringLayout.Metrics metrics2 = UNKNOWN_BORING;
        if (this.mTextDir == null) {
            this.mTextDir = getTextDirectionHeuristic();
        }
        if (mode == 1073741824) {
            iMin = size;
            metricsIsBoring = metrics2;
            metrics = metricsIsBoring;
            z2 = false;
            iDesired = -1;
        } else {
            Layout layout = this.mLayout;
            iDesired = (layout == null || this.mEllipsize != null) ? -1 : desired(layout);
            if (iDesired < 0) {
                metricsIsBoring = BoringLayout.isBoring(this.mTransformed, this.mTextPaint, this.mTextDir, this.mBoring);
                if (metricsIsBoring != null) {
                    this.mBoring = metricsIsBoring;
                }
                z2 = false;
            } else {
                metricsIsBoring = metrics2;
                z2 = true;
            }
            if (metricsIsBoring == null || metricsIsBoring == metrics2) {
                if (iDesired < 0) {
                    iDesired = (int) FloatMath.ceil(Layout.getDesiredWidth(this.mTransformed, this.mTextPaint));
                }
                iMax = iDesired;
            } else {
                iMax = metricsIsBoring.width;
            }
            Drawables drawables = this.mDrawables;
            if (drawables != null) {
                iMax = Math.max(Math.max(iMax, drawables.mDrawableWidthTop), drawables.mDrawableWidthBottom);
            }
            if (this.mHint != null) {
                Layout layout2 = this.mHintLayout;
                int iDesired2 = (layout2 == null || this.mEllipsize != null) ? -1 : desired(layout2);
                if (iDesired2 < 0) {
                    metricsIsBoring2 = BoringLayout.isBoring(this.mHint, this.mTextPaint, this.mTextDir, this.mHintBoring);
                    if (metricsIsBoring2 != null) {
                        this.mHintBoring = metricsIsBoring2;
                    }
                } else {
                    metricsIsBoring2 = metrics2;
                }
                if (metricsIsBoring2 == null || metricsIsBoring2 == metrics2) {
                    if (iDesired2 < 0) {
                        iDesired2 = (int) FloatMath.ceil(Layout.getDesiredWidth(this.mHint, this.mTextPaint));
                    }
                    i4 = iDesired2;
                } else {
                    i4 = metricsIsBoring2.width;
                }
                if (i4 > iMax) {
                    iMax = i4;
                }
                metrics2 = metricsIsBoring2;
            }
            int compoundPaddingLeft = iMax + getCompoundPaddingLeft() + getCompoundPaddingRight();
            int iMin2 = this.mMaxWidthMode == 1 ? Math.min(compoundPaddingLeft, this.mMaxWidth * getLineHeight()) : Math.min(compoundPaddingLeft, this.mMaxWidth);
            int iMax2 = Math.max(this.mMinWidthMode == 1 ? Math.max(iMin2, this.mMinWidth * getLineHeight()) : Math.max(iMin2, this.mMinWidth), getSuggestedMinimumWidth());
            iMin = mode == Integer.MIN_VALUE ? Math.min(size, iMax2) : iMax2;
            metrics = metrics2;
        }
        int compoundPaddingLeft2 = (iMin - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        int i5 = this.mHorizontallyScrolling ? 1048576 : compoundPaddingLeft2;
        Layout layout3 = this.mHintLayout;
        int width = layout3 == null ? i5 : layout3.getWidth();
        Layout layout4 = this.mLayout;
        if (layout4 == null) {
            makeNewLayout(i5, i5, metricsIsBoring, metrics, (iMin - getCompoundPaddingLeft()) - getCompoundPaddingRight(), false);
        } else {
            boolean z3 = (layout4.getWidth() == i5 && width == i5 && this.mLayout.getEllipsizedWidth() == (iMin - getCompoundPaddingLeft()) - getCompoundPaddingRight()) ? false : true;
            boolean z4 = this.mHint == null && this.mEllipsize == null && i5 > this.mLayout.getWidth() && ((this.mLayout instanceof BoringLayout) || (z2 && iDesired >= 0 && iDesired <= i5));
            boolean z5 = (this.mMaxMode == this.mOldMaxMode && this.mMaximum == this.mOldMaximum) ? false : true;
            if (z3 || z5) {
                if (z5 || !z4) {
                    makeNewLayout(i5, i5, metricsIsBoring, metrics, (iMin - getCompoundPaddingLeft()) - getCompoundPaddingRight(), false);
                } else {
                    this.mLayout.increaseWidthTo(i5);
                }
            }
        }
        if (mode2 == 1073741824) {
            this.mDesiredHeightAtMeasure = -1;
        } else {
            int desiredHeight = getDesiredHeight();
            this.mDesiredHeightAtMeasure = desiredHeight;
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(desiredHeight, size2) : desiredHeight;
        }
        int compoundPaddingTop = (size2 - getCompoundPaddingTop()) - getCompoundPaddingBottom();
        if (this.mMaxMode == 1) {
            int lineCount = this.mLayout.getLineCount();
            int i6 = this.mMaximum;
            if (lineCount > i6) {
                compoundPaddingTop = Math.min(compoundPaddingTop, this.mLayout.getLineTop(i6));
            }
        }
        if (this.mMovement != null || this.mLayout.getWidth() > compoundPaddingLeft2 || this.mLayout.getHeight() > compoundPaddingTop) {
            registerForPreDraw();
        } else {
            scrollTo(0, 0);
        }
        setMeasuredDimension(iMin, size2);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        if (!hasPasswordTransformationMethod() || shouldSpeakPasswordsForAccessibility()) {
            CharSequence textForAccessibility = getTextForAccessibility();
            if (TextUtils.isEmpty(textForAccessibility)) {
                return;
            }
            accessibilityEvent.getText().add(textForAccessibility);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        Editor editor;
        Editor.SelectionModifierCursorController selectionModifierCursorController;
        if (this.mLayout == null) {
            assumeLayout();
        }
        if (this.mMovement != null) {
            int selectionEnd = getSelectionEnd();
            Editor editor2 = this.mEditor;
            if (editor2 != null && (selectionModifierCursorController = editor2.mSelectionModifierCursorController) != null && selectionModifierCursorController.isSelectionStartDragged()) {
                selectionEnd = getSelectionStart();
            }
            if (selectionEnd < 0 && (this.mGravity & 112) == 80) {
                selectionEnd = this.mText.length();
            }
            if (selectionEnd >= 0) {
                bringPointIntoView(selectionEnd);
            }
        } else {
            bringTextIntoView();
        }
        Editor editor3 = this.mEditor;
        if (editor3 != null && editor3.mCreatedWithASelection) {
            editor3.startSelectionActionMode();
            this.mEditor.mCreatedWithASelection = false;
        }
        if ((this instanceof ExtractEditText) && hasSelection() && (editor = this.mEditor) != null) {
            editor.startSelectionActionMode();
        }
        getViewTreeObserver().removeOnPreDrawListener(this);
        this.mPreDrawRegistered = false;
        return true;
    }

    public boolean onPrivateIMECommand(String str, Bundle bundle) {
        return false;
    }

    @Override // android.view.View
    public void onResolveDrawables(int i2) {
        if (this.mLastLayoutDirection == i2) {
            return;
        }
        this.mLastLayoutDirection = i2;
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            drawables.resolveWithLayoutDirection(i2);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        CharSequence charSequence = savedState.text;
        if (charSequence != null) {
            setText(charSequence);
        }
        if (savedState.selStart >= 0 && savedState.selEnd >= 0) {
            CharSequence charSequence2 = this.mText;
            if (charSequence2 instanceof Spannable) {
                int length = charSequence2.length();
                int i3 = savedState.selStart;
                if (i3 > length || (i2 = savedState.selEnd) > length) {
                    Log.e(LOG_TAG, "Saved cursor position " + savedState.selStart + "/" + savedState.selEnd + " out of range for " + (savedState.text != null ? "(restored) " : ProxyProperties.LOCAL_EXCL_LIST) + "text " + ((Object) this.mText));
                } else {
                    Selection.setSelection((Spannable) this.mText, i3, i2);
                    if (savedState.frozenWithFocus) {
                        createEditorIfNeeded();
                        this.mEditor.mFrozenWithFocus = true;
                    }
                }
            }
        }
        final CharSequence charSequence3 = savedState.error;
        if (charSequence3 != null) {
            post(new Runnable() { // from class: android.widget.TextView.1
                @Override // java.lang.Runnable
                public void run() {
                    TextView.this.setError(charSequence3);
                }
            });
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        this.mTextDir = getTextDirectionHeuristic();
        if (this.mLayout != null) {
            checkForRelayout();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        int selectionEnd;
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        boolean z2 = this.mFreezesText;
        int selectionStart = 0;
        if (this.mText != null) {
            selectionStart = getSelectionStart();
            selectionEnd = getSelectionEnd();
            if (selectionStart >= 0 || selectionEnd >= 0) {
                z2 = true;
            }
        } else {
            selectionEnd = 0;
        }
        if (!z2) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.selStart = selectionStart;
        savedState.selEnd = selectionEnd;
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Spanned) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.mText);
            if (this.mEditor != null) {
                removeMisspelledSpans(spannableStringBuilder);
                spannableStringBuilder.removeSpan(this.mEditor.mSuggestionRangeSpan);
            }
            savedState.text = spannableStringBuilder;
        } else {
            savedState.text = charSequence.toString();
        }
        if (isFocused() && selectionStart >= 0 && selectionEnd >= 0) {
            savedState.frozenWithFocus = true;
        }
        savedState.error = getError();
        return savedState;
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i2) {
        super.onScreenStateChanged(i2);
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onScreenStateChanged(i2);
        }
    }

    @Override // android.view.View
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onScrollChanged();
        }
    }

    public void onSelectionChanged(int i2, int i3) {
        sendAccessibilityEvent(8192);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        if (!this.mDispatchTemporaryDetach) {
            this.mTemporaryDetach = true;
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.mTemporaryDetach = true;
        }
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public boolean onTextContextMenuItem(int i2) {
        int iMax;
        int length = this.mText.length();
        if (isFocused()) {
            int selectionStart = getSelectionStart();
            int selectionEnd = getSelectionEnd();
            iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
            length = Math.max(0, Math.max(selectionStart, selectionEnd));
        } else {
            iMax = 0;
        }
        switch (i2) {
            case 16908319:
                selectAllText();
                return true;
            case 16908320:
                setPrimaryClip(ClipData.newPlainText(null, getTransformedText(iMax, length)));
                deleteText_internal(iMax, length);
                stopSelectionActionMode();
                return true;
            case 16908321:
                setPrimaryClip(ClipData.newPlainText(null, getTransformedText(iMax, length)));
                stopSelectionActionMode();
                return true;
            case 16908322:
                paste(iMax, length);
                return true;
            default:
                return false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onTouchEvent(motionEvent);
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        Editor editor2 = this.mEditor;
        if (editor2 != null && editor2.mDiscardNextActionUp && actionMasked == 1) {
            editor2.mDiscardNextActionUp = false;
            return zOnTouchEvent;
        }
        boolean z2 = actionMasked == 1 && (editor2 == null || !editor2.mIgnoreActionUpEvent) && isFocused();
        if ((this.mMovement != null || onCheckIsTextEditor()) && isEnabled()) {
            CharSequence charSequence = this.mText;
            if ((charSequence instanceof Spannable) && this.mLayout != null) {
                MovementMethod movementMethod = this.mMovement;
                boolean zOnTouchEvent2 = movementMethod != null ? movementMethod.onTouchEvent(this, (Spannable) charSequence, motionEvent) | false : false;
                boolean zIsTextSelectable = isTextSelectable();
                if (z2 && this.mLinksClickable && this.mAutoLinkMask != 0 && zIsTextSelectable) {
                    ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((Spannable) this.mText).getSpans(getSelectionStart(), getSelectionEnd(), ClickableSpan.class);
                    if (clickableSpanArr.length > 0) {
                        clickableSpanArr[0].onClick(this);
                        zOnTouchEvent2 = true;
                    }
                }
                if (z2 && (isTextEditable() || zIsTextSelectable)) {
                    InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
                    viewClicked(inputMethodManagerPeekInstance);
                    if (!zIsTextSelectable && this.mEditor.mShowSoftInputOnFocus && inputMethodManagerPeekInstance != null) {
                        inputMethodManagerPeekInstance.showSoftInput(this, 0);
                    }
                    this.mEditor.onTouchUpEvent(motionEvent);
                    zOnTouchEvent2 = true;
                }
                if (zOnTouchEvent2) {
                    return true;
                }
            }
        }
        return zOnTouchEvent;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        MovementMethod movementMethod = this.mMovement;
        if (movementMethod != null) {
            CharSequence charSequence = this.mText;
            if ((charSequence instanceof Spannable) && this.mLayout != null && movementMethod.onTrackballEvent(this, (Spannable) charSequence, motionEvent)) {
                return true;
            }
        }
        return super.onTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        Editor editor = this.mEditor;
        if (editor == null || i2 == 0) {
            return;
        }
        editor.hideControllers();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onWindowFocusChanged(z2);
        }
        startStopMarquee(z2);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        CharSequence iterableTextForAccessibility;
        if (i2 == 16384) {
            return isFocused() && canCopy() && onTextContextMenuItem(16908321);
        }
        if (i2 == 32768) {
            return isFocused() && canPaste() && onTextContextMenuItem(16908322);
        }
        if (i2 == 65536) {
            return isFocused() && canCut() && onTextContextMenuItem(16908320);
        }
        if (i2 != 131072) {
            return super.performAccessibilityAction(i2, bundle);
        }
        if (!isFocused() || !canSelectText() || (iterableTextForAccessibility = getIterableTextForAccessibility()) == null) {
            return false;
        }
        int i3 = bundle != null ? bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_SELECTION_START_INT, -1) : -1;
        int i4 = bundle != null ? bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_SELECTION_END_INT, -1) : -1;
        if (getSelectionStart() != i3 || getSelectionEnd() != i4) {
            if (i3 == i4 && i4 == -1) {
                Selection.removeSelection((Spannable) iterableTextForAccessibility);
                return true;
            }
            if (i3 >= 0 && i3 <= i4 && i4 <= iterableTextForAccessibility.length()) {
                Selection.setSelection((Spannable) iterableTextForAccessibility, i3, i4);
                Editor editor = this.mEditor;
                if (editor != null) {
                    editor.startSelectionActionMode();
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean performLongClick() {
        boolean zPerformLongClick = super.performLongClick();
        Editor editor = this.mEditor;
        if (editor != null) {
            zPerformLongClick |= editor.performLongClick(zPerformLongClick);
        }
        if (zPerformLongClick) {
            performHapticFeedback(0);
            Editor editor2 = this.mEditor;
            if (editor2 != null) {
                editor2.mDiscardNextActionUp = true;
            }
        }
        return zPerformLongClick;
    }

    public long prepareSpacesAroundPaste(int i2, int i3, CharSequence charSequence) {
        int length;
        int length2;
        if (charSequence.length() > 0) {
            if (i2 > 0) {
                int i4 = i2 - 1;
                char cCharAt = this.mTransformed.charAt(i4);
                char cCharAt2 = charSequence.charAt(0);
                if (Character.isSpaceChar(cCharAt) && Character.isSpaceChar(cCharAt2)) {
                    length = this.mText.length();
                    deleteText_internal(i4, i2);
                    length2 = this.mText.length();
                } else if (!Character.isSpaceChar(cCharAt) && cCharAt != '\n' && !Character.isSpaceChar(cCharAt2) && cCharAt2 != '\n') {
                    length = this.mText.length();
                    replaceText_internal(i2, i2, " ");
                    length2 = this.mText.length();
                }
                int i5 = length2 - length;
                i2 += i5;
                i3 += i5;
            }
            if (i3 < this.mText.length()) {
                char cCharAt3 = charSequence.charAt(charSequence.length() - 1);
                char cCharAt4 = this.mTransformed.charAt(i3);
                if (Character.isSpaceChar(cCharAt3) && Character.isSpaceChar(cCharAt4)) {
                    deleteText_internal(i3, i3 + 1);
                } else if (!Character.isSpaceChar(cCharAt3) && cCharAt3 != '\n' && !Character.isSpaceChar(cCharAt4) && cCharAt4 != '\n') {
                    replaceText_internal(i3, i3, " ");
                }
            }
        }
        return TextUtils.packRangeInLong(i2, i3);
    }

    public void removeAdjacentSuggestionSpans(int i2) {
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Editable) {
            Editable editable = (Editable) charSequence;
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) editable.getSpans(i2, i2, SuggestionSpan.class);
            int length = suggestionSpanArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                int spanStart = editable.getSpanStart(suggestionSpanArr[i3]);
                int spanEnd = editable.getSpanEnd(suggestionSpanArr[i3]);
                if ((spanEnd == i2 || spanStart == i2) && SpellChecker.haveWordBoundariesChanged(editable, i2, i2, spanStart, spanEnd)) {
                    editable.removeSpan(suggestionSpanArr[i3]);
                }
            }
        }
    }

    public void removeMisspelledSpans(Spannable spannable) {
        SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(0, spannable.length(), SuggestionSpan.class);
        for (int i2 = 0; i2 < suggestionSpanArr.length; i2++) {
            int flags = suggestionSpanArr[i2].getFlags();
            if ((flags & 1) != 0 && (flags & 2) != 0) {
                spannable.removeSpan(suggestionSpanArr[i2]);
            }
        }
    }

    public CharSequence removeSuggestionSpans(CharSequence charSequence) {
        Spannable spannableString;
        if (charSequence instanceof Spanned) {
            if (charSequence instanceof Spannable) {
                spannableString = (Spannable) charSequence;
            } else {
                spannableString = new SpannableString(charSequence);
                charSequence = spannableString;
            }
            for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) spannableString.getSpans(0, charSequence.length(), SuggestionSpan.class)) {
                spannableString.removeSpan(suggestionSpan);
            }
        }
        return charSequence;
    }

    public void removeTextChangedListener(TextWatcher textWatcher) {
        int iIndexOf;
        ArrayList<TextWatcher> arrayList = this.mListeners;
        if (arrayList == null || (iIndexOf = arrayList.indexOf(textWatcher)) < 0) {
            return;
        }
        this.mListeners.remove(iIndexOf);
    }

    public void replaceText_internal(int i2, int i3, CharSequence charSequence) {
        ((Editable) this.mText).replace(i2, i3, charSequence);
    }

    public void resetErrorChangedFlag() {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.mErrorWasChanged = false;
        }
    }

    @Override // android.view.View
    public void resetResolvedDrawables() {
        super.resetResolvedDrawables();
        this.mLastLayoutDirection = -1;
    }

    public boolean selectAllText() {
        int length = this.mText.length();
        Selection.setSelection((Spannable) this.mText, 0, length);
        return length > 0;
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i2) {
        if (i2 == 4096) {
            return;
        }
        super.sendAccessibilityEvent(i2);
    }

    public void sendAccessibilityEventTypeViewTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16);
        accessibilityEventObtain.setFromIndex(i2);
        accessibilityEventObtain.setRemovedCount(i3);
        accessibilityEventObtain.setAddedCount(i4);
        accessibilityEventObtain.setBeforeText(charSequence);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    public void sendAfterTextChanged(Editable editable) {
        ArrayList<TextWatcher> arrayList = this.mListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.get(i2).afterTextChanged(editable);
            }
        }
    }

    public void sendOnTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        ArrayList<TextWatcher> arrayList = this.mListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                arrayList.get(i5).onTextChanged(charSequence, i2, i3, i4);
            }
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.sendOnTextChanged(i2, i4);
        }
    }

    @Override // android.view.View
    public void setAccessibilitySelection(int i2, int i3) {
        if (getAccessibilitySelectionStart() == i2 && getAccessibilitySelectionEnd() == i3) {
            return;
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.hideControllers();
        }
        CharSequence iterableTextForAccessibility = getIterableTextForAccessibility();
        if (Math.min(i2, i3) < 0 || Math.max(i2, i3) > iterableTextForAccessibility.length()) {
            Selection.removeSelection((Spannable) iterableTextForAccessibility);
        } else {
            Selection.setSelection((Spannable) iterableTextForAccessibility, i2, i3);
        }
    }

    public void setAllCaps(boolean z2) {
        if (z2) {
            setTransformationMethod(new AllCapsTransformationMethod(getContext()));
        } else {
            setTransformationMethod(null);
        }
    }

    @RemotableViewMethod
    public final void setAutoLinkMask(int i2) {
        this.mAutoLinkMask = i2;
    }

    @RemotableViewMethod
    public void setCompoundDrawablePadding(int i2) {
        Drawables drawables = this.mDrawables;
        if (i2 != 0) {
            if (drawables == null) {
                drawables = new Drawables(getContext());
                this.mDrawables = drawables;
            }
            drawables.mDrawablePadding = i2;
        } else if (drawables != null) {
            drawables.mDrawablePadding = i2;
        }
        invalidate();
        requestLayout();
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        Drawables drawables = this.mDrawables;
        if ((drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) ? false : true) {
            if (drawables == null) {
                drawables = new Drawables(getContext());
                this.mDrawables = drawables;
            }
            this.mDrawables.mOverride = false;
            Drawable drawable5 = drawables.mDrawableLeft;
            if (drawable5 != drawable && drawable5 != null) {
                drawable5.setCallback(null);
            }
            drawables.mDrawableLeft = drawable;
            Drawable drawable6 = drawables.mDrawableTop;
            if (drawable6 != drawable2 && drawable6 != null) {
                drawable6.setCallback(null);
            }
            drawables.mDrawableTop = drawable2;
            Drawable drawable7 = drawables.mDrawableRight;
            if (drawable7 != drawable3 && drawable7 != null) {
                drawable7.setCallback(null);
            }
            drawables.mDrawableRight = drawable3;
            Drawable drawable8 = drawables.mDrawableBottom;
            if (drawable8 != drawable4 && drawable8 != null) {
                drawable8.setCallback(null);
            }
            drawables.mDrawableBottom = drawable4;
            Rect rect = drawables.mCompoundRect;
            int[] drawableState = getDrawableState();
            if (drawable != null) {
                drawable.setState(drawableState);
                drawable.copyBounds(rect);
                drawable.setCallback(this);
                drawables.mDrawableSizeLeft = rect.width();
                drawables.mDrawableHeightLeft = rect.height();
            } else {
                drawables.mDrawableHeightLeft = 0;
                drawables.mDrawableSizeLeft = 0;
            }
            if (drawable3 != null) {
                drawable3.setState(drawableState);
                drawable3.copyBounds(rect);
                drawable3.setCallback(this);
                drawables.mDrawableSizeRight = rect.width();
                drawables.mDrawableHeightRight = rect.height();
            } else {
                drawables.mDrawableHeightRight = 0;
                drawables.mDrawableSizeRight = 0;
            }
            if (drawable2 != null) {
                drawable2.setState(drawableState);
                drawable2.copyBounds(rect);
                drawable2.setCallback(this);
                drawables.mDrawableSizeTop = rect.height();
                drawables.mDrawableWidthTop = rect.width();
            } else {
                drawables.mDrawableWidthTop = 0;
                drawables.mDrawableSizeTop = 0;
            }
            if (drawable4 != null) {
                drawable4.setState(drawableState);
                drawable4.copyBounds(rect);
                drawable4.setCallback(this);
                drawables.mDrawableSizeBottom = rect.height();
                drawables.mDrawableWidthBottom = rect.width();
            } else {
                drawables.mDrawableWidthBottom = 0;
                drawables.mDrawableSizeBottom = 0;
            }
        } else if (drawables != null) {
            if (drawables.mDrawablePadding == 0) {
                this.mDrawables = null;
            } else {
                Drawable drawable9 = drawables.mDrawableLeft;
                if (drawable9 != null) {
                    drawable9.setCallback(null);
                }
                drawables.mDrawableLeft = null;
                Drawable drawable10 = drawables.mDrawableTop;
                if (drawable10 != null) {
                    drawable10.setCallback(null);
                }
                drawables.mDrawableTop = null;
                Drawable drawable11 = drawables.mDrawableRight;
                if (drawable11 != null) {
                    drawable11.setCallback(null);
                }
                drawables.mDrawableRight = null;
                Drawable drawable12 = drawables.mDrawableBottom;
                if (drawable12 != null) {
                    drawable12.setCallback(null);
                }
                drawables.mDrawableBottom = null;
                drawables.mDrawableHeightLeft = 0;
                drawables.mDrawableSizeLeft = 0;
                drawables.mDrawableHeightRight = 0;
                drawables.mDrawableSizeRight = 0;
                drawables.mDrawableWidthTop = 0;
                drawables.mDrawableSizeTop = 0;
                drawables.mDrawableWidthBottom = 0;
                drawables.mDrawableSizeBottom = 0;
            }
        }
        if (drawables != null) {
            drawables.mDrawableLeftInitial = drawable;
            drawables.mDrawableRightInitial = drawable3;
        }
        resetResolvedDrawables();
        resolveDrawables();
        invalidate();
        requestLayout();
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        Drawables drawables = this.mDrawables;
        if ((drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) ? false : true) {
            if (drawables == null) {
                drawables = new Drawables(getContext());
                this.mDrawables = drawables;
            }
            this.mDrawables.mOverride = true;
            Drawable drawable5 = drawables.mDrawableStart;
            if (drawable5 != drawable && drawable5 != null) {
                drawable5.setCallback(null);
            }
            drawables.mDrawableStart = drawable;
            Drawable drawable6 = drawables.mDrawableTop;
            if (drawable6 != drawable2 && drawable6 != null) {
                drawable6.setCallback(null);
            }
            drawables.mDrawableTop = drawable2;
            Drawable drawable7 = drawables.mDrawableEnd;
            if (drawable7 != drawable3 && drawable7 != null) {
                drawable7.setCallback(null);
            }
            drawables.mDrawableEnd = drawable3;
            Drawable drawable8 = drawables.mDrawableBottom;
            if (drawable8 != drawable4 && drawable8 != null) {
                drawable8.setCallback(null);
            }
            drawables.mDrawableBottom = drawable4;
            Rect rect = drawables.mCompoundRect;
            int[] drawableState = getDrawableState();
            if (drawable != null) {
                drawable.setState(drawableState);
                drawable.copyBounds(rect);
                drawable.setCallback(this);
                drawables.mDrawableSizeStart = rect.width();
                drawables.mDrawableHeightStart = rect.height();
            } else {
                drawables.mDrawableHeightStart = 0;
                drawables.mDrawableSizeStart = 0;
            }
            if (drawable3 != null) {
                drawable3.setState(drawableState);
                drawable3.copyBounds(rect);
                drawable3.setCallback(this);
                drawables.mDrawableSizeEnd = rect.width();
                drawables.mDrawableHeightEnd = rect.height();
            } else {
                drawables.mDrawableHeightEnd = 0;
                drawables.mDrawableSizeEnd = 0;
            }
            if (drawable2 != null) {
                drawable2.setState(drawableState);
                drawable2.copyBounds(rect);
                drawable2.setCallback(this);
                drawables.mDrawableSizeTop = rect.height();
                drawables.mDrawableWidthTop = rect.width();
            } else {
                drawables.mDrawableWidthTop = 0;
                drawables.mDrawableSizeTop = 0;
            }
            if (drawable4 != null) {
                drawable4.setState(drawableState);
                drawable4.copyBounds(rect);
                drawable4.setCallback(this);
                drawables.mDrawableSizeBottom = rect.height();
                drawables.mDrawableWidthBottom = rect.width();
            } else {
                drawables.mDrawableWidthBottom = 0;
                drawables.mDrawableSizeBottom = 0;
            }
        } else if (drawables != null) {
            if (drawables.mDrawablePadding == 0) {
                this.mDrawables = null;
            } else {
                Drawable drawable9 = drawables.mDrawableStart;
                if (drawable9 != null) {
                    drawable9.setCallback(null);
                }
                drawables.mDrawableStart = null;
                Drawable drawable10 = drawables.mDrawableTop;
                if (drawable10 != null) {
                    drawable10.setCallback(null);
                }
                drawables.mDrawableTop = null;
                Drawable drawable11 = drawables.mDrawableEnd;
                if (drawable11 != null) {
                    drawable11.setCallback(null);
                }
                drawables.mDrawableEnd = null;
                Drawable drawable12 = drawables.mDrawableBottom;
                if (drawable12 != null) {
                    drawable12.setCallback(null);
                }
                drawables.mDrawableBottom = null;
                drawables.mDrawableHeightStart = 0;
                drawables.mDrawableSizeStart = 0;
                drawables.mDrawableHeightEnd = 0;
                drawables.mDrawableSizeEnd = 0;
                drawables.mDrawableWidthTop = 0;
                drawables.mDrawableSizeTop = 0;
                drawables.mDrawableWidthBottom = 0;
                drawables.mDrawableSizeBottom = 0;
            }
        }
        resetResolvedDrawables();
        resolveDrawables();
        invalidate();
        requestLayout();
    }

    @RemotableViewMethod
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Resources resources = getContext().getResources();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i2 != 0 ? resources.getDrawable(i2) : null, i3 != 0 ? resources.getDrawable(i3) : null, i4 != 0 ? resources.getDrawable(i4) : null, i5 != 0 ? resources.getDrawable(i5) : null);
    }

    @RemotableViewMethod
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Resources resources = getContext().getResources();
        setCompoundDrawablesWithIntrinsicBounds(i2 != 0 ? resources.getDrawable(i2) : null, i3 != 0 ? resources.getDrawable(i3) : null, i4 != 0 ? resources.getDrawable(i4) : null, i5 != 0 ? resources.getDrawable(i5) : null);
    }

    public void setCursorPosition_internal(int i2, int i3) {
        Selection.setSelection((Editable) this.mText, i2, i3);
    }

    @RemotableViewMethod
    public void setCursorVisible(boolean z2) {
        if (z2 && this.mEditor == null) {
            return;
        }
        createEditorIfNeeded();
        Editor editor = this.mEditor;
        if (editor.mCursorVisible != z2) {
            editor.mCursorVisible = z2;
            invalidate();
            this.mEditor.makeBlink();
            this.mEditor.prepareCursorControllers();
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        createEditorIfNeeded();
        this.mEditor.mCustomSelectionActionModeCallback = callback;
    }

    public final void setEditableFactory(Editable.Factory factory) {
        this.mEditableFactory = factory;
        setText(this.mText);
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.mEllipsize != truncateAt) {
            this.mEllipsize = truncateAt;
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    @RemotableViewMethod
    public void setEms(int i2) {
        this.mMinWidth = i2;
        this.mMaxWidth = i2;
        this.mMinWidthMode = 1;
        this.mMaxWidthMode = 1;
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        InputMethodManager inputMethodManagerPeekInstance;
        InputMethodManager inputMethodManagerPeekInstance2;
        if (z2 == isEnabled()) {
            return;
        }
        if (!z2 && (inputMethodManagerPeekInstance2 = InputMethodManager.peekInstance()) != null && inputMethodManagerPeekInstance2.isActive(this)) {
            inputMethodManagerPeekInstance2.hideSoftInputFromWindow(getWindowToken(), 0);
        }
        super.setEnabled(z2);
        if (z2 && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null) {
            inputMethodManagerPeekInstance.restartInput(this);
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.invalidateTextDisplayList();
            this.mEditor.prepareCursorControllers();
            this.mEditor.makeBlink();
        }
    }

    @RemotableViewMethod
    public void setError(CharSequence charSequence) {
        if (charSequence == null) {
            setError(null, null);
            return;
        }
        Drawable drawable = getContext().getResources().getDrawable(17302449);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        setError(charSequence, drawable);
    }

    public void setExtractedText(ExtractedText extractedText) {
        Editable editableText = getEditableText();
        CharSequence charSequence = extractedText.text;
        int i2 = 0;
        if (charSequence != null) {
            if (editableText == null) {
                setText(charSequence, BufferType.EDITABLE);
            } else if (extractedText.partialStartOffset < 0) {
                removeParcelableSpans(editableText, 0, editableText.length());
                editableText.replace(0, editableText.length(), extractedText.text);
            } else {
                int length = editableText.length();
                int i3 = extractedText.partialStartOffset;
                if (i3 > length) {
                    i3 = length;
                }
                int i4 = extractedText.partialEndOffset;
                if (i4 <= length) {
                    length = i4;
                }
                removeParcelableSpans(editableText, i3, length);
                editableText.replace(i3, length, extractedText.text);
            }
        }
        Spannable spannable = (Spannable) getText();
        int length2 = spannable.length();
        int i5 = extractedText.selectionStart;
        if (i5 < 0) {
            i5 = 0;
        } else if (i5 > length2) {
            i5 = length2;
        }
        int i6 = extractedText.selectionEnd;
        if (i6 >= 0) {
            i2 = i6 > length2 ? length2 : i6;
        }
        Selection.setSelection(spannable, i5, i2);
        if ((extractedText.flags & 2) != 0) {
            MetaKeyKeyListener.startSelecting(this, spannable);
        } else {
            MetaKeyKeyListener.stopSelecting(this, spannable);
        }
    }

    public void setExtracting(ExtractedTextRequest extractedTextRequest) {
        Editor editor = this.mEditor;
        Editor.InputMethodState inputMethodState = editor.mInputMethodState;
        if (inputMethodState != null) {
            inputMethodState.mExtractedTextRequest = extractedTextRequest;
        }
        editor.hideControllers();
    }

    public void setFilters(InputFilter[] inputFilterArr) {
        if (inputFilterArr == null) {
            throw new IllegalArgumentException();
        }
        this.mFilters = inputFilterArr;
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Editable) {
            setFilters((Editable) charSequence, inputFilterArr);
        }
    }

    @Override // android.view.View
    public boolean setFrame(int i2, int i3, int i4, int i5) {
        boolean frame = super.setFrame(i2, i3, i4, i5);
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.setFrame();
        }
        restartMarqueeIfNeeded();
        return frame;
    }

    @RemotableViewMethod
    public void setFreezesText(boolean z2) {
        this.mFreezesText = z2;
    }

    public void setGravity(int i2) {
        if ((i2 & 8388615) == 0) {
            i2 |= Gravity.START;
        }
        if ((i2 & 112) == 0) {
            i2 |= 48;
        }
        int i3 = i2 & 8388615;
        int i4 = this.mGravity;
        boolean z2 = i3 != (8388615 & i4);
        if (i2 != i4) {
            invalidate();
        }
        this.mGravity = i2;
        Layout layout = this.mLayout;
        if (layout == null || !z2) {
            return;
        }
        int width = layout.getWidth();
        Layout layout2 = this.mHintLayout;
        int width2 = layout2 != null ? layout2.getWidth() : 0;
        BoringLayout.Metrics metrics = UNKNOWN_BORING;
        makeNewLayout(width, width2, metrics, metrics, ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), true);
    }

    @RemotableViewMethod
    public void setHeight(int i2) {
        this.mMinimum = i2;
        this.mMaximum = i2;
        this.mMinMode = 2;
        this.mMaxMode = 2;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setHighlightColor(int i2) {
        if (this.mHighlightColor != i2) {
            this.mHighlightColor = i2;
            invalidate();
        }
    }

    @RemotableViewMethod
    public final void setHint(CharSequence charSequence) {
        this.mHint = TextUtils.stringOrSpannedString(charSequence);
        if (this.mLayout != null) {
            checkForRelayout();
        }
        if (this.mText.length() == 0) {
            invalidate();
        }
        if (this.mEditor == null || this.mText.length() != 0 || this.mHint == null) {
            return;
        }
        this.mEditor.invalidateTextDisplayList();
    }

    @RemotableViewMethod
    public final void setHintTextColor(int i2) {
        this.mHintTextColor = ColorStateList.valueOf(i2);
        updateTextColors();
    }

    public void setHorizontallyScrolling(boolean z2) {
        if (this.mHorizontallyScrolling != z2) {
            this.mHorizontallyScrolling = z2;
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    public void setImeActionLabel(CharSequence charSequence, int i2) {
        createEditorIfNeeded();
        this.mEditor.createInputContentTypeIfNeeded();
        Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
        inputContentType.imeActionLabel = charSequence;
        inputContentType.imeActionId = i2;
    }

    public void setImeOptions(int i2) {
        createEditorIfNeeded();
        this.mEditor.createInputContentTypeIfNeeded();
        this.mEditor.mInputContentType.imeOptions = i2;
    }

    public void setIncludeFontPadding(boolean z2) {
        if (this.mIncludePad != z2) {
            this.mIncludePad = z2;
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    public void setInputExtras(int i2) throws XmlPullParserException, IOException {
        createEditorIfNeeded();
        XmlResourceParser xml = getResources().getXml(i2);
        this.mEditor.createInputContentTypeIfNeeded();
        this.mEditor.mInputContentType.extras = new Bundle();
        getResources().parseBundleExtras(xml, this.mEditor.mInputContentType.extras);
    }

    public void setInputType(int i2) {
        boolean zIsPasswordInputType = isPasswordInputType(getInputType());
        boolean zIsVisiblePasswordInputType = isVisiblePasswordInputType(getInputType());
        boolean z2 = false;
        setInputType(i2, false);
        boolean zIsPasswordInputType2 = isPasswordInputType(i2);
        boolean zIsVisiblePasswordInputType2 = isVisiblePasswordInputType(i2);
        if (zIsPasswordInputType2) {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            setTypefaceFromAttrs(null, 3, 0);
        } else if (zIsVisiblePasswordInputType2) {
            boolean z3 = this.mTransformation == PasswordTransformationMethod.getInstance();
            setTypefaceFromAttrs(null, 3, 0);
            z2 = z3;
        } else if (zIsPasswordInputType || zIsVisiblePasswordInputType) {
            setTypefaceFromAttrs(null, -1, -1);
            if (this.mTransformation == PasswordTransformationMethod.getInstance()) {
                z2 = true;
            }
        }
        boolean z4 = !isMultilineInputType(i2);
        if (this.mSingleLine != z4 || z2) {
            applySingleLine(z4, !zIsPasswordInputType2, true);
        }
        if (!isSuggestionsEnabled()) {
            this.mText = removeSuggestionSpans(this.mText);
        }
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            inputMethodManagerPeekInstance.restartInput(this);
        }
    }

    public void setKeyListener(KeyListener keyListener) {
        setKeyListenerOnly(keyListener);
        fixFocusableAndClickableSettings();
        if (keyListener != null) {
            createEditorIfNeeded();
            try {
                Editor editor = this.mEditor;
                editor.mInputType = editor.mKeyListener.getInputType();
            } catch (IncompatibleClassChangeError unused) {
                this.mEditor.mInputType = 1;
            }
            setInputTypeSingleLine(this.mSingleLine);
        } else {
            Editor editor2 = this.mEditor;
            if (editor2 != null) {
                editor2.mInputType = 0;
            }
        }
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            inputMethodManagerPeekInstance.restartInput(this);
        }
    }

    public void setLineSpacing(float f2, float f3) {
        if (this.mSpacingAdd == f2 && this.mSpacingMult == f3) {
            return;
        }
        this.mSpacingAdd = f2;
        this.mSpacingMult = f3;
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
    }

    @RemotableViewMethod
    public void setLines(int i2) {
        this.mMinimum = i2;
        this.mMaximum = i2;
        this.mMinMode = 1;
        this.mMaxMode = 1;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public final void setLinkTextColor(int i2) {
        this.mLinkTextColor = ColorStateList.valueOf(i2);
        updateTextColors();
    }

    @RemotableViewMethod
    public final void setLinksClickable(boolean z2) {
        this.mLinksClickable = z2;
    }

    public void setMarqueeRepeatLimit(int i2) {
        this.mMarqueeRepeatLimit = i2;
    }

    @RemotableViewMethod
    public void setMaxEms(int i2) {
        this.mMaxWidth = i2;
        this.mMaxWidthMode = 1;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMaxHeight(int i2) {
        this.mMaximum = i2;
        this.mMaxMode = 2;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMaxLines(int i2) {
        this.mMaximum = i2;
        this.mMaxMode = 1;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMaxWidth(int i2) {
        this.mMaxWidth = i2;
        this.mMaxWidthMode = 2;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMinEms(int i2) {
        this.mMinWidth = i2;
        this.mMinWidthMode = 1;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMinHeight(int i2) {
        this.mMinimum = i2;
        this.mMinMode = 2;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMinLines(int i2) {
        this.mMinimum = i2;
        this.mMinMode = 1;
        requestLayout();
        invalidate();
    }

    @RemotableViewMethod
    public void setMinWidth(int i2) {
        this.mMinWidth = i2;
        this.mMinWidthMode = 2;
        requestLayout();
        invalidate();
    }

    public final void setMovementMethod(MovementMethod movementMethod) {
        if (this.mMovement != movementMethod) {
            this.mMovement = movementMethod;
            if (movementMethod != null) {
                CharSequence charSequence = this.mText;
                if (!(charSequence instanceof Spannable)) {
                    setText(charSequence);
                }
            }
            fixFocusableAndClickableSettings();
            Editor editor = this.mEditor;
            if (editor != null) {
                editor.prepareCursorControllers();
            }
        }
    }

    public void setOnEditorActionListener(OnEditorActionListener onEditorActionListener) {
        createEditorIfNeeded();
        this.mEditor.createInputContentTypeIfNeeded();
        this.mEditor.mInputContentType.onEditorActionListener = onEditorActionListener;
    }

    @Override // android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        if (i2 != this.mPaddingLeft || i4 != this.mPaddingRight || i3 != this.mPaddingTop || i5 != this.mPaddingBottom) {
            nullLayouts();
        }
        super.setPadding(i2, i3, i4, i5);
        invalidate();
    }

    @Override // android.view.View
    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        if (i2 != getPaddingStart() || i4 != getPaddingEnd() || i3 != this.mPaddingTop || i5 != this.mPaddingBottom) {
            nullLayouts();
        }
        super.setPaddingRelative(i2, i3, i4, i5);
        invalidate();
    }

    @RemotableViewMethod
    public void setPaintFlags(int i2) {
        if (this.mTextPaint.getFlags() != i2) {
            this.mTextPaint.setFlags(i2);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    public void setPrivateImeOptions(String str) {
        createEditorIfNeeded();
        this.mEditor.createInputContentTypeIfNeeded();
        this.mEditor.mInputContentType.privateImeOptions = str;
    }

    public void setRawInputType(int i2) {
        if (i2 == 0 && this.mEditor == null) {
            return;
        }
        createEditorIfNeeded();
        this.mEditor.mInputType = i2;
    }

    public void setScroller(Scroller scroller) {
        this.mScroller = scroller;
    }

    @RemotableViewMethod
    public void setSelectAllOnFocus(boolean z2) {
        createEditorIfNeeded();
        this.mEditor.mSelectAllOnFocus = z2;
        if (z2) {
            CharSequence charSequence = this.mText;
            if (charSequence instanceof Spannable) {
                return;
            }
            setText(charSequence, BufferType.SPANNABLE);
        }
    }

    @Override // android.view.View
    public void setSelected(boolean z2) {
        boolean zIsSelected = isSelected();
        super.setSelected(z2);
        if (z2 == zIsSelected || this.mEllipsize != TextUtils.TruncateAt.MARQUEE) {
            return;
        }
        if (z2) {
            startMarquee();
        } else {
            stopMarquee();
        }
    }

    public void setShadowLayer(float f2, float f3, float f4, int i2) {
        this.mTextPaint.setShadowLayer(f2, f3, f4, i2);
        this.mShadowRadius = f2;
        this.mShadowDx = f3;
        this.mShadowDy = f4;
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.invalidateTextDisplayList();
        }
        invalidate();
    }

    @RemotableViewMethod
    public final void setShowSoftInputOnFocus(boolean z2) {
        createEditorIfNeeded();
        this.mEditor.mShowSoftInputOnFocus = z2;
    }

    public void setSingleLine() {
        setSingleLine(true);
    }

    public void setSpan_internal(Object obj, int i2, int i3, int i4) {
        ((Editable) this.mText).setSpan(obj, i2, i3, i4);
    }

    public final void setSpannableFactory(Spannable.Factory factory) {
        this.mSpannableFactory = factory;
        setText(this.mText);
    }

    @RemotableViewMethod
    public final void setText(CharSequence charSequence) {
        setText(charSequence, this.mBufferType);
    }

    public void setTextAppearance(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, a.TextAppearance);
        int color = typedArrayObtainStyledAttributes.getColor(4, 0);
        if (color != 0) {
            setHighlightColor(color);
        }
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(3);
        if (colorStateList != null) {
            setTextColor(colorStateList);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        if (dimensionPixelSize != 0) {
            setRawTextSize(dimensionPixelSize);
        }
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(5);
        if (colorStateList2 != null) {
            setHintTextColor(colorStateList2);
        }
        ColorStateList colorStateList3 = typedArrayObtainStyledAttributes.getColorStateList(6);
        if (colorStateList3 != null) {
            setLinkTextColor(colorStateList3);
        }
        setTypefaceFromAttrs(typedArrayObtainStyledAttributes.getString(12), typedArrayObtainStyledAttributes.getInt(1, -1), typedArrayObtainStyledAttributes.getInt(2, -1));
        int i3 = typedArrayObtainStyledAttributes.getInt(7, 0);
        if (i3 != 0) {
            setShadowLayer(typedArrayObtainStyledAttributes.getFloat(10, 0.0f), typedArrayObtainStyledAttributes.getFloat(8, 0.0f), typedArrayObtainStyledAttributes.getFloat(9, 0.0f), i3);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(11, false)) {
            setTransformationMethod(new AllCapsTransformationMethod(getContext()));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @RemotableViewMethod
    public void setTextColor(int i2) {
        this.mTextColor = ColorStateList.valueOf(i2);
        updateTextColors();
    }

    public void setTextIsSelectable(boolean z2) {
        if (z2 || this.mEditor != null) {
            createEditorIfNeeded();
            Editor editor = this.mEditor;
            if (editor.mTextIsSelectable == z2) {
                return;
            }
            editor.mTextIsSelectable = z2;
            setFocusableInTouchMode(z2);
            setFocusable(z2);
            setClickable(z2);
            setLongClickable(z2);
            setMovementMethod(z2 ? ArrowKeyMovementMethod.getInstance() : null);
            setText(this.mText, z2 ? BufferType.SPANNABLE : BufferType.NORMAL);
            this.mEditor.prepareCursorControllers();
        }
    }

    @RemotableViewMethod
    public final void setTextKeepState(CharSequence charSequence) {
        setTextKeepState(charSequence, this.mBufferType);
    }

    public void setTextLocale(Locale locale) {
        this.mTextPaint.setTextLocale(locale);
    }

    @RemotableViewMethod
    public void setTextScaleX(float f2) {
        if (f2 != this.mTextPaint.getTextScaleX()) {
            this.mUserSetTextScaleX = true;
            this.mTextPaint.setTextScaleX(f2);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    @RemotableViewMethod
    public void setTextSize(float f2) {
        setTextSize(2, f2);
    }

    public final void setTransformationMethod(TransformationMethod transformationMethod) {
        TransformationMethod transformationMethod2 = this.mTransformation;
        if (transformationMethod == transformationMethod2) {
            return;
        }
        if (transformationMethod2 != null) {
            CharSequence charSequence = this.mText;
            if (charSequence instanceof Spannable) {
                ((Spannable) charSequence).removeSpan(transformationMethod2);
            }
        }
        this.mTransformation = transformationMethod;
        if (transformationMethod instanceof TransformationMethod2) {
            TransformationMethod2 transformationMethod3 = (TransformationMethod2) transformationMethod;
            boolean z2 = (isTextSelectable() || (this.mText instanceof Editable)) ? false : true;
            this.mAllowTransformationLengthChange = z2;
            transformationMethod3.setLengthChangesAllowed(z2);
        } else {
            this.mAllowTransformationLengthChange = false;
        }
        setText(this.mText);
        if (hasPasswordTransformationMethod()) {
            notifyViewAccessibilityStateChangedIfNeeded(0);
        }
    }

    public void setTypeface(Typeface typeface, int i2) {
        if (i2 <= 0) {
            this.mTextPaint.setFakeBoldText(false);
            this.mTextPaint.setTextSkewX(0.0f);
            setTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
            setTypeface(typefaceDefaultFromStyle);
            int i3 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i2;
            this.mTextPaint.setFakeBoldText((i3 & 1) != 0);
            this.mTextPaint.setTextSkewX((i3 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public final void setUndoManager(UndoManager undoManager, String str) {
        if (undoManager == null) {
            Editor editor = this.mEditor;
            if (editor != null) {
                editor.mUndoManager = null;
                editor.mUndoOwner = null;
                editor.mUndoInputFilter = null;
                return;
            }
            return;
        }
        createEditorIfNeeded();
        Editor editor2 = this.mEditor;
        editor2.mUndoManager = undoManager;
        editor2.mUndoOwner = undoManager.getOwner(str, this);
        Editor editor3 = this.mEditor;
        editor3.mUndoInputFilter = new Editor.UndoInputFilter(editor3);
        CharSequence charSequence = this.mText;
        if (!(charSequence instanceof Editable)) {
            setText(charSequence, BufferType.EDITABLE);
        }
        setFilters((Editable) this.mText, this.mFilters);
    }

    @RemotableViewMethod
    public void setWidth(int i2) {
        this.mMinWidth = i2;
        this.mMaxWidth = i2;
        this.mMinWidthMode = 2;
        this.mMaxWidthMode = 2;
        requestLayout();
        invalidate();
    }

    public void spanChange(Spanned spanned, Object obj, int i2, int i3, int i4, int i5) {
        boolean z2;
        int selectionEnd;
        SpellChecker spellChecker;
        Editor editor = this.mEditor;
        Editor.InputMethodState inputMethodState = editor == null ? null : editor.mInputMethodState;
        int selectionStart = -1;
        if (obj == Selection.SELECTION_END) {
            if (i2 >= 0 || i3 >= 0) {
                invalidateCursor(Selection.getSelectionStart(spanned), i2, i3);
                checkForResize();
                registerForPreDraw();
                Editor editor2 = this.mEditor;
                if (editor2 != null) {
                    editor2.makeBlink();
                }
            }
            selectionEnd = i3;
            z2 = true;
        } else {
            z2 = false;
            selectionEnd = -1;
        }
        if (obj == Selection.SELECTION_START) {
            if (i2 >= 0 || i3 >= 0) {
                invalidateCursor(Selection.getSelectionEnd(spanned), i2, i3);
            }
            selectionStart = i3;
            z2 = true;
        }
        if (z2) {
            this.mHighlightPathBogus = true;
            if (this.mEditor != null && !isFocused()) {
                this.mEditor.mSelectionMoved = true;
            }
            if ((spanned.getSpanFlags(obj) & 512) == 0) {
                if (selectionStart < 0) {
                    selectionStart = Selection.getSelectionStart(spanned);
                }
                if (selectionEnd < 0) {
                    selectionEnd = Selection.getSelectionEnd(spanned);
                }
                onSelectionChanged(selectionStart, selectionEnd);
            }
        }
        if ((obj instanceof UpdateAppearance) || (obj instanceof ParagraphStyle) || (obj instanceof CharacterStyle)) {
            if (inputMethodState == null || inputMethodState.mBatchEditNesting == 0) {
                invalidate();
                this.mHighlightPathBogus = true;
                checkForResize();
            } else {
                inputMethodState.mContentChanged = true;
            }
            Editor editor3 = this.mEditor;
            if (editor3 != null) {
                if (i2 >= 0) {
                    editor3.invalidateTextDisplayList(this.mLayout, i2, i4);
                }
                if (i3 >= 0) {
                    this.mEditor.invalidateTextDisplayList(this.mLayout, i3, i5);
                }
            }
        }
        if (MetaKeyKeyListener.isMetaTracker(spanned, obj)) {
            this.mHighlightPathBogus = true;
            if (inputMethodState != null && MetaKeyKeyListener.isSelectingMetaTracker(spanned, obj)) {
                inputMethodState.mSelectionModeChanged = true;
            }
            if (Selection.getSelectionStart(spanned) >= 0) {
                if (inputMethodState == null || inputMethodState.mBatchEditNesting == 0) {
                    invalidateCursor();
                } else {
                    inputMethodState.mCursorChanged = true;
                }
            }
        }
        if ((obj instanceof ParcelableSpan) && inputMethodState != null && inputMethodState.mExtractedTextRequest != null) {
            if (inputMethodState.mBatchEditNesting != 0) {
                if (i2 >= 0) {
                    if (inputMethodState.mChangedStart > i2) {
                        inputMethodState.mChangedStart = i2;
                    }
                    if (inputMethodState.mChangedStart > i4) {
                        inputMethodState.mChangedStart = i4;
                    }
                }
                if (i3 >= 0) {
                    if (inputMethodState.mChangedStart > i3) {
                        inputMethodState.mChangedStart = i3;
                    }
                    if (inputMethodState.mChangedStart > i5) {
                        inputMethodState.mChangedStart = i5;
                    }
                }
            } else {
                inputMethodState.mContentChanged = true;
            }
        }
        Editor editor4 = this.mEditor;
        if (editor4 == null || (spellChecker = editor4.mSpellChecker) == null || i3 >= 0 || !(obj instanceof SpellCheckSpan)) {
            return;
        }
        spellChecker.onSpellCheckSpanRemoved((SpellCheckSpan) obj);
    }

    public void stopSelectionActionMode() {
        this.mEditor.stopSelectionActionMode();
    }

    public boolean textCanBeSelected() {
        MovementMethod movementMethod = this.mMovement;
        if (movementMethod == null || !movementMethod.canSelectArbitrarily()) {
            return false;
        }
        return isTextEditable() || (isTextSelectable() && (this.mText instanceof Spannable) && isEnabled());
    }

    public void updateAfterEdit() {
        invalidate();
        int selectionStart = getSelectionStart();
        if (selectionStart >= 0 || (this.mGravity & 112) == 80) {
            registerForPreDraw();
        }
        checkForResize();
        if (selectionStart >= 0) {
            this.mHighlightPathBogus = true;
            Editor editor = this.mEditor;
            if (editor != null) {
                editor.makeBlink();
            }
            bringPointIntoView(selectionStart);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        Drawables drawables;
        boolean zVerifyDrawable = super.verifyDrawable(drawable);
        if (zVerifyDrawable || (drawables = this.mDrawables) == null) {
            return zVerifyDrawable;
        }
        return drawable == drawables.mDrawableLeft || drawable == drawables.mDrawableTop || drawable == drawables.mDrawableRight || drawable == drawables.mDrawableBottom || drawable == drawables.mDrawableStart || drawable == drawables.mDrawableEnd;
    }

    public void viewClicked(InputMethodManager inputMethodManager) {
        if (inputMethodManager != null) {
            inputMethodManager.viewClicked(this);
        }
    }

    public int viewportToContentHorizontalOffset() {
        return getCompoundPaddingLeft() - this.mScrollX;
    }

    public int viewportToContentVerticalOffset() {
        int extendedPaddingTop = getExtendedPaddingTop() - this.mScrollY;
        return (this.mGravity & 112) != 48 ? extendedPaddingTop + getVerticalOffset(false) : extendedPaddingTop;
    }

    public TextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private int getDesiredHeight(Layout layout, boolean z2) {
        int i2;
        if (layout == null) {
            return 0;
        }
        int lineCount = layout.getLineCount();
        int compoundPaddingTop = getCompoundPaddingTop() + getCompoundPaddingBottom();
        int lineTop = layout.getLineTop(lineCount);
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            lineTop = Math.max(Math.max(lineTop, drawables.mDrawableHeightLeft), drawables.mDrawableHeightRight);
        }
        int iMin = lineTop + compoundPaddingTop;
        if (this.mMaxMode != 1) {
            iMin = Math.min(iMin, this.mMaximum);
        } else if (z2 && lineCount > (i2 = this.mMaximum)) {
            int lineTop2 = layout.getLineTop(i2);
            if (drawables != null) {
                lineTop2 = Math.max(Math.max(lineTop2, drawables.mDrawableHeightLeft), drawables.mDrawableHeightRight);
            }
            iMin = lineTop2 + compoundPaddingTop;
            lineCount = this.mMaximum;
        }
        if (this.mMinMode != 1) {
            iMin = Math.max(iMin, this.mMinimum);
        } else if (lineCount < this.mMinimum) {
            iMin += getLineHeight() * (this.mMinimum - lineCount);
        }
        return Math.max(iMin, getSuggestedMinimumHeight());
    }

    public static ColorStateList getTextColors(Context context, TypedArray typedArray) {
        int resourceId;
        ColorStateList colorStateList = typedArray.getColorStateList(5);
        if (colorStateList != null || (resourceId = typedArray.getResourceId(1, -1)) == -1) {
            return colorStateList;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId, a.TextAppearance);
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(3);
        typedArrayObtainStyledAttributes.recycle();
        return colorStateList2;
    }

    public void append(CharSequence charSequence, int i2, int i3) {
        CharSequence charSequence2 = this.mText;
        if (!(charSequence2 instanceof Editable)) {
            setText(charSequence2, BufferType.EDITABLE);
        }
        ((Editable) this.mText).append(charSequence, i2, i3);
    }

    @RemotableViewMethod
    public void setSingleLine(boolean z2) {
        setInputTypeSingleLine(z2);
        applySingleLine(z2, true, true);
    }

    public void setText(CharSequence charSequence, BufferType bufferType) {
        setText(charSequence, bufferType, true, 0);
        CharWrapper charWrapper = this.mCharWrapper;
        if (charWrapper != null) {
            charWrapper.mChars = null;
        }
    }

    public final void setTextKeepState(CharSequence charSequence, BufferType bufferType) {
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        int length = charSequence.length();
        setText(charSequence, bufferType);
        if (selectionStart >= 0 || selectionEnd >= 0) {
            CharSequence charSequence2 = this.mText;
            if (charSequence2 instanceof Spannable) {
                Selection.setSelection((Spannable) charSequence2, Math.max(0, Math.min(selectionStart, length)), Math.max(0, Math.min(selectionEnd, length)));
            }
        }
    }

    public void setTextSize(int i2, float f2) {
        Context context = getContext();
        setRawTextSize(TypedValue.applyDimension(i2, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:218:0x0747  */
    /* JADX WARN: Code duplicated, block: B:220:0x074c  */
    /* JADX WARN: Code duplicated, block: B:222:0x0758  */
    /* JADX WARN: Code duplicated, block: B:229:0x0781  */
    /* JADX WARN: Code duplicated, block: B:232:0x0785  */
    /* JADX WARN: Code duplicated, block: B:234:0x0788  */
    /* JADX WARN: Code duplicated, block: B:236:0x078b  */
    /* JADX WARN: Code duplicated, block: B:239:0x078f  */
    /* JADX WARN: Code duplicated, block: B:241:0x0799  */
    /* JADX WARN: Code duplicated, block: B:242:0x07a0  */
    /* JADX WARN: Code duplicated, block: B:244:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:245:0x07b2  */
    /* JADX WARN: Code duplicated, block: B:246:0x07b9  */
    /* JADX WARN: Code duplicated, block: B:249:0x07c2  */
    /* JADX WARN: Code duplicated, block: B:252:0x07d9  */
    /* JADX WARN: Code duplicated, block: B:255:0x07e6  */
    /* JADX WARN: Code duplicated, block: B:267:0x080f  */
    /* JADX WARN: Code duplicated, block: B:271:0x0822  */
    /* JADX WARN: Code duplicated, block: B:273:0x082d  */
    /* JADX WARN: Code duplicated, block: B:274:0x083e  */
    /* JADX WARN: Code duplicated, block: B:277:0x084c  */
    /* JADX WARN: Code duplicated, block: B:280:0x0860  */
    /* JADX WARN: Code duplicated, block: B:284:0x0869  */
    /* JADX WARN: Code duplicated, block: B:287:0x0873  */
    /* JADX WARN: Code duplicated, block: B:289:0x087b  */
    /* JADX WARN: Code duplicated, block: B:291:0x087f  */
    /* JADX WARN: Code duplicated, block: B:294:0x0884  */
    /* JADX WARN: Code duplicated, block: B:295:0x0889  */
    /* JADX WARN: Code duplicated, block: B:296:0x088e  */
    /* JADX WARN: Code duplicated, block: B:300:0x08a5  */
    /* JADX WARN: Code duplicated, block: B:303:0x08ae  */
    /* JADX WARN: Code duplicated, block: B:336:0x0892 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:? A[RETURN, SYNTHETIC] */
    public TextView(Context context, AttributeSet attributeSet, int i2) {
        int color;
        boolean z2;
        int i3;
        int i4;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        String string;
        int i5;
        int i6;
        float f2;
        float f3;
        float f4;
        BufferType bufferType;
        boolean z3;
        Editor editor;
        int i7;
        int i8;
        int i9;
        int i10;
        CharSequence charSequence;
        TypedArray typedArrayObtainStyledAttributes;
        boolean z4;
        int indexCount;
        boolean z5;
        boolean z6;
        int i11;
        Editor editor2;
        int index;
        TextKeyListener.Capitalize capitalize;
        int i12;
        super(context, attributeSet, i2);
        String str = "Failure reading input extras";
        String str2 = LOG_TAG;
        this.mEditableFactory = Editable.Factory.getInstance();
        this.mSpannableFactory = Spannable.Factory.getInstance();
        this.mMarqueeRepeatLimit = 3;
        this.mLastLayoutDirection = -1;
        int i13 = 0;
        this.mMarqueeFadeMode = 0;
        this.mBufferType = BufferType.NORMAL;
        this.mGravity = 8388659;
        this.mLinksClickable = true;
        this.mSpacingMult = 1.0f;
        float f5 = 0.0f;
        this.mSpacingAdd = 0.0f;
        this.mMaximum = Integer.MAX_VALUE;
        this.mMaxMode = 1;
        this.mMinimum = 0;
        this.mMinMode = 1;
        this.mOldMaximum = Integer.MAX_VALUE;
        this.mOldMaxMode = 1;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxWidthMode = 2;
        this.mMinWidth = 0;
        this.mMinWidthMode = 2;
        this.mDesiredHeightAtMeasure = -1;
        this.mIncludePad = true;
        this.mDeferScroll = -1;
        this.mFilters = NO_FILTERS;
        this.mHighlightColor = 1714664933;
        this.mHighlightPathBogus = true;
        this.mText = ProxyProperties.LOCAL_EXCL_LIST;
        Resources resources = getResources();
        CompatibilityInfo compatibilityInfo = resources.getCompatibilityInfo();
        TextPaint textPaint = new TextPaint(1);
        this.mTextPaint = textPaint;
        textPaint.density = resources.getDisplayMetrics().density;
        textPaint.setCompatibilityScaling(compatibilityInfo.applicationScale);
        Paint paint = new Paint(1);
        this.mHighlightPaint = paint;
        paint.setCompatibilityScaling(compatibilityInfo.applicationScale);
        this.mMovement = getDefaultMovementMethod();
        this.mTransformation = null;
        Resources.Theme theme = context.getTheme();
        TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, a.TextViewAppearance, i2, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
        typedArrayObtainStyledAttributes2.recycle();
        TypedArray typedArrayObtainStyledAttributes3 = resourceId != -1 ? theme.obtainStyledAttributes(resourceId, a.TextAppearance) : null;
        if (typedArrayObtainStyledAttributes3 != null) {
            int indexCount2 = typedArrayObtainStyledAttributes3.getIndexCount();
            i5 = -1;
            i6 = -1;
            color = 0;
            int i14 = 0;
            z2 = false;
            i3 = 0;
            f2 = 0.0f;
            f3 = 0.0f;
            f4 = 0.0f;
            int dimensionPixelSize = 15;
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            string = null;
            while (i14 < indexCount2) {
                int index2 = typedArrayObtainStyledAttributes3.getIndex(i14);
                switch (index2) {
                    case 0:
                        dimensionPixelSize = typedArrayObtainStyledAttributes3.getDimensionPixelSize(index2, dimensionPixelSize);
                        break;
                    case 1:
                        i5 = typedArrayObtainStyledAttributes3.getInt(index2, -1);
                        break;
                    case 2:
                        i6 = typedArrayObtainStyledAttributes3.getInt(index2, -1);
                        break;
                    case 3:
                        colorStateList = typedArrayObtainStyledAttributes3.getColorStateList(index2);
                        break;
                    case 4:
                        color = typedArrayObtainStyledAttributes3.getColor(index2, color);
                        break;
                    case 5:
                        colorStateList2 = typedArrayObtainStyledAttributes3.getColorStateList(index2);
                        break;
                    case 6:
                        colorStateList3 = typedArrayObtainStyledAttributes3.getColorStateList(index2);
                        break;
                    case 7:
                        i3 = typedArrayObtainStyledAttributes2.getInt(index2, 0);
                        break;
                    case 8:
                        f2 = typedArrayObtainStyledAttributes2.getFloat(index2, f5);
                        break;
                    case 9:
                        f3 = typedArrayObtainStyledAttributes2.getFloat(index2, f5);
                        break;
                    case 10:
                        f4 = typedArrayObtainStyledAttributes2.getFloat(index2, f5);
                        break;
                    case 11:
                        z2 = typedArrayObtainStyledAttributes3.getBoolean(index2, false);
                        break;
                    case 12:
                        string = typedArrayObtainStyledAttributes3.getString(index2);
                        break;
                }
                i14++;
                f5 = 0.0f;
            }
            typedArrayObtainStyledAttributes3.recycle();
            i4 = dimensionPixelSize;
        } else {
            color = 0;
            z2 = false;
            i3 = 0;
            i4 = 15;
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            string = null;
            i5 = -1;
            i6 = -1;
            f2 = 0.0f;
            f3 = 0.0f;
            f4 = 0.0f;
        }
        boolean defaultEditable = getDefaultEditable();
        TypedArray typedArrayObtainStyledAttributes4 = theme.obtainStyledAttributes(attributeSet, a.TextView, i2, 0);
        int indexCount3 = typedArrayObtainStyledAttributes4.getIndexCount();
        int dimensionPixelSize2 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i15 = 0;
        int i16 = 0;
        ColorStateList colorStateList4 = colorStateList2;
        ColorStateList colorStateList5 = colorStateList3;
        String string2 = string;
        int i17 = i5;
        int i18 = i6;
        int i19 = i3;
        float f6 = f2;
        float f7 = f3;
        float f8 = f4;
        CharSequence text = null;
        int i20 = -1;
        int i21 = -1;
        Drawable drawable = null;
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        Drawable drawable6 = null;
        CharSequence text2 = null;
        CharSequence text3 = ProxyProperties.LOCAL_EXCL_LIST;
        int i22 = 0;
        int color2 = color;
        int dimensionPixelSize3 = i4;
        ColorStateList colorStateList6 = colorStateList;
        int i23 = -1;
        CharSequence text4 = null;
        boolean z11 = defaultEditable;
        boolean z12 = false;
        while (i13 < indexCount3) {
            int index3 = typedArrayObtainStyledAttributes4.getIndex(i13);
            switch (index3) {
                case 0:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    i22 = i22;
                    str = str;
                    z12 = z12;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    color2 = color2;
                    i18 = i18;
                    setEnabled(typedArrayObtainStyledAttributes4.getBoolean(index3, isEnabled()));
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 1:
                case 65:
                case 66:
                case 68:
                case 69:
                default:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 2:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    i22 = i22;
                    str = str;
                    z12 = z12;
                    color2 = color2;
                    str2 = str2;
                    dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, dimensionPixelSize3);
                    z12 = z12;
                    i22 = i22;
                    break;
                case 3:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    i22 = i22;
                    str = str;
                    z12 = z12;
                    color2 = color2;
                    str2 = str2;
                    i17 = typedArrayObtainStyledAttributes4.getInt(index3, i17);
                    z12 = z12;
                    i22 = i22;
                    break;
                case 4:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    str = str;
                    color2 = color2;
                    str2 = str2;
                    i18 = typedArrayObtainStyledAttributes4.getInt(index3, i18);
                    break;
                case 5:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    color2 = color2;
                    colorStateList6 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    str2 = str2;
                    break;
                case 6:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    color2 = typedArrayObtainStyledAttributes4.getColor(index3, color2);
                    str2 = str2;
                    break;
                case 7:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    colorStateList4 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    color2 = color2;
                    str2 = str2;
                    break;
                case 8:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    colorStateList5 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    color2 = color2;
                    str2 = str2;
                    break;
                case 9:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    i21 = typedArrayObtainStyledAttributes4.getInt(index3, i21);
                    color2 = color2;
                    str2 = str2;
                    break;
                case 10:
                    setGravity(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 11:
                    this.mAutoLinkMask = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 12:
                    this.mLinksClickable = typedArrayObtainStyledAttributes4.getBoolean(index3, true);
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 13:
                    setMaxWidth(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 14:
                    setMaxHeight(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 15:
                    setMinWidth(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 16:
                    setMinHeight(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 17:
                    i22 = typedArrayObtainStyledAttributes4.getInt(index3, i22);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 18:
                    text3 = typedArrayObtainStyledAttributes4.getText(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 19:
                    text2 = typedArrayObtainStyledAttributes4.getText(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 20:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setTextScaleX(typedArrayObtainStyledAttributes4.getFloat(index3, 1.0f));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 21:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    if (!typedArrayObtainStyledAttributes4.getBoolean(index3, true)) {
                        setCursorVisible(false);
                    }
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 22:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setMaxLines(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 23:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setLines(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 24:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setHeight(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 25:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setMinLines(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 26:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setMaxEms(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 27:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setEms(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 28:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setWidth(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 29:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setMinEms(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 30:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    if (typedArrayObtainStyledAttributes4.getBoolean(index3, false)) {
                        setHorizontallyScrolling(true);
                    }
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 31:
                    z7 = typedArrayObtainStyledAttributes4.getBoolean(index3, z7);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 32:
                    z12 = typedArrayObtainStyledAttributes4.getBoolean(index3, z12);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 33:
                    z10 = typedArrayObtainStyledAttributes4.getBoolean(index3, z10);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 34:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    if (!typedArrayObtainStyledAttributes4.getBoolean(index3, true)) {
                        setIncludeFontPadding(false);
                    }
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 35:
                    i20 = typedArrayObtainStyledAttributes4.getInt(index3, -1);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 36:
                    i19 = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 37:
                    f6 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 38:
                    f7 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 39:
                    f8 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 40:
                    i15 = typedArrayObtainStyledAttributes4.getInt(index3, i15);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 41:
                    text = typedArrayObtainStyledAttributes4.getText(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 42:
                    z8 = typedArrayObtainStyledAttributes4.getBoolean(index3, z8);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 43:
                    text4 = typedArrayObtainStyledAttributes4.getText(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 44:
                    i23 = typedArrayObtainStyledAttributes4.getInt(index3, i23);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 45:
                    z9 = typedArrayObtainStyledAttributes4.getBoolean(index3, z9);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 46:
                    z11 = typedArrayObtainStyledAttributes4.getBoolean(index3, z11);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 47:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    this.mFreezesText = typedArrayObtainStyledAttributes4.getBoolean(index3, false);
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 48:
                    drawable2 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 49:
                    drawable4 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 50:
                    drawable = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 51:
                    drawable3 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 52:
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, dimensionPixelSize2);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 53:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    this.mSpacingAdd = typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, (int) this.mSpacingAdd);
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 54:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    this.mSpacingMult = typedArrayObtainStyledAttributes4.getFloat(index3, this.mSpacingMult);
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 55:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setMarqueeRepeatLimit(typedArrayObtainStyledAttributes4.getInt(index3, this.mMarqueeRepeatLimit));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 56:
                    i16 = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 57:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    setPrivateImeOptions(typedArrayObtainStyledAttributes4.getString(index3));
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 58:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    try {
                        setInputExtras(typedArrayObtainStyledAttributes4.getResourceId(index3, 0));
                    } catch (IOException e2) {
                        Log.w(str2, str, e2);
                    } catch (XmlPullParserException e3) {
                        Log.w(str2, str, e3);
                    }
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 59:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    this.mEditor.createInputContentTypeIfNeeded();
                    Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
                    inputContentType.imeOptions = typedArrayObtainStyledAttributes4.getInt(index3, inputContentType.imeOptions);
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 60:
                    i13 = i13;
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    this.mEditor.createInputContentTypeIfNeeded();
                    this.mEditor.mInputContentType.imeActionLabel = typedArrayObtainStyledAttributes4.getText(index3);
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 61:
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    this.mEditor.createInputContentTypeIfNeeded();
                    Editor.InputContentType inputContentType2 = this.mEditor.mInputContentType;
                    i13 = i13;
                    inputContentType2.imeActionId = typedArrayObtainStyledAttributes4.getInt(index3, inputContentType2.imeActionId);
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 62:
                    this.mTextSelectHandleLeftRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i13 = i13;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 63:
                    this.mTextSelectHandleRightRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i13 = i13;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 64:
                    this.mTextSelectHandleRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i13 = i13;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 67:
                    setTextIsSelectable(typedArrayObtainStyledAttributes4.getBoolean(index3, false));
                    i13 = i13;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 70:
                    this.mCursorDrawableRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i13 = i13;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 71:
                    this.mTextEditSuggestionItemLayout = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i13 = i13;
                    i22 = i22;
                    i18 = i18;
                    dimensionPixelSize3 = dimensionPixelSize3;
                    z12 = z12;
                    i22 = i22;
                    break;
                case 72:
                    z2 = typedArrayObtainStyledAttributes4.getBoolean(index3, false);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 73:
                    drawable5 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 74:
                    drawable6 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
                case 75:
                    string2 = typedArrayObtainStyledAttributes4.getString(index3);
                    i21 = i21;
                    color2 = color2;
                    str2 = str2;
                    break;
            }
            str2 = str2;
            indexCount3 = indexCount3;
            color2 = color2;
            str = str;
            i21 = i21;
            i13++;
        }
        int i24 = color2;
        int i25 = i21;
        int i26 = i22;
        boolean z13 = z12;
        int i27 = dimensionPixelSize3;
        int i28 = i18;
        typedArrayObtainStyledAttributes4.recycle();
        BufferType bufferType2 = BufferType.EDITABLE;
        int inputType = i16;
        int i29 = inputType & FileObserver.ALL_EVENTS;
        boolean z14 = i29 == 129;
        boolean z15 = i29 == 225;
        boolean z16 = i29 == 18;
        if (text4 != null) {
            try {
                Class<?> cls = Class.forName(text4.toString());
                try {
                    createEditorIfNeeded();
                    this.mEditor.mKeyListener = (KeyListener) cls.newInstance();
                    try {
                        Editor editor3 = this.mEditor;
                        if (inputType == 0) {
                            inputType = editor3.mKeyListener.getInputType();
                        }
                        editor3.mInputType = inputType;
                    } catch (IncompatibleClassChangeError unused) {
                        this.mEditor.mInputType = 1;
                    }
                } catch (IllegalAccessException e4) {
                    throw new RuntimeException(e4);
                } catch (InstantiationException e5) {
                    throw new RuntimeException(e5);
                }
            } catch (ClassNotFoundException e6) {
                throw new RuntimeException(e6);
            }
        } else if (text != null) {
            createEditorIfNeeded();
            this.mEditor.mKeyListener = DigitsKeyListener.getInstance(text.toString());
            this.mEditor.mInputType = inputType == 0 ? 1 : inputType;
        } else {
            if (inputType != 0) {
                setInputType(inputType, true);
                z3 = !isMultilineInputType(inputType);
                bufferType = bufferType2;
            } else if (z8) {
                createEditorIfNeeded();
                this.mEditor.mKeyListener = DialerKeyListener.getInstance();
                this.mEditor.mInputType = 3;
            } else if (i15 != 0) {
                createEditorIfNeeded();
                int i30 = i15 & 2;
                int i31 = i15 & 4;
                this.mEditor.mKeyListener = DigitsKeyListener.getInstance(i30 != 0, i31 != 0);
                int i32 = i30 != 0 ? InputDevice.SOURCE_TOUCHSCREEN : 2;
                this.mEditor.mInputType = i31 != 0 ? i32 | 8192 : i32;
            } else if (!z9 && i23 == -1) {
                if (isTextSelectable()) {
                    Editor editor4 = this.mEditor;
                    if (editor4 != null) {
                        editor4.mKeyListener = null;
                        editor4.mInputType = 0;
                    }
                    BufferType bufferType3 = BufferType.SPANNABLE;
                    setMovementMethod(ArrowKeyMovementMethod.getInstance());
                    bufferType = bufferType3;
                } else if (z11) {
                    createEditorIfNeeded();
                    this.mEditor.mKeyListener = TextKeyListener.getInstance();
                    this.mEditor.mInputType = 1;
                } else {
                    Editor editor5 = this.mEditor;
                    if (editor5 != null) {
                        editor5.mKeyListener = null;
                    }
                    if (i26 == 0) {
                        bufferType = BufferType.NORMAL;
                    } else if (i26 == 1) {
                        bufferType = BufferType.SPANNABLE;
                    }
                }
                z3 = z13;
            } else {
                if (i23 == 1) {
                    capitalize = TextKeyListener.Capitalize.SENTENCES;
                    i12 = 16385;
                } else if (i23 == 2) {
                    capitalize = TextKeyListener.Capitalize.WORDS;
                    i12 = MtpConstants.RESPONSE_OK;
                } else if (i23 != 3) {
                    capitalize = TextKeyListener.Capitalize.NONE;
                    i12 = 1;
                } else {
                    capitalize = TextKeyListener.Capitalize.CHARACTERS;
                    i12 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
                }
                createEditorIfNeeded();
                this.mEditor.mKeyListener = TextKeyListener.getInstance(z9, capitalize);
                this.mEditor.mInputType = i12;
            }
            editor = this.mEditor;
            if (editor != null) {
                editor.adjustInputType(z7, z14, z15, z16);
            }
            if (z10) {
                createEditorIfNeeded();
                this.mEditor.mSelectAllOnFocus = true;
                if (bufferType == BufferType.NORMAL) {
                    bufferType = BufferType.SPANNABLE;
                }
            }
            setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            setRelativeDrawablesIfNeeded(drawable5, drawable6);
            setCompoundDrawablePadding(dimensionPixelSize2);
            setInputTypeSingleLine(z3);
            applySingleLine(z3, z3, z3);
            if (z3 || getKeyListener() != null || i25 >= 0) {
                i7 = i25;
            } else {
                i7 = 3;
            }
            if (i7 != 1) {
                i8 = 3;
                setEllipsize(TextUtils.TruncateAt.START);
            } else if (i7 != 2) {
                i8 = 3;
                if (i7 != 3) {
                    setEllipsize(TextUtils.TruncateAt.END);
                } else if (i7 == 4) {
                    if (ViewConfiguration.get(context).isFadingMarqueeEnabled()) {
                        setHorizontalFadingEdgeEnabled(true);
                        this.mMarqueeFadeMode = 0;
                    } else {
                        setHorizontalFadingEdgeEnabled(false);
                        this.mMarqueeFadeMode = 1;
                    }
                    setEllipsize(TextUtils.TruncateAt.MARQUEE);
                }
            } else {
                i8 = 3;
                setEllipsize(TextUtils.TruncateAt.MIDDLE);
            }
            setTextColor(colorStateList6 == null ? ColorStateList.valueOf(-16777216) : colorStateList6);
            setHintTextColor(colorStateList4);
            setLinkTextColor(colorStateList5);
            if (i24 != 0) {
                setHighlightColor(i24);
            }
            setRawTextSize(i27);
            if (z2) {
                setTransformationMethod(new AllCapsTransformationMethod(getContext()));
            }
            if (z7 && !z14 && !z15 && !z16) {
                Editor editor6 = this.mEditor;
                i9 = (editor6 == null || (editor6.mInputType & FileObserver.ALL_EVENTS) != 129) ? i17 : i9;
                setTypefaceFromAttrs(string2, i9, i28);
                i10 = i19;
                if (i10 != 0) {
                    setShadowLayer(f8, f6, f7, i10);
                }
                if (i20 >= 0) {
                    setFilters(new InputFilter[]{new InputFilter.LengthFilter(i20)});
                } else {
                    setFilters(NO_FILTERS);
                }
                setText(text3, bufferType);
                charSequence = text2;
                if (charSequence != null) {
                    setHint(charSequence);
                }
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.View, i2, 0);
                if (this.mMovement == null || getKeyListener() != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                z5 = z4;
                z6 = z5;
                for (i11 = 0; i11 < indexCount; i11++) {
                    index = typedArrayObtainStyledAttributes.getIndex(i11);
                    if (index == 18) {
                        z4 = typedArrayObtainStyledAttributes.getBoolean(index, z4);
                    } else if (index == 29) {
                        z5 = typedArrayObtainStyledAttributes.getBoolean(index, z5);
                    } else if (index == 30) {
                        z6 = typedArrayObtainStyledAttributes.getBoolean(index, z6);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
                setFocusable(z4);
                setClickable(z5);
                setLongClickable(z6);
                editor2 = this.mEditor;
                if (editor2 != null) {
                    editor2.prepareCursorControllers();
                }
                if (getImportantForAccessibility() == 0) {
                    setImportantForAccessibility(1);
                }
            }
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            i9 = i8;
            setTypefaceFromAttrs(string2, i9, i28);
            i10 = i19;
            if (i10 != 0) {
                setShadowLayer(f8, f6, f7, i10);
            }
            if (i20 >= 0) {
                setFilters(new InputFilter[]{new InputFilter.LengthFilter(i20)});
            } else {
                setFilters(NO_FILTERS);
            }
            setText(text3, bufferType);
            charSequence = text2;
            if (charSequence != null) {
                setHint(charSequence);
            }
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.View, i2, 0);
            if (this.mMovement == null) {
                z4 = true;
            } else {
                z4 = true;
            }
            indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            z5 = z4;
            z6 = z5;
            while (i11 < indexCount) {
                index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == 18) {
                    z4 = typedArrayObtainStyledAttributes.getBoolean(index, z4);
                } else if (index == 29) {
                    z5 = typedArrayObtainStyledAttributes.getBoolean(index, z5);
                } else if (index == 30) {
                    z6 = typedArrayObtainStyledAttributes.getBoolean(index, z6);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            setFocusable(z4);
            setClickable(z5);
            setLongClickable(z6);
            editor2 = this.mEditor;
            if (editor2 != null) {
                editor2.prepareCursorControllers();
            }
            if (getImportantForAccessibility() == 0) {
                setImportantForAccessibility(1);
            }
        }
        bufferType = bufferType2;
        z3 = z13;
        editor = this.mEditor;
        if (editor != null) {
            editor.adjustInputType(z7, z14, z15, z16);
        }
        if (z10) {
            createEditorIfNeeded();
            this.mEditor.mSelectAllOnFocus = true;
            if (bufferType == BufferType.NORMAL) {
                bufferType = BufferType.SPANNABLE;
            }
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        setRelativeDrawablesIfNeeded(drawable5, drawable6);
        setCompoundDrawablePadding(dimensionPixelSize2);
        setInputTypeSingleLine(z3);
        applySingleLine(z3, z3, z3);
        if (z3) {
            i7 = i25;
        } else {
            i7 = i25;
        }
        if (i7 != 1) {
            i8 = 3;
            setEllipsize(TextUtils.TruncateAt.START);
        } else if (i7 != 2) {
            i8 = 3;
            if (i7 != 3) {
                setEllipsize(TextUtils.TruncateAt.END);
            } else if (i7 == 4) {
                if (ViewConfiguration.get(context).isFadingMarqueeEnabled()) {
                    setHorizontalFadingEdgeEnabled(true);
                    this.mMarqueeFadeMode = 0;
                } else {
                    setHorizontalFadingEdgeEnabled(false);
                    this.mMarqueeFadeMode = 1;
                }
                setEllipsize(TextUtils.TruncateAt.MARQUEE);
            }
        } else {
            i8 = 3;
            setEllipsize(TextUtils.TruncateAt.MIDDLE);
        }
        setTextColor(colorStateList6 == null ? ColorStateList.valueOf(-16777216) : colorStateList6);
        setHintTextColor(colorStateList4);
        setLinkTextColor(colorStateList5);
        if (i24 != 0) {
            setHighlightColor(i24);
        }
        setRawTextSize(i27);
        if (z2) {
            setTransformationMethod(new AllCapsTransformationMethod(getContext()));
        }
        if (z7) {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            i9 = i8;
        } else {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            i9 = i8;
        }
        setTypefaceFromAttrs(string2, i9, i28);
        i10 = i19;
        if (i10 != 0) {
            setShadowLayer(f8, f6, f7, i10);
        }
        if (i20 >= 0) {
            setFilters(new InputFilter[]{new InputFilter.LengthFilter(i20)});
        } else {
            setFilters(NO_FILTERS);
        }
        setText(text3, bufferType);
        charSequence = text2;
        if (charSequence != null) {
            setHint(charSequence);
        }
        typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.View, i2, 0);
        if (this.mMovement == null) {
            z4 = true;
        } else {
            z4 = true;
        }
        indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        z5 = z4;
        z6 = z5;
        while (i11 < indexCount) {
            index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == 18) {
                z4 = typedArrayObtainStyledAttributes.getBoolean(index, z4);
            } else if (index == 29) {
                z5 = typedArrayObtainStyledAttributes.getBoolean(index, z5);
            } else if (index == 30) {
                z6 = typedArrayObtainStyledAttributes.getBoolean(index, z6);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(z4);
        setClickable(z5);
        setLongClickable(z6);
        editor2 = this.mEditor;
        if (editor2 != null) {
            editor2.prepareCursorControllers();
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void invalidateCursor(int i2, int i3, int i4) {
        if (i2 >= 0 || i3 >= 0 || i4 >= 0) {
            invalidateRegion(Math.min(Math.min(i2, i3), i4), Math.max(Math.max(i2, i3), i4), true);
        }
    }

    public Locale getTextServicesLocale() {
        return getTextServicesLocale(false);
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        if (drawable3 != null) {
            drawable3.setBounds(0, 0, drawable3.getIntrinsicWidth(), drawable3.getIntrinsicHeight());
        }
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
        }
        if (drawable4 != null) {
            drawable4.setBounds(0, 0, drawable4.getIntrinsicWidth(), drawable4.getIntrinsicHeight());
        }
        setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        if (drawable3 != null) {
            drawable3.setBounds(0, 0, drawable3.getIntrinsicWidth(), drawable3.getIntrinsicHeight());
        }
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
        }
        if (drawable4 != null) {
            drawable4.setBounds(0, 0, drawable4.getIntrinsicWidth(), drawable4.getIntrinsicHeight());
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public final void setHintTextColor(ColorStateList colorStateList) {
        this.mHintTextColor = colorStateList;
        updateTextColors();
    }

    public final void setLinkTextColor(ColorStateList colorStateList) {
        this.mLinkTextColor = colorStateList;
        updateTextColors();
    }

    public void setTextColor(ColorStateList colorStateList) {
        Objects.requireNonNull(colorStateList);
        this.mTextColor = colorStateList;
        updateTextColors();
    }

    private void setFilters(Editable editable, InputFilter[] inputFilterArr) {
        Editor editor = this.mEditor;
        if (editor != null) {
            int i2 = 1;
            int i3 = editor.mUndoInputFilter != null ? 1 : 0;
            boolean z2 = editor.mKeyListener instanceof InputFilter;
            int i4 = z2 ? i3 + 1 : i3;
            if (i4 > 0) {
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + i4];
                System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, inputFilterArr.length);
                if (i3 != 0) {
                    inputFilterArr2[inputFilterArr.length] = this.mEditor.mUndoInputFilter;
                } else {
                    i2 = 0;
                }
                if (z2) {
                    inputFilterArr2[inputFilterArr.length + i2] = (InputFilter) this.mEditor.mKeyListener;
                }
                editable.setFilters(inputFilterArr2);
                return;
            }
        }
        editable.setFilters(inputFilterArr);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setText(CharSequence charSequence, BufferType bufferType, boolean z2, int i2) {
        int length;
        CharSequence charSequenceNewSpannable;
        Spannable spannableNewSpannable;
        BufferType bufferType2 = bufferType;
        CharSequence charSequence2 = charSequence == null ? ProxyProperties.LOCAL_EXCL_LIST : charSequence;
        CharSequence charSequenceRemoveSuggestionSpans = charSequence2;
        if (!isSuggestionsEnabled()) {
            charSequenceRemoveSuggestionSpans = removeSuggestionSpans(charSequence2);
        }
        if (!this.mUserSetTextScaleX) {
            this.mTextPaint.setTextScaleX(1.0f);
        }
        if (charSequenceRemoveSuggestionSpans instanceof Spanned) {
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
            if (((Spanned) charSequenceRemoveSuggestionSpans).getSpanStart(truncateAt) >= 0) {
                if (ViewConfiguration.get(this.mContext).isFadingMarqueeEnabled()) {
                    setHorizontalFadingEdgeEnabled(true);
                    this.mMarqueeFadeMode = 0;
                } else {
                    setHorizontalFadingEdgeEnabled(false);
                    this.mMarqueeFadeMode = 1;
                }
                setEllipsize(truncateAt);
            }
        }
        int length2 = this.mFilters.length;
        int i3 = 0;
        CharSequence charSequence3 = charSequenceRemoveSuggestionSpans;
        while (i3 < length2) {
            CharSequence charSequenceFilter = this.mFilters[i3].filter(charSequence3, 0, charSequence3.length(), EMPTY_SPANNED, 0, 0);
            if (charSequenceFilter != null) {
                charSequence3 = charSequenceFilter;
            }
            i3++;
            charSequence3 = charSequence3;
        }
        if (z2) {
            CharSequence charSequence4 = this.mText;
            if (charSequence4 != null) {
                length = charSequence4.length();
                sendBeforeTextChanged(this.mText, 0, length, charSequence3.length());
            } else {
                sendBeforeTextChanged(ProxyProperties.LOCAL_EXCL_LIST, 0, 0, charSequence3.length());
                length = i2;
            }
        } else {
            length = i2;
        }
        ArrayList<TextWatcher> arrayList = this.mListeners;
        boolean z3 = (arrayList == null || arrayList.size() == 0) ? false : true;
        BufferType bufferType3 = BufferType.EDITABLE;
        if (bufferType2 != bufferType3 && getKeyListener() == null && !z3) {
            if (bufferType2 != BufferType.SPANNABLE && this.mMovement == null) {
                if (!(charSequence3 instanceof CharWrapper)) {
                    charSequenceNewSpannable = charSequence3;
                    charSequenceNewSpannable = TextUtils.stringOrSpannedString(charSequence3);
                }
            } else {
                charSequenceNewSpannable = this.mSpannableFactory.newSpannable(charSequence3);
            }
        } else {
            createEditorIfNeeded();
            Editable editableNewEditable = this.mEditableFactory.newEditable(charSequence3);
            setFilters(editableNewEditable, this.mFilters);
            InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
            charSequenceNewSpannable = editableNewEditable;
            if (inputMethodManagerPeekInstance != null) {
                inputMethodManagerPeekInstance.restartInput(this);
                charSequenceNewSpannable = editableNewEditable;
            }
        }
        charSequenceNewSpannable = charSequence3;
        CharSequence charSequence5 = charSequenceNewSpannable;
        if (this.mAutoLinkMask != 0) {
            if (bufferType2 != bufferType3 && !(charSequenceNewSpannable instanceof Spannable)) {
                spannableNewSpannable = this.mSpannableFactory.newSpannable(charSequenceNewSpannable);
            } else {
                spannableNewSpannable = (Spannable) charSequenceNewSpannable;
            }
            charSequence5 = charSequenceNewSpannable;
            if (Linkify.addLinks(spannableNewSpannable, this.mAutoLinkMask)) {
                bufferType2 = bufferType2 == bufferType3 ? bufferType3 : BufferType.SPANNABLE;
                this.mText = spannableNewSpannable;
                if (this.mLinksClickable && !textCanBeSelected()) {
                    setMovementMethod(LinkMovementMethod.getInstance());
                }
                charSequence5 = spannableNewSpannable;
            }
        }
        this.mBufferType = bufferType2;
        this.mText = charSequence5;
        TransformationMethod transformationMethod = this.mTransformation;
        if (transformationMethod == null) {
            this.mTransformed = charSequence5;
        } else {
            this.mTransformed = transformationMethod.getTransformation(charSequence5, this);
        }
        int length3 = charSequence5.length();
        if ((charSequence5 instanceof Spannable) && !this.mAllowTransformationLengthChange) {
            Spannable spannable = (Spannable) charSequence5;
            for (ChangeWatcher changeWatcher : (ChangeWatcher[]) spannable.getSpans(0, spannable.length(), ChangeWatcher.class)) {
                spannable.removeSpan(changeWatcher);
            }
            if (this.mChangeWatcher == null) {
                this.mChangeWatcher = new ChangeWatcher();
            }
            spannable.setSpan(this.mChangeWatcher, 0, length3, 6553618);
            Editor editor = this.mEditor;
            if (editor != null) {
                editor.addSpanWatchers(spannable);
            }
            TransformationMethod transformationMethod2 = this.mTransformation;
            if (transformationMethod2 != null) {
                spannable.setSpan(transformationMethod2, 0, length3, 18);
            }
            MovementMethod movementMethod = this.mMovement;
            if (movementMethod != null) {
                movementMethod.initialize(this, spannable);
                Editor editor2 = this.mEditor;
                if (editor2 != null) {
                    editor2.mSelectionMoved = false;
                }
            }
        }
        if (this.mLayout != null) {
            checkForRelayout();
        }
        sendOnTextChanged(charSequence5, 0, length, length3);
        onTextChanged(charSequence5, 0, length, length3);
        notifyViewAccessibilityStateChangedIfNeeded(2);
        if (z3) {
            sendAfterTextChanged((Editable) charSequence5);
        }
        Editor editor3 = this.mEditor;
        if (editor3 != null) {
            editor3.prepareCursorControllers();
        }
    }

    public void setError(CharSequence charSequence, Drawable drawable) {
        createEditorIfNeeded();
        this.mEditor.setError(charSequence, drawable);
        notifyViewAccessibilityStateChangedIfNeeded(0);
    }

    @RemotableViewMethod
    public final void setHint(int i2) {
        setHint(getContext().getResources().getText(i2));
    }

    public void setTypeface(Typeface typeface) {
        if (this.mTextPaint.getTypeface() != typeface) {
            this.mTextPaint.setTypeface(typeface);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    private void setInputType(int i2, boolean z2) {
        KeyListener textKeyListener;
        TextKeyListener.Capitalize capitalize;
        int i3 = i2 & 15;
        if (i3 == 1) {
            boolean z3 = (32768 & i2) != 0;
            if ((i2 & 4096) != 0) {
                capitalize = TextKeyListener.Capitalize.CHARACTERS;
            } else if ((i2 & 8192) != 0) {
                capitalize = TextKeyListener.Capitalize.WORDS;
            } else if ((i2 & 16384) != 0) {
                capitalize = TextKeyListener.Capitalize.SENTENCES;
            } else {
                capitalize = TextKeyListener.Capitalize.NONE;
            }
            textKeyListener = TextKeyListener.getInstance(z3, capitalize);
        } else if (i3 == 2) {
            textKeyListener = DigitsKeyListener.getInstance((i2 & 4096) != 0, (i2 & 8192) != 0);
        } else if (i3 == 4) {
            int i4 = i2 & InputType.TYPE_MASK_VARIATION;
            if (i4 == 16) {
                textKeyListener = DateKeyListener.getInstance();
            } else if (i4 != 32) {
                textKeyListener = DateTimeKeyListener.getInstance();
            } else {
                textKeyListener = TimeKeyListener.getInstance();
            }
        } else if (i3 == 3) {
            textKeyListener = DialerKeyListener.getInstance();
        } else {
            textKeyListener = TextKeyListener.getInstance();
        }
        setRawInputType(i2);
        if (z2) {
            createEditorIfNeeded();
            this.mEditor.mKeyListener = textKeyListener;
        } else {
            setKeyListenerOnly(textKeyListener);
        }
    }

    public final void setText(char[] cArr, int i2, int i3) {
        int length;
        if (i2 >= 0 && i3 >= 0 && i2 + i3 <= cArr.length) {
            CharSequence charSequence = this.mText;
            if (charSequence != null) {
                length = charSequence.length();
                sendBeforeTextChanged(this.mText, 0, length, i3);
            } else {
                sendBeforeTextChanged(ProxyProperties.LOCAL_EXCL_LIST, 0, 0, i3);
                length = 0;
            }
            CharWrapper charWrapper = this.mCharWrapper;
            if (charWrapper == null) {
                this.mCharWrapper = new CharWrapper(cArr, i2, i3);
            } else {
                charWrapper.set(cArr, i2, i3);
            }
            setText(this.mCharWrapper, this.mBufferType, false, length);
            return;
        }
        throw new IndexOutOfBoundsException(i2 + ", " + i3);
    }

    @RemotableViewMethod
    public final void setText(int i2) {
        setText(getContext().getResources().getText(i2));
    }

    public final void setText(int i2, BufferType bufferType) {
        setText(getContext().getResources().getText(i2), bufferType);
    }
}
