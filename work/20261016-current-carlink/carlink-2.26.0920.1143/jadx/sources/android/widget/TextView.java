package android.widget;

import android.app.m;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.UndoManager;
import android.content.res.ColorStateList;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.BaseCanvas;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.mtp.MtpConstants;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ParcelableParcel;
import android.os.SystemClock;
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
import android.util.DisplayMetrics;
import android.util.IntArray;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Choreographer;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewHierarchyEncoder;
import android.view.ViewParent;
import android.view.ViewRootImpl;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.view.textservice.SpellCheckerSubtype;
import android.view.textservice.TextServicesManager;
import com.android.internal.R;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.util.FastMath;
import com.android.internal.widget.EditableInputConnection;
import com.google.android.material.badge.BadgeDrawable;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class TextView extends View implements ViewTreeObserver.OnPreDrawListener {
    static final int ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID = 268435712;
    private static final int ACCESSIBILITY_ACTION_SHARE = 268435456;
    private static final int ANIMATED_SCROLL_GAP = 250;
    public static final int AUTO_SIZE_TEXT_TYPE_NONE = 0;
    public static final int AUTO_SIZE_TEXT_TYPE_UNIFORM = 1;
    private static final int CHANGE_WATCHER_PRIORITY = 100;
    static final boolean DEBUG_AUTOFILL = false;
    static final boolean DEBUG_EXTRACT = false;
    private static final int DECIMAL = 4;
    private static final int DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX = 1;
    private static final int DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP = 112;
    private static final int DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP = 12;
    private static final int DEVICE_PROVISIONED_NO = 1;
    private static final int DEVICE_PROVISIONED_UNKNOWN = 0;
    private static final int DEVICE_PROVISIONED_YES = 2;
    private static final int EMS = 1;
    private static final int FLOATING_TOOLBAR_SELECT_ALL_REFRESH_DELAY = 500;
    static final int ID_ASSIST = 16908353;
    static final int ID_AUTOFILL = 16908355;
    static final int ID_COPY = 16908321;
    static final int ID_CUT = 16908320;
    static final int ID_PASTE = 16908322;
    static final int ID_PASTE_AS_PLAIN_TEXT = 16908337;
    static final int ID_REDO = 16908339;
    static final int ID_REPLACE = 16908340;
    static final int ID_SELECT_ALL = 16908319;
    static final int ID_SHARE = 16908341;
    static final int ID_UNDO = 16908338;
    private static final int KEY_DOWN_HANDLED_BY_KEY_LISTENER = 1;
    private static final int KEY_DOWN_HANDLED_BY_MOVEMENT_METHOD = 2;
    private static final int KEY_EVENT_HANDLED = -1;
    private static final int KEY_EVENT_NOT_HANDLED = 0;
    private static final int LINES = 1;
    static final String LOG_TAG = "TextView";
    private static final int MARQUEE_FADE_NORMAL = 0;
    private static final int MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS = 1;
    private static final int MARQUEE_FADE_SWITCH_SHOW_FADE = 2;
    private static final int MONOSPACE = 3;
    private static final int PIXELS = 2;
    static final int PROCESS_TEXT_REQUEST_CODE = 100;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int SIGNED = 2;
    private static final float UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE = -1.0f;
    static final int VERY_WIDE = 1048576;
    static long sLastCutCopyOrTextChangedTime;
    private boolean mAllowTransformationLengthChange;
    private int mAutoLinkMask;
    private float mAutoSizeMaxTextSizeInPx;
    private float mAutoSizeMinTextSizeInPx;
    private float mAutoSizeStepGranularityInPx;
    private int[] mAutoSizeTextSizesInPx;
    private int mAutoSizeTextType;
    private BoringLayout.Metrics mBoring;
    private int mBreakStrategy;
    private BufferType mBufferType;
    private ChangeWatcher mChangeWatcher;
    private CharWrapper mCharWrapper;
    private int mCurHintTextColor;

    @ViewDebug.ExportedProperty(category = "text")
    private int mCurTextColor;
    private volatile Locale mCurrentSpellCheckerLocaleCache;
    int mCursorDrawableRes;
    private int mDeferScroll;
    private int mDesiredHeightAtMeasure;
    private int mDeviceProvisionedState;
    Drawables mDrawables;
    private Editable.Factory mEditableFactory;
    private Editor mEditor;
    private TextUtils.TruncateAt mEllipsize;
    private InputFilter[] mFilters;
    private boolean mFreezesText;

    @ViewDebug.ExportedProperty(category = "text")
    private int mGravity;
    private boolean mHasPresetAutoSizeValues;
    int mHighlightColor;
    private final Paint mHighlightPaint;
    private Path mHighlightPath;
    private boolean mHighlightPathBogus;
    private CharSequence mHint;
    private BoringLayout.Metrics mHintBoring;
    private Layout mHintLayout;
    private ColorStateList mHintTextColor;
    private boolean mHorizontallyScrolling;
    private int mHyphenationFrequency;
    private boolean mIncludePad;
    private int mJustificationMode;
    private int mLastLayoutDirection;
    private long mLastScroll;
    private Layout mLayout;
    private ColorStateList mLinkTextColor;
    private boolean mLinksClickable;
    private boolean mListenerChanged;
    private ArrayList<TextWatcher> mListeners;
    private boolean mLocalesChanged;
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
    private boolean mNeedsAutoSizeText;
    private int mOldMaxMode;
    private int mOldMaximum;
    private boolean mPreDrawListenerDetached;
    private boolean mPreDrawRegistered;
    private boolean mPreventDefaultMovement;
    private boolean mRestartMarquee;
    private BoringLayout mSavedHintLayout;
    private BoringLayout mSavedLayout;
    private Layout mSavedMarqueeModeLayout;
    private Scroller mScroller;
    private int mShadowColor;
    private float mShadowDx;
    private float mShadowDy;
    private float mShadowRadius;
    private boolean mSingleLine;
    private float mSpacingAdd;
    private float mSpacingMult;
    private Spannable.Factory mSpannableFactory;
    private Rect mTempRect;
    private TextPaint mTempTextPaint;

    @ViewDebug.ExportedProperty(category = "text")
    private CharSequence mText;
    private TextClassifier mTextClassifier;
    private ColorStateList mTextColor;
    private TextDirectionHeuristic mTextDir;
    int mTextEditSuggestionContainerLayout;
    int mTextEditSuggestionHighlightStyle;
    int mTextEditSuggestionItemLayout;
    private boolean mTextFromResource;
    private final TextPaint mTextPaint;
    int mTextSelectHandleLeftRes;
    int mTextSelectHandleRes;
    int mTextSelectHandleRightRes;
    private TransformationMethod mTransformation;
    private CharSequence mTransformed;
    private final boolean mUseInternationalizedInput;
    private boolean mUserSetTextScaleX;
    private static final float[] TEMP_POSITION = new float[2];
    private static final RectF TEMP_RECTF = new RectF();
    private static final InputFilter[] NO_FILTERS = new InputFilter[0];
    private static final Spanned EMPTY_SPANNED = new SpannedString("");
    private static final int[] MULTILINE_STATE_SET = {16843597};
    private static final BoringLayout.Metrics UNKNOWN_BORING = new BoringLayout.Metrics();

    /* JADX INFO: renamed from: android.widget.TextView$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

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

    @Retention(RetentionPolicy.SOURCE)
    public @interface AutoSizeTextType {
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
            if (AccessibilityManager.getInstance(((View) TextView.this).mContext).isEnabled() && !TextView.isPasswordInputType(TextView.this.getInputType()) && !TextView.this.hasPasswordTransformationMethod()) {
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
            if (AccessibilityManager.getInstance(((View) TextView.this).mContext).isEnabled()) {
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
        public void drawText(BaseCanvas baseCanvas, int i2, int i3, float f2, float f3, Paint paint) {
            baseCanvas.drawText(this.mChars, i2 + this.mStart, i3 - i2, f2, f3, paint);
        }

        @Override // android.text.GraphicsOperations
        public void drawTextRun(BaseCanvas baseCanvas, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, Paint paint) {
            char[] cArr = this.mChars;
            int i6 = this.mStart;
            baseCanvas.drawTextRun(cArr, i2 + i6, i3 - i2, i4 + i6, i5 - i4, f2, f3, z2, paint);
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
        public float getTextRunAdvances(int i2, int i3, int i4, int i5, boolean z2, float[] fArr, int i6, Paint paint) {
            char[] cArr = this.mChars;
            int i7 = this.mStart;
            return paint.getTextRunAdvances(cArr, i2 + i7, i3 - i2, i4 + i7, i5 - i4, z2, fArr, i6);
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
        static final int BOTTOM = 3;
        static final int DRAWABLE_LEFT = 1;
        static final int DRAWABLE_NONE = -1;
        static final int DRAWABLE_RIGHT = 0;
        static final int LEFT = 0;
        static final int RIGHT = 2;
        static final int TOP = 1;
        Drawable mDrawableEnd;
        Drawable mDrawableError;
        int mDrawableHeightEnd;
        int mDrawableHeightError;
        int mDrawableHeightLeft;
        int mDrawableHeightRight;
        int mDrawableHeightStart;
        int mDrawableHeightTemp;
        Drawable mDrawableLeftInitial;
        int mDrawablePadding;
        Drawable mDrawableRightInitial;
        int mDrawableSizeBottom;
        int mDrawableSizeEnd;
        int mDrawableSizeError;
        int mDrawableSizeLeft;
        int mDrawableSizeRight;
        int mDrawableSizeStart;
        int mDrawableSizeTemp;
        int mDrawableSizeTop;
        Drawable mDrawableStart;
        Drawable mDrawableTemp;
        int mDrawableWidthBottom;
        int mDrawableWidthTop;
        boolean mHasTint;
        boolean mHasTintMode;
        boolean mIsRtlCompatibilityMode;
        boolean mOverride;
        ColorStateList mTintList;
        PorterDuff.Mode mTintMode;
        final Rect mCompoundRect = new Rect();
        final Drawable[] mShowing = new Drawable[4];
        int mDrawableSaved = -1;

        public Drawables(Context context) {
            this.mIsRtlCompatibilityMode = context.getApplicationInfo().targetSdkVersion < 17 || !context.getApplicationInfo().hasRtlSupport();
            this.mOverride = false;
        }

        private void applyErrorDrawableIfNeeded(int i2) {
            int i3 = this.mDrawableSaved;
            if (i3 == 0) {
                this.mShowing[2] = this.mDrawableTemp;
                this.mDrawableSizeRight = this.mDrawableSizeTemp;
                this.mDrawableHeightRight = this.mDrawableHeightTemp;
            } else if (i3 == 1) {
                this.mShowing[0] = this.mDrawableTemp;
                this.mDrawableSizeLeft = this.mDrawableSizeTemp;
                this.mDrawableHeightLeft = this.mDrawableHeightTemp;
            }
            Drawable drawable = this.mDrawableError;
            if (drawable != null) {
                if (i2 != 1) {
                    this.mDrawableSaved = 0;
                    Drawable[] drawableArr = this.mShowing;
                    this.mDrawableTemp = drawableArr[2];
                    this.mDrawableSizeTemp = this.mDrawableSizeRight;
                    this.mDrawableHeightTemp = this.mDrawableHeightRight;
                    drawableArr[2] = drawable;
                    this.mDrawableSizeRight = this.mDrawableSizeError;
                    this.mDrawableHeightRight = this.mDrawableHeightError;
                    return;
                }
                this.mDrawableSaved = 1;
                Drawable[] drawableArr2 = this.mShowing;
                this.mDrawableTemp = drawableArr2[0];
                this.mDrawableSizeTemp = this.mDrawableSizeLeft;
                this.mDrawableHeightTemp = this.mDrawableHeightLeft;
                drawableArr2[0] = drawable;
                this.mDrawableSizeLeft = this.mDrawableSizeError;
                this.mDrawableHeightLeft = this.mDrawableHeightError;
            }
        }

        public boolean hasMetadata() {
            return this.mDrawablePadding != 0 || this.mHasTintMode || this.mHasTint;
        }

        public boolean resolveWithLayoutDirection(int i2) {
            Drawable[] drawableArr = this.mShowing;
            Drawable drawable = drawableArr[0];
            Drawable drawable2 = drawableArr[2];
            Drawable drawable3 = this.mDrawableLeftInitial;
            drawableArr[0] = drawable3;
            Drawable drawable4 = this.mDrawableRightInitial;
            drawableArr[2] = drawable4;
            if (this.mIsRtlCompatibilityMode) {
                Drawable drawable5 = this.mDrawableStart;
                if (drawable5 != null && drawable3 == null) {
                    drawableArr[0] = drawable5;
                    this.mDrawableSizeLeft = this.mDrawableSizeStart;
                    this.mDrawableHeightLeft = this.mDrawableHeightStart;
                }
                Drawable drawable6 = this.mDrawableEnd;
                if (drawable6 != null && drawable4 == null) {
                    drawableArr[2] = drawable6;
                    this.mDrawableSizeRight = this.mDrawableSizeEnd;
                    this.mDrawableHeightRight = this.mDrawableHeightEnd;
                }
            } else if (i2 != 1) {
                if (this.mOverride) {
                    drawableArr[0] = this.mDrawableStart;
                    this.mDrawableSizeLeft = this.mDrawableSizeStart;
                    this.mDrawableHeightLeft = this.mDrawableHeightStart;
                    drawableArr[2] = this.mDrawableEnd;
                    this.mDrawableSizeRight = this.mDrawableSizeEnd;
                    this.mDrawableHeightRight = this.mDrawableHeightEnd;
                }
            } else if (this.mOverride) {
                drawableArr[2] = this.mDrawableStart;
                this.mDrawableSizeRight = this.mDrawableSizeStart;
                this.mDrawableHeightRight = this.mDrawableHeightStart;
                drawableArr[0] = this.mDrawableEnd;
                this.mDrawableSizeLeft = this.mDrawableSizeEnd;
                this.mDrawableHeightLeft = this.mDrawableHeightEnd;
            }
            applyErrorDrawableIfNeeded(i2);
            Drawable[] drawableArr2 = this.mShowing;
            return (drawableArr2[0] == drawable && drawableArr2[2] == drawable2) ? false : true;
        }

        public void setErrorDrawable(Drawable drawable, TextView textView) {
            Drawable drawable2 = this.mDrawableError;
            if (drawable2 != drawable && drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.mDrawableError = drawable;
            if (drawable == null) {
                this.mDrawableHeightError = 0;
                this.mDrawableSizeError = 0;
                return;
            }
            Rect rect = this.mCompoundRect;
            this.mDrawableError.setState(textView.getDrawableState());
            this.mDrawableError.copyBounds(rect);
            this.mDrawableError.setCallback(textView);
            this.mDrawableSizeError = rect.width();
            this.mDrawableHeightError = rect.height();
        }
    }

    public static final class Marquee {
        private static final int MARQUEE_DELAY = 1200;
        private static final float MARQUEE_DELTA_MAX = 0.07f;
        private static final int MARQUEE_DP_PER_SECOND = 30;
        private static final byte MARQUEE_RUNNING = 2;
        private static final byte MARQUEE_STARTING = 1;
        private static final byte MARQUEE_STOPPED = 0;
        private float mFadeStop;
        private float mGhostOffset;
        private float mGhostStart;
        private long mLastAnimationMs;
        private float mMaxFadeScroll;
        private float mMaxScroll;
        private final float mPixelsPerSecond;
        private int mRepeatLimit;
        private float mScroll;
        private final WeakReference<TextView> mView;
        private byte mStatus = 0;
        private Choreographer.FrameCallback mTickCallback = new Choreographer.FrameCallback() { // from class: android.widget.TextView.Marquee.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j2) {
                Marquee.this.tick();
            }
        };
        private Choreographer.FrameCallback mStartCallback = new Choreographer.FrameCallback() { // from class: android.widget.TextView.Marquee.2
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j2) {
                Marquee.this.mStatus = (byte) 2;
                Marquee marquee = Marquee.this;
                marquee.mLastAnimationMs = marquee.mChoreographer.getFrameTime();
                Marquee.this.tick();
            }
        };
        private Choreographer.FrameCallback mRestartCallback = new Choreographer.FrameCallback() { // from class: android.widget.TextView.Marquee.3
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j2) {
                if (Marquee.this.mStatus == 2) {
                    if (Marquee.this.mRepeatLimit >= 0) {
                        Marquee.access$810(Marquee.this);
                    }
                    Marquee marquee = Marquee.this;
                    marquee.start(marquee.mRepeatLimit);
                }
            }
        };
        private final Choreographer mChoreographer = Choreographer.getInstance();

        public Marquee(TextView textView) {
            this.mPixelsPerSecond = textView.getContext().getResources().getDisplayMetrics().density * 30.0f;
            this.mView = new WeakReference<>(textView);
        }

        public static /* synthetic */ int access$810(Marquee marquee) {
            int i2 = marquee.mRepeatLimit;
            marquee.mRepeatLimit = i2 - 1;
            return i2;
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
            this.mChoreographer.postFrameCallback(this.mStartCallback);
        }

        public void stop() {
            this.mStatus = (byte) 0;
            this.mChoreographer.removeFrameCallback(this.mStartCallback);
            this.mChoreographer.removeFrameCallback(this.mRestartCallback);
            this.mChoreographer.removeFrameCallback(this.mTickCallback);
            resetScroll();
        }

        public void tick() {
            if (this.mStatus != 2) {
                return;
            }
            this.mChoreographer.removeFrameCallback(this.mTickCallback);
            TextView textView = this.mView.get();
            if (textView != null) {
                if (textView.isFocused() || textView.isSelected()) {
                    long frameTime = this.mChoreographer.getFrameTime();
                    long j2 = frameTime - this.mLastAnimationMs;
                    this.mLastAnimationMs = frameTime;
                    float f2 = this.mScroll + ((j2 / 1000.0f) * this.mPixelsPerSecond);
                    this.mScroll = f2;
                    float f3 = this.mMaxScroll;
                    if (f2 > f3) {
                        this.mScroll = f3;
                        this.mChoreographer.postFrameCallbackDelayed(this.mRestartCallback, 1200L);
                    } else {
                        this.mChoreographer.postFrameCallback(this.mTickCallback);
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
        ParcelableParcel editorState;
        CharSequence error;
        boolean frozenWithFocus;
        int selEnd;
        int selStart;
        CharSequence text;

        public String toString() {
            String string = "TextView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " start=" + this.selStart + " end=" + this.selEnd;
            if (this.text != null) {
                StringBuilder sbU = android.accessibilityservice.c.u(string, " text=");
                sbU.append((Object) this.text);
                string = sbU.toString();
            }
            return android.accessibilityservice.c.D(string, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
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
            if (this.editorState == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                this.editorState.writeToParcel(parcel, i2);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.selStart = -1;
            this.selEnd = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.selStart = -1;
            this.selEnd = -1;
            this.selStart = parcel.readInt();
            this.selEnd = parcel.readInt();
            this.frozenWithFocus = parcel.readInt() != 0;
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.text = creator.createFromParcel(parcel);
            if (parcel.readInt() != 0) {
                this.error = creator.createFromParcel(parcel);
            }
            if (parcel.readInt() != 0) {
                this.editorState = ParcelableParcel.CREATOR.createFromParcel(parcel);
            }
        }
    }

    public TextView(Context context) {
        this(context, null);
    }

    private void applyCompoundDrawableTint() {
        Drawables drawables = this.mDrawables;
        if (drawables == null) {
            return;
        }
        boolean z2 = drawables.mHasTint;
        if (z2 || drawables.mHasTintMode) {
            ColorStateList colorStateList = drawables.mTintList;
            PorterDuff.Mode mode = drawables.mTintMode;
            boolean z3 = drawables.mHasTintMode;
            int[] drawableState = getDrawableState();
            for (Drawable drawable : this.mDrawables.mShowing) {
                if (drawable != null && drawable != this.mDrawables.mDrawableError) {
                    drawable.mutate();
                    if (z2) {
                        drawable.setTintList(colorStateList);
                    }
                    if (z3) {
                        drawable.setTintMode(mode);
                    }
                    if (drawable.isStateful()) {
                        drawable.setState(drawableState);
                    }
                }
            }
        }
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

    private void autoSizeText() {
        if (isAutoSizeEnabled()) {
            if (this.mNeedsAutoSizeText) {
                if (getMeasuredWidth() <= 0 || getMeasuredHeight() <= 0) {
                    return;
                }
                int measuredWidth = this.mHorizontallyScrolling ? 1048576 : (getMeasuredWidth() - getTotalPaddingLeft()) - getTotalPaddingRight();
                int measuredHeight = (getMeasuredHeight() - getExtendedPaddingBottom()) - getExtendedPaddingTop();
                if (measuredWidth <= 0 || measuredHeight <= 0) {
                    return;
                }
                RectF rectF = TEMP_RECTF;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = measuredHeight;
                    float fFindLargestTextSizeWhichFits = findLargestTextSizeWhichFits(rectF);
                    if (fFindLargestTextSizeWhichFits != getTextSize()) {
                        setTextSizeInternal(0, fFindLargestTextSizeWhichFits, false);
                        BoringLayout.Metrics metrics = UNKNOWN_BORING;
                        makeNewLayout(measuredWidth, 0, metrics, metrics, ((this.mRight - this.mLeft) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), false);
                    }
                }
            }
            this.mNeedsAutoSizeText = true;
        }
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
            iFloor = (int) Math.floor(layout.getLineLeft(lineCount));
            iCeil = (int) Math.ceil(layout.getLineRight(lineCount));
            if (iCeil - iFloor < compoundPaddingLeft) {
                iCeil = (iCeil + iFloor) / 2;
                compoundPaddingLeft /= 2;
            } else if (paragraphDirection < 0) {
            }
            iFloor = iCeil - compoundPaddingLeft;
        } else if (paragraphAlignment == Layout.Alignment.ALIGN_RIGHT) {
            iCeil = (int) Math.ceil(layout.getLineRight(lineCount));
            iFloor = iCeil - compoundPaddingLeft;
        } else {
            iFloor = (int) Math.floor(layout.getLineLeft(lineCount));
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

    private void changeListenerLocaleTo(Locale locale) {
        Editor editor;
        KeyListener dateTimeKeyListener;
        if (this.mListenerChanged || (editor = this.mEditor) == null) {
            return;
        }
        KeyListener keyListener = editor.mKeyListener;
        if (keyListener instanceof DigitsKeyListener) {
            dateTimeKeyListener = DigitsKeyListener.getInstance(locale, (DigitsKeyListener) keyListener);
        } else if (keyListener instanceof DateKeyListener) {
            dateTimeKeyListener = DateKeyListener.getInstance(locale);
        } else if (keyListener instanceof TimeKeyListener) {
            dateTimeKeyListener = TimeKeyListener.getInstance(locale);
        } else if (!(keyListener instanceof DateTimeKeyListener)) {
            return;
        } else {
            dateTimeKeyListener = DateTimeKeyListener.getInstance(locale);
        }
        boolean zIsPasswordInputType = isPasswordInputType(this.mEditor.mInputType);
        setKeyListenerOnly(dateTimeKeyListener);
        setInputTypeFromEditor();
        if (zIsPasswordInputType) {
            Editor editor2 = this.mEditor;
            int i2 = editor2.mInputType;
            int i3 = i2 & 15;
            if (i3 == 1) {
                editor2.mInputType = i2 | 128;
            } else if (i3 == 2) {
                editor2.mInputType = i2 | 16;
            }
        }
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
                autoSizeText();
                invalidate();
                return;
            } else if (this.mLayout.getHeight() == height && ((layout = this.mHintLayout) == null || layout.getHeight() == height)) {
                autoSizeText();
                invalidate();
                return;
            }
        }
        requestLayout();
        invalidate();
    }

    private void checkForResize() {
        boolean z2 = false;
        if (this.mLayout != null) {
            if (this.mLayoutParams.width == -2) {
                invalidate();
                z2 = true;
            }
            int i2 = this.mLayoutParams.height;
            if (i2 != -2 ? !(i2 != -1 || this.mDesiredHeightAtMeasure < 0 || getDesiredHeight() == this.mDesiredHeightAtMeasure) : getDesiredHeight() != getHeight()) {
                z2 = true;
            }
        }
        if (z2) {
            requestLayout();
        }
    }

    private int[] cleanupAutoSizePresetSizes(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        IntArray intArray = new IntArray();
        for (int i2 : iArr) {
            if (i2 > 0 && intArray.binarySearch(i2) < 0) {
                intArray.add(i2);
            }
        }
        return length == intArray.size() ? iArr : intArray.toArray();
    }

    private void clearAutoSizeConfiguration() {
        this.mAutoSizeTextType = 0;
        this.mAutoSizeMinTextSizeInPx = -1.0f;
        this.mAutoSizeMaxTextSizeInPx = -1.0f;
        this.mAutoSizeStepGranularityInPx = -1.0f;
        this.mAutoSizeTextSizesInPx = EmptyArray.INT;
        this.mNeedsAutoSizeText = false;
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
        return (int) Math.ceil(fMax);
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
            if (editor != null && editor.getTextActionMode() != null) {
                stopTextActionMode();
                return -1;
            }
        } else if (i2 != 23) {
            if (i2 != 61) {
                if (i2 != 66) {
                    switch (i2) {
                        case 277:
                            if (keyEvent.hasNoModifiers() && canCut() && onTextContextMenuItem(16908320)) {
                                return -1;
                            }
                            break;
                        case 278:
                            if (keyEvent.hasNoModifiers() && canCopy() && onTextContextMenuItem(16908321)) {
                                return -1;
                            }
                            break;
                        case 279:
                            if (keyEvent.hasNoModifiers() && canPaste() && onTextContextMenuItem(16908322)) {
                                return -1;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
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
            if (keyEvent.getSource() == 257 && isDirectionalNavigationKey(i2)) {
                return -1;
            }
        }
        return (!this.mPreventDefaultMovement || KeyEvent.isModifierKey(i2)) ? 0 : -1;
    }

    private void ensureIterableTextForAccessibilitySelectable() {
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Spannable) {
            return;
        }
        setText(charSequence, BufferType.SPANNABLE);
    }

    private int findLargestTextSizeWhichFits(RectF rectF) {
        int length = this.mAutoSizeTextSizesInPx.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i2 = 1;
        int i3 = length - 1;
        int i4 = 0;
        while (i2 <= i3) {
            int i5 = (i2 + i3) / 2;
            if (suggestedSizeFitsInSpace(this.mAutoSizeTextSizesInPx[i5], rectF)) {
                int i6 = i5 + 1;
                i4 = i2;
                i2 = i6;
            } else {
                i4 = i5 - 1;
                i3 = i4;
            }
        }
        return this.mAutoSizeTextSizesInPx[i4];
    }

    private void fixFocusableAndClickableSettings() {
        Editor editor;
        if (this.mMovement == null && ((editor = this.mEditor) == null || editor.mKeyListener == null)) {
            setFocusable(16);
            setClickable(false);
            setLongClickable(false);
        } else {
            setFocusable(1);
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
        return (getMeasuredHeight() - (extendedPaddingBottom + extendedPaddingTop)) + opticalInsets.top + opticalInsets.bottom;
    }

    private Locale getCustomLocaleForKeyListenerOrNull() {
        LocaleList imeHintLocales;
        if (this.mUseInternationalizedInput && (imeHintLocales = getImeHintLocales()) != null) {
            return imeHintLocales.get(0);
        }
        return null;
    }

    private int getDesiredHeight() {
        return Math.max(getDesiredHeight(this.mLayout, true), getDesiredHeight(this.mHintLayout, this.mEllipsize != null));
    }

    private float getHorizontalFadingEdgeStrength(float f2, float f3) {
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (horizontalFadingEdgeLength == 0) {
            return 0.0f;
        }
        float fAbs = Math.abs(f2 - f3);
        float f4 = horizontalFadingEdgeLength;
        if (fAbs > f4) {
            return 1.0f;
        }
        return fAbs / f4;
    }

    private void getInterestingRect(Rect rect, int i2) {
        convertFromViewportToContentCoordinates(rect);
        if (i2 == 0) {
            rect.top -= getExtendedPaddingTop();
        }
        if (i2 == this.mLayout.getLineCount() - 1) {
            rect.bottom = getExtendedPaddingBottom() + rect.bottom;
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

    public static int getTextColor(Context context, TypedArray typedArray, int i2) {
        ColorStateList textColors = getTextColors(context, typedArray);
        return textColors == null ? i2 : textColors.getDefaultColor();
    }

    private CharSequence getTextForAccessibility() {
        return TextUtils.isEmpty(this.mText) ? this.mHint : this.mTransformed;
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

    private boolean hasSpannableText() {
        CharSequence charSequence = this.mText;
        return charSequence != null && (charSequence instanceof Spannable);
    }

    private boolean isAutoSizeEnabled() {
        return supportsAutoSizeText() && this.mAutoSizeTextType != 0;
    }

    private boolean isAutofillable() {
        return getAutofillType() != 0;
    }

    private boolean isDirectionalNavigationKey(int i2) {
        switch (i2) {
            case 19:
            case 20:
            case 21:
            case 22:
                return true;
            default:
                return false;
        }
    }

    private boolean isMarqueeFadeEnabled() {
        return this.mEllipsize == TextUtils.TruncateAt.MARQUEE && this.mMarqueeFadeMode != 1;
    }

    private static boolean isMultilineInputType(int i2) {
        return (i2 & 131087) == 131073;
    }

    public static boolean isPasswordInputType(int i2) {
        int i3 = i2 & 4095;
        return i3 == 129 || i3 == 225 || i3 == 18;
    }

    private boolean isShowingHint() {
        return TextUtils.isEmpty(this.mText) && !TextUtils.isEmpty(this.mHint);
    }

    private static boolean isVisiblePasswordInputType(int i2) {
        return (i2 & 4095) == 145;
    }

    private void notifyAutoFillManagerAfterTextChangedIfNeeded() {
        AutofillManager autofillManager;
        if (isAutofillable() && (autofillManager = (AutofillManager) this.mContext.getSystemService(AutofillManager.class)) != null) {
            autofillManager.notifyValueChanged(this);
        }
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

    private void onProvideAutoStructureForAssistOrAutofill(ViewStructure viewStructure, boolean z2) {
        int lineAtCoordinateUnclamped;
        int lineAtCoordinateUnclamped2;
        boolean z3 = hasPasswordTransformationMethod() || isPasswordInputType(getInputType());
        if (z2) {
            viewStructure.setDataIsSensitive(!this.mTextFromResource);
        }
        if (!z3 || z2) {
            if (this.mLayout == null) {
                assumeLayout();
            }
            Layout layout = this.mLayout;
            int lineCount = layout.getLineCount();
            if (lineCount <= 1) {
                CharSequence text = getText();
                if (z2) {
                    viewStructure.setText(text);
                } else {
                    viewStructure.setText(text, getSelectionStart(), getSelectionEnd());
                }
            } else {
                int[] iArr = new int[2];
                getLocationInWindow(iArr);
                int i2 = iArr[1];
                ViewParent parent = getParent();
                View view = this;
                while (parent instanceof View) {
                    view = (View) parent;
                    parent = view.getParent();
                }
                int height = view.getHeight();
                if (i2 >= 0) {
                    lineAtCoordinateUnclamped2 = getLineAtCoordinateUnclamped(0.0f);
                    lineAtCoordinateUnclamped = getLineAtCoordinateUnclamped(height - 1);
                } else {
                    int lineAtCoordinateUnclamped3 = getLineAtCoordinateUnclamped(-i2);
                    lineAtCoordinateUnclamped = getLineAtCoordinateUnclamped((height - 1) - i2);
                    lineAtCoordinateUnclamped2 = lineAtCoordinateUnclamped3;
                }
                int i3 = lineAtCoordinateUnclamped - lineAtCoordinateUnclamped2;
                int i4 = i3 / 2;
                int i5 = lineAtCoordinateUnclamped2 - i4;
                if (i5 < 0) {
                    i5 = 0;
                }
                int i6 = i4 + lineAtCoordinateUnclamped;
                if (i6 >= lineCount) {
                    i6 = lineCount - 1;
                }
                int lineStart = layout.getLineStart(i5);
                int lineEnd = layout.getLineEnd(i6);
                int selectionStart = getSelectionStart();
                int selectionEnd = getSelectionEnd();
                if (selectionStart < selectionEnd) {
                    if (selectionStart < lineStart) {
                        lineStart = selectionStart;
                    }
                    if (selectionEnd > lineEnd) {
                        lineEnd = selectionEnd;
                    }
                }
                CharSequence text2 = getText();
                if (lineStart > 0 || lineEnd < text2.length()) {
                    text2 = text2.subSequence(lineStart, lineEnd);
                }
                if (z2) {
                    viewStructure.setText(text2);
                } else {
                    viewStructure.setText(text2, selectionStart - lineStart, selectionEnd - lineStart);
                    int i7 = i3 + 1;
                    int[] iArr2 = new int[i7];
                    int[] iArr3 = new int[i7];
                    int baselineOffset = getBaselineOffset();
                    for (int i8 = lineAtCoordinateUnclamped2; i8 <= lineAtCoordinateUnclamped; i8++) {
                        int i9 = i8 - lineAtCoordinateUnclamped2;
                        iArr2[i9] = layout.getLineStart(i8);
                        iArr3[i9] = layout.getLineBaseline(i8) + baselineOffset;
                    }
                    viewStructure.setTextLines(iArr2, iArr3);
                }
            }
            if (!z2) {
                int typefaceStyle = getTypefaceStyle();
                int i10 = (typefaceStyle & 1) != 0 ? 1 : 0;
                if ((typefaceStyle & 2) != 0) {
                    i10 |= 2;
                }
                int flags = this.mTextPaint.getFlags();
                if ((flags & 32) != 0) {
                    i10 |= 1;
                }
                if ((flags & 8) != 0) {
                    i10 |= 4;
                }
                if ((flags & 16) != 0) {
                    i10 |= 8;
                }
                viewStructure.setTextStyle(getTextSize(), getCurrentTextColor(), 1, i10);
            }
        }
        viewStructure.setHint(getHint());
        viewStructure.setInputType(getInputType());
    }

    private int[] parseDimensionArray(TypedArray typedArray) {
        if (typedArray == null) {
            return null;
        }
        int length = typedArray.length();
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = typedArray.getDimensionPixelSize(i2, 0);
        }
        return iArr;
    }

    private void paste(int i2, int i3, boolean z2) {
        CharSequence charSequenceCoerceToText;
        ClipData primaryClip = ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).getPrimaryClip();
        if (primaryClip != null) {
            boolean z3 = false;
            for (int i4 = 0; i4 < primaryClip.getItemCount(); i4++) {
                if (z2) {
                    charSequenceCoerceToText = primaryClip.getItemAt(i4).coerceToStyledText(getContext());
                } else {
                    charSequenceCoerceToText = primaryClip.getItemAt(i4).coerceToText(getContext());
                    if (charSequenceCoerceToText instanceof Spanned) {
                        charSequenceCoerceToText = charSequenceCoerceToText.toString();
                    }
                }
                if (charSequenceCoerceToText != null) {
                    if (z3) {
                        ((Editable) this.mText).insert(getSelectionEnd(), "\n");
                        ((Editable) this.mText).insert(getSelectionEnd(), charSequenceCoerceToText);
                    } else {
                        Selection.setSelection((Spannable) this.mText, i3);
                        ((Editable) this.mText).replace(i2, i3, charSequenceCoerceToText);
                        z3 = true;
                    }
                }
            }
            sLastCutCopyOrTextChangedTime = 0L;
        }
    }

    private boolean performAccessibilityActionClick(Bundle bundle) {
        boolean z2;
        if (!isEnabled()) {
            return false;
        }
        if (isClickable() || isLongClickable()) {
            if (isFocusable() && !isFocused()) {
                requestFocus();
            }
            performClick();
            z2 = true;
        } else {
            z2 = false;
        }
        if ((this.mMovement == null && !onCheckIsTextEditor()) || !hasSpannableText() || this.mLayout == null) {
            return z2;
        }
        if ((!isTextEditable() && !isTextSelectable()) || !isFocused()) {
            return z2;
        }
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        viewClicked(inputMethodManagerPeekInstance);
        return (isTextSelectable() || !this.mEditor.mShowSoftInputOnFocus || inputMethodManagerPeekInstance == null) ? z2 : z2 | inputMethodManagerPeekInstance.showSoftInput(this, 0);
    }

    public static void preloadFontCache() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTypeface(Typeface.DEFAULT);
        paint.measureText("H");
    }

    private void prepareDrawableForDisplay(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setLayoutDirection(getLayoutDirection());
        if (drawable.isStateful()) {
            drawable.setState(getDrawableState());
            drawable.jumpToCurrentState();
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

    private void requestAutofill() {
        AutofillManager autofillManager = (AutofillManager) this.mContext.getSystemService(AutofillManager.class);
        if (autofillManager != null) {
            autofillManager.requestAutofill(this);
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

    private void setInputTypeFromEditor() {
        try {
            Editor editor = this.mEditor;
            editor.mInputType = editor.mKeyListener.getInputType();
        } catch (IncompatibleClassChangeError unused) {
            this.mEditor.mInputType = 1;
        }
        setInputTypeSingleLine(this.mSingleLine);
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
        sLastCutCopyOrTextChangedTime = SystemClock.uptimeMillis();
    }

    private void setRawTextSize(float f2, boolean z2) {
        if (f2 != this.mTextPaint.getTextSize()) {
            this.mTextPaint.setTextSize(f2);
            if (!z2 || this.mLayout == null) {
                return;
            }
            this.mNeedsAutoSizeText = false;
            nullLayouts();
            requestLayout();
            invalidate();
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
            applyCompoundDrawableTint();
        }
    }

    private void setTextSizeInternal(int i2, float f2, boolean z2) {
        Context context = getContext();
        setRawTextSize(TypedValue.applyDimension(i2, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()), z2);
    }

    private void setTypefaceFromAttrs(Typeface typeface, String str, int i2, int i3) {
        if (typeface == null && str != null) {
            typeface = Typeface.create(str, i3);
        } else if (typeface != null && typeface.getStyle() != i3) {
            typeface = Typeface.create(typeface, i3);
        }
        if (typeface != null) {
            setTypeface(typeface);
            return;
        }
        if (i2 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i2 == 2) {
            typeface = Typeface.SERIF;
        } else if (i2 == 3) {
            typeface = Typeface.MONOSPACE;
        }
        setTypeface(typeface, i3);
    }

    private boolean setupAutoSizeText() {
        if (supportsAutoSizeText() && this.mAutoSizeTextType == 1) {
            if (!this.mHasPresetAutoSizeValues || this.mAutoSizeTextSizesInPx.length == 0) {
                float fRound = Math.round(this.mAutoSizeMinTextSizeInPx);
                int i2 = 1;
                while (Math.round(this.mAutoSizeStepGranularityInPx + fRound) <= Math.round(this.mAutoSizeMaxTextSizeInPx)) {
                    i2++;
                    fRound += this.mAutoSizeStepGranularityInPx;
                }
                int[] iArr = new int[i2];
                float f2 = this.mAutoSizeMinTextSizeInPx;
                for (int i3 = 0; i3 < i2; i3++) {
                    iArr[i3] = Math.round(f2);
                    f2 += this.mAutoSizeStepGranularityInPx;
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            }
            this.mNeedsAutoSizeText = true;
        } else {
            this.mNeedsAutoSizeText = false;
        }
        return this.mNeedsAutoSizeText;
    }

    private void setupAutoSizeUniformPresetSizes(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = typedArray.getDimensionPixelSize(i2, -1);
            }
            this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArr);
            setupAutoSizeUniformPresetSizesConfiguration();
        }
    }

    private boolean setupAutoSizeUniformPresetSizesConfiguration() {
        int[] iArr = this.mAutoSizeTextSizesInPx;
        int length = iArr.length;
        boolean z2 = length > 0;
        this.mHasPresetAutoSizeValues = z2;
        if (z2) {
            this.mAutoSizeTextType = 1;
            this.mAutoSizeMinTextSizeInPx = iArr[0];
            this.mAutoSizeMaxTextSizeInPx = iArr[length - 1];
            this.mAutoSizeStepGranularityInPx = -1.0f;
        }
        return z2;
    }

    private void shareSelectedText() {
        String selectedText = getSelectedText();
        if (selectedText == null || selectedText.isEmpty()) {
            return;
        }
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType(ClipDescription.MIMETYPE_TEXT_PLAIN);
        intent.removeExtra(Intent.EXTRA_TEXT);
        intent.putExtra(Intent.EXTRA_TEXT, selectedText);
        getContext().startActivity(Intent.createChooser(intent, null));
        Selection.setSelection((Spannable) this.mText, getSelectionEnd());
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

    private boolean suggestedSizeFitsInSpace(int i2, RectF rectF) {
        CharSequence text = this.mTransformed;
        if (text == null) {
            text = getText();
        }
        int maxLines = getMaxLines();
        TextPaint textPaint = this.mTempTextPaint;
        if (textPaint == null) {
            this.mTempTextPaint = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.mTempTextPaint.set(getPaint());
        this.mTempTextPaint.setTextSize(i2);
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(text, 0, text.length(), this.mTempTextPaint, Math.round(rectF.right));
        builderObtain.setAlignment(getLayoutAlignment()).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).setIncludePad(getIncludeFontPadding()).setBreakStrategy(getBreakStrategy()).setHyphenationFrequency(getHyphenationFrequency()).setJustificationMode(getJustificationMode()).setMaxLines(this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE).setTextDirection(getTextDirectionHeuristic());
        StaticLayout staticLayoutBuild = builderObtain.build();
        return (maxLines == -1 || staticLayoutBuild.getLineCount() <= maxLines) && ((float) staticLayoutBuild.getHeight()) <= rectF.bottom;
    }

    private void unregisterForPreDraw() {
        getViewTreeObserver().removeOnPreDrawListener(this);
        this.mPreDrawRegistered = false;
        this.mPreDrawListenerDetached = false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    private void updateTextColors() {
        boolean z2;
        boolean z3;
        int colorForState;
        int colorForState2 = this.mTextColor.getColorForState(getDrawableState(), 0);
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
        if (colorStateList2 != null && (colorForState = colorStateList2.getColorForState(getDrawableState(), 0)) != this.mCurHintTextColor) {
            this.mCurHintTextColor = colorForState;
            z3 = this.mText.length() != 0 ? z2 : true;
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
        this.mCurrentSpellCheckerLocaleCache = currentSpellCheckerSubtype != null ? currentSpellCheckerSubtype.getLocaleObject() : null;
    }

    private void validateAndSetAutoSizeTextTypeUniformConfiguration(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.mAutoSizeTextType = 1;
        this.mAutoSizeMinTextSizeInPx = f2;
        this.mAutoSizeMaxTextSizeInPx = f3;
        this.mAutoSizeStepGranularityInPx = f4;
        this.mHasPresetAutoSizeValues = false;
    }

    @Override // android.view.View
    public void addExtraDataToAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        RectF characterBounds;
        if (bundle != null && str.equals(AccessibilityNodeInfo.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY)) {
            int i2 = bundle.getInt(AccessibilityNodeInfo.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX, -1);
            int i3 = bundle.getInt(AccessibilityNodeInfo.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH, -1);
            if (i3 <= 0 || i2 < 0 || i2 >= this.mText.length()) {
                Log.e(LOG_TAG, "Invalid arguments for accessibility character locations");
                return;
            }
            RectF[] rectFArr = new RectF[i3];
            CursorAnchorInfo.Builder builder = new CursorAnchorInfo.Builder();
            populateCharacterBounds(builder, i2, i2 + i3, viewportToContentHorizontalOffset(), viewportToContentVerticalOffset());
            CursorAnchorInfo cursorAnchorInfoBuild = builder.setMatrix(null).build();
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = i2 + i4;
                if ((cursorAnchorInfoBuild.getCharacterBoundsFlags(i5) & 1) == 1 && (characterBounds = cursorAnchorInfoBuild.getCharacterBounds(i5)) != null) {
                    mapRectFromViewToScreenCoords(characterBounds, true);
                    rectFArr[i4] = characterBounds;
                }
            }
            accessibilityNodeInfo.getExtras().putParcelableArray(str, rectFArr);
        }
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

    @Override // android.view.View
    public void autofill(AutofillValue autofillValue) {
        if (autofillValue.isText() && isTextEditable()) {
            setText(autofillValue.getTextValue(), this.mBufferType, true, 0);
            CharSequence text = getText();
            if (text instanceof Spannable) {
                Selection.setSelection((Spannable) text, text.length());
                return;
            }
            return;
        }
        Log.w(LOG_TAG, autofillValue + " could not be autofilled into " + this);
    }

    public void beginBatchEdit() {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.beginBatchEdit();
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x00f3  */
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
        int iFloor = (int) Math.floor(layout.getLineLeft(lineForOffset));
        int iCeil = (int) Math.ceil(layout.getLineRight(lineForOffset));
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
        return !hasPasswordTransformationMethod() && this.mText.length() > 0 && hasSelection() && this.mEditor != null;
    }

    public boolean canCut() {
        Editor editor;
        return !hasPasswordTransformationMethod() && this.mText.length() > 0 && hasSelection() && (this.mText instanceof Editable) && (editor = this.mEditor) != null && editor.mKeyListener != null;
    }

    public boolean canPaste() {
        Editor editor;
        return (this.mText instanceof Editable) && (editor = this.mEditor) != null && editor.mKeyListener != null && getSelectionStart() >= 0 && getSelectionEnd() >= 0 && ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).hasPrimaryClip();
    }

    public boolean canPasteAsPlainText() {
        if (!canPaste()) {
            return false;
        }
        ClipData primaryClip = ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).getPrimaryClip();
        ClipDescription description = primaryClip.getDescription();
        boolean zHasMimeType = description.hasMimeType(ClipDescription.MIMETYPE_TEXT_PLAIN);
        CharSequence text = primaryClip.getItemAt(0).getText();
        if (zHasMimeType && (text instanceof Spanned) && TextUtils.hasStyleSpan((Spanned) text)) {
            return true;
        }
        return description.hasMimeType(ClipDescription.MIMETYPE_TEXT_HTML);
    }

    public boolean canProcessText() {
        if (getId() == -1) {
            return false;
        }
        return canShare();
    }

    public boolean canRedo() {
        Editor editor = this.mEditor;
        return editor != null && editor.canRedo();
    }

    public boolean canRequestAutofill() {
        AutofillManager autofillManager;
        if (isAutofillable() && (autofillManager = (AutofillManager) this.mContext.getSystemService(AutofillManager.class)) != null) {
            return autofillManager.isEnabled();
        }
        return false;
    }

    public boolean canSelectAllText() {
        return (!canSelectText() || hasPasswordTransformationMethod() || (getSelectionStart() == 0 && getSelectionEnd() == this.mText.length())) ? false : true;
    }

    public boolean canSelectText() {
        Editor editor;
        return (this.mText.length() == 0 || (editor = this.mEditor) == null || !editor.hasSelectionController()) ? false : true;
    }

    public boolean canShare() {
        if (getContext().canStartActivityForResult() && isDeviceProvisioned()) {
            return canCopy();
        }
        return false;
    }

    public boolean canUndo() {
        Editor editor = this.mEditor;
        return editor != null && editor.canUndo();
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
        String strD;
        super.debug(i2);
        StringBuilder sbU = android.accessibilityservice.c.u(View.debugIndent(i2), "frame={");
        sbU.append(this.mLeft);
        sbU.append(", ");
        sbU.append(this.mTop);
        sbU.append(", ");
        sbU.append(this.mRight);
        sbU.append(", ");
        sbU.append(this.mBottom);
        sbU.append("} scroll={");
        sbU.append(this.mScrollX);
        sbU.append(", ");
        String strM = android.accessibilityservice.c.m(sbU, this.mScrollY, "} ");
        if (this.mText != null) {
            StringBuilder sbU2 = android.accessibilityservice.c.u(strM, "mText=\"");
            sbU2.append((Object) this.mText);
            sbU2.append("\" ");
            strD = sbU2.toString();
            if (this.mLayout != null) {
                StringBuilder sbU3 = android.accessibilityservice.c.u(strD, "mLayout width=");
                sbU3.append(this.mLayout.getWidth());
                sbU3.append(" height=");
                sbU3.append(this.mLayout.getHeight());
                strD = sbU3.toString();
            }
        } else {
            strD = android.accessibilityservice.c.D(strM, "mText=NULL");
        }
        Log.d("View", strD);
    }

    public void deleteText_internal(int i2, int i3) {
        ((Editable) this.mText).delete(i2, i3);
    }

    public boolean didTouchFocusSelect() {
        Editor editor = this.mEditor;
        return editor != null && editor.mTouchFocusSelected;
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            for (Drawable drawable : drawables.mShowing) {
                if (drawable != null) {
                    drawable.setHotspot(f2, f3);
                }
            }
        }
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
        if (this.mDrawables != null) {
            int[] drawableState = getDrawableState();
            for (Drawable drawable : this.mDrawables.mShowing) {
                if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
                    invalidateDrawable(drawable);
                }
            }
        }
    }

    @Override // android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        TextUtils.TruncateAt ellipsize = getEllipsize();
        viewHierarchyEncoder.addProperty("text:ellipsize", ellipsize == null ? null : ellipsize.name());
        viewHierarchyEncoder.addProperty("text:textSize", getTextSize());
        viewHierarchyEncoder.addProperty("text:scaledTextSize", getScaledTextSize());
        viewHierarchyEncoder.addProperty("text:typefaceStyle", getTypefaceStyle());
        viewHierarchyEncoder.addProperty("text:selectionStart", getSelectionStart());
        viewHierarchyEncoder.addProperty("text:selectionEnd", getSelectionEnd());
        viewHierarchyEncoder.addProperty("text:curTextColor", this.mCurTextColor);
        CharSequence charSequence = this.mText;
        viewHierarchyEncoder.addProperty("text:text", charSequence != null ? charSequence.toString() : null);
        viewHierarchyEncoder.addProperty("text:gravity", this.mGravity);
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
    public CharSequence getAccessibilityClassName() {
        return TextView.class.getName();
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

    public int getAutoSizeMaxTextSize() {
        return Math.round(this.mAutoSizeMaxTextSizeInPx);
    }

    public int getAutoSizeMinTextSize() {
        return Math.round(this.mAutoSizeMinTextSizeInPx);
    }

    public int getAutoSizeStepGranularity() {
        return Math.round(this.mAutoSizeStepGranularityInPx);
    }

    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextSizesInPx;
    }

    public int getAutoSizeTextType() {
        return this.mAutoSizeTextType;
    }

    @Override // android.view.View
    public int getAutofillType() {
        return isTextEditable() ? 1 : 0;
    }

    @Override // android.view.View
    public AutofillValue getAutofillValue() {
        if (isTextEditable()) {
            return AutofillValue.forText(getText());
        }
        return null;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.mLayout == null) {
            return super.getBaseline();
        }
        return this.mLayout.getLineBaseline(0) + getBaselineOffset();
    }

    public int getBaselineOffset() {
        int verticalOffset = (this.mGravity & 112) != 48 ? getVerticalOffset(true) : 0;
        if (View.isLayoutModeOptical(this.mParent)) {
            verticalOffset -= getOpticalInsets().top;
        }
        return getExtendedPaddingTop() + verticalOffset;
    }

    @Override // android.view.View
    public int getBottomPaddingOffset() {
        return (int) Math.max(0.0f, this.mShadowDy + this.mShadowRadius);
    }

    public int getBreakStrategy() {
        return this.mBreakStrategy;
    }

    public int getCompoundDrawablePadding() {
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            return drawables.mDrawablePadding;
        }
        return 0;
    }

    public ColorStateList getCompoundDrawableTintList() {
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            return drawables.mTintList;
        }
        return null;
    }

    public PorterDuff.Mode getCompoundDrawableTintMode() {
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            return drawables.mTintMode;
        }
        return null;
    }

    public Drawable[] getCompoundDrawables() {
        Drawables drawables = this.mDrawables;
        return drawables != null ? (Drawable[]) drawables.mShowing.clone() : new Drawable[]{null, null, null, null};
    }

    public Drawable[] getCompoundDrawablesRelative() {
        Drawables drawables = this.mDrawables;
        if (drawables == null) {
            return new Drawable[]{null, null, null, null};
        }
        Drawable[] drawableArr = drawables.mShowing;
        return new Drawable[]{drawables.mDrawableStart, drawableArr[1], drawables.mDrawableEnd, drawableArr[3]};
    }

    public int getCompoundPaddingBottom() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mShowing[3] == null) ? this.mPaddingBottom : this.mPaddingBottom + drawables.mDrawablePadding + drawables.mDrawableSizeBottom;
    }

    public int getCompoundPaddingEnd() {
        resolveDrawables();
        return getLayoutDirection() != 1 ? getCompoundPaddingRight() : getCompoundPaddingLeft();
    }

    public int getCompoundPaddingLeft() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mShowing[0] == null) ? this.mPaddingLeft : this.mPaddingLeft + drawables.mDrawablePadding + drawables.mDrawableSizeLeft;
    }

    public int getCompoundPaddingRight() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mShowing[2] == null) ? this.mPaddingRight : this.mPaddingRight + drawables.mDrawablePadding + drawables.mDrawableSizeRight;
    }

    public int getCompoundPaddingStart() {
        resolveDrawables();
        return getLayoutDirection() != 1 ? getCompoundPaddingLeft() : getCompoundPaddingRight();
    }

    public int getCompoundPaddingTop() {
        Drawables drawables = this.mDrawables;
        return (drawables == null || drawables.mShowing[1] == null) ? this.mPaddingTop : this.mPaddingTop + drawables.mDrawablePadding + drawables.mDrawableSizeTop;
    }

    public final int getCurrentHintTextColor() {
        return this.mHintTextColor != null ? this.mCurHintTextColor : this.mCurTextColor;
    }

    public final int getCurrentTextColor() {
        return this.mCurTextColor;
    }

    public ActionMode.Callback getCustomInsertionActionModeCallback() {
        Editor editor = this.mEditor;
        if (editor == null) {
            return null;
        }
        return editor.mCustomInsertionActionModeCallback;
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

    public final Editor getEditorForTesting() {
        return this.mEditor;
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
        if (this.mLayout == null) {
            assumeLayout();
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
        return i2 == 80 ? compoundPaddingBottom : m.b(height, lineTop, 2, compoundPaddingBottom);
    }

    public int getExtendedPaddingTop() {
        int i2;
        if (this.mMaxMode != 1) {
            return getCompoundPaddingTop();
        }
        if (this.mLayout == null) {
            assumeLayout();
        }
        if (this.mLayout.getLineCount() <= this.mMaximum) {
            return getCompoundPaddingTop();
        }
        int compoundPaddingTop = getCompoundPaddingTop();
        int height = (getHeight() - compoundPaddingTop) - getCompoundPaddingBottom();
        int lineTop = this.mLayout.getLineTop(this.mMaximum);
        if (lineTop < height && (i2 = this.mGravity & 112) != 48) {
            return i2 == 80 ? (compoundPaddingTop + height) - lineTop : m.b(height, lineTop, 2, compoundPaddingTop);
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

    public String getFontFeatureSettings() {
        return this.mTextPaint.getFontFeatureSettings();
    }

    public String getFontVariationSettings() {
        return this.mTextPaint.getFontVariationSettings();
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

    public int getHyphenationFrequency() {
        return this.mHyphenationFrequency;
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

    public LocaleList getImeHintLocales() {
        Editor.InputContentType inputContentType;
        Editor editor = this.mEditor;
        if (editor == null || (inputContentType = editor.mInputContentType) == null) {
            return null;
        }
        return inputContentType.imeHintLocales;
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

    public int getJustificationMode() {
        return this.mJustificationMode;
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

    @Override // android.view.View
    public float getLeftFadingEdgeStrength() {
        Marquee marquee;
        if (isMarqueeFadeEnabled() && (marquee = this.mMarquee) != null && !marquee.isStopped()) {
            Marquee marquee2 = this.mMarquee;
            if (marquee2.shouldDrawLeftFade()) {
                return getHorizontalFadingEdgeStrength(marquee2.getScroll(), 0.0f);
            }
            return 0.0f;
        }
        if (getLineCount() != 1) {
            return super.getLeftFadingEdgeStrength();
        }
        float lineLeft = getLayout().getLineLeft(0);
        int i2 = this.mScrollX;
        if (lineLeft > i2) {
            return 0.0f;
        }
        return getHorizontalFadingEdgeStrength(i2, lineLeft);
    }

    @Override // android.view.View
    public int getLeftPaddingOffset() {
        return (getCompoundPaddingLeft() - this.mPaddingLeft) + ((int) Math.min(0.0f, this.mShadowDx - this.mShadowRadius));
    }

    public float getLetterSpacing() {
        return this.mTextPaint.getLetterSpacing();
    }

    public int getLineAtCoordinate(float f2) {
        return getLayout().getLineForVertical((int) (Math.min((getHeight() - getTotalPaddingBottom()) - 1, Math.max(0.0f, f2 - getTotalPaddingTop())) + getScrollY()));
    }

    public int getLineAtCoordinateUnclamped(float f2) {
        return getLayout().getLineForVertical((int) ((f2 - getTotalPaddingTop()) + getScrollY()));
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
        return FastMath.round((this.mTextPaint.getFontMetricsInt(null) * this.mSpacingMult) + this.mSpacingAdd);
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

    public int getOffsetAtCoordinate(int i2, float f2) {
        return getLayout().getOffsetForHorizontal(i2, convertToLocalHorizontalCoordinate(f2));
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

    @Override // android.view.View
    public float getRightFadingEdgeStrength() {
        Marquee marquee;
        if (isMarqueeFadeEnabled() && (marquee = this.mMarquee) != null && !marquee.isStopped()) {
            Marquee marquee2 = this.mMarquee;
            return getHorizontalFadingEdgeStrength(marquee2.getMaxFadeScroll(), marquee2.getScroll());
        }
        if (getLineCount() != 1) {
            return super.getRightFadingEdgeStrength();
        }
        float width = ((getWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight()) + this.mScrollX;
        float lineRight = getLayout().getLineRight(0);
        if (lineRight < width) {
            return 0.0f;
        }
        return getHorizontalFadingEdgeStrength(width, lineRight);
    }

    @Override // android.view.View
    public int getRightPaddingOffset() {
        return (-(getCompoundPaddingRight() - this.mPaddingRight)) + ((int) Math.max(0.0f, this.mShadowDx + this.mShadowRadius));
    }

    @ViewDebug.ExportedProperty(category = "text")
    public float getScaledTextSize() {
        return this.mTextPaint.getTextSize() / this.mTextPaint.density;
    }

    public String getSelectedText() {
        if (!hasSelection()) {
            return null;
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        return String.valueOf(selectionStart > selectionEnd ? this.mText.subSequence(selectionEnd, selectionStart) : this.mText.subSequence(selectionStart, selectionEnd));
    }

    @ViewDebug.ExportedProperty(category = "text")
    public int getSelectionEnd() {
        return Selection.getSelectionEnd(getText());
    }

    @ViewDebug.ExportedProperty(category = "text")
    public int getSelectionStart() {
        return Selection.getSelectionStart(getText());
    }

    public int getShadowColor() {
        return this.mShadowColor;
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

    public TextClassifier getTextClassifier() {
        if (this.mTextClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.mContext.getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                this.mTextClassifier = textClassificationManager.getTextClassifier();
            } else {
                this.mTextClassifier = TextClassifier.NO_OP;
            }
        }
        return this.mTextClassifier;
    }

    public final ColorStateList getTextColors() {
        return this.mTextColor;
    }

    public TextDirectionHeuristic getTextDirectionHeuristic() {
        if (hasPasswordTransformationMethod()) {
            return TextDirectionHeuristics.LTR;
        }
        Editor editor = this.mEditor;
        if (editor != null && (editor.mInputType & 15) == 3) {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(getTextLocale()).getDigitStrings()[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        boolean z2 = getLayoutDirection() == 1;
        switch (getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                return z2 ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    public Locale getTextLocale() {
        return this.mTextPaint.getTextLocale();
    }

    public LocaleList getTextLocales() {
        return this.mTextPaint.getTextLocales();
    }

    public float getTextScaleX() {
        return this.mTextPaint.getTextScaleX();
    }

    @ViewDebug.ExportedProperty(category = "text")
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
        return getVerticalOffset(true) + getExtendedPaddingTop();
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

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "NORMAL"), @ViewDebug.IntToString(from = 1, to = "BOLD"), @ViewDebug.IntToString(from = 2, to = "ITALIC"), @ViewDebug.IntToString(from = 3, to = "BOLD_ITALIC")})
    public int getTypefaceStyle() {
        Typeface typeface = this.mTextPaint.getTypeface();
        if (typeface != null) {
            return typeface.getStyle();
        }
        return 0;
    }

    public final UndoManager getUndoManager() {
        throw new UnsupportedOperationException("not implemented");
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

    public boolean handleBackInTextActionModeIfNeeded(KeyEvent keyEvent) {
        Editor editor = this.mEditor;
        if (editor != null && editor.getTextActionMode() != null) {
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
                    stopTextActionMode();
                    return true;
                }
            }
        }
        return false;
    }

    public void handleTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        sLastCutCopyOrTextChangedTime = 0L;
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
            inputMethodState.mChangedDelta = (i4 - i3) + inputMethodState.mChangedDelta;
        }
        resetErrorChangedFlag();
        sendOnTextChanged(charSequence, i2, i3, i4);
        onTextChanged(charSequence, i2, i3, i4);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return !(getBackground() == null || getBackground().getCurrent() == null) || (this.mText instanceof Spannable) || hasSelection() || isHorizontalFadingEdgeEnabled();
    }

    public boolean hasPasswordTransformationMethod() {
        return this.mTransformation instanceof PasswordTransformationMethod;
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
        int verticalOffset = getVerticalOffset(true) + getExtendedPaddingTop();
        int i2 = 0;
        if (this.mEditor.mCursorCount == 0) {
            RectF rectF = TEMP_RECTF;
            synchronized (rectF) {
                float fCeil = (float) Math.ceil(this.mTextPaint.getStrokeWidth());
                if (fCeil < 1.0f) {
                    fCeil = 1.0f;
                }
                float f2 = fCeil / 2.0f;
                this.mHighlightPath.computeBounds(rectF, false);
                float f3 = compoundPaddingLeft;
                float f4 = verticalOffset;
                invalidate((int) Math.floor((rectF.left + f3) - f2), (int) Math.floor((rectF.top + f4) - f2), (int) Math.ceil(f3 + rectF.right + f2), (int) Math.ceil(f4 + rectF.bottom + f2));
            }
            return;
        }
        while (true) {
            Editor editor = this.mEditor;
            if (i2 >= editor.mCursorCount) {
                return;
            }
            Rect bounds = editor.mCursorDrawable[i2].getBounds();
            invalidate(bounds.left + compoundPaddingLeft, bounds.top + verticalOffset, bounds.right + compoundPaddingLeft, bounds.bottom + verticalOffset);
            i2++;
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        int compoundPaddingTop;
        int i2;
        boolean z2 = false;
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            int compoundPaddingRight = this.mScrollX;
            int i3 = this.mScrollY;
            Drawables drawables = this.mDrawables;
            if (drawables != null) {
                Drawable[] drawableArr = drawables.mShowing;
                if (drawable == drawableArr[0]) {
                    compoundPaddingTop = getCompoundPaddingTop();
                    int compoundPaddingBottom = ((this.mBottom - this.mTop) - getCompoundPaddingBottom()) - compoundPaddingTop;
                    compoundPaddingRight += this.mPaddingLeft;
                    i2 = (compoundPaddingBottom - drawables.mDrawableHeightLeft) / 2;
                } else if (drawable == drawableArr[2]) {
                    compoundPaddingTop = getCompoundPaddingTop();
                    int compoundPaddingBottom2 = ((this.mBottom - this.mTop) - getCompoundPaddingBottom()) - compoundPaddingTop;
                    compoundPaddingRight += ((this.mRight - this.mLeft) - this.mPaddingRight) - drawables.mDrawableSizeRight;
                    i2 = (compoundPaddingBottom2 - drawables.mDrawableHeightRight) / 2;
                } else {
                    if (drawable == drawableArr[1]) {
                        int compoundPaddingLeft = getCompoundPaddingLeft();
                        compoundPaddingRight += (((((this.mRight - this.mLeft) - getCompoundPaddingRight()) - compoundPaddingLeft) - drawables.mDrawableWidthTop) / 2) + compoundPaddingLeft;
                        i3 += this.mPaddingTop;
                    } else if (drawable == drawableArr[3]) {
                        int compoundPaddingLeft2 = getCompoundPaddingLeft();
                        compoundPaddingRight += (((((this.mRight - this.mLeft) - getCompoundPaddingRight()) - compoundPaddingLeft2) - drawables.mDrawableWidthBottom) / 2) + compoundPaddingLeft2;
                        i3 += ((this.mBottom - this.mTop) - this.mPaddingBottom) - drawables.mDrawableSizeBottom;
                    }
                    z2 = true;
                }
                i3 += i2 + compoundPaddingTop;
                z2 = true;
            }
            if (z2) {
                invalidate(bounds.left + compoundPaddingRight, bounds.top + i3, bounds.right + compoundPaddingRight, bounds.bottom + i3);
            }
        }
        if (z2) {
            return;
        }
        super.invalidateDrawable(drawable);
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
        int verticalOffset = getVerticalOffset(true) + getExtendedPaddingTop();
        if (lineForOffset != lineForOffset2 || z2) {
            width = getWidth() - getCompoundPaddingRight();
        } else {
            int primaryHorizontal = (int) this.mLayout.getPrimaryHorizontal(i2);
            width = ((int) (((double) this.mLayout.getPrimaryHorizontal(i3)) + 1.0d)) + compoundPaddingLeft;
            compoundPaddingLeft = primaryHorizontal + compoundPaddingLeft;
        }
        int i5 = this.mScrollX;
        invalidate(compoundPaddingLeft + i5, lineTop + verticalOffset, i5 + width, verticalOffset + lineBottom);
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

    public boolean isDeviceProvisioned() {
        if (this.mDeviceProvisionedState == 0) {
            this.mDeviceProvisionedState = Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0 ? 2 : 1;
        }
        return this.mDeviceProvisionedState == 2;
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

    public boolean isInExtractedMode() {
        return false;
    }

    public boolean isInputMethodTarget() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        return inputMethodManagerPeekInstance != null && inputMethodManagerPeekInstance.isActive(this);
    }

    @Override // android.view.View
    public boolean isPaddingOffsetRequired() {
        return (this.mShadowRadius == 0.0f && this.mDrawables == null) ? false : true;
    }

    public boolean isPositionVisible(float f2, float f3) {
        float[] fArr = TEMP_POSITION;
        synchronized (fArr) {
            fArr[0] = f2;
            fArr[1] = f3;
            View view = this;
            while (view != null) {
                if (view != this) {
                    fArr[0] = fArr[0] - view.getScrollX();
                    fArr[1] = fArr[1] - view.getScrollY();
                }
                float f4 = fArr[0];
                if (f4 >= 0.0f && fArr[1] >= 0.0f && f4 <= view.getWidth() && fArr[1] <= view.getHeight()) {
                    if (!view.getMatrix().isIdentity()) {
                        view.getMatrix().mapPoints(fArr);
                    }
                    fArr[0] = fArr[0] + view.getLeft();
                    fArr[1] = fArr[1] + view.getTop();
                    Object parent = view.getParent();
                    view = parent instanceof View ? (View) parent : null;
                }
                return false;
            }
            return true;
        }
    }

    boolean isSingleLine() {
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
            for (Drawable drawable : drawables.mShowing) {
                if (drawable != null) {
                    drawable.jumpToCurrentState();
                }
            }
        }
    }

    public int length() {
        return this.mText.length();
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:114:0x0214  */
    /* JADX WARN: Code duplicated, block: B:117:0x021a  */
    /* JADX WARN: Code duplicated, block: B:119:? A[RETURN, SYNTHETIC] */
    public void makeNewLayout(int i2, int i3, BoringLayout.Metrics metrics, BoringLayout.Metrics metrics2, int i4, boolean z2) {
        int i5;
        boolean z3;
        Editor editor;
        int i6;
        BoringLayout.Metrics metrics3;
        int i7;
        Layout.Alignment alignment;
        int i8 = i4;
        stopMarquee();
        this.mOldMaximum = this.mMaximum;
        this.mOldMaxMode = this.mMaxMode;
        this.mHighlightPathBogus = true;
        int i9 = 0;
        int i10 = i2 < 0 ? 0 : i2;
        int i11 = i3 < 0 ? 0 : i3;
        Layout.Alignment layoutAlignment = getLayoutAlignment();
        boolean z4 = this.mSingleLine && this.mLayout != null && (layoutAlignment == Layout.Alignment.ALIGN_NORMAL || layoutAlignment == Layout.Alignment.ALIGN_OPPOSITE);
        int paragraphDirection = z4 ? this.mLayout.getParagraphDirection(0) : 0;
        boolean z5 = this.mEllipsize != null && getKeyListener() == null;
        TextUtils.TruncateAt truncateAt = this.mEllipsize;
        TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.MARQUEE;
        boolean z6 = truncateAt == truncateAt2 && this.mMarqueeFadeMode != 0;
        if (truncateAt == truncateAt2 && this.mMarqueeFadeMode == 1) {
            truncateAt = TextUtils.TruncateAt.END_SMALL;
        }
        TextUtils.TruncateAt truncateAt3 = truncateAt;
        if (this.mTextDir == null) {
            this.mTextDir = getTextDirectionHeuristic();
        }
        TextUtils.TruncateAt truncateAt4 = truncateAt2;
        this.mLayout = makeSingleLayout(i10, metrics, i4, layoutAlignment, z5, truncateAt3, truncateAt3 == this.mEllipsize);
        if (z6) {
            this.mSavedMarqueeModeLayout = makeSingleLayout(i10, metrics, i4, layoutAlignment, z5, truncateAt3 == truncateAt4 ? TextUtils.TruncateAt.END : truncateAt4, truncateAt3 != this.mEllipsize);
        }
        boolean z7 = this.mEllipsize != null;
        this.mHintLayout = null;
        CharSequence charSequence = this.mHint;
        if (charSequence != null) {
            if (z7) {
                i11 = i10;
            }
            if (metrics2 == UNKNOWN_BORING) {
                BoringLayout.Metrics metricsIsBoring = BoringLayout.isBoring(charSequence, this.mTextPaint, this.mTextDir, this.mHintBoring);
                if (metricsIsBoring != null) {
                    this.mHintBoring = metricsIsBoring;
                }
                metrics3 = metricsIsBoring;
            } else {
                metrics3 = metrics2;
            }
            if (metrics3 == null) {
                i7 = i11;
                i5 = paragraphDirection;
                alignment = layoutAlignment;
            } else {
                int i12 = metrics3.width;
                if (i12 <= i11 && (!z7 || i12 <= i8)) {
                    BoringLayout boringLayout = this.mSavedHintLayout;
                    if (boringLayout != null) {
                        this.mHintLayout = boringLayout.replaceOrMake(this.mHint, this.mTextPaint, i11, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad);
                    } else {
                        this.mHintLayout = BoringLayout.make(this.mHint, this.mTextPaint, i11, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad);
                    }
                    this.mSavedHintLayout = (BoringLayout) this.mHintLayout;
                } else if (z7 && i12 <= i11) {
                    BoringLayout boringLayout2 = this.mSavedHintLayout;
                    if (boringLayout2 != null) {
                        i7 = i11;
                        alignment = layoutAlignment;
                        i5 = paragraphDirection;
                        this.mHintLayout = boringLayout2.replaceOrMake(this.mHint, this.mTextPaint, i7, alignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad, this.mEllipsize, i4);
                    } else {
                        i7 = i11;
                        i5 = paragraphDirection;
                        alignment = layoutAlignment;
                        this.mHintLayout = BoringLayout.make(this.mHint, this.mTextPaint, i7, layoutAlignment, this.mSpacingMult, this.mSpacingAdd, metrics3, this.mIncludePad, this.mEllipsize, i4);
                    }
                }
                i7 = i11;
                i5 = paragraphDirection;
                alignment = layoutAlignment;
            }
            if (this.mHintLayout == null) {
                CharSequence charSequence2 = this.mHint;
                z3 = true;
                StaticLayout.Builder maxLines = StaticLayout.Builder.obtain(charSequence2, i9, charSequence2.length(), this.mTextPaint, i7).setAlignment(alignment).setTextDirection(this.mTextDir).setLineSpacing(this.mSpacingAdd, this.mSpacingMult).setIncludePad(this.mIncludePad).setBreakStrategy(this.mBreakStrategy).setHyphenationFrequency(this.mHyphenationFrequency).setJustificationMode(this.mJustificationMode).setMaxLines(this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE);
                if (z7) {
                    maxLines.setEllipsize(this.mEllipsize).setEllipsizedWidth(i8);
                }
                this.mHintLayout = maxLines.build();
            }
            if (z2 || (z4 && i5 != this.mLayout.getParagraphDirection(i9))) {
                registerForPreDraw();
            }
            if (this.mEllipsize == truncateAt4 && !compressText(i8)) {
                i6 = this.mLayoutParams.height;
                if (i6 != -2 || i6 == -1) {
                    this.mRestartMarquee = z3;
                } else {
                    startMarquee();
                }
            }
            editor = this.mEditor;
            if (editor != null) {
                editor.prepareCursorControllers();
            }
        }
        i5 = paragraphDirection;
        i9 = 0;
        truncateAt4 = truncateAt4;
        i8 = i8;
        z3 = true;
        if (z2) {
            registerForPreDraw();
        } else {
            registerForPreDraw();
        }
        if (this.mEllipsize == truncateAt4) {
            i6 = this.mLayoutParams.height;
            if (i6 != -2) {
                this.mRestartMarquee = z3;
            } else {
                this.mRestartMarquee = z3;
            }
        }
        editor = this.mEditor;
        if (editor != null) {
            editor.prepareCursorControllers();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Layout makeSingleLayout(int i2, BoringLayout.Metrics metrics, int i3, Layout.Alignment alignment, boolean z2, TextUtils.TruncateAt truncateAt, boolean z3) {
        BoringLayout.Metrics metrics2;
        int i4;
        int i5;
        TextUtils.TruncateAt truncateAt2;
        BoringLayout boringLayout;
        BoringLayout boringLayout2;
        BoringLayout boringLayoutMake = 0;
        boringLayoutMake = 0;
        boringLayoutMake = 0;
        if (this.mText instanceof Spannable) {
            i4 = i2;
            i5 = i3;
            truncateAt2 = truncateAt;
            boringLayoutMake = new DynamicLayout(this.mText, this.mTransformed, this.mTextPaint, i2, alignment, this.mTextDir, this.mSpacingMult, this.mSpacingAdd, this.mIncludePad, this.mBreakStrategy, this.mHyphenationFrequency, this.mJustificationMode, getKeyListener() == null ? truncateAt : null, i3);
        } else {
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
                int i6 = metrics2.width;
                i4 = i2;
                if (i6 <= i4) {
                    truncateAt2 = truncateAt;
                    i5 = i3;
                    if (truncateAt2 == null || i6 <= i5) {
                        boringLayoutMake = (!z3 || (boringLayout2 = this.mSavedLayout) == null) ? BoringLayout.make(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad) : boringLayout2.replaceOrMake(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad);
                        if (z3) {
                            this.mSavedLayout = boringLayoutMake;
                        }
                    }
                } else {
                    i5 = i3;
                    truncateAt2 = truncateAt;
                }
                if (z2 && i6 <= i4) {
                    boringLayoutMake = (!z3 || (boringLayout = this.mSavedLayout) == null) ? BoringLayout.make(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad, truncateAt, i3) : boringLayout.replaceOrMake(this.mTransformed, this.mTextPaint, i2, alignment, this.mSpacingMult, this.mSpacingAdd, metrics2, this.mIncludePad, truncateAt, i3);
                }
            } else {
                i4 = i2;
                i5 = i3;
                truncateAt2 = truncateAt;
            }
        }
        if (boringLayoutMake != 0) {
            return boringLayoutMake;
        }
        CharSequence charSequence = this.mTransformed;
        StaticLayout.Builder maxLines = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.mTextPaint, i4).setAlignment(alignment).setTextDirection(this.mTextDir).setLineSpacing(this.mSpacingAdd, this.mSpacingMult).setIncludePad(this.mIncludePad).setBreakStrategy(this.mBreakStrategy).setHyphenationFrequency(this.mHyphenationFrequency).setJustificationMode(this.mJustificationMode).setMaxLines(this.mMaxMode == 1 ? this.mMaximum : Integer.MAX_VALUE);
        if (z2) {
            maxLines.setEllipsize(truncateAt2).setEllipsizedWidth(i5);
        }
        return maxLines.build();
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
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 100) {
            if (i3 != -1 || intent == null) {
                CharSequence charSequence = this.mText;
                if (charSequence instanceof Spannable) {
                    Selection.setSelection((Spannable) charSequence, getSelectionEnd());
                    return;
                }
                return;
            }
            CharSequence charSequenceExtra = intent.getCharSequenceExtra(Intent.EXTRA_PROCESS_TEXT);
            if (charSequenceExtra != null) {
                if (!isTextEditable()) {
                    if (charSequenceExtra.length() > 0) {
                        Toast.makeText(getContext(), String.valueOf(charSequenceExtra), 1).show();
                    }
                } else {
                    replaceSelectionWithText(charSequenceExtra);
                    Editor editor = this.mEditor;
                    if (editor != null) {
                        editor.refreshTextActionMode();
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onAttachedToWindow();
        }
        if (this.mPreDrawListenerDetached) {
            getViewTreeObserver().addOnPreDrawListener(this);
            this.mPreDrawListenerDetached = false;
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
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mLocalesChanged) {
            return;
        }
        this.mTextPaint.setTextLocales(LocaleList.getDefault());
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void onCreateContextMenu(ContextMenu contextMenu) {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onCreateContextMenu(contextMenu);
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
        if (onCheckIsTextEditor() && isEnabled()) {
            this.mEditor.createInputMethodStateIfNeeded();
            editorInfo.inputType = getInputType();
            Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
            if (inputContentType != null) {
                editorInfo.imeOptions = inputContentType.imeOptions;
                editorInfo.privateImeOptions = inputContentType.privateImeOptions;
                editorInfo.actionLabel = inputContentType.imeActionLabel;
                editorInfo.actionId = inputContentType.imeActionId;
                editorInfo.extras = inputContentType.extras;
                editorInfo.hintLocales = inputContentType.imeHintLocales;
            } else {
                editorInfo.imeOptions = 0;
                editorInfo.hintLocales = null;
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
            if (this.mText instanceof Editable) {
                EditableInputConnection editableInputConnection = new EditableInputConnection(this);
                editorInfo.initialSelStart = getSelectionStart();
                editorInfo.initialSelEnd = getSelectionEnd();
                editorInfo.initialCapsMode = editableInputConnection.getCursorCapsMode(getInputType());
                return editableInputConnection;
            }
        }
        return null;
    }

    @Override // android.view.View
    public void onDetachedFromWindowInternal() {
        if (this.mPreDrawRegistered) {
            getViewTreeObserver().removeOnPreDrawListener(this);
            this.mPreDrawListenerDetached = true;
        }
        resetResolvedDrawables();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onDetachedFromWindow();
        }
        super.onDetachedFromWindowInternal();
    }

    @Override // android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        int action = dragEvent.getAction();
        if (action == 1) {
            Editor editor = this.mEditor;
            return editor != null && editor.hasInsertionController();
        }
        if (action == 2) {
            if (this.mText instanceof Spannable) {
                Selection.setSelection((Spannable) this.mText, getOffsetForPosition(dragEvent.getX(), dragEvent.getY()));
            }
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
        int i2;
        int verticalOffset;
        int verticalOffset2;
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
            i2 = compoundPaddingBottom;
            if (drawables.mShowing[0] != null) {
                canvas.save();
                canvas.translate(this.mPaddingLeft + i3 + i9, m.b(i10, drawables.mDrawableHeightLeft, 2, i4 + compoundPaddingTop));
                drawables.mShowing[0].draw(canvas);
                canvas.restore();
            }
            if (drawables.mShowing[2] != null) {
                canvas.save();
                canvas.translate(((((i3 + i5) - i6) - this.mPaddingRight) - drawables.mDrawableSizeRight) - horizontalOffsetForDrawables, m.b(i10, drawables.mDrawableHeightRight, 2, i4 + compoundPaddingTop));
                drawables.mShowing[2].draw(canvas);
                canvas.restore();
            }
            if (drawables.mShowing[1] != null) {
                canvas.save();
                canvas.translate(m.b(i11, drawables.mDrawableWidthTop, 2, i3 + compoundPaddingLeft), this.mPaddingTop + i4);
                drawables.mShowing[1].draw(canvas);
                canvas.restore();
            }
            if (drawables.mShowing[3] != null) {
                canvas.save();
                canvas.translate(m.b(i11, drawables.mDrawableWidthBottom, 2, i3 + compoundPaddingLeft), (((i4 + i7) - i8) - this.mPaddingBottom) - drawables.mDrawableSizeBottom);
                drawables.mShowing[3].draw(canvas);
                canvas.restore();
            }
        } else {
            i2 = compoundPaddingBottom;
            i7 = i7;
            i8 = i8;
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
        Layout layout2 = layout;
        this.mTextPaint.setColor(i12);
        this.mTextPaint.drawableState = getDrawableState();
        canvas.save();
        int extendedPaddingTop = getExtendedPaddingTop();
        int extendedPaddingBottom = getExtendedPaddingBottom();
        int height = this.mLayout.getHeight() - (((this.mBottom - this.mTop) - i2) - compoundPaddingTop);
        float fMin = compoundPaddingLeft + i3;
        float fMin2 = i4 == 0 ? 0.0f : extendedPaddingTop + i4;
        float compoundPaddingRight2 = ((i5 - i6) - getCompoundPaddingRight()) + i3;
        int i13 = (i7 - i8) + i4;
        if (i4 == height) {
            extendedPaddingBottom = 0;
        }
        float fMax = i13 - extendedPaddingBottom;
        float f2 = this.mShadowRadius;
        if (f2 != 0.0f) {
            fMin += Math.min(0.0f, this.mShadowDx - f2);
            compoundPaddingRight2 += Math.max(0.0f, this.mShadowDx + this.mShadowRadius);
            fMin2 += Math.min(0.0f, this.mShadowDy - this.mShadowRadius);
            fMax += Math.max(0.0f, this.mShadowDy + this.mShadowRadius);
        }
        canvas.clipRect(fMin, fMin2, compoundPaddingRight2, fMax);
        if ((this.mGravity & 112) != 48) {
            verticalOffset = getVerticalOffset(false);
            verticalOffset2 = getVerticalOffset(true);
        } else {
            verticalOffset = 0;
            verticalOffset2 = 0;
        }
        canvas.translate(compoundPaddingLeft, extendedPaddingTop + verticalOffset);
        int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection());
        if (isMarqueeFadeEnabled()) {
            if (!this.mSingleLine && getLineCount() == 1 && canMarquee() && (absoluteGravity & 7) != 3) {
                canvas.translate(layout2.getParagraphDirection(0) * (this.mLayout.getLineRight(0) - ((this.mRight - this.mLeft) - (getCompoundPaddingRight() + getCompoundPaddingLeft()))), 0.0f);
            }
            Marquee marquee = this.mMarquee;
            if (marquee != null && marquee.isRunning()) {
                canvas.translate(layout2.getParagraphDirection(0) * (-this.mMarquee.getScroll()), 0.0f);
            }
        }
        int i14 = verticalOffset2 - verticalOffset;
        Path updatedHighlightPath = getUpdatedHighlightPath();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onDraw(canvas, layout2, updatedHighlightPath, this.mHighlightPaint, i14);
        } else {
            layout2.draw(canvas, updatedHighlightPath, this.mHighlightPaint, i14);
        }
        Marquee marquee2 = this.mMarquee;
        if (marquee2 != null && marquee2.shouldDrawGhost()) {
            canvas.translate(layout2.getParagraphDirection(0) * this.mMarquee.getGhostOffset(), 0.0f);
            layout2.draw(canvas, updatedHighlightPath, this.mHighlightPaint, i14);
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
    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        if (isTemporarilyDetached()) {
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
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setPassword(hasPasswordTransformationMethod());
        if (accessibilityEvent.getEventType() == 8192) {
            accessibilityEvent.setFromIndex(Selection.getSelectionStart(this.mText));
            accessibilityEvent.setToIndex(Selection.getSelectionEnd(this.mText));
            accessibilityEvent.setItemCount(this.mText.length());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        accessibilityNodeInfo.setPassword(hasPasswordTransformationMethod());
        accessibilityNodeInfo.setText(getTextForAccessibility());
        accessibilityNodeInfo.setHintText(this.mHint);
        accessibilityNodeInfo.setShowingHintText(isShowingHint());
        if (this.mBufferType == BufferType.EDITABLE) {
            accessibilityNodeInfo.setEditable(true);
            if (isEnabled()) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_TEXT);
            }
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            accessibilityNodeInfo.setInputType(editor.mInputType);
            if (this.mEditor.mError != null) {
                accessibilityNodeInfo.setContentInvalid(true);
                accessibilityNodeInfo.setError(this.mEditor.mError);
            }
        }
        if (!TextUtils.isEmpty(this.mText)) {
            accessibilityNodeInfo.addAction(256);
            accessibilityNodeInfo.addAction(512);
            accessibilityNodeInfo.setMovementGranularities(31);
            accessibilityNodeInfo.addAction(131072);
            accessibilityNodeInfo.setAvailableExtraData(Arrays.asList(AccessibilityNodeInfo.EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY));
        }
        if (isFocused()) {
            if (canCopy()) {
                accessibilityNodeInfo.addAction(16384);
            }
            if (canPaste()) {
                accessibilityNodeInfo.addAction(32768);
            }
            if (canCut()) {
                accessibilityNodeInfo.addAction(65536);
            }
            if (canShare()) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(268435456, getResources().getString(R.string.share)));
            }
            if (canProcessText()) {
                this.mEditor.mProcessTextIntentActionsHandler.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            }
        }
        int length = this.mFilters.length;
        for (int i2 = 0; i2 < length; i2++) {
            InputFilter inputFilter = this.mFilters[i2];
            if (inputFilter instanceof InputFilter.LengthFilter) {
                accessibilityNodeInfo.setMaxTextLength(((InputFilter.LengthFilter) inputFilter).getMax());
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
        if (i2 == 4 && handleBackInTextActionModeIfNeeded(keyEvent)) {
            return true;
        }
        return super.onKeyPreIme(i2, keyEvent);
    }

    @Override // android.view.View
    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        if (keyEvent.hasModifiers(4096)) {
            if (i2 != 29) {
                if (i2 != 31) {
                    if (i2 != 50) {
                        if (i2 != 52) {
                            if (i2 == 54 && canUndo()) {
                                return onTextContextMenuItem(16908338);
                            }
                        } else if (canCut()) {
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
        } else if (keyEvent.hasModifiers(4097)) {
            if (i2 != 50) {
                if (i2 == 54 && canRedo()) {
                    return onTextContextMenuItem(16908339);
                }
            } else if (canPaste()) {
                return onTextContextMenuItem(16908337);
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
        autoSizeText();
    }

    public void onLocaleChanged() {
        this.mEditor.onLocaleChanged();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int iDesired;
        BoringLayout.Metrics metricsIsBoring;
        boolean z2;
        int iMax;
        int iMin;
        int iMax2;
        int iMin2;
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
            iMin2 = size;
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
                    CharSequence charSequence = this.mTransformed;
                    iDesired = (int) Math.ceil(Layout.getDesiredWidth(charSequence, 0, charSequence.length(), this.mTextPaint, this.mTextDir));
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
                        CharSequence charSequence2 = this.mHint;
                        iDesired2 = (int) Math.ceil(Layout.getDesiredWidth(charSequence2, 0, charSequence2.length(), this.mTextPaint, this.mTextDir));
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
            int compoundPaddingRight = getCompoundPaddingRight() + getCompoundPaddingLeft() + iMax;
            if (this.mMaxWidthMode == 1) {
                iMin = Math.min(compoundPaddingRight, getLineHeight() * this.mMaxWidth);
            } else {
                iMin = Math.min(compoundPaddingRight, this.mMaxWidth);
            }
            if (this.mMinWidthMode == 1) {
                iMax2 = Math.max(iMin, getLineHeight() * this.mMinWidth);
            } else {
                iMax2 = Math.max(iMin, this.mMinWidth);
            }
            int iMax3 = Math.max(iMax2, getSuggestedMinimumWidth());
            iMin2 = mode == Integer.MIN_VALUE ? Math.min(size, iMax3) : iMax3;
            metrics = metrics2;
        }
        int compoundPaddingLeft = (iMin2 - getCompoundPaddingLeft()) - getCompoundPaddingRight();
        int i5 = this.mHorizontallyScrolling ? 1048576 : compoundPaddingLeft;
        Layout layout3 = this.mHintLayout;
        int width = layout3 == null ? i5 : layout3.getWidth();
        Layout layout4 = this.mLayout;
        if (layout4 == null) {
            makeNewLayout(i5, i5, metricsIsBoring, metrics, (iMin2 - getCompoundPaddingLeft()) - getCompoundPaddingRight(), false);
        } else {
            boolean z3 = (layout4.getWidth() == i5 && width == i5 && this.mLayout.getEllipsizedWidth() == (iMin2 - getCompoundPaddingLeft()) - getCompoundPaddingRight()) ? false : true;
            boolean z4 = this.mHint == null && this.mEllipsize == null && i5 > this.mLayout.getWidth() && ((this.mLayout instanceof BoringLayout) || (z2 && iDesired >= 0 && iDesired <= i5));
            boolean z5 = (this.mMaxMode == this.mOldMaxMode && this.mMaximum == this.mOldMaximum) ? false : true;
            if (z3 || z5) {
                if (z5 || !z4) {
                    makeNewLayout(i5, i5, metricsIsBoring, metrics, (iMin2 - getCompoundPaddingLeft()) - getCompoundPaddingRight(), false);
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
        if (this.mMovement != null || this.mLayout.getWidth() > compoundPaddingLeft || this.mLayout.getHeight() > compoundPaddingTop) {
            registerForPreDraw();
        } else {
            scrollTo(0, 0);
        }
        setMeasuredDimension(iMin2, size2);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEventInternal(accessibilityEvent);
        CharSequence textForAccessibility = getTextForAccessibility();
        if (TextUtils.isEmpty(textForAccessibility)) {
            return;
        }
        accessibilityEvent.getText().add(textForAccessibility);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        Editor.SelectionModifierCursorController selectionModifierCursorController;
        if (this.mLayout == null) {
            assumeLayout();
        }
        if (this.mMovement != null) {
            int selectionEnd = getSelectionEnd();
            Editor editor = this.mEditor;
            if (editor != null && (selectionModifierCursorController = editor.mSelectionModifierCursorController) != null && selectionModifierCursorController.isSelectionStartDragged()) {
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
        Editor editor2 = this.mEditor;
        if (editor2 != null && editor2.mCreatedWithASelection) {
            editor2.refreshTextActionMode();
            this.mEditor.mCreatedWithASelection = false;
        }
        unregisterForPreDraw();
        return true;
    }

    public boolean onPrivateIMECommand(String str, Bundle bundle) {
        return false;
    }

    @Override // android.view.View
    public void onProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        super.onProvideAutofillStructure(viewStructure, i2);
        onProvideAutoStructureForAssistOrAutofill(viewStructure, true);
    }

    @Override // android.view.View
    public void onProvideStructure(ViewStructure viewStructure) {
        super.onProvideStructure(viewStructure);
        onProvideAutoStructureForAssistOrAutofill(viewStructure, false);
    }

    @Override // android.view.View
    public void onResolveDrawables(int i2) {
        if (this.mLastLayoutDirection == i2) {
            return;
        }
        this.mLastLayoutDirection = i2;
        Drawables drawables = this.mDrawables;
        if (drawables == null || !drawables.resolveWithLayoutDirection(i2)) {
            return;
        }
        prepareDrawableForDisplay(this.mDrawables.mShowing[0]);
        prepareDrawableForDisplay(this.mDrawables.mShowing[2]);
        applyCompoundDrawableTint();
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if ((this.mText instanceof Spannable) && this.mLinksClickable) {
            int offsetForPosition = getOffsetForPosition(motionEvent.getX(i2), motionEvent.getY(i2));
            if (((ClickableSpan[]) ((Spannable) this.mText).getSpans(offsetForPosition, offsetForPosition, ClickableSpan.class)).length > 0) {
                return PointerIcon.getSystemIcon(this.mContext, 1002);
            }
        }
        return (isTextSelectable() || isTextEditable()) ? PointerIcon.getSystemIcon(this.mContext, 1008) : super.onResolvePointerIcon(motionEvent, i2);
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
                    Log.e(LOG_TAG, "Saved cursor position " + savedState.selStart + "/" + savedState.selEnd + " out of range for " + (savedState.text != null ? "(restored) " : "") + "text " + ((Object) this.mText));
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
                    if (TextView.this.mEditor == null || !TextView.this.mEditor.mErrorWasChanged) {
                        TextView.this.setError(charSequence3);
                    }
                }
            });
        }
        if (savedState.editorState != null) {
            createEditorIfNeeded();
            this.mEditor.restoreInstanceState(savedState.editorState);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        TextDirectionHeuristic textDirectionHeuristic = getTextDirectionHeuristic();
        if (this.mTextDir != textDirectionHeuristic) {
            this.mTextDir = textDirectionHeuristic;
            if (this.mLayout != null) {
                checkForRelayout();
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        int selectionStart;
        int selectionEnd;
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        boolean freezesText = getFreezesText();
        boolean z2 = false;
        if (this.mText != null) {
            selectionStart = getSelectionStart();
            selectionEnd = getSelectionEnd();
            if (selectionStart >= 0 || selectionEnd >= 0) {
                z2 = true;
            }
        } else {
            selectionStart = -1;
            selectionEnd = -1;
        }
        if (!freezesText && !z2) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        if (freezesText) {
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
        }
        if (z2) {
            savedState.selStart = selectionStart;
            savedState.selEnd = selectionEnd;
        }
        if (isFocused() && selectionStart >= 0 && selectionEnd >= 0) {
            savedState.frozenWithFocus = true;
        }
        savedState.error = getError();
        Editor editor = this.mEditor;
        if (editor != null) {
            savedState.editorState = editor.saveInstanceState();
        }
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
        if (i2 == 16908355) {
            requestAutofill();
            stopTextActionMode();
            return true;
        }
        switch (i2) {
            case 16908319:
                boolean zHasSelection = hasSelection();
                selectAllText();
                Editor editor = this.mEditor;
                if (editor != null && zHasSelection) {
                    editor.invalidateActionModeAsync();
                }
                return true;
            case 16908320:
                setPrimaryClip(ClipData.newPlainText(null, getTransformedText(iMax, length)));
                deleteText_internal(iMax, length);
                return true;
            case 16908321:
                setPrimaryClip(ClipData.newPlainText(null, getTransformedText(iMax, length)));
                stopTextActionMode();
                return true;
            case 16908322:
                paste(iMax, length, true);
                return true;
            default:
                switch (i2) {
                    case 16908337:
                        paste(iMax, length, false);
                        return true;
                    case 16908338:
                        Editor editor2 = this.mEditor;
                        if (editor2 != null) {
                            editor2.undo();
                        }
                        return true;
                    case 16908339:
                        Editor editor3 = this.mEditor;
                        if (editor3 != null) {
                            editor3.redo();
                        }
                        return true;
                    case 16908340:
                        Editor editor4 = this.mEditor;
                        if (editor4 != null) {
                            editor4.replace();
                        }
                        return true;
                    case 16908341:
                        shareSelectedText();
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.onTouchEvent(motionEvent);
            Editor.SelectionModifierCursorController selectionModifierCursorController = this.mEditor.mSelectionModifierCursorController;
            if (selectionModifierCursorController != null && selectionModifierCursorController.isDragAcceleratorActive()) {
                return true;
            }
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        Editor editor2 = this.mEditor;
        if (editor2 != null && editor2.mDiscardNextActionUp && actionMasked == 1) {
            editor2.mDiscardNextActionUp = false;
            if (editor2.mIsInsertionActionModeStartPending) {
                editor2.startInsertionActionMode();
                this.mEditor.mIsInsertionActionModeStartPending = false;
            }
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
                    if (isTextEditable() && this.mEditor.mShowSoftInputOnFocus && inputMethodManagerPeekInstance != null) {
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
        editor.hideCursorAndSpanControllers();
        stopTextActionMode();
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
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        int length;
        Editor editor = this.mEditor;
        if (editor != null && editor.mProcessTextIntentActionsHandler.performAccessibilityAction(i2)) {
            return true;
        }
        if (i2 == 16) {
            return performAccessibilityActionClick(bundle);
        }
        if (i2 == 256 || i2 == 512) {
            ensureIterableTextForAccessibilitySelectable();
            return super.performAccessibilityActionInternal(i2, bundle);
        }
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
            if (i2 != 2097152) {
                if (i2 != 268435456) {
                    return super.performAccessibilityActionInternal(i2, bundle);
                }
                return isFocused() && canShare() && onTextContextMenuItem(16908341);
            }
            if (!isEnabled() || this.mBufferType != BufferType.EDITABLE) {
                return false;
            }
            setText(bundle != null ? bundle.getCharSequence("ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE") : null);
            CharSequence charSequence = this.mText;
            if (charSequence != null && (length = charSequence.length()) > 0) {
                Selection.setSelection((Spannable) this.mText, length);
            }
            return true;
        }
        ensureIterableTextForAccessibilitySelectable();
        CharSequence iterableTextForAccessibility = getIterableTextForAccessibility();
        if (iterableTextForAccessibility == null) {
            return false;
        }
        int i3 = bundle != null ? bundle.getInt("ACTION_ARGUMENT_SELECTION_START_INT", -1) : -1;
        int i4 = bundle != null ? bundle.getInt("ACTION_ARGUMENT_SELECTION_END_INT", -1) : -1;
        if (getSelectionStart() != i3 || getSelectionEnd() != i4) {
            if (i3 == i4 && i4 == -1) {
                Selection.removeSelection((Spannable) iterableTextForAccessibility);
                return true;
            }
            if (i3 >= 0 && i3 <= i4 && i4 <= iterableTextForAccessibility.length()) {
                Selection.setSelection((Spannable) iterableTextForAccessibility, i3, i4);
                Editor editor2 = this.mEditor;
                if (editor2 != null) {
                    editor2.startSelectionActionModeAsync(false);
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean performLongClick() {
        boolean zPerformLongClick;
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.mIsBeingLongClicked = true;
        }
        boolean zPerformLongClick2 = super.performLongClick();
        Editor editor2 = this.mEditor;
        if (editor2 != null) {
            zPerformLongClick = editor2.performLongClick(zPerformLongClick2) | zPerformLongClick2;
            this.mEditor.mIsBeingLongClicked = false;
        } else {
            zPerformLongClick = zPerformLongClick2;
        }
        if (zPerformLongClick) {
            if (!zPerformLongClick2) {
                performHapticFeedback(0);
            }
            Editor editor3 = this.mEditor;
            if (editor3 != null) {
                editor3.mDiscardNextActionUp = true;
            }
        } else {
            MetricsLogger.action(this.mContext, MetricsProto.MetricsEvent.TEXT_LONGPRESS, 0);
        }
        return zPerformLongClick;
    }

    public void populateCharacterBounds(CursorAnchorInfo.Builder builder, int i2, int i3, float f2, float f3) {
        float f4;
        int i4 = i2;
        int lineForOffset = this.mLayout.getLineForOffset(i4);
        int lineForOffset2 = this.mLayout.getLineForOffset(i3 - 1);
        while (lineForOffset <= lineForOffset2) {
            int lineStart = this.mLayout.getLineStart(lineForOffset);
            int lineEnd = this.mLayout.getLineEnd(lineForOffset);
            int iMax = Math.max(lineStart, i4);
            int iMin = Math.min(lineEnd, i3);
            boolean z2 = this.mLayout.getParagraphDirection(lineForOffset) == 1;
            float[] fArr = new float[iMin - iMax];
            this.mLayout.getPaint().getTextWidths(this.mText, iMax, iMin, fArr);
            float lineTop = this.mLayout.getLineTop(lineForOffset);
            float lineBottom = this.mLayout.getLineBottom(lineForOffset);
            for (int i5 = iMax; i5 < iMin; i5++) {
                float f5 = fArr[i5 - iMax];
                boolean zIsRtlCharAt = this.mLayout.isRtlCharAt(i5);
                float primaryHorizontal = this.mLayout.getPrimaryHorizontal(i5);
                float secondaryHorizontal = this.mLayout.getSecondaryHorizontal(i5);
                if (!z2) {
                    if (zIsRtlCharAt) {
                        secondaryHorizontal = primaryHorizontal - f5;
                    } else {
                        primaryHorizontal = secondaryHorizontal + f5;
                    }
                    f4 = primaryHorizontal;
                    primaryHorizontal = secondaryHorizontal;
                } else if (zIsRtlCharAt) {
                    primaryHorizontal = secondaryHorizontal - f5;
                    f4 = secondaryHorizontal;
                } else {
                    f4 = f5 + primaryHorizontal;
                }
                float f6 = primaryHorizontal + f2;
                float f7 = f4 + f2;
                float f8 = lineTop + f3;
                float f9 = lineBottom + f3;
                boolean zIsPositionVisible = isPositionVisible(f6, f8);
                boolean zIsPositionVisible2 = isPositionVisible(f7, f9);
                int i6 = (zIsPositionVisible || zIsPositionVisible2) ? 1 : 0;
                if (!zIsPositionVisible || !zIsPositionVisible2) {
                    i6 |= 2;
                }
                builder.addCharacterBounds(i5, f6, f8, f7, f9, zIsRtlCharAt ? i6 | 4 : i6);
            }
            lineForOffset++;
            i4 = i2;
        }
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.text.Spannable, android.text.Spanned] */
    /* JADX WARN: Type inference failed for: r0v7 */
    public CharSequence removeSuggestionSpans(CharSequence charSequence) {
        ?? r0;
        if (charSequence instanceof Spanned) {
            if (charSequence instanceof Spannable) {
                r0 = (Spannable) charSequence;
            } else {
                charSequence = this.mSpannableFactory.newSpannable(charSequence);
                r0 = charSequence;
            }
            for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) r0.getSpans(0, charSequence.length(), SuggestionSpan.class)) {
                r0.removeSpan(suggestionSpan);
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

    public void replaceSelectionWithText(CharSequence charSequence) {
        ((Editable) this.mText).replace(getSelectionStart(), getSelectionEnd(), charSequence);
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
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.hideFloatingToolbar(500);
        }
        int length = this.mText.length();
        Selection.setSelection((Spannable) this.mText, 0, length);
        return length > 0;
    }

    @Override // android.view.View
    public void sendAccessibilityEventInternal(int i2) {
        Editor editor;
        if (i2 == 32768 && (editor = this.mEditor) != null) {
            editor.mProcessTextIntentActionsHandler.initializeAccessibilityActions();
        }
        if (i2 == 4096) {
            return;
        }
        super.sendAccessibilityEventInternal(i2);
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
        notifyAutoFillManagerAfterTextChangedIfNeeded();
        hideErrorIfUnchanged();
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
            editor.sendOnTextChanged(i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void setAccessibilitySelection(int i2, int i3) {
        if (getAccessibilitySelectionStart() == i2 && getAccessibilitySelectionEnd() == i3) {
            return;
        }
        CharSequence iterableTextForAccessibility = getIterableTextForAccessibility();
        if (Math.min(i2, i3) < 0 || Math.max(i2, i3) > iterableTextForAccessibility.length()) {
            Selection.removeSelection((Spannable) iterableTextForAccessibility);
        } else {
            Selection.setSelection((Spannable) iterableTextForAccessibility, i2, i3);
        }
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.hideCursorAndSpanControllers();
            this.mEditor.stopTextActionMode();
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

    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (supportsAutoSizeText()) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(i5, i2, displayMetrics), TypedValue.applyDimension(i5, i3, displayMetrics), TypedValue.applyDimension(i5, i4, displayMetrics));
            if (setupAutoSizeText()) {
                autoSizeText();
                invalidate();
            }
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) {
        if (supportsAutoSizeText()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i2 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArrCopyOf[i3] = Math.round(TypedValue.applyDimension(i2, iArr[i3], displayMetrics));
                    }
                }
                this.mAutoSizeTextSizesInPx = cleanupAutoSizePresetSizes(iArrCopyOf);
                if (!setupAutoSizeUniformPresetSizesConfiguration()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.mHasPresetAutoSizeValues = false;
            }
            if (setupAutoSizeText()) {
                autoSizeText();
                invalidate();
            }
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (supportsAutoSizeText()) {
            if (i2 == 0) {
                clearAutoSizeConfiguration();
                return;
            }
            if (i2 != 1) {
                throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown auto-size text type: ", i2));
            }
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            validateAndSetAutoSizeTextTypeUniformConfiguration(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (setupAutoSizeText()) {
                autoSizeText();
                invalidate();
            }
        }
    }

    public void setBreakStrategy(int i2) {
        this.mBreakStrategy = i2;
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
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

    public void setCompoundDrawableTintList(ColorStateList colorStateList) {
        if (this.mDrawables == null) {
            this.mDrawables = new Drawables(getContext());
        }
        Drawables drawables = this.mDrawables;
        drawables.mTintList = colorStateList;
        drawables.mHasTint = true;
        applyCompoundDrawableTint();
    }

    public void setCompoundDrawableTintMode(PorterDuff.Mode mode) {
        if (this.mDrawables == null) {
            this.mDrawables = new Drawables(getContext());
        }
        Drawables drawables = this.mDrawables;
        drawables.mTintMode = mode;
        drawables.mHasTintMode = true;
        applyCompoundDrawableTint();
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            Drawable drawable5 = drawables.mDrawableStart;
            if (drawable5 != null) {
                drawable5.setCallback(null);
            }
            drawables.mDrawableStart = null;
            Drawable drawable6 = drawables.mDrawableEnd;
            if (drawable6 != null) {
                drawable6.setCallback(null);
            }
            drawables.mDrawableEnd = null;
            drawables.mDrawableHeightStart = 0;
            drawables.mDrawableSizeStart = 0;
            drawables.mDrawableHeightEnd = 0;
            drawables.mDrawableSizeEnd = 0;
        }
        if ((drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) ? false : true) {
            if (drawables == null) {
                drawables = new Drawables(getContext());
                this.mDrawables = drawables;
            }
            this.mDrawables.mOverride = false;
            Drawable drawable7 = drawables.mShowing[0];
            if (drawable7 != drawable && drawable7 != null) {
                drawable7.setCallback(null);
            }
            Drawable[] drawableArr = drawables.mShowing;
            drawableArr[0] = drawable;
            Drawable drawable8 = drawableArr[1];
            if (drawable8 != drawable2 && drawable8 != null) {
                drawable8.setCallback(null);
            }
            Drawable[] drawableArr2 = drawables.mShowing;
            drawableArr2[1] = drawable2;
            Drawable drawable9 = drawableArr2[2];
            if (drawable9 != drawable3 && drawable9 != null) {
                drawable9.setCallback(null);
            }
            Drawable[] drawableArr3 = drawables.mShowing;
            drawableArr3[2] = drawable3;
            Drawable drawable10 = drawableArr3[3];
            if (drawable10 != drawable4 && drawable10 != null) {
                drawable10.setCallback(null);
            }
            drawables.mShowing[3] = drawable4;
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
            if (drawables.hasMetadata()) {
                for (int length = drawables.mShowing.length - 1; length >= 0; length--) {
                    Drawable drawable11 = drawables.mShowing[length];
                    if (drawable11 != null) {
                        drawable11.setCallback(null);
                    }
                    drawables.mShowing[length] = null;
                }
                drawables.mDrawableHeightLeft = 0;
                drawables.mDrawableSizeLeft = 0;
                drawables.mDrawableHeightRight = 0;
                drawables.mDrawableSizeRight = 0;
                drawables.mDrawableWidthTop = 0;
                drawables.mDrawableSizeTop = 0;
                drawables.mDrawableWidthBottom = 0;
                drawables.mDrawableSizeBottom = 0;
            } else {
                this.mDrawables = null;
            }
        }
        if (drawables != null) {
            drawables.mDrawableLeftInitial = drawable;
            drawables.mDrawableRightInitial = drawable3;
        }
        resetResolvedDrawables();
        resolveDrawables();
        applyCompoundDrawableTint();
        invalidate();
        requestLayout();
    }

    @RemotableViewMethod
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            Drawable drawable5 = drawables.mShowing[0];
            if (drawable5 != null) {
                drawable5.setCallback(null);
            }
            Drawable[] drawableArr = drawables.mShowing;
            drawables.mDrawableLeftInitial = null;
            drawableArr[0] = null;
            Drawable drawable6 = drawableArr[2];
            if (drawable6 != null) {
                drawable6.setCallback(null);
            }
            Drawable[] drawableArr2 = drawables.mShowing;
            drawables.mDrawableRightInitial = null;
            drawableArr2[2] = null;
            drawables.mDrawableHeightLeft = 0;
            drawables.mDrawableSizeLeft = 0;
            drawables.mDrawableHeightRight = 0;
            drawables.mDrawableSizeRight = 0;
        }
        if ((drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) ? false : true) {
            if (drawables == null) {
                drawables = new Drawables(getContext());
                this.mDrawables = drawables;
            }
            this.mDrawables.mOverride = true;
            Drawable drawable7 = drawables.mDrawableStart;
            if (drawable7 != drawable && drawable7 != null) {
                drawable7.setCallback(null);
            }
            drawables.mDrawableStart = drawable;
            Drawable drawable8 = drawables.mShowing[1];
            if (drawable8 != drawable2 && drawable8 != null) {
                drawable8.setCallback(null);
            }
            drawables.mShowing[1] = drawable2;
            Drawable drawable9 = drawables.mDrawableEnd;
            if (drawable9 != drawable3 && drawable9 != null) {
                drawable9.setCallback(null);
            }
            drawables.mDrawableEnd = drawable3;
            Drawable drawable10 = drawables.mShowing[3];
            if (drawable10 != drawable4 && drawable10 != null) {
                drawable10.setCallback(null);
            }
            drawables.mShowing[3] = drawable4;
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
            if (drawables.hasMetadata()) {
                Drawable drawable11 = drawables.mDrawableStart;
                if (drawable11 != null) {
                    drawable11.setCallback(null);
                }
                drawables.mDrawableStart = null;
                Drawable drawable12 = drawables.mShowing[1];
                if (drawable12 != null) {
                    drawable12.setCallback(null);
                }
                drawables.mShowing[1] = null;
                Drawable drawable13 = drawables.mDrawableEnd;
                if (drawable13 != null) {
                    drawable13.setCallback(null);
                }
                drawables.mDrawableEnd = null;
                Drawable drawable14 = drawables.mShowing[3];
                if (drawable14 != null) {
                    drawable14.setCallback(null);
                }
                drawables.mShowing[3] = null;
                drawables.mDrawableHeightStart = 0;
                drawables.mDrawableSizeStart = 0;
                drawables.mDrawableHeightEnd = 0;
                drawables.mDrawableSizeEnd = 0;
                drawables.mDrawableWidthTop = 0;
                drawables.mDrawableSizeTop = 0;
                drawables.mDrawableWidthBottom = 0;
                drawables.mDrawableSizeBottom = 0;
            } else {
                this.mDrawables = null;
            }
        }
        resetResolvedDrawables();
        resolveDrawables();
        invalidate();
        requestLayout();
    }

    @RemotableViewMethod
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i2 != 0 ? context.getDrawable(i2) : null, i3 != 0 ? context.getDrawable(i3) : null, i4 != 0 ? context.getDrawable(i4) : null, i5 != 0 ? context.getDrawable(i5) : null);
    }

    @RemotableViewMethod
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i2 != 0 ? context.getDrawable(i2) : null, i3 != 0 ? context.getDrawable(i3) : null, i4 != 0 ? context.getDrawable(i4) : null, i5 != 0 ? context.getDrawable(i5) : null);
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

    public void setCustomInsertionActionModeCallback(ActionMode.Callback callback) {
        createEditorIfNeeded();
        this.mEditor.mCustomInsertionActionModeCallback = callback;
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        createEditorIfNeeded();
        this.mEditor.mCustomSelectionActionModeCallback = callback;
    }

    public final void setEditableFactory(Editable.Factory factory) {
        this.mEditableFactory = factory;
        setText(this.mText);
    }

    public void setElegantTextHeight(boolean z2) {
        if (z2 != this.mTextPaint.isElegantTextHeight()) {
            this.mTextPaint.setElegantTextHeight(z2);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
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
    @RemotableViewMethod
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
        Drawable drawable = getContext().getDrawable(R.drawable.indicator_input_error);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        setError(charSequence, drawable);
    }

    public void setExtractedText(ExtractedText extractedText) {
        int i2;
        Editable editableText = getEditableText();
        CharSequence charSequence = extractedText.text;
        int i3 = 0;
        if (charSequence != null) {
            if (editableText == null) {
                setText(charSequence, BufferType.EDITABLE);
            } else {
                int length = editableText.length();
                if (extractedText.partialStartOffset >= 0) {
                    length = editableText.length();
                    int i4 = extractedText.partialStartOffset;
                    if (i4 > length) {
                        i4 = length;
                    }
                    int i5 = extractedText.partialEndOffset;
                    i2 = i4;
                    if (i5 <= length) {
                        length = i5;
                    }
                } else {
                    i2 = 0;
                }
                removeParcelableSpans(editableText, i2, length);
                if (TextUtils.equals(editableText.subSequence(i2, length), extractedText.text)) {
                    CharSequence charSequence2 = extractedText.text;
                    if (charSequence2 instanceof Spanned) {
                        TextUtils.copySpansFrom((Spanned) charSequence2, 0, length - i2, Object.class, editableText, i2);
                    }
                } else {
                    editableText.replace(i2, length, extractedText.text);
                }
            }
        }
        Spannable spannable = (Spannable) getText();
        int length2 = spannable.length();
        int i6 = extractedText.selectionStart;
        if (i6 < 0) {
            i6 = 0;
        } else if (i6 > length2) {
            i6 = length2;
        }
        int i7 = extractedText.selectionEnd;
        if (i7 >= 0) {
            i3 = i7 > length2 ? length2 : i7;
        }
        Selection.setSelection(spannable, i6, i3);
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
        editor.hideCursorAndSpanControllers();
        stopTextActionMode();
        Editor.SelectionModifierCursorController selectionModifierCursorController = this.mEditor.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.resetTouchOffsets();
        }
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

    @RemotableViewMethod
    public void setFontFeatureSettings(String str) {
        if (str != this.mTextPaint.getFontFeatureSettings()) {
            this.mTextPaint.setFontFeatureSettings(str);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
        }
    }

    public boolean setFontVariationSettings(String str) {
        String fontVariationSettings = this.mTextPaint.getFontVariationSettings();
        if (str == fontVariationSettings) {
            return true;
        }
        if (str != null && str.equals(fontVariationSettings)) {
            return true;
        }
        boolean fontVariationSettings2 = this.mTextPaint.setFontVariationSettings(str);
        if (fontVariationSettings2 && this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
        return fontVariationSettings2;
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
            i2 |= 8388611;
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

    public void setHyphenationFrequency(int i2) {
        this.mHyphenationFrequency = i2;
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
    }

    public void setImeActionLabel(CharSequence charSequence, int i2) {
        createEditorIfNeeded();
        this.mEditor.createInputContentTypeIfNeeded();
        Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
        inputContentType.imeActionLabel = charSequence;
        inputContentType.imeActionId = i2;
    }

    public void setImeHintLocales(LocaleList localeList) {
        createEditorIfNeeded();
        this.mEditor.createInputContentTypeIfNeeded();
        this.mEditor.mInputContentType.imeHintLocales = localeList;
        if (this.mUseInternationalizedInput) {
            changeListenerLocaleTo(localeList == null ? null : localeList.get(0));
        }
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
            setTypefaceFromAttrs(null, null, 3, 0);
        } else if (zIsVisiblePasswordInputType2) {
            boolean z3 = this.mTransformation == PasswordTransformationMethod.getInstance();
            setTypefaceFromAttrs(null, null, 3, 0);
            z2 = z3;
        } else if (zIsPasswordInputType || zIsVisiblePasswordInputType) {
            setTypefaceFromAttrs(null, null, -1, -1);
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

    public void setJustificationMode(int i2) {
        this.mJustificationMode = i2;
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
    }

    public void setKeyListener(KeyListener keyListener) {
        this.mListenerChanged = true;
        setKeyListenerOnly(keyListener);
        fixFocusableAndClickableSettings();
        if (keyListener != null) {
            createEditorIfNeeded();
            setInputTypeFromEditor();
        } else {
            Editor editor = this.mEditor;
            if (editor != null) {
                editor.mInputType = 0;
            }
        }
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            inputMethodManagerPeekInstance.restartInput(this);
        }
    }

    @RemotableViewMethod
    public void setLetterSpacing(float f2) {
        if (f2 != this.mTextPaint.getLetterSpacing()) {
            this.mTextPaint.setLetterSpacing(f2);
            if (this.mLayout != null) {
                nullLayouts();
                requestLayout();
                invalidate();
            }
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
        this.mShadowColor = i2;
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.invalidateTextDisplayList();
            this.mEditor.invalidateHandlesAndActionMode();
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

    public void setTextAppearance(int i2) {
        setTextAppearance(this.mContext, i2);
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        this.mTextClassifier = textClassifier;
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
            setFocusable(16);
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
        this.mLocalesChanged = true;
        this.mTextPaint.setTextLocale(locale);
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
    }

    public void setTextLocales(LocaleList localeList) {
        this.mLocalesChanged = true;
        this.mTextPaint.setTextLocales(localeList);
        if (this.mLayout != null) {
            nullLayouts();
            requestLayout();
            invalidate();
        }
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
        this.mTextDir = getTextDirectionHeuristic();
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
        throw new UnsupportedOperationException("not implemented");
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

    @Override // android.view.View
    public boolean showContextMenu() {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.setContextMenuAnchor(Float.NaN, Float.NaN);
        }
        return super.showContextMenu();
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
                Editor editor3 = this.mEditor;
                if (editor3 != null) {
                    editor3.refreshTextActionMode();
                    if (!hasSelection() && this.mEditor.getTextActionMode() == null && hasTransientState()) {
                        setHasTransientState(false);
                    }
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
            Editor editor4 = this.mEditor;
            if (editor4 != null) {
                if (i2 >= 0) {
                    editor4.invalidateTextDisplayList(this.mLayout, i2, i4);
                }
                if (i3 >= 0) {
                    this.mEditor.invalidateTextDisplayList(this.mLayout, i3, i5);
                }
                this.mEditor.invalidateHandlesAndActionMode();
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
        Editor editor5 = this.mEditor;
        if (editor5 == null || (spellChecker = editor5.mSpellChecker) == null || i3 >= 0 || !(obj instanceof SpellCheckSpan)) {
            return;
        }
        spellChecker.onSpellCheckSpanRemoved((SpellCheckSpan) obj);
    }

    public void stopTextActionMode() {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.stopTextActionMode();
        }
    }

    public boolean supportsAutoSizeText() {
        return true;
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
        if (!zVerifyDrawable && (drawables = this.mDrawables) != null) {
            for (Drawable drawable2 : drawables.mShowing) {
                if (drawable == drawable2) {
                    return true;
                }
            }
        }
        return zVerifyDrawable;
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
        this(context, attributeSet, 16842884);
    }

    public static ColorStateList getTextColors(Context context, TypedArray typedArray) {
        int resourceId;
        typedArray.getClass();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(android.R.styleable.TextView);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(5);
        if (colorStateList == null && (resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0)) != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, android.R.styleable.TextAppearance);
            colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(3);
            typedArrayObtainStyledAttributes2.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        return colorStateList;
    }

    public void append(CharSequence charSequence, int i2, int i3) {
        CharSequence charSequence2 = this.mText;
        if (!(charSequence2 instanceof Editable)) {
            setText(charSequence2, BufferType.EDITABLE);
        }
        ((Editable) this.mText).append(charSequence, i2, i3);
        int i4 = this.mAutoLinkMask;
        if (i4 == 0 || !Linkify.addLinks((Spannable) this.mText, i4) || !this.mLinksClickable || textCanBeSelected()) {
            return;
        }
        setMovementMethod(LinkMovementMethod.getInstance());
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

    @Deprecated
    public void setTextAppearance(Context context, int i2) {
        Typeface font;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, android.R.styleable.TextAppearance);
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
            setRawTextSize(dimensionPixelSize, true);
        }
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(5);
        if (colorStateList2 != null) {
            setHintTextColor(colorStateList2);
        }
        ColorStateList colorStateList3 = typedArrayObtainStyledAttributes.getColorStateList(6);
        if (colorStateList3 != null) {
            setLinkTextColor(colorStateList3);
        }
        if (context.isRestricted() || !context.canLoadUnsafeResources()) {
            font = null;
        } else {
            try {
                font = typedArrayObtainStyledAttributes.getFont(12);
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                font = null;
            }
        }
        setTypefaceFromAttrs(font, font == null ? typedArrayObtainStyledAttributes.getString(12) : null, typedArrayObtainStyledAttributes.getInt(1, -1), typedArrayObtainStyledAttributes.getInt(2, -1));
        int i3 = typedArrayObtainStyledAttributes.getInt(7, 0);
        if (i3 != 0) {
            setShadowLayer(typedArrayObtainStyledAttributes.getFloat(10, 0.0f), typedArrayObtainStyledAttributes.getFloat(8, 0.0f), typedArrayObtainStyledAttributes.getFloat(9, 0.0f), i3);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(11, false)) {
            setTransformationMethod(new AllCapsTransformationMethod(getContext()));
        }
        if (typedArrayObtainStyledAttributes.hasValue(13)) {
            setElegantTextHeight(typedArrayObtainStyledAttributes.getBoolean(13, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(14)) {
            setLetterSpacing(typedArrayObtainStyledAttributes.getFloat(14, 0.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setFontFeatureSettings(typedArrayObtainStyledAttributes.getString(15));
        }
        typedArrayObtainStyledAttributes.recycle();
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
        if (isAutoSizeEnabled()) {
            return;
        }
        setTextSizeInternal(i2, f2, true);
    }

    public TextView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    private void invalidateCursor(int i2, int i3, int i4) {
        if (i2 >= 0 || i3 >= 0 || i4 >= 0) {
            invalidateRegion(Math.min(Math.min(i2, i3), i4), Math.max(Math.max(i2, i3), i4), true);
        }
    }

    public Locale getTextServicesLocale() {
        return getTextServicesLocale(false);
    }

    public final void setHintTextColor(ColorStateList colorStateList) {
        this.mHintTextColor = colorStateList;
        updateTextColors();
    }

    public final void setLinkTextColor(ColorStateList colorStateList) {
        this.mLinkTextColor = colorStateList;
        updateTextColors();
    }

    @RemotableViewMethod
    public void setTextColor(ColorStateList colorStateList) {
        colorStateList.getClass();
        this.mTextColor = colorStateList;
        updateTextColors();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:262:0x0924  */
    /* JADX WARN: Code duplicated, block: B:264:0x0929  */
    /* JADX WARN: Code duplicated, block: B:266:0x0935  */
    /* JADX WARN: Code duplicated, block: B:273:0x0949  */
    /* JADX WARN: Code duplicated, block: B:275:0x094d  */
    /* JADX WARN: Code duplicated, block: B:276:0x0957  */
    /* JADX WARN: Code duplicated, block: B:278:0x095b  */
    /* JADX WARN: Code duplicated, block: B:279:0x0963  */
    /* JADX WARN: Code duplicated, block: B:281:0x0966  */
    /* JADX WARN: Code duplicated, block: B:288:0x098e  */
    /* JADX WARN: Code duplicated, block: B:291:0x0993  */
    /* JADX WARN: Code duplicated, block: B:293:0x0996  */
    /* JADX WARN: Code duplicated, block: B:295:0x0999  */
    /* JADX WARN: Code duplicated, block: B:297:0x099c  */
    /* JADX WARN: Code duplicated, block: B:299:0x09a6  */
    /* JADX WARN: Code duplicated, block: B:300:0x09ad  */
    /* JADX WARN: Code duplicated, block: B:302:0x09b9  */
    /* JADX WARN: Code duplicated, block: B:303:0x09bf  */
    /* JADX WARN: Code duplicated, block: B:304:0x09c6  */
    /* JADX WARN: Code duplicated, block: B:307:0x09cf  */
    /* JADX WARN: Code duplicated, block: B:310:0x09e6  */
    /* JADX WARN: Code duplicated, block: B:313:0x0a03  */
    /* JADX WARN: Code duplicated, block: B:325:0x0a28  */
    /* JADX WARN: Code duplicated, block: B:329:0x0a33 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:331:0x0a38  */
    /* JADX WARN: Code duplicated, block: B:334:0x0a45  */
    /* JADX WARN: Code duplicated, block: B:336:0x0a50  */
    /* JADX WARN: Code duplicated, block: B:337:0x0a61  */
    /* JADX WARN: Code duplicated, block: B:340:0x0a6e  */
    /* JADX WARN: Code duplicated, block: B:343:0x0a74  */
    /* JADX WARN: Code duplicated, block: B:346:0x0a87  */
    /* JADX WARN: Code duplicated, block: B:350:0x0a90  */
    /* JADX WARN: Code duplicated, block: B:352:0x0a93  */
    /* JADX WARN: Code duplicated, block: B:356:0x0a9c  */
    /* JADX WARN: Code duplicated, block: B:358:0x0a9f  */
    /* JADX WARN: Code duplicated, block: B:362:0x0aa8  */
    /* JADX WARN: Code duplicated, block: B:365:0x0ab5  */
    /* JADX WARN: Code duplicated, block: B:367:0x0abd  */
    /* JADX WARN: Code duplicated, block: B:369:0x0ac1  */
    /* JADX WARN: Code duplicated, block: B:372:0x0ac6  */
    /* JADX WARN: Code duplicated, block: B:373:0x0acb  */
    /* JADX WARN: Code duplicated, block: B:375:0x0ad2  */
    /* JADX WARN: Code duplicated, block: B:377:0x0add  */
    /* JADX WARN: Code duplicated, block: B:379:0x0ae3  */
    /* JADX WARN: Code duplicated, block: B:381:0x0ae7  */
    /* JADX WARN: Code duplicated, block: B:382:0x0ae9  */
    /* JADX WARN: Code duplicated, block: B:383:0x0aeb  */
    /* JADX WARN: Code duplicated, block: B:387:0x0af9  */
    /* JADX WARN: Code duplicated, block: B:390:0x0b06  */
    /* JADX WARN: Code duplicated, block: B:393:0x0b10  */
    /* JADX WARN: Code duplicated, block: B:396:0x0b19  */
    /* JADX WARN: Code duplicated, block: B:398:0x0b1d  */
    /* JADX WARN: Code duplicated, block: B:400:0x0b21  */
    /* JADX WARN: Code duplicated, block: B:402:0x0b2f  */
    /* JADX WARN: Code duplicated, block: B:403:0x0b37  */
    /* JADX WARN: Code duplicated, block: B:406:0x0b3e  */
    /* JADX WARN: Code duplicated, block: B:409:0x0b4a  */
    /* JADX WARN: Code duplicated, block: B:410:0x0b4d  */
    /* JADX WARN: Code duplicated, block: B:413:0x0b56  */
    /* JADX WARN: Code duplicated, block: B:456:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0217. Please report as an issue. */
    public TextView(Context context, AttributeSet attributeSet, int i2, int i3) {
        int color;
        int i4;
        Typeface font;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        String string;
        String string2;
        int i5;
        int i6;
        boolean z2;
        boolean z3;
        float f2;
        int i7;
        float f3;
        float f4;
        float f5;
        BufferType bufferType;
        String str;
        boolean z4;
        Editor editor;
        ColorStateList colorStateList4;
        Context context2;
        boolean z5;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z6;
        CharSequence charSequence;
        TypedArray typedArrayObtainStyledAttributes;
        boolean z7;
        boolean z8;
        boolean z9;
        int focusable;
        int indexCount;
        boolean z10;
        int i12;
        Editor editor2;
        DisplayMetrics displayMetrics;
        int i13;
        float f6;
        int index;
        TypedValue typedValue;
        TextKeyListener.Capitalize capitalize;
        int i14;
        boolean z11;
        super(context, attributeSet, i2, i3);
        String str2 = "Failure reading input extras";
        String str3 = LOG_TAG;
        this.mEditableFactory = Editable.Factory.getInstance();
        this.mSpannableFactory = Spannable.Factory.getInstance();
        this.mMarqueeRepeatLimit = 3;
        this.mLastLayoutDirection = -1;
        this.mMarqueeFadeMode = 0;
        this.mBufferType = BufferType.NORMAL;
        this.mLocalesChanged = false;
        this.mListenerChanged = false;
        this.mGravity = BadgeDrawable.TOP_START;
        this.mLinksClickable = true;
        this.mSpacingMult = 1.0f;
        float f7 = 0.0f;
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
        this.mDeviceProvisionedState = 0;
        this.mAutoSizeTextType = 0;
        this.mNeedsAutoSizeText = false;
        this.mAutoSizeStepGranularityInPx = -1.0f;
        this.mAutoSizeMinTextSizeInPx = -1.0f;
        this.mAutoSizeMaxTextSizeInPx = -1.0f;
        this.mAutoSizeTextSizesInPx = EmptyArray.INT;
        this.mHasPresetAutoSizeValues = false;
        this.mTextFromResource = false;
        if (getImportantForAutofill() == 0) {
            setImportantForAutofill(1);
        }
        this.mText = "";
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
        this.mBreakStrategy = 0;
        this.mHyphenationFrequency = 0;
        this.mJustificationMode = 0;
        Resources.Theme theme = context.getTheme();
        TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, R.styleable.TextViewAppearance, i2, i3);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
        typedArrayObtainStyledAttributes2.recycle();
        TypedArray typedArrayObtainStyledAttributes3 = resourceId != -1 ? theme.obtainStyledAttributes(resourceId, R.styleable.TextAppearance) : null;
        if (typedArrayObtainStyledAttributes3 != null) {
            int indexCount2 = typedArrayObtainStyledAttributes3.getIndexCount();
            i5 = -1;
            i6 = -1;
            color = 0;
            int i15 = 0;
            z2 = false;
            z3 = false;
            i7 = 0;
            f2 = 0.0f;
            f3 = 0.0f;
            f4 = 0.0f;
            f5 = 0.0f;
            int dimensionPixelSize = 15;
            font = null;
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            string = null;
            string2 = null;
            while (i15 < indexCount2) {
                int index2 = typedArrayObtainStyledAttributes3.getIndex(i15);
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
                        i7 = typedArrayObtainStyledAttributes3.getInt(index2, 0);
                        break;
                    case 8:
                        f3 = typedArrayObtainStyledAttributes3.getFloat(index2, f7);
                        break;
                    case 9:
                        f4 = typedArrayObtainStyledAttributes3.getFloat(index2, f7);
                        break;
                    case 10:
                        f5 = typedArrayObtainStyledAttributes3.getFloat(index2, f7);
                        break;
                    case 11:
                        z2 = typedArrayObtainStyledAttributes3.getBoolean(index2, false);
                        break;
                    case 12:
                        if (!context.isRestricted() && context.canLoadUnsafeResources()) {
                            try {
                                font = typedArrayObtainStyledAttributes3.getFont(index2);
                                break;
                            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                            }
                        }
                        if (font == null) {
                            string2 = typedArrayObtainStyledAttributes3.getString(index2);
                        }
                        break;
                    case 13:
                        z3 = typedArrayObtainStyledAttributes3.getBoolean(index2, false);
                        break;
                    case 14:
                        f2 = typedArrayObtainStyledAttributes3.getFloat(index2, f7);
                        break;
                    case 15:
                        string = typedArrayObtainStyledAttributes3.getString(index2);
                        break;
                }
                i15++;
                f7 = 0.0f;
            }
            typedArrayObtainStyledAttributes3.recycle();
            i4 = dimensionPixelSize;
        } else {
            color = 0;
            i4 = 15;
            font = null;
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            string = null;
            string2 = null;
            i5 = -1;
            i6 = -1;
            z2 = false;
            z3 = false;
            f2 = 0.0f;
            i7 = 0;
            f3 = 0.0f;
            f4 = 0.0f;
            f5 = 0.0f;
        }
        boolean defaultEditable = getDefaultEditable();
        TypedArray typedArrayObtainStyledAttributes4 = theme.obtainStyledAttributes(attributeSet, R.styleable.TextView, i2, i3);
        int indexCount3 = typedArrayObtainStyledAttributes4.getIndexCount();
        int color2 = color;
        int i16 = i6;
        boolean z12 = z3;
        float f8 = f2;
        int i17 = i7;
        float f9 = f3;
        float f10 = f4;
        float f11 = f5;
        int dimensionPixelSize2 = 0;
        boolean z13 = false;
        boolean z14 = false;
        PorterDuff.Mode tintMode = null;
        boolean z15 = false;
        boolean z16 = false;
        int i18 = 0;
        int i19 = 0;
        int i20 = -1;
        int i21 = 0;
        boolean z17 = false;
        boolean z18 = false;
        Drawable drawable = null;
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        Drawable drawable6 = null;
        ColorStateList colorStateList5 = null;
        CharSequence text = null;
        float fApplyDimension = -1.0f;
        float dimension = -1.0f;
        float dimension2 = -1.0f;
        boolean z19 = defaultEditable;
        int dimensionPixelSize3 = i4;
        ColorStateList colorStateList6 = colorStateList2;
        ColorStateList colorStateList7 = colorStateList3;
        String string3 = string2;
        int i22 = i5;
        boolean z20 = z2;
        int i23 = 0;
        int i24 = -1;
        CharSequence text2 = null;
        int i25 = -1;
        Typeface font2 = font;
        ColorStateList colorStateList8 = colorStateList;
        String string4 = string;
        boolean z21 = false;
        CharSequence text3 = null;
        CharSequence text4 = "";
        while (i23 < indexCount3) {
            int index3 = typedArrayObtainStyledAttributes4.getIndex(i23);
            switch (index3) {
                case 0:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    z13 = z13;
                    setEnabled(typedArrayObtainStyledAttributes4.getBoolean(index3, isEnabled()));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 1:
                case 65:
                case 66:
                case 68:
                case 69:
                default:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 2:
                    dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, dimensionPixelSize3);
                    z13 = z13;
                    i21 = i21;
                    break;
                case 3:
                    i22 = typedArrayObtainStyledAttributes4.getInt(index3, i22);
                    z13 = z13;
                    i21 = i21;
                    break;
                case 4:
                    i16 = typedArrayObtainStyledAttributes4.getInt(index3, i16);
                    z13 = z13;
                    i21 = i21;
                    break;
                case 5:
                    color2 = color2;
                    colorStateList8 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    str3 = str3;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 6:
                    color2 = typedArrayObtainStyledAttributes4.getColor(index3, color2);
                    str3 = str3;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 7:
                    colorStateList6 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    i20 = i20;
                    str2 = str2;
                    color2 = color2;
                    z13 = z13;
                    str3 = str3;
                    i21 = i21;
                    break;
                case 8:
                    colorStateList7 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    i20 = i20;
                    str2 = str2;
                    color2 = color2;
                    z13 = z13;
                    str3 = str3;
                    i21 = i21;
                    break;
                case 9:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z13 = z13;
                    i20 = typedArrayObtainStyledAttributes4.getInt(index3, i20);
                    str2 = str2;
                    color2 = color2;
                    z13 = z13;
                    str3 = str3;
                    i21 = i21;
                    break;
                case 10:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    setGravity(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 11:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    this.mAutoLinkMask = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 12:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    this.mLinksClickable = typedArrayObtainStyledAttributes4.getBoolean(index3, true);
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 13:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    setMaxWidth(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 14:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    setMaxHeight(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 15:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    setMinWidth(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 16:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    i21 = i21;
                    z11 = z18;
                    setMinHeight(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 17:
                    indexCount3 = indexCount3;
                    i21 = typedArrayObtainStyledAttributes4.getInt(index3, i21);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 18:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    text4 = typedArrayObtainStyledAttributes4.getText(index3);
                    z21 = true;
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 19:
                    indexCount3 = indexCount3;
                    text = typedArrayObtainStyledAttributes4.getText(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 20:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setTextScaleX(typedArrayObtainStyledAttributes4.getFloat(index3, 1.0f));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 21:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    if (!typedArrayObtainStyledAttributes4.getBoolean(index3, true)) {
                        setCursorVisible(false);
                    }
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 22:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setMaxLines(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 23:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setLines(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 24:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setHeight(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 25:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setMinLines(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 26:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setMaxEms(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 27:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setEms(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 28:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setWidth(typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 29:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    setMinEms(typedArrayObtainStyledAttributes4.getInt(index3, -1));
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 30:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    z11 = z18;
                    if (typedArrayObtainStyledAttributes4.getBoolean(index3, false)) {
                        setHorizontallyScrolling(true);
                    }
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 31:
                    indexCount3 = indexCount3;
                    z18 = typedArrayObtainStyledAttributes4.getBoolean(index3, z18);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 32:
                    indexCount3 = indexCount3;
                    z13 = typedArrayObtainStyledAttributes4.getBoolean(index3, z13);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 33:
                    indexCount3 = indexCount3;
                    z14 = typedArrayObtainStyledAttributes4.getBoolean(index3, z14);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 34:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    if (!typedArrayObtainStyledAttributes4.getBoolean(index3, true)) {
                        setIncludeFontPadding(false);
                    }
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 35:
                    indexCount3 = indexCount3;
                    i25 = typedArrayObtainStyledAttributes4.getInt(index3, -1);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 36:
                    indexCount3 = indexCount3;
                    i17 = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 37:
                    indexCount3 = indexCount3;
                    f9 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 38:
                    indexCount3 = indexCount3;
                    f10 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 39:
                    indexCount3 = indexCount3;
                    f11 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 40:
                    indexCount3 = indexCount3;
                    i18 = typedArrayObtainStyledAttributes4.getInt(index3, i18);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 41:
                    indexCount3 = indexCount3;
                    text2 = typedArrayObtainStyledAttributes4.getText(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 42:
                    indexCount3 = indexCount3;
                    z15 = typedArrayObtainStyledAttributes4.getBoolean(index3, z15);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 43:
                    indexCount3 = indexCount3;
                    text3 = typedArrayObtainStyledAttributes4.getText(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 44:
                    indexCount3 = indexCount3;
                    i24 = typedArrayObtainStyledAttributes4.getInt(index3, i24);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 45:
                    indexCount3 = indexCount3;
                    z16 = typedArrayObtainStyledAttributes4.getBoolean(index3, z16);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 46:
                    indexCount3 = indexCount3;
                    z19 = typedArrayObtainStyledAttributes4.getBoolean(index3, z19);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 47:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mFreezesText = typedArrayObtainStyledAttributes4.getBoolean(index3, false);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 48:
                    indexCount3 = indexCount3;
                    drawable2 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 49:
                    indexCount3 = indexCount3;
                    drawable4 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 50:
                    indexCount3 = indexCount3;
                    drawable = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 51:
                    indexCount3 = indexCount3;
                    drawable3 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 52:
                    indexCount3 = indexCount3;
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, dimensionPixelSize2);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 53:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mSpacingAdd = typedArrayObtainStyledAttributes4.getDimensionPixelSize(index3, (int) this.mSpacingAdd);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 54:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mSpacingMult = typedArrayObtainStyledAttributes4.getFloat(index3, this.mSpacingMult);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 55:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    setMarqueeRepeatLimit(typedArrayObtainStyledAttributes4.getInt(index3, this.mMarqueeRepeatLimit));
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 56:
                    indexCount3 = indexCount3;
                    i19 = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 57:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    setPrivateImeOptions(typedArrayObtainStyledAttributes4.getString(index3));
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 58:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    try {
                        setInputExtras(typedArrayObtainStyledAttributes4.getResourceId(index3, 0));
                    } catch (IOException e2) {
                        Log.w(str3, str2, e2);
                    } catch (XmlPullParserException e3) {
                        Log.w(str3, str2, e3);
                    }
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 59:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    this.mEditor.createInputContentTypeIfNeeded();
                    Editor.InputContentType inputContentType = this.mEditor.mInputContentType;
                    inputContentType.imeOptions = typedArrayObtainStyledAttributes4.getInt(index3, inputContentType.imeOptions);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 60:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    this.mEditor.createInputContentTypeIfNeeded();
                    this.mEditor.mInputContentType.imeActionLabel = typedArrayObtainStyledAttributes4.getText(index3);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 61:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    this.mEditor.createInputContentTypeIfNeeded();
                    Editor.InputContentType inputContentType2 = this.mEditor.mInputContentType;
                    inputContentType2.imeActionId = typedArrayObtainStyledAttributes4.getInt(index3, inputContentType2.imeActionId);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 62:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mTextSelectHandleLeftRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 63:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mTextSelectHandleRightRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 64:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mTextSelectHandleRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 67:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    setTextIsSelectable(typedArrayObtainStyledAttributes4.getBoolean(index3, false));
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 70:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mCursorDrawableRes = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 71:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mTextEditSuggestionItemLayout = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 72:
                    indexCount3 = indexCount3;
                    z20 = typedArrayObtainStyledAttributes4.getBoolean(index3, false);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 73:
                    indexCount3 = indexCount3;
                    drawable5 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 74:
                    indexCount3 = indexCount3;
                    drawable6 = typedArrayObtainStyledAttributes4.getDrawable(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 75:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    if (!context.isRestricted() && context.canLoadUnsafeResources()) {
                        try {
                            font2 = typedArrayObtainStyledAttributes4.getFont(index3);
                        } catch (Resources.NotFoundException | UnsupportedOperationException unused2) {
                        }
                    }
                    string3 = font2 == null ? typedArrayObtainStyledAttributes4.getString(index3) : string3;
                    z17 = true;
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 76:
                    indexCount3 = indexCount3;
                    z12 = typedArrayObtainStyledAttributes4.getBoolean(index3, false);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 77:
                    indexCount3 = indexCount3;
                    f8 = typedArrayObtainStyledAttributes4.getFloat(index3, 0.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 78:
                    indexCount3 = indexCount3;
                    string4 = typedArrayObtainStyledAttributes4.getString(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 79:
                    indexCount3 = indexCount3;
                    colorStateList5 = typedArrayObtainStyledAttributes4.getColorStateList(index3);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 80:
                    indexCount3 = indexCount3;
                    tintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes4.getInt(index3, -1), tintMode);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 81:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mBreakStrategy = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 82:
                    i23 = i23;
                    indexCount3 = indexCount3;
                    this.mHyphenationFrequency = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 83:
                    indexCount3 = indexCount3;
                    createEditorIfNeeded();
                    i23 = i23;
                    this.mEditor.mAllowUndo = typedArrayObtainStyledAttributes4.getBoolean(index3, true);
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 84:
                    indexCount3 = indexCount3;
                    this.mAutoSizeTextType = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    i23 = i23;
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 85:
                    dimension2 = typedArrayObtainStyledAttributes4.getDimension(index3, -1.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 86:
                    indexCount3 = indexCount3;
                    int resourceId2 = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    if (resourceId2 > 0) {
                        TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes4.getResources().obtainTypedArray(resourceId2);
                        setupAutoSizeUniformPresetSizes(typedArrayObtainTypedArray);
                        typedArrayObtainTypedArray.recycle();
                    }
                    i23 = i23;
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 87:
                    fApplyDimension = typedArrayObtainStyledAttributes4.getDimension(index3, -1.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 88:
                    dimension = typedArrayObtainStyledAttributes4.getDimension(index3, -1.0f);
                    str2 = str2;
                    color2 = color2;
                    str3 = str3;
                    break;
                case 89:
                    indexCount3 = indexCount3;
                    this.mJustificationMode = typedArrayObtainStyledAttributes4.getInt(index3, 0);
                    i23 = i23;
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 90:
                    indexCount3 = indexCount3;
                    this.mTextEditSuggestionContainerLayout = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i23 = i23;
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
                case 91:
                    indexCount3 = indexCount3;
                    this.mTextEditSuggestionHighlightStyle = typedArrayObtainStyledAttributes4.getResourceId(index3, 0);
                    i23 = i23;
                    z11 = z18;
                    z18 = z11;
                    z13 = z13;
                    i21 = i21;
                    break;
            }
            i23++;
            str3 = str3;
            indexCount3 = indexCount3;
            color2 = color2;
            str2 = str2;
            i20 = i20;
        }
        int i26 = i21;
        boolean z22 = z18;
        boolean z23 = z13;
        int i27 = i20;
        typedArrayObtainStyledAttributes4.recycle();
        BufferType bufferType2 = BufferType.EDITABLE;
        int inputType = i19;
        int i28 = inputType & 4095;
        boolean z24 = i28 == 129;
        boolean z25 = i28 == 225;
        boolean z26 = i28 == 18;
        int i29 = dimensionPixelSize2;
        this.mUseInternationalizedInput = context.getApplicationInfo().targetSdkVersion >= 26;
        if (text3 != null) {
            try {
                Class<?> cls = Class.forName(text3.toString());
                try {
                    createEditorIfNeeded();
                    this.mEditor.mKeyListener = (KeyListener) cls.newInstance();
                    try {
                        Editor editor3 = this.mEditor;
                        if (inputType == 0) {
                            inputType = editor3.mKeyListener.getInputType();
                        }
                        editor3.mInputType = inputType;
                    } catch (IncompatibleClassChangeError unused3) {
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
        } else if (text2 != null) {
            createEditorIfNeeded();
            this.mEditor.mKeyListener = DigitsKeyListener.getInstance(text2.toString());
            this.mEditor.mInputType = inputType == 0 ? 1 : inputType;
        } else {
            if (inputType != 0) {
                setInputType(inputType, true);
                z4 = !isMultilineInputType(inputType);
                bufferType = bufferType2;
                str = null;
            } else if (z15) {
                createEditorIfNeeded();
                this.mEditor.mKeyListener = DialerKeyListener.getInstance();
                this.mEditor.mInputType = 3;
            } else if (i18 != 0) {
                createEditorIfNeeded();
                this.mEditor.mKeyListener = DigitsKeyListener.getInstance(null, (i18 & 2) != 0, (i18 & 4) != 0);
                this.mEditor.mInputType = this.mEditor.mKeyListener.getInputType();
            } else {
                if (z16 || i24 != -1) {
                    str = null;
                    if (i24 == 1) {
                        capitalize = TextKeyListener.Capitalize.SENTENCES;
                        i14 = 16385;
                    } else if (i24 == 2) {
                        capitalize = TextKeyListener.Capitalize.WORDS;
                        i14 = MtpConstants.RESPONSE_OK;
                    } else if (i24 != 3) {
                        capitalize = TextKeyListener.Capitalize.NONE;
                        i14 = 1;
                    } else {
                        capitalize = TextKeyListener.Capitalize.CHARACTERS;
                        i14 = 4097;
                    }
                    createEditorIfNeeded();
                    this.mEditor.mKeyListener = TextKeyListener.getInstance(z16, capitalize);
                    this.mEditor.mInputType = i14;
                } else {
                    if (z19) {
                        createEditorIfNeeded();
                        this.mEditor.mKeyListener = TextKeyListener.getInstance();
                        this.mEditor.mInputType = 1;
                    } else if (isTextSelectable()) {
                        Editor editor4 = this.mEditor;
                        str = null;
                        if (editor4 != null) {
                            editor4.mKeyListener = null;
                            editor4.mInputType = 0;
                        }
                        BufferType bufferType3 = BufferType.SPANNABLE;
                        setMovementMethod(ArrowKeyMovementMethod.getInstance());
                        bufferType = bufferType3;
                    } else {
                        str = null;
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
                    z4 = z23;
                }
                bufferType = bufferType2;
                z4 = z23;
            }
            editor = this.mEditor;
            if (editor != null) {
                editor.adjustInputType(z22, z24, z25, z26);
            }
            if (z14) {
                createEditorIfNeeded();
                this.mEditor.mSelectAllOnFocus = true;
                if (bufferType == BufferType.NORMAL) {
                    bufferType = BufferType.SPANNABLE;
                }
            }
            colorStateList4 = colorStateList5;
            if (colorStateList4 == null || tintMode != null) {
                if (this.mDrawables == null) {
                    context2 = context;
                    this.mDrawables = new Drawables(context2);
                } else {
                    context2 = context;
                }
                if (colorStateList4 != null) {
                    Drawables drawables = this.mDrawables;
                    drawables.mTintList = colorStateList4;
                    z5 = true;
                    drawables.mHasTint = true;
                } else {
                    z5 = true;
                }
                if (tintMode != null) {
                    Drawables drawables2 = this.mDrawables;
                    drawables2.mTintMode = tintMode;
                    drawables2.mHasTintMode = z5;
                }
            } else {
                context2 = context;
            }
            setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            setRelativeDrawablesIfNeeded(drawable5, drawable6);
            setCompoundDrawablePadding(i29);
            setInputTypeSingleLine(z4);
            applySingleLine(z4, z4, z4);
            if (z4 || getKeyListener() != null || i27 >= 0) {
                i8 = i27;
            } else {
                i8 = 3;
            }
            if (i8 != 1) {
                i9 = 3;
                setEllipsize(TextUtils.TruncateAt.START);
            } else if (i8 != 2) {
                i9 = 3;
                if (i8 != 3) {
                    setEllipsize(TextUtils.TruncateAt.END);
                } else if (i8 == 4) {
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
                i9 = 3;
                setEllipsize(TextUtils.TruncateAt.MIDDLE);
            }
            setTextColor(colorStateList8 == null ? ColorStateList.valueOf(-16777216) : colorStateList8);
            setHintTextColor(colorStateList6);
            setLinkTextColor(colorStateList7);
            if (color2 != 0) {
                setHighlightColor(color2);
            }
            setRawTextSize(dimensionPixelSize3, true);
            setElegantTextHeight(z12);
            setLetterSpacing(f8);
            setFontFeatureSettings(string4);
            if (z20) {
                setTransformationMethod(new AllCapsTransformationMethod(getContext()));
            }
            if (z22 && !z24 && !z25 && !z26) {
                Editor editor6 = this.mEditor;
                i10 = (editor6 == null || (editor6.mInputType & 4095) != 129) ? i22 : i10;
                if (i10 != -1 || z17) {
                    str = string3;
                }
                setTypefaceFromAttrs(font2, str, i10, i16);
                i11 = i17;
                if (i11 != 0) {
                    setShadowLayer(f11, f9, f10, i11);
                }
                if (i25 >= 0) {
                    z6 = true;
                    setFilters(new InputFilter[]{new InputFilter.LengthFilter(i25)});
                } else {
                    z6 = true;
                    setFilters(NO_FILTERS);
                }
                setText(text4, bufferType);
                if (z21) {
                    this.mTextFromResource = z6;
                }
                charSequence = text;
                if (charSequence != null) {
                    setHint(charSequence);
                }
                typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.View, i2, i3);
                if (this.mMovement == null || getKeyListener() != null) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (!z7 || isClickable()) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (!z7 || isLongClickable()) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                focusable = getFocusable();
                indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                z10 = z9;
                for (i12 = 0; i12 < indexCount; i12++) {
                    index = typedArrayObtainStyledAttributes.getIndex(i12);
                    if (index == 19) {
                        typedValue = new TypedValue();
                        if (typedArrayObtainStyledAttributes.getValue(index, typedValue)) {
                            if (typedValue.type != 18) {
                                focusable = typedValue.data;
                            } else if (typedValue.data == 0) {
                                focusable = 0;
                            } else {
                                focusable = 1;
                            }
                        }
                    } else if (index == 30) {
                        z8 = typedArrayObtainStyledAttributes.getBoolean(index, z8);
                    } else if (index == 31) {
                        z10 = typedArrayObtainStyledAttributes.getBoolean(index, z10);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
                if (focusable != getFocusable()) {
                    setFocusable(focusable);
                }
                setClickable(z8);
                setLongClickable(z10);
                editor2 = this.mEditor;
                if (editor2 != null) {
                    editor2.prepareCursorControllers();
                }
                if (getImportantForAccessibility() == 0) {
                    setImportantForAccessibility(1);
                }
                if (supportsAutoSizeText()) {
                    if (this.mAutoSizeTextType == 1) {
                        if (!this.mHasPresetAutoSizeValues) {
                            displayMetrics = getResources().getDisplayMetrics();
                            if (fApplyDimension == -1.0f) {
                                i13 = 2;
                                fApplyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                            } else {
                                i13 = 2;
                            }
                            float f12 = fApplyDimension;
                            float fApplyDimension2 = dimension == -1.0f ? TypedValue.applyDimension(i13, 112.0f, displayMetrics) : dimension;
                            if (dimension2 == -1.0f) {
                                f6 = 1.0f;
                            } else {
                                f6 = dimension2;
                            }
                            validateAndSetAutoSizeTextTypeUniformConfiguration(f12, fApplyDimension2, f6);
                        }
                        setupAutoSizeText();
                        return;
                    }
                    return;
                }
                this.mAutoSizeTextType = 0;
            }
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            i10 = i9;
            if (i10 != -1) {
                str = string3;
            } else {
                str = string3;
            }
            setTypefaceFromAttrs(font2, str, i10, i16);
            i11 = i17;
            if (i11 != 0) {
                setShadowLayer(f11, f9, f10, i11);
            }
            if (i25 >= 0) {
                z6 = true;
                setFilters(new InputFilter[]{new InputFilter.LengthFilter(i25)});
            } else {
                z6 = true;
                setFilters(NO_FILTERS);
            }
            setText(text4, bufferType);
            if (z21) {
                this.mTextFromResource = z6;
            }
            charSequence = text;
            if (charSequence != null) {
                setHint(charSequence);
            }
            typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.View, i2, i3);
            if (this.mMovement == null) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                z8 = true;
            } else {
                z8 = true;
            }
            if (z7) {
                z9 = true;
            } else {
                z9 = true;
            }
            focusable = getFocusable();
            indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            z10 = z9;
            while (i12 < indexCount) {
                index = typedArrayObtainStyledAttributes.getIndex(i12);
                if (index == 19) {
                    typedValue = new TypedValue();
                    if (typedArrayObtainStyledAttributes.getValue(index, typedValue)) {
                        if (typedValue.type != 18) {
                            focusable = typedValue.data;
                        } else if (typedValue.data == 0) {
                            focusable = 0;
                        } else {
                            focusable = 1;
                        }
                    }
                } else if (index == 30) {
                    z8 = typedArrayObtainStyledAttributes.getBoolean(index, z8);
                } else if (index == 31) {
                    z10 = typedArrayObtainStyledAttributes.getBoolean(index, z10);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (focusable != getFocusable()) {
                setFocusable(focusable);
            }
            setClickable(z8);
            setLongClickable(z10);
            editor2 = this.mEditor;
            if (editor2 != null) {
                editor2.prepareCursorControllers();
            }
            if (getImportantForAccessibility() == 0) {
                setImportantForAccessibility(1);
            }
            if (supportsAutoSizeText()) {
                if (this.mAutoSizeTextType == 1) {
                    if (!this.mHasPresetAutoSizeValues) {
                        displayMetrics = getResources().getDisplayMetrics();
                        if (fApplyDimension == -1.0f) {
                            i13 = 2;
                            fApplyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                        } else {
                            i13 = 2;
                        }
                        float f13 = fApplyDimension;
                        float fApplyDimension3 = dimension == -1.0f ? TypedValue.applyDimension(i13, 112.0f, displayMetrics) : dimension;
                        if (dimension2 == -1.0f) {
                            f6 = 1.0f;
                        } else {
                            f6 = dimension2;
                        }
                        validateAndSetAutoSizeTextTypeUniformConfiguration(f13, fApplyDimension3, f6);
                    }
                    setupAutoSizeText();
                    return;
                }
                return;
            }
            this.mAutoSizeTextType = 0;
        }
        str = null;
        bufferType = bufferType2;
        z4 = z23;
        editor = this.mEditor;
        if (editor != null) {
            editor.adjustInputType(z22, z24, z25, z26);
        }
        if (z14) {
            createEditorIfNeeded();
            this.mEditor.mSelectAllOnFocus = true;
            if (bufferType == BufferType.NORMAL) {
                bufferType = BufferType.SPANNABLE;
            }
        }
        colorStateList4 = colorStateList5;
        if (colorStateList4 == null) {
            if (this.mDrawables == null) {
                context2 = context;
                this.mDrawables = new Drawables(context2);
            } else {
                context2 = context;
            }
            if (colorStateList4 != null) {
                Drawables drawables3 = this.mDrawables;
                drawables3.mTintList = colorStateList4;
                z5 = true;
                drawables3.mHasTint = true;
            } else {
                z5 = true;
            }
            if (tintMode != null) {
                Drawables drawables4 = this.mDrawables;
                drawables4.mTintMode = tintMode;
                drawables4.mHasTintMode = z5;
            }
        } else {
            if (this.mDrawables == null) {
                context2 = context;
                this.mDrawables = new Drawables(context2);
            } else {
                context2 = context;
            }
            if (colorStateList4 != null) {
                Drawables drawables5 = this.mDrawables;
                drawables5.mTintList = colorStateList4;
                z5 = true;
                drawables5.mHasTint = true;
            } else {
                z5 = true;
            }
            if (tintMode != null) {
                Drawables drawables6 = this.mDrawables;
                drawables6.mTintMode = tintMode;
                drawables6.mHasTintMode = z5;
            }
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        setRelativeDrawablesIfNeeded(drawable5, drawable6);
        setCompoundDrawablePadding(i29);
        setInputTypeSingleLine(z4);
        applySingleLine(z4, z4, z4);
        if (z4) {
            i8 = i27;
        } else {
            i8 = i27;
        }
        if (i8 != 1) {
            i9 = 3;
            setEllipsize(TextUtils.TruncateAt.START);
        } else if (i8 != 2) {
            i9 = 3;
            if (i8 != 3) {
                setEllipsize(TextUtils.TruncateAt.END);
            } else if (i8 == 4) {
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
            i9 = 3;
            setEllipsize(TextUtils.TruncateAt.MIDDLE);
        }
        setTextColor(colorStateList8 == null ? ColorStateList.valueOf(-16777216) : colorStateList8);
        setHintTextColor(colorStateList6);
        setLinkTextColor(colorStateList7);
        if (color2 != 0) {
            setHighlightColor(color2);
        }
        setRawTextSize(dimensionPixelSize3, true);
        setElegantTextHeight(z12);
        setLetterSpacing(f8);
        setFontFeatureSettings(string4);
        if (z20) {
            setTransformationMethod(new AllCapsTransformationMethod(getContext()));
        }
        if (z22) {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            i10 = i9;
        } else {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
            i10 = i9;
        }
        if (i10 != -1) {
            str = string3;
        } else {
            str = string3;
        }
        setTypefaceFromAttrs(font2, str, i10, i16);
        i11 = i17;
        if (i11 != 0) {
            setShadowLayer(f11, f9, f10, i11);
        }
        if (i25 >= 0) {
            z6 = true;
            setFilters(new InputFilter[]{new InputFilter.LengthFilter(i25)});
        } else {
            z6 = true;
            setFilters(NO_FILTERS);
        }
        setText(text4, bufferType);
        if (z21) {
            this.mTextFromResource = z6;
        }
        charSequence = text;
        if (charSequence != null) {
            setHint(charSequence);
        }
        typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.View, i2, i3);
        if (this.mMovement == null) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (z7) {
            z8 = true;
        } else {
            z8 = true;
        }
        if (z7) {
            z9 = true;
        } else {
            z9 = true;
        }
        focusable = getFocusable();
        indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        z10 = z9;
        while (i12 < indexCount) {
            index = typedArrayObtainStyledAttributes.getIndex(i12);
            if (index == 19) {
                typedValue = new TypedValue();
                if (typedArrayObtainStyledAttributes.getValue(index, typedValue)) {
                    if (typedValue.type != 18) {
                        focusable = typedValue.data;
                    } else if (typedValue.data == 0) {
                        focusable = 0;
                    } else {
                        focusable = 1;
                    }
                }
            } else if (index == 30) {
                z8 = typedArrayObtainStyledAttributes.getBoolean(index, z8);
            } else if (index == 31) {
                z10 = typedArrayObtainStyledAttributes.getBoolean(index, z10);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        if (focusable != getFocusable()) {
            setFocusable(focusable);
        }
        setClickable(z8);
        setLongClickable(z10);
        editor2 = this.mEditor;
        if (editor2 != null) {
            editor2.prepareCursorControllers();
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        if (supportsAutoSizeText()) {
            if (this.mAutoSizeTextType == 1) {
                if (!this.mHasPresetAutoSizeValues) {
                    displayMetrics = getResources().getDisplayMetrics();
                    if (fApplyDimension == -1.0f) {
                        i13 = 2;
                        fApplyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    } else {
                        i13 = 2;
                    }
                    float f14 = fApplyDimension;
                    float fApplyDimension4 = dimension == -1.0f ? TypedValue.applyDimension(i13, 112.0f, displayMetrics) : dimension;
                    if (dimension2 == -1.0f) {
                        f6 = 1.0f;
                    } else {
                        f6 = dimension2;
                    }
                    validateAndSetAutoSizeTextTypeUniformConfiguration(f14, fApplyDimension4, f6);
                }
                setupAutoSizeText();
                return;
            }
            return;
        }
        this.mAutoSizeTextType = 0;
    }

    @Override // android.view.View
    public boolean showContextMenu(float f2, float f3) {
        Editor editor = this.mEditor;
        if (editor != null) {
            editor.setContextMenuAnchor(f2, f3);
        }
        return super.showContextMenu(f2, f3);
    }

    private int getDesiredHeight(Layout layout, boolean z2) {
        int i2;
        if (layout == null) {
            return 0;
        }
        int height = layout.getHeight(z2);
        Drawables drawables = this.mDrawables;
        if (drawables != null) {
            height = Math.max(Math.max(height, drawables.mDrawableHeightLeft), drawables.mDrawableHeightRight);
        }
        int lineCount = layout.getLineCount();
        int compoundPaddingBottom = getCompoundPaddingBottom() + getCompoundPaddingTop();
        int iMax = height + compoundPaddingBottom;
        if (this.mMaxMode != 1) {
            iMax = Math.min(iMax, this.mMaximum);
        } else if (z2 && lineCount > (i2 = this.mMaximum) && ((layout instanceof DynamicLayout) || (layout instanceof BoringLayout))) {
            int lineTop = layout.getLineTop(i2);
            if (drawables != null) {
                lineTop = Math.max(Math.max(lineTop, drawables.mDrawableHeightLeft), drawables.mDrawableHeightRight);
            }
            iMax = lineTop + compoundPaddingBottom;
            lineCount = this.mMaximum;
        }
        if (this.mMinMode == 1) {
            if (lineCount < this.mMinimum) {
                iMax += (this.mMinimum - lineCount) * getLineHeight();
            }
        } else {
            iMax = Math.max(iMax, this.mMinimum);
        }
        return Math.max(iMax, getSuggestedMinimumHeight());
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
        this.mTextFromResource = false;
        CharSequence charSequence2 = charSequence == null ? "" : charSequence;
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
                sendBeforeTextChanged("", 0, 0, charSequence3.length());
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
            this.mEditor.forgetUndoRedo();
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
        } else {
            notifyAutoFillManagerAfterTextChangedIfNeeded();
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

    @RemotableViewMethod
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
            Locale customLocaleForKeyListenerOrNull = getCustomLocaleForKeyListenerOrNull();
            DigitsKeyListener digitsKeyListener = DigitsKeyListener.getInstance(customLocaleForKeyListenerOrNull, (i2 & 4096) != 0, (i2 & 8192) != 0);
            if (customLocaleForKeyListenerOrNull != null) {
                int inputType = digitsKeyListener.getInputType();
                if ((inputType & 15) != 2) {
                    if ((i2 & 16) != 0) {
                        inputType |= 128;
                    }
                    i2 = inputType;
                }
            }
            textKeyListener = digitsKeyListener;
        } else if (i3 == 4) {
            Locale customLocaleForKeyListenerOrNull2 = getCustomLocaleForKeyListenerOrNull();
            int i4 = i2 & InputType.TYPE_MASK_VARIATION;
            if (i4 == 16) {
                textKeyListener = DateKeyListener.getInstance(customLocaleForKeyListenerOrNull2);
            } else if (i4 != 32) {
                textKeyListener = DateTimeKeyListener.getInstance(customLocaleForKeyListenerOrNull2);
            } else {
                textKeyListener = TimeKeyListener.getInstance(customLocaleForKeyListenerOrNull2);
            }
            if (this.mUseInternationalizedInput) {
                i2 = textKeyListener.getInputType();
            }
        } else if (i3 == 3) {
            textKeyListener = DialerKeyListener.getInstance();
        } else {
            textKeyListener = TextKeyListener.getInstance();
        }
        setRawInputType(i2);
        this.mListenerChanged = false;
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
                sendBeforeTextChanged("", 0, 0, i3);
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
        this.mTextFromResource = true;
    }

    public final void setText(int i2, BufferType bufferType) {
        setText(getContext().getResources().getText(i2), bufferType);
        this.mTextFromResource = true;
    }
}
