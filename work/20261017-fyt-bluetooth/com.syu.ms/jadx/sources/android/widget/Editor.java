package android.widget;

import android.R;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.UndoManager;
import android.content.UndoOperation;
import android.content.UndoOwner;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.ExtractEditText;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.provider.UserDictionary;
import android.text.DynamicLayout;
import android.text.Editable;
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
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.text.method.MovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.WordIterator;
import android.text.style.EasyEditSpan;
import android.text.style.SuggestionRangeSpan;
import android.text.style.SuggestionSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ActionMode;
import android.view.DisplayList;
import android.view.DragEvent;
import android.view.HardwareCanvas;
import android.view.HardwareRenderer;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import i.a;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Editor {
    public static final int BLINK = 500;
    public static final boolean DEBUG_UNDO = false;
    private static int DRAG_SHADOW_MAX_TEXT_LENGTH = 20;
    public static final int EXTRACT_NOTHING = -2;
    public static final int EXTRACT_UNKNOWN = -1;
    private static final String TAG = "Editor";
    private static final float[] TEMP_POSITION = new float[2];
    public Blink mBlink;
    public CorrectionHighlighter mCorrectionHighlighter;
    public boolean mCreatedWithASelection;
    public int mCursorCount;
    public ActionMode.Callback mCustomSelectionActionModeCallback;
    public boolean mDiscardNextActionUp;
    public CharSequence mError;
    public ErrorPopup mErrorPopup;
    public boolean mErrorWasChanged;
    public boolean mFrozenWithFocus;
    public boolean mIgnoreActionUpEvent;
    public boolean mInBatchEditControllers;
    public InputContentType mInputContentType;
    public InputMethodState mInputMethodState;
    public boolean mInsertionControllerEnabled;
    public InsertionPointCursorController mInsertionPointCursorController;
    public KeyListener mKeyListener;
    public float mLastDownPositionX;
    public float mLastDownPositionY;
    private PositionListener mPositionListener;
    public boolean mPreserveDetachedSelection;
    public boolean mSelectAllOnFocus;
    private Drawable mSelectHandleCenter;
    private Drawable mSelectHandleLeft;
    private Drawable mSelectHandleRight;
    public ActionMode mSelectionActionMode;
    public boolean mSelectionControllerEnabled;
    public SelectionModifierCursorController mSelectionModifierCursorController;
    public boolean mSelectionMoved;
    public long mShowCursor;
    public boolean mShowErrorAfterAttach;
    public Runnable mShowSuggestionRunnable;
    private SpanController mSpanController;
    public SpellChecker mSpellChecker;
    public SuggestionRangeSpan mSuggestionRangeSpan;
    public SuggestionsPopupWindow mSuggestionsPopupWindow;
    private Rect mTempRect;
    public boolean mTemporaryDetach;
    public DisplayList[] mTextDisplayLists;
    public boolean mTextIsSelectable;
    private TextView mTextView;
    public boolean mTouchFocusSelected;
    public InputFilter mUndoInputFilter;
    public UndoManager mUndoManager;
    public UndoOwner mUndoOwner;
    public WordIterator mWordIterator;
    public int mInputType = 0;
    public boolean mCursorVisible = true;
    public boolean mShowSoftInputOnFocus = true;
    public final Drawable[] mCursorDrawable = new Drawable[2];

    public class ActionPopupWindow extends PinnedPopupWindow implements View.OnClickListener {
        private static final int POPUP_TEXT_LAYOUT = 17367210;
        private TextView mPasteTextView;
        private TextView mReplaceTextView;

        private ActionPopupWindow() {
            super();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int clipVertically(int i2) {
            if (i2 >= 0) {
                return i2;
            }
            int textOffset = getTextOffset();
            Layout layout = Editor.this.mTextView.getLayout();
            int lineForOffset = layout.getLineForOffset(textOffset);
            return i2 + (layout.getLineBottom(lineForOffset) - layout.getLineTop(lineForOffset)) + this.mContentView.getMeasuredHeight() + Editor.this.mTextView.getResources().getDrawable(Editor.this.mTextView.mTextSelectHandleRes).getIntrinsicHeight();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void createPopupWindow() {
            PopupWindow popupWindow = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
            this.mPopupWindow = popupWindow;
            popupWindow.setClippingEnabled(true);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getTextOffset() {
            return (Editor.this.mTextView.getSelectionStart() + Editor.this.mTextView.getSelectionEnd()) / 2;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getVerticalLocalPosition(int i2) {
            return Editor.this.mTextView.getLayout().getLineTop(i2) - this.mContentView.getMeasuredHeight();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void initContentView() {
            LinearLayout linearLayout = new LinearLayout(Editor.this.mTextView.getContext());
            linearLayout.setOrientation(0);
            this.mContentView = linearLayout;
            linearLayout.setBackgroundResource(17303089);
            LayoutInflater layoutInflater = (LayoutInflater) Editor.this.mTextView.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
            TextView textView = (TextView) layoutInflater.inflate(POPUP_TEXT_LAYOUT, (ViewGroup) null);
            this.mPasteTextView = textView;
            textView.setLayoutParams(layoutParams);
            this.mContentView.addView(this.mPasteTextView);
            this.mPasteTextView.setText(R.string.paste);
            this.mPasteTextView.setOnClickListener(this);
            TextView textView2 = (TextView) layoutInflater.inflate(POPUP_TEXT_LAYOUT, (ViewGroup) null);
            this.mReplaceTextView = textView2;
            textView2.setLayoutParams(layoutParams);
            this.mContentView.addView(this.mReplaceTextView);
            this.mReplaceTextView.setText(17040363);
            this.mReplaceTextView.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == this.mPasteTextView && Editor.this.mTextView.canPaste()) {
                Editor.this.mTextView.onTextContextMenuItem(16908322);
                hide();
            } else if (view == this.mReplaceTextView) {
                int selectionStart = (Editor.this.mTextView.getSelectionStart() + Editor.this.mTextView.getSelectionEnd()) / 2;
                Editor.this.stopSelectionActionMode();
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), selectionStart);
                Editor.this.showSuggestions();
            }
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void show() {
            boolean zCanPaste = Editor.this.mTextView.canPaste();
            boolean z2 = Editor.this.mTextView.isSuggestionsEnabled() && Editor.this.isCursorInsideSuggestionSpan();
            this.mPasteTextView.setVisibility(zCanPaste ? 0 : 8);
            this.mReplaceTextView.setVisibility(z2 ? 0 : 8);
            if (zCanPaste || z2) {
                super.show();
            }
        }
    }

    public class Blink extends Handler implements Runnable {
        private boolean mCancelled;

        private Blink() {
        }

        public void cancel() {
            if (this.mCancelled) {
                return;
            }
            removeCallbacks(this);
            this.mCancelled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCancelled) {
                return;
            }
            removeCallbacks(this);
            if (Editor.this.shouldBlink()) {
                if (Editor.this.mTextView.getLayout() != null) {
                    Editor.this.mTextView.invalidateCursorPath();
                }
                postAtTime(this, SystemClock.uptimeMillis() + 500);
            }
        }

        public void uncancel() {
            this.mCancelled = false;
        }
    }

    public class CorrectionHighlighter {
        private static final int FADE_OUT_DURATION = 400;
        private int mEnd;
        private long mFadingStartTime;
        private final Paint mPaint;
        private final Path mPath = new Path();
        private int mStart;
        private RectF mTempRectF;

        public CorrectionHighlighter() {
            Paint paint = new Paint(1);
            this.mPaint = paint;
            paint.setCompatibilityScaling(Editor.this.mTextView.getResources().getCompatibilityInfo().applicationScale);
            paint.setStyle(Paint.Style.FILL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidate(boolean z2) {
            if (Editor.this.mTextView.getLayout() == null) {
                return;
            }
            if (this.mTempRectF == null) {
                this.mTempRectF = new RectF();
            }
            this.mPath.computeBounds(this.mTempRectF, false);
            int compoundPaddingLeft = Editor.this.mTextView.getCompoundPaddingLeft();
            int extendedPaddingTop = Editor.this.mTextView.getExtendedPaddingTop() + Editor.this.mTextView.getVerticalOffset(true);
            if (z2) {
                TextView textView = Editor.this.mTextView;
                RectF rectF = this.mTempRectF;
                textView.postInvalidateOnAnimation(((int) rectF.left) + compoundPaddingLeft, ((int) rectF.top) + extendedPaddingTop, compoundPaddingLeft + ((int) rectF.right), extendedPaddingTop + ((int) rectF.bottom));
            } else {
                TextView textView2 = Editor.this.mTextView;
                RectF rectF2 = this.mTempRectF;
                textView2.postInvalidate((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
            }
        }

        private void stopAnimation() {
            Editor.this.mCorrectionHighlighter = null;
        }

        private boolean updatePaint() {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.mFadingStartTime;
            if (jUptimeMillis > 400) {
                return false;
            }
            this.mPaint.setColor((Editor.this.mTextView.mHighlightColor & 16777215) + (((int) (Color.alpha(Editor.this.mTextView.mHighlightColor) * (1.0f - (jUptimeMillis / 400.0f)))) << 24));
            return true;
        }

        private boolean updatePath() {
            Layout layout = Editor.this.mTextView.getLayout();
            if (layout == null) {
                return false;
            }
            int length = Editor.this.mTextView.getText().length();
            int iMin = Math.min(length, this.mStart);
            int iMin2 = Math.min(length, this.mEnd);
            this.mPath.reset();
            layout.getSelectionPath(iMin, iMin2, this.mPath);
            return true;
        }

        public void draw(Canvas canvas, int i2) {
            if (!updatePath() || !updatePaint()) {
                stopAnimation();
                invalidate(false);
                return;
            }
            if (i2 != 0) {
                canvas.translate(0.0f, i2);
            }
            canvas.drawPath(this.mPath, this.mPaint);
            if (i2 != 0) {
                canvas.translate(0.0f, -i2);
            }
            invalidate(true);
        }

        public void highlight(CorrectionInfo correctionInfo) {
            int offset = correctionInfo.getOffset();
            this.mStart = offset;
            this.mEnd = offset + correctionInfo.getNewText().length();
            this.mFadingStartTime = SystemClock.uptimeMillis();
            if (this.mStart < 0 || this.mEnd < 0) {
                stopAnimation();
            }
        }
    }

    public interface CursorController extends ViewTreeObserver.OnTouchModeChangeListener {
        void hide();

        void onDetached();

        void show();
    }

    public static class DragLocalState {
        public int end;
        public TextView sourceTextView;
        public int start;

        public DragLocalState(TextView textView, int i2, int i3) {
            this.sourceTextView = textView;
            this.start = i2;
            this.end = i3;
        }
    }

    public interface EasyEditDeleteListener {
        void onDeleteClick(EasyEditSpan easyEditSpan);
    }

    public class EasyEditPopupWindow extends PinnedPopupWindow implements View.OnClickListener {
        private static final int POPUP_TEXT_LAYOUT = 17367210;
        private TextView mDeleteTextView;
        private EasyEditSpan mEasyEditSpan;
        private EasyEditDeleteListener mOnDeleteListener;

        private EasyEditPopupWindow() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOnDeleteListener(EasyEditDeleteListener easyEditDeleteListener) {
            this.mOnDeleteListener = easyEditDeleteListener;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int clipVertically(int i2) {
            return i2;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void createPopupWindow() {
            PopupWindow popupWindow = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
            this.mPopupWindow = popupWindow;
            popupWindow.setInputMethodMode(2);
            this.mPopupWindow.setClippingEnabled(true);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getTextOffset() {
            return ((Editable) Editor.this.mTextView.getText()).getSpanEnd(this.mEasyEditSpan);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getVerticalLocalPosition(int i2) {
            return Editor.this.mTextView.getLayout().getLineBottom(i2);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void hide() {
            EasyEditSpan easyEditSpan = this.mEasyEditSpan;
            if (easyEditSpan != null) {
                easyEditSpan.setDeleteEnabled(false);
            }
            this.mOnDeleteListener = null;
            super.hide();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void initContentView() {
            LinearLayout linearLayout = new LinearLayout(Editor.this.mTextView.getContext());
            linearLayout.setOrientation(0);
            this.mContentView = linearLayout;
            linearLayout.setBackgroundResource(17303090);
            LayoutInflater layoutInflater = (LayoutInflater) Editor.this.mTextView.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
            TextView textView = (TextView) layoutInflater.inflate(POPUP_TEXT_LAYOUT, (ViewGroup) null);
            this.mDeleteTextView = textView;
            textView.setLayoutParams(layoutParams);
            this.mDeleteTextView.setText(17040364);
            this.mDeleteTextView.setOnClickListener(this);
            this.mContentView.addView(this.mDeleteTextView);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EasyEditSpan easyEditSpan;
            EasyEditDeleteListener easyEditDeleteListener;
            if (view != this.mDeleteTextView || (easyEditSpan = this.mEasyEditSpan) == null || !easyEditSpan.isDeleteEnabled() || (easyEditDeleteListener = this.mOnDeleteListener) == null) {
                return;
            }
            easyEditDeleteListener.onDeleteClick(this.mEasyEditSpan);
        }

        public void setEasyEditSpan(EasyEditSpan easyEditSpan) {
            this.mEasyEditSpan = easyEditSpan;
        }
    }

    public static class ErrorPopup extends PopupWindow {
        private boolean mAbove;
        private int mPopupInlineErrorAboveBackgroundId;
        private int mPopupInlineErrorBackgroundId;
        private final TextView mView;

        public ErrorPopup(TextView textView, int i2, int i3) {
            super(textView, i2, i3);
            this.mAbove = false;
            this.mPopupInlineErrorBackgroundId = 0;
            this.mPopupInlineErrorAboveBackgroundId = 0;
            this.mView = textView;
            int resourceId = getResourceId(0, 225);
            this.mPopupInlineErrorBackgroundId = resourceId;
            textView.setBackgroundResource(resourceId);
        }

        private int getResourceId(int i2, int i3) {
            if (i2 != 0) {
                return i2;
            }
            TypedArray typedArrayObtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(R.styleable.Theme);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(i3, 0);
            typedArrayObtainStyledAttributes.recycle();
            return resourceId;
        }

        public void fixDirection(boolean z2) {
            this.mAbove = z2;
            if (z2) {
                this.mPopupInlineErrorAboveBackgroundId = getResourceId(this.mPopupInlineErrorAboveBackgroundId, 226);
            } else {
                this.mPopupInlineErrorBackgroundId = getResourceId(this.mPopupInlineErrorBackgroundId, 225);
            }
            this.mView.setBackgroundResource(z2 ? this.mPopupInlineErrorAboveBackgroundId : this.mPopupInlineErrorBackgroundId);
        }

        @Override // android.widget.PopupWindow
        public void update(int i2, int i3, int i4, int i5, boolean z2) {
            super.update(i2, i3, i4, i5, z2);
            boolean zIsAboveAnchor = isAboveAnchor();
            if (zIsAboveAnchor != this.mAbove) {
                fixDirection(zIsAboveAnchor);
            }
        }
    }

    public abstract class HandleView extends View implements TextViewPositionListener {
        private static final int HISTORY_SIZE = 5;
        private static final int TOUCH_UP_FILTER_DELAY_AFTER = 150;
        private static final int TOUCH_UP_FILTER_DELAY_BEFORE = 350;
        private Runnable mActionPopupShower;
        public ActionPopupWindow mActionPopupWindow;
        private final PopupWindow mContainer;
        public Drawable mDrawable;
        public Drawable mDrawableLtr;
        public Drawable mDrawableRtl;
        public int mHotspotX;
        private float mIdealVerticalOffset;
        private boolean mIsDragging;
        private int mLastParentX;
        private int mLastParentY;
        private int mNumberPreviousOffsets;
        private boolean mPositionHasChanged;
        private int mPositionX;
        private int mPositionY;
        private int mPreviousOffset;
        private int mPreviousOffsetIndex;
        private final int[] mPreviousOffsets;
        private final long[] mPreviousOffsetsTimes;
        private float mTouchOffsetY;
        private float mTouchToWindowOffsetX;
        private float mTouchToWindowOffsetY;

        public HandleView(Drawable drawable, Drawable drawable2) {
            super(Editor.this.mTextView.getContext());
            this.mPreviousOffset = -1;
            this.mPositionHasChanged = true;
            this.mPreviousOffsetsTimes = new long[5];
            this.mPreviousOffsets = new int[5];
            this.mPreviousOffsetIndex = 0;
            this.mNumberPreviousOffsets = 0;
            PopupWindow popupWindow = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
            this.mContainer = popupWindow;
            popupWindow.setSplitTouchEnabled(true);
            popupWindow.setClippingEnabled(false);
            popupWindow.setWindowLayoutType(1002);
            popupWindow.setContentView(this);
            this.mDrawableLtr = drawable;
            this.mDrawableRtl = drawable2;
            updateDrawable();
            float intrinsicHeight = this.mDrawable.getIntrinsicHeight();
            this.mTouchOffsetY = (-0.3f) * intrinsicHeight;
            this.mIdealVerticalOffset = intrinsicHeight * 0.7f;
        }

        private void addPositionToTouchUpFilter(int i2) {
            int i3 = (this.mPreviousOffsetIndex + 1) % 5;
            this.mPreviousOffsetIndex = i3;
            this.mPreviousOffsets[i3] = i2;
            this.mPreviousOffsetsTimes[i3] = SystemClock.uptimeMillis();
            this.mNumberPreviousOffsets++;
        }

        private void filterOnTouchUp() {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i2 = this.mPreviousOffsetIndex;
            int iMin = Math.min(this.mNumberPreviousOffsets, 5);
            int i3 = 0;
            while (i3 < iMin && jUptimeMillis - this.mPreviousOffsetsTimes[i2] < 150) {
                i3++;
                i2 = ((this.mPreviousOffsetIndex - i3) + 5) % 5;
            }
            if (i3 <= 0 || i3 >= iMin || jUptimeMillis - this.mPreviousOffsetsTimes[i2] <= 350) {
                return;
            }
            positionAtCursorOffset(this.mPreviousOffsets[i2], false);
        }

        private boolean isVisible() {
            if (this.mIsDragging) {
                return true;
            }
            if (Editor.this.mTextView.isInBatchEditMode()) {
                return false;
            }
            return Editor.this.isPositionVisible(this.mPositionX + this.mHotspotX, this.mPositionY);
        }

        private void startTouchUpFilter(int i2) {
            this.mNumberPreviousOffsets = 0;
            addPositionToTouchUpFilter(i2);
        }

        public void dismiss() {
            this.mIsDragging = false;
            this.mContainer.dismiss();
            onDetached();
        }

        public abstract int getCurrentCursorOffset();

        public abstract int getHotspotX(Drawable drawable, boolean z2);

        public void hide() {
            dismiss();
            Editor.this.getPositionListener().removeSubscriber(this);
        }

        public void hideActionPopupWindow() {
            if (this.mActionPopupShower != null) {
                Editor.this.mTextView.removeCallbacks(this.mActionPopupShower);
            }
            ActionPopupWindow actionPopupWindow = this.mActionPopupWindow;
            if (actionPopupWindow != null) {
                actionPopupWindow.hide();
            }
        }

        public boolean isDragging() {
            return this.mIsDragging;
        }

        public boolean isShowing() {
            return this.mContainer.isShowing();
        }

        public boolean offsetHasBeenChanged() {
            return this.mNumberPreviousOffsets > 1;
        }

        public void onDetached() {
            hideActionPopupWindow();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            this.mDrawable.setBounds(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            this.mDrawable.draw(canvas);
        }

        public void onHandleMoved() {
            hideActionPopupWindow();
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            setMeasuredDimension(this.mDrawable.getIntrinsicWidth(), this.mDrawable.getIntrinsicHeight());
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                startTouchUpFilter(getCurrentCursorOffset());
                this.mTouchToWindowOffsetX = motionEvent.getRawX() - this.mPositionX;
                this.mTouchToWindowOffsetY = motionEvent.getRawY() - this.mPositionY;
                PositionListener positionListener = Editor.this.getPositionListener();
                this.mLastParentX = positionListener.getPositionX();
                this.mLastParentY = positionListener.getPositionY();
                this.mIsDragging = true;
            } else if (actionMasked == 1) {
                filterOnTouchUp();
                this.mIsDragging = false;
            } else if (actionMasked == 2) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                float f2 = this.mTouchToWindowOffsetY;
                int i2 = this.mLastParentY;
                float f3 = f2 - i2;
                float f4 = (rawY - this.mPositionY) - i2;
                float f5 = this.mIdealVerticalOffset;
                float fMax = (f3 < f5 ? Math.max(Math.min(f4, f5), f3) : Math.min(Math.max(f4, f5), f3)) + this.mLastParentY;
                this.mTouchToWindowOffsetY = fMax;
                updatePosition((rawX - this.mTouchToWindowOffsetX) + this.mHotspotX, (rawY - fMax) + this.mTouchOffsetY);
            } else if (actionMasked == 3) {
                this.mIsDragging = false;
            }
            return true;
        }

        public void positionAtCursorOffset(int i2, boolean z2) {
            Layout layout = Editor.this.mTextView.getLayout();
            if (layout == null) {
                Editor.this.prepareCursorControllers();
                return;
            }
            boolean z3 = i2 != this.mPreviousOffset;
            if (z3 || z2) {
                if (z3) {
                    updateSelection(i2);
                    addPositionToTouchUpFilter(i2);
                }
                int lineForOffset = layout.getLineForOffset(i2);
                this.mPositionX = (int) ((layout.getPrimaryHorizontal(i2) - 0.5f) - this.mHotspotX);
                this.mPositionY = layout.getLineBottom(lineForOffset);
                this.mPositionX += Editor.this.mTextView.viewportToContentHorizontalOffset();
                this.mPositionY += Editor.this.mTextView.viewportToContentVerticalOffset();
                this.mPreviousOffset = i2;
                this.mPositionHasChanged = true;
            }
        }

        public void show() {
            if (isShowing()) {
                return;
            }
            Editor.this.getPositionListener().addSubscriber(this, true);
            this.mPreviousOffset = -1;
            positionAtCursorOffset(getCurrentCursorOffset(), false);
            hideActionPopupWindow();
        }

        public void showActionPopupWindow(int i2) {
            if (this.mActionPopupWindow == null) {
                this.mActionPopupWindow = new ActionPopupWindow();
            }
            if (this.mActionPopupShower == null) {
                this.mActionPopupShower = new Runnable() { // from class: android.widget.Editor.HandleView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HandleView.this.mActionPopupWindow.show();
                    }
                };
            } else {
                Editor.this.mTextView.removeCallbacks(this.mActionPopupShower);
            }
            Editor.this.mTextView.postDelayed(this.mActionPopupShower, i2);
        }

        public void updateDrawable() {
            boolean zIsRtlCharAt = Editor.this.mTextView.getLayout().isRtlCharAt(getCurrentCursorOffset());
            Drawable drawable = zIsRtlCharAt ? this.mDrawableRtl : this.mDrawableLtr;
            this.mDrawable = drawable;
            this.mHotspotX = getHotspotX(drawable, zIsRtlCharAt);
        }

        public abstract void updatePosition(float f2, float f3);

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i2, int i3, boolean z2, boolean z3) {
            positionAtCursorOffset(getCurrentCursorOffset(), z3);
            if (z2 || this.mPositionHasChanged) {
                if (this.mIsDragging) {
                    int i4 = this.mLastParentX;
                    if (i2 != i4 || i3 != this.mLastParentY) {
                        this.mTouchToWindowOffsetX += i2 - i4;
                        this.mTouchToWindowOffsetY += i3 - this.mLastParentY;
                        this.mLastParentX = i2;
                        this.mLastParentY = i3;
                    }
                    onHandleMoved();
                }
                if (isVisible()) {
                    int i5 = i2 + this.mPositionX;
                    int i6 = i3 + this.mPositionY;
                    if (isShowing()) {
                        this.mContainer.update(i5, i6, -1, -1);
                    } else {
                        this.mContainer.showAtLocation(Editor.this.mTextView, 0, i5, i6);
                    }
                } else if (isShowing()) {
                    dismiss();
                }
                this.mPositionHasChanged = false;
            }
        }

        public abstract void updateSelection(int i2);
    }

    public static class InputContentType {
        public boolean enterDown;
        public Bundle extras;
        public int imeActionId;
        public CharSequence imeActionLabel;
        public int imeOptions = 0;
        public TextView.OnEditorActionListener onEditorActionListener;
        public String privateImeOptions;
    }

    public static class InputMethodState {
        public int mBatchEditNesting;
        public int mChangedDelta;
        public int mChangedEnd;
        public int mChangedStart;
        public boolean mContentChanged;
        public boolean mCursorChanged;
        public ExtractedTextRequest mExtractedTextRequest;
        public boolean mSelectionModeChanged;
        public Rect mCursorRectInWindow = new Rect();
        public RectF mTmpRectF = new RectF();
        public float[] mTmpOffset = new float[2];
        public final ExtractedText mExtractedText = new ExtractedText();
    }

    public class InsertionHandleView extends HandleView {
        private static final int DELAY_BEFORE_HANDLE_FADES_OUT = 4000;
        private static final int RECENT_CUT_COPY_DURATION = 15000;
        private float mDownPositionX;
        private float mDownPositionY;
        private Runnable mHider;

        public InsertionHandleView(Drawable drawable) {
            super(drawable, drawable);
        }

        private void hideAfterDelay() {
            if (this.mHider == null) {
                this.mHider = new Runnable() { // from class: android.widget.Editor.InsertionHandleView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InsertionHandleView.this.hide();
                    }
                };
            } else {
                removeHiderCallback();
            }
            Editor.this.mTextView.postDelayed(this.mHider, 4000L);
        }

        private void removeHiderCallback() {
            if (this.mHider != null) {
                Editor.this.mTextView.removeCallbacks(this.mHider);
            }
        }

        @Override // android.widget.Editor.HandleView
        public int getCurrentCursorOffset() {
            return Editor.this.mTextView.getSelectionStart();
        }

        @Override // android.widget.Editor.HandleView
        public int getHotspotX(Drawable drawable, boolean z2) {
            return drawable.getIntrinsicWidth() / 2;
        }

        @Override // android.widget.Editor.HandleView
        public void onDetached() {
            super.onDetached();
            removeHiderCallback();
        }

        @Override // android.widget.Editor.HandleView
        public void onHandleMoved() {
            super.onHandleMoved();
            removeHiderCallback();
        }

        @Override // android.widget.Editor.HandleView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.mDownPositionX = motionEvent.getRawX();
                this.mDownPositionY = motionEvent.getRawY();
            } else if (actionMasked == 1) {
                if (!offsetHasBeenChanged()) {
                    float rawX = this.mDownPositionX - motionEvent.getRawX();
                    float rawY = this.mDownPositionY - motionEvent.getRawY();
                    float f2 = (rawX * rawX) + (rawY * rawY);
                    int scaledTouchSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledTouchSlop();
                    if (f2 < scaledTouchSlop * scaledTouchSlop) {
                        ActionPopupWindow actionPopupWindow = this.mActionPopupWindow;
                        if (actionPopupWindow == null || !actionPopupWindow.isShowing()) {
                            showWithActionPopup();
                        } else {
                            this.mActionPopupWindow.hide();
                        }
                    }
                }
                hideAfterDelay();
            } else if (actionMasked == 3) {
                hideAfterDelay();
            }
            return zOnTouchEvent;
        }

        @Override // android.widget.Editor.HandleView
        public void show() {
            super.show();
            if (SystemClock.uptimeMillis() - TextView.LAST_CUT_OR_COPY_TIME < 15000) {
                showActionPopupWindow(0);
            }
            hideAfterDelay();
        }

        public void showWithActionPopup() {
            show();
            showActionPopupWindow(0);
        }

        @Override // android.widget.Editor.HandleView
        public void updatePosition(float f2, float f3) {
            positionAtCursorOffset(Editor.this.mTextView.getOffsetForPosition(f2, f3), false);
        }

        @Override // android.widget.Editor.HandleView
        public void updateSelection(int i2) {
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i2);
        }
    }

    public class InsertionPointCursorController implements CursorController {
        private InsertionHandleView mHandle;

        private InsertionPointCursorController() {
        }

        private InsertionHandleView getHandle() {
            if (Editor.this.mSelectHandleCenter == null) {
                Editor editor = Editor.this;
                editor.mSelectHandleCenter = editor.mTextView.getResources().getDrawable(Editor.this.mTextView.mTextSelectHandleRes);
            }
            if (this.mHandle == null) {
                Editor editor2 = Editor.this;
                this.mHandle = editor2.new InsertionHandleView(editor2.mSelectHandleCenter);
            }
            return this.mHandle;
        }

        @Override // android.widget.Editor.CursorController
        public void hide() {
            InsertionHandleView insertionHandleView = this.mHandle;
            if (insertionHandleView != null) {
                insertionHandleView.hide();
            }
        }

        @Override // android.widget.Editor.CursorController
        public void onDetached() {
            Editor.this.mTextView.getViewTreeObserver().removeOnTouchModeChangeListener(this);
            InsertionHandleView insertionHandleView = this.mHandle;
            if (insertionHandleView != null) {
                insertionHandleView.onDetached();
            }
        }

        @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
        public void onTouchModeChanged(boolean z2) {
            if (z2) {
                return;
            }
            hide();
        }

        @Override // android.widget.Editor.CursorController
        public void show() {
            getHandle().show();
        }

        public void showWithActionPopup() {
            getHandle().showWithActionPopup();
        }
    }

    public class PositionListener implements ViewTreeObserver.OnPreDrawListener {
        private final int MAXIMUM_NUMBER_OF_LISTENERS;
        private boolean[] mCanMove;
        private int mNumberOfListeners;
        private boolean mPositionHasChanged;
        private TextViewPositionListener[] mPositionListeners;
        private int mPositionX;
        private int mPositionY;
        private boolean mScrollHasChanged;
        public final int[] mTempCoords;

        private PositionListener() {
            this.MAXIMUM_NUMBER_OF_LISTENERS = 6;
            this.mPositionListeners = new TextViewPositionListener[6];
            this.mCanMove = new boolean[6];
            this.mPositionHasChanged = true;
            this.mTempCoords = new int[2];
        }

        private void updatePosition() {
            Editor.this.mTextView.getLocationInWindow(this.mTempCoords);
            int[] iArr = this.mTempCoords;
            this.mPositionHasChanged = (iArr[0] == this.mPositionX && iArr[1] == this.mPositionY) ? false : true;
            this.mPositionX = iArr[0];
            this.mPositionY = iArr[1];
        }

        public void addSubscriber(TextViewPositionListener textViewPositionListener, boolean z2) {
            if (this.mNumberOfListeners == 0) {
                updatePosition();
                Editor.this.mTextView.getViewTreeObserver().addOnPreDrawListener(this);
            }
            int i2 = -1;
            for (int i3 = 0; i3 < 6; i3++) {
                TextViewPositionListener textViewPositionListener2 = this.mPositionListeners[i3];
                if (textViewPositionListener2 == textViewPositionListener) {
                    return;
                }
                if (i2 < 0 && textViewPositionListener2 == null) {
                    i2 = i3;
                }
            }
            this.mPositionListeners[i2] = textViewPositionListener;
            this.mCanMove[i2] = z2;
            this.mNumberOfListeners++;
        }

        public int getPositionX() {
            return this.mPositionX;
        }

        public int getPositionY() {
            return this.mPositionY;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            TextViewPositionListener textViewPositionListener;
            updatePosition();
            for (int i2 = 0; i2 < 6; i2++) {
                boolean z2 = this.mPositionHasChanged;
                if ((z2 || this.mScrollHasChanged || this.mCanMove[i2]) && (textViewPositionListener = this.mPositionListeners[i2]) != null) {
                    textViewPositionListener.updatePosition(this.mPositionX, this.mPositionY, z2, this.mScrollHasChanged);
                }
            }
            this.mScrollHasChanged = false;
            return true;
        }

        public void onScrollChanged() {
            this.mScrollHasChanged = true;
        }

        public void removeSubscriber(TextViewPositionListener textViewPositionListener) {
            for (int i2 = 0; i2 < 6; i2++) {
                TextViewPositionListener[] textViewPositionListenerArr = this.mPositionListeners;
                if (textViewPositionListenerArr[i2] == textViewPositionListener) {
                    textViewPositionListenerArr[i2] = null;
                    this.mNumberOfListeners--;
                    break;
                }
            }
            if (this.mNumberOfListeners == 0) {
                Editor.this.mTextView.getViewTreeObserver().removeOnPreDrawListener(this);
            }
        }
    }

    public class SelectionActionModeCallback implements ActionMode.Callback {
        private SelectionActionModeCallback() {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            ActionMode.Callback callback = Editor.this.mCustomSelectionActionModeCallback;
            if (callback == null || !callback.onActionItemClicked(actionMode, menuItem)) {
                return Editor.this.mTextView.onTextContextMenuItem(menuItem.getItemId());
            }
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            TypedArray typedArrayObtainStyledAttributes = Editor.this.mTextView.getContext().obtainStyledAttributes(a.SelectionModeDrawables);
            actionMode.setTitle(Editor.this.mTextView.getContext().getString(17040365));
            actionMode.setSubtitle((CharSequence) null);
            actionMode.setTitleOptionalHint(true);
            menu.add(0, 16908319, 0, R.string.selectAll).setIcon(typedArrayObtainStyledAttributes.getResourceId(3, 0)).setAlphabeticShortcut(DateFormat.AM_PM).setShowAsAction(6);
            if (Editor.this.mTextView.canCut()) {
                menu.add(0, 16908320, 0, R.string.cut).setIcon(typedArrayObtainStyledAttributes.getResourceId(0, 0)).setAlphabeticShortcut('x').setShowAsAction(6);
            }
            if (Editor.this.mTextView.canCopy()) {
                menu.add(0, 16908321, 0, R.string.copy).setIcon(typedArrayObtainStyledAttributes.getResourceId(1, 0)).setAlphabeticShortcut('c').setShowAsAction(6);
            }
            if (Editor.this.mTextView.canPaste()) {
                menu.add(0, 16908322, 0, R.string.paste).setIcon(typedArrayObtainStyledAttributes.getResourceId(2, 0)).setAlphabeticShortcut('v').setShowAsAction(6);
            }
            typedArrayObtainStyledAttributes.recycle();
            ActionMode.Callback callback = Editor.this.mCustomSelectionActionModeCallback;
            if (callback != null && !callback.onCreateActionMode(actionMode, menu)) {
                return false;
            }
            if (!menu.hasVisibleItems() && actionMode.getCustomView() == null) {
                return false;
            }
            Editor.this.getSelectionController().show();
            Editor.this.mTextView.setHasTransientState(true);
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            ActionMode.Callback callback = Editor.this.mCustomSelectionActionModeCallback;
            if (callback != null) {
                callback.onDestroyActionMode(actionMode);
            }
            Editor editor = Editor.this;
            if (!editor.mPreserveDetachedSelection) {
                Selection.setSelection((Spannable) editor.mTextView.getText(), Editor.this.mTextView.getSelectionEnd());
                Editor.this.mTextView.setHasTransientState(false);
            }
            SelectionModifierCursorController selectionModifierCursorController = Editor.this.mSelectionModifierCursorController;
            if (selectionModifierCursorController != null) {
                selectionModifierCursorController.hide();
            }
            Editor.this.mSelectionActionMode = null;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            ActionMode.Callback callback = Editor.this.mCustomSelectionActionModeCallback;
            if (callback != null) {
                return callback.onPrepareActionMode(actionMode, menu);
            }
            return true;
        }
    }

    public class SelectionEndHandleView extends HandleView {
        public SelectionEndHandleView(Drawable drawable, Drawable drawable2) {
            super(drawable, drawable2);
        }

        @Override // android.widget.Editor.HandleView
        public int getCurrentCursorOffset() {
            return Editor.this.mTextView.getSelectionEnd();
        }

        @Override // android.widget.Editor.HandleView
        public int getHotspotX(Drawable drawable, boolean z2) {
            return z2 ? (drawable.getIntrinsicWidth() * 3) / 4 : drawable.getIntrinsicWidth() / 4;
        }

        public void setActionPopupWindow(ActionPopupWindow actionPopupWindow) {
            this.mActionPopupWindow = actionPopupWindow;
        }

        @Override // android.widget.Editor.HandleView
        public void updatePosition(float f2, float f3) {
            int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(f2, f3);
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            if (offsetForPosition <= selectionStart) {
                offsetForPosition = Math.min(selectionStart + 1, Editor.this.mTextView.getText().length());
            }
            positionAtCursorOffset(offsetForPosition, false);
        }

        @Override // android.widget.Editor.HandleView
        public void updateSelection(int i2) {
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionStart(), i2);
            updateDrawable();
        }
    }

    public class SelectionModifierCursorController implements CursorController {
        private static final int DELAY_BEFORE_REPLACE_ACTION = 200;
        private float mDownPositionX;
        private float mDownPositionY;
        private SelectionEndHandleView mEndHandle;
        private boolean mGestureStayedInTapRegion;
        private int mMaxTouchOffset;
        private int mMinTouchOffset;
        private long mPreviousTapUpTime = 0;
        private SelectionStartHandleView mStartHandle;

        public SelectionModifierCursorController() {
            resetTouchOffsets();
        }

        private void initDrawables() {
            if (Editor.this.mSelectHandleLeft == null) {
                Editor editor = Editor.this;
                editor.mSelectHandleLeft = editor.mTextView.getContext().getResources().getDrawable(Editor.this.mTextView.mTextSelectHandleLeftRes);
            }
            if (Editor.this.mSelectHandleRight == null) {
                Editor editor2 = Editor.this;
                editor2.mSelectHandleRight = editor2.mTextView.getContext().getResources().getDrawable(Editor.this.mTextView.mTextSelectHandleRightRes);
            }
        }

        private void initHandles() {
            if (this.mStartHandle == null) {
                Editor editor = Editor.this;
                this.mStartHandle = editor.new SelectionStartHandleView(editor.mSelectHandleLeft, Editor.this.mSelectHandleRight);
            }
            if (this.mEndHandle == null) {
                Editor editor2 = Editor.this;
                this.mEndHandle = editor2.new SelectionEndHandleView(editor2.mSelectHandleRight, Editor.this.mSelectHandleLeft);
            }
            this.mStartHandle.show();
            this.mEndHandle.show();
            this.mStartHandle.showActionPopupWindow(200);
            this.mEndHandle.setActionPopupWindow(this.mStartHandle.getActionPopupWindow());
            Editor.this.hideInsertionPointCursorController();
        }

        private void updateMinAndMaxOffsets(MotionEvent motionEvent) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i2 = 0; i2 < pointerCount; i2++) {
                int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(motionEvent.getX(i2), motionEvent.getY(i2));
                if (offsetForPosition < this.mMinTouchOffset) {
                    this.mMinTouchOffset = offsetForPosition;
                }
                if (offsetForPosition > this.mMaxTouchOffset) {
                    this.mMaxTouchOffset = offsetForPosition;
                }
            }
        }

        public int getMaxTouchOffset() {
            return this.mMaxTouchOffset;
        }

        public int getMinTouchOffset() {
            return this.mMinTouchOffset;
        }

        @Override // android.widget.Editor.CursorController
        public void hide() {
            SelectionStartHandleView selectionStartHandleView = this.mStartHandle;
            if (selectionStartHandleView != null) {
                selectionStartHandleView.hide();
            }
            SelectionEndHandleView selectionEndHandleView = this.mEndHandle;
            if (selectionEndHandleView != null) {
                selectionEndHandleView.hide();
            }
        }

        public boolean isSelectionStartDragged() {
            SelectionStartHandleView selectionStartHandleView = this.mStartHandle;
            return selectionStartHandleView != null && selectionStartHandleView.isDragging();
        }

        @Override // android.widget.Editor.CursorController
        public void onDetached() {
            Editor.this.mTextView.getViewTreeObserver().removeOnTouchModeChangeListener(this);
            SelectionStartHandleView selectionStartHandleView = this.mStartHandle;
            if (selectionStartHandleView != null) {
                selectionStartHandleView.onDetached();
            }
            SelectionEndHandleView selectionEndHandleView = this.mEndHandle;
            if (selectionEndHandleView != null) {
                selectionEndHandleView.onDetached();
            }
        }

        public void onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(x2, y2);
                this.mMaxTouchOffset = offsetForPosition;
                this.mMinTouchOffset = offsetForPosition;
                if (this.mGestureStayedInTapRegion && SystemClock.uptimeMillis() - this.mPreviousTapUpTime <= ViewConfiguration.getDoubleTapTimeout()) {
                    float f2 = x2 - this.mDownPositionX;
                    float f3 = y2 - this.mDownPositionY;
                    float f4 = (f2 * f2) + (f3 * f3);
                    int scaledDoubleTapSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledDoubleTapSlop();
                    if ((f4 < ((float) (scaledDoubleTapSlop * scaledDoubleTapSlop))) && Editor.this.isPositionOnText(x2, y2)) {
                        Editor.this.startSelectionActionMode();
                        Editor.this.mDiscardNextActionUp = true;
                    }
                }
                this.mDownPositionX = x2;
                this.mDownPositionY = y2;
                this.mGestureStayedInTapRegion = true;
                return;
            }
            if (actionMasked == 1) {
                this.mPreviousTapUpTime = SystemClock.uptimeMillis();
                return;
            }
            if (actionMasked != 2) {
                if ((actionMasked == 5 || actionMasked == 6) && Editor.this.mTextView.getContext().getPackageManager().hasSystemFeature(PackageManager.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT)) {
                    updateMinAndMaxOffsets(motionEvent);
                    return;
                }
                return;
            }
            if (this.mGestureStayedInTapRegion) {
                float x3 = motionEvent.getX() - this.mDownPositionX;
                float y3 = motionEvent.getY() - this.mDownPositionY;
                float f5 = (x3 * x3) + (y3 * y3);
                int scaledDoubleTapTouchSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledDoubleTapTouchSlop();
                if (f5 > scaledDoubleTapTouchSlop * scaledDoubleTapTouchSlop) {
                    this.mGestureStayedInTapRegion = false;
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
        public void onTouchModeChanged(boolean z2) {
            if (z2) {
                return;
            }
            hide();
        }

        public void resetTouchOffsets() {
            this.mMaxTouchOffset = -1;
            this.mMinTouchOffset = -1;
        }

        @Override // android.widget.Editor.CursorController
        public void show() {
            if (Editor.this.mTextView.isInBatchEditMode()) {
                return;
            }
            initDrawables();
            initHandles();
            Editor.this.hideInsertionPointCursorController();
        }
    }

    public class SelectionStartHandleView extends HandleView {
        public SelectionStartHandleView(Drawable drawable, Drawable drawable2) {
            super(drawable, drawable2);
        }

        public ActionPopupWindow getActionPopupWindow() {
            return this.mActionPopupWindow;
        }

        @Override // android.widget.Editor.HandleView
        public int getCurrentCursorOffset() {
            return Editor.this.mTextView.getSelectionStart();
        }

        @Override // android.widget.Editor.HandleView
        public int getHotspotX(Drawable drawable, boolean z2) {
            return z2 ? drawable.getIntrinsicWidth() / 4 : (drawable.getIntrinsicWidth() * 3) / 4;
        }

        @Override // android.widget.Editor.HandleView
        public void updatePosition(float f2, float f3) {
            int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(f2, f3);
            int selectionEnd = Editor.this.mTextView.getSelectionEnd();
            if (offsetForPosition >= selectionEnd) {
                offsetForPosition = Math.max(0, selectionEnd - 1);
            }
            positionAtCursorOffset(offsetForPosition, false);
        }

        @Override // android.widget.Editor.HandleView
        public void updateSelection(int i2) {
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i2, Editor.this.mTextView.getSelectionEnd());
            updateDrawable();
        }
    }

    public class SpanController implements SpanWatcher {
        private static final int DISPLAY_TIMEOUT_MS = 3000;
        private Runnable mHidePopup;
        private EasyEditPopupWindow mPopupWindow;

        public SpanController() {
        }

        private boolean isNonIntermediateSelectionSpan(Spannable spannable, Object obj) {
            return (Selection.SELECTION_START == obj || Selection.SELECTION_END == obj) && (spannable.getSpanFlags(obj) & 512) == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendEasySpanNotification(int i2, EasyEditSpan easyEditSpan) {
            try {
                PendingIntent pendingIntent = easyEditSpan.getPendingIntent();
                if (pendingIntent != null) {
                    Intent intent = new Intent();
                    intent.putExtra(EasyEditSpan.EXTRA_TEXT_CHANGED_TYPE, i2);
                    pendingIntent.send(Editor.this.mTextView.getContext(), 0, intent);
                }
            } catch (PendingIntent.CanceledException e2) {
                Log.w(Editor.TAG, "PendingIntent for notification cannot be sent", e2);
            }
        }

        public void hide() {
            EasyEditPopupWindow easyEditPopupWindow = this.mPopupWindow;
            if (easyEditPopupWindow != null) {
                easyEditPopupWindow.hide();
                Editor.this.mTextView.removeCallbacks(this.mHidePopup);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i2, int i3) {
            if (isNonIntermediateSelectionSpan(spannable, obj)) {
                Editor.this.sendUpdateSelection();
                return;
            }
            if (obj instanceof EasyEditSpan) {
                if (this.mPopupWindow == null) {
                    this.mPopupWindow = new EasyEditPopupWindow();
                    this.mHidePopup = new Runnable() { // from class: android.widget.Editor.SpanController.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SpanController.this.hide();
                        }
                    };
                }
                if (this.mPopupWindow.mEasyEditSpan != null) {
                    this.mPopupWindow.mEasyEditSpan.setDeleteEnabled(false);
                }
                this.mPopupWindow.setEasyEditSpan((EasyEditSpan) obj);
                this.mPopupWindow.setOnDeleteListener(new EasyEditDeleteListener() { // from class: android.widget.Editor.SpanController.2
                    @Override // android.widget.Editor.EasyEditDeleteListener
                    public void onDeleteClick(EasyEditSpan easyEditSpan) {
                        Editable editable = (Editable) Editor.this.mTextView.getText();
                        int spanStart = editable.getSpanStart(easyEditSpan);
                        int spanEnd = editable.getSpanEnd(easyEditSpan);
                        if (spanStart >= 0 && spanEnd >= 0) {
                            SpanController.this.sendEasySpanNotification(1, easyEditSpan);
                            Editor.this.mTextView.deleteText_internal(spanStart, spanEnd);
                        }
                        editable.removeSpan(easyEditSpan);
                    }
                });
                if (Editor.this.mTextView.getWindowVisibility() != 0 || Editor.this.mTextView.getLayout() == null || Editor.this.extractedTextModeWillBeStarted()) {
                    return;
                }
                this.mPopupWindow.show();
                Editor.this.mTextView.removeCallbacks(this.mHidePopup);
                Editor.this.mTextView.postDelayed(this.mHidePopup, 3000L);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5) {
            if (isNonIntermediateSelectionSpan(spannable, obj)) {
                Editor.this.sendUpdateSelection();
            } else {
                if (this.mPopupWindow == null || !(obj instanceof EasyEditSpan)) {
                    return;
                }
                EasyEditSpan easyEditSpan = (EasyEditSpan) obj;
                sendEasySpanNotification(2, easyEditSpan);
                spannable.removeSpan(easyEditSpan);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3) {
            if (isNonIntermediateSelectionSpan(spannable, obj)) {
                Editor.this.sendUpdateSelection();
                return;
            }
            EasyEditPopupWindow easyEditPopupWindow = this.mPopupWindow;
            if (easyEditPopupWindow == null || obj != easyEditPopupWindow.mEasyEditSpan) {
                return;
            }
            hide();
        }
    }

    public class SuggestionsPopupWindow extends PinnedPopupWindow implements AdapterView.OnItemClickListener {
        private static final int ADD_TO_DICTIONARY = -1;
        private static final int DELETE_TEXT = -2;
        private static final int MAX_NUMBER_SUGGESTIONS = 5;
        private boolean mCursorWasVisibleBeforeSuggestions;
        private boolean mIsShowingUp;
        private int mNumberOfSuggestions;
        private final HashMap<SuggestionSpan, Integer> mSpansLengths;
        private SuggestionInfo[] mSuggestionInfos;
        private final Comparator<SuggestionSpan> mSuggestionSpanComparator;
        private SuggestionAdapter mSuggestionsAdapter;

        public class CustomPopupWindow extends PopupWindow {
            public CustomPopupWindow(Context context, int i2) {
                super(context, (AttributeSet) null, i2);
            }

            @Override // android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                Editor.this.getPositionListener().removeSubscriber(SuggestionsPopupWindow.this);
                ((Spannable) Editor.this.mTextView.getText()).removeSpan(Editor.this.mSuggestionRangeSpan);
                Editor.this.mTextView.setCursorVisible(SuggestionsPopupWindow.this.mCursorWasVisibleBeforeSuggestions);
                if (Editor.this.hasInsertionController()) {
                    Editor.this.getInsertionController().show();
                }
            }
        }

        public class SuggestionAdapter extends BaseAdapter {
            private LayoutInflater mInflater;

            private SuggestionAdapter() {
                this.mInflater = (LayoutInflater) Editor.this.mTextView.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return SuggestionsPopupWindow.this.mNumberOfSuggestions;
            }

            @Override // android.widget.Adapter
            public Object getItem(int i2) {
                return SuggestionsPopupWindow.this.mSuggestionInfos[i2];
            }

            @Override // android.widget.Adapter
            public long getItemId(int i2) {
                return i2;
            }

            @Override // android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                TextView textView = (TextView) view;
                if (textView == null) {
                    textView = (TextView) this.mInflater.inflate(Editor.this.mTextView.mTextEditSuggestionItemLayout, viewGroup, false);
                }
                SuggestionInfo suggestionInfo = SuggestionsPopupWindow.this.mSuggestionInfos[i2];
                textView.setText(suggestionInfo.text);
                int i3 = suggestionInfo.suggestionIndex;
                if (i3 == -1 || i3 == -2) {
                    textView.setBackgroundColor(0);
                } else {
                    textView.setBackgroundColor(-1);
                }
                return textView;
            }
        }

        public class SuggestionInfo {
            public TextAppearanceSpan highlightSpan;
            public int suggestionEnd;
            public int suggestionIndex;
            public SuggestionSpan suggestionSpan;
            public int suggestionStart;
            public SpannableStringBuilder text;

            private SuggestionInfo() {
                this.text = new SpannableStringBuilder();
                this.highlightSpan = new TextAppearanceSpan(Editor.this.mTextView.getContext(), R.style.TextAppearance_SuggestionHighlight);
            }
        }

        public class SuggestionSpanComparator implements Comparator<SuggestionSpan> {
            private SuggestionSpanComparator() {
            }

            @Override // java.util.Comparator
            public int compare(SuggestionSpan suggestionSpan, SuggestionSpan suggestionSpan2) {
                int flags = suggestionSpan.getFlags();
                int flags2 = suggestionSpan2.getFlags();
                if (flags != flags2) {
                    boolean z2 = (flags & 1) != 0;
                    boolean z3 = (flags2 & 1) != 0;
                    boolean z4 = (flags & 2) != 0;
                    boolean z5 = (flags2 & 2) != 0;
                    if (z2 && !z4) {
                        return -1;
                    }
                    if (z3 && !z5) {
                        return 1;
                    }
                    if (z4) {
                        return -1;
                    }
                    if (z5) {
                        return 1;
                    }
                }
                return ((Integer) SuggestionsPopupWindow.this.mSpansLengths.get(suggestionSpan)).intValue() - ((Integer) SuggestionsPopupWindow.this.mSpansLengths.get(suggestionSpan2)).intValue();
            }
        }

        public SuggestionsPopupWindow() {
            super();
            this.mIsShowingUp = false;
            this.mCursorWasVisibleBeforeSuggestions = Editor.this.mCursorVisible;
            this.mSuggestionSpanComparator = new SuggestionSpanComparator();
            this.mSpansLengths = new HashMap<>();
        }

        private SuggestionSpan[] getSuggestionSpans() {
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(selectionStart, selectionStart, SuggestionSpan.class);
            this.mSpansLengths.clear();
            for (SuggestionSpan suggestionSpan : suggestionSpanArr) {
                this.mSpansLengths.put(suggestionSpan, Integer.valueOf(spannable.getSpanEnd(suggestionSpan) - spannable.getSpanStart(suggestionSpan)));
            }
            Arrays.sort(suggestionSpanArr, this.mSuggestionSpanComparator);
            return suggestionSpanArr;
        }

        private void highlightTextDifferences(SuggestionInfo suggestionInfo, int i2, int i3) {
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            int spanStart = spannable.getSpanStart(suggestionInfo.suggestionSpan);
            int spanEnd = spannable.getSpanEnd(suggestionInfo.suggestionSpan);
            int i4 = spanStart - i2;
            suggestionInfo.suggestionStart = i4;
            suggestionInfo.suggestionEnd = i4 + suggestionInfo.text.length();
            SpannableStringBuilder spannableStringBuilder = suggestionInfo.text;
            spannableStringBuilder.setSpan(suggestionInfo.highlightSpan, 0, spannableStringBuilder.length(), 33);
            String string = spannable.toString();
            suggestionInfo.text.insert(0, (CharSequence) string.substring(i2, spanStart));
            suggestionInfo.text.append((CharSequence) string.substring(spanEnd, i3));
        }

        private boolean updateSuggestions() {
            SuggestionSpan[] suggestionSpanArr;
            int i2;
            int i3;
            int i4;
            boolean z2;
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpan[] suggestionSpans = getSuggestionSpans();
            int length = suggestionSpans.length;
            int i5 = 0;
            if (length == 0) {
                return false;
            }
            this.mNumberOfSuggestions = 0;
            int length2 = Editor.this.mTextView.getText().length();
            int i6 = 0;
            int iMax = 0;
            int underlineColor = 0;
            SuggestionSpan suggestionSpan = null;
            while (i6 < length) {
                SuggestionSpan suggestionSpan2 = suggestionSpans[i6];
                int spanStart = spannable.getSpanStart(suggestionSpan2);
                int spanEnd = spannable.getSpanEnd(suggestionSpan2);
                int iMin = Math.min(spanStart, length2);
                iMax = Math.max(spanEnd, iMax);
                if ((suggestionSpan2.getFlags() & 2) != 0) {
                    suggestionSpan = suggestionSpan2;
                }
                if (i6 == 0) {
                    underlineColor = suggestionSpan2.getUnderlineColor();
                }
                String[] suggestions = suggestionSpan2.getSuggestions();
                int length3 = suggestions.length;
                int i7 = i5;
                while (true) {
                    if (i7 >= length3) {
                        suggestionSpanArr = suggestionSpans;
                        i2 = length;
                        i3 = iMin;
                        i4 = 1;
                        break;
                    }
                    String str = suggestions[i7];
                    suggestionSpanArr = suggestionSpans;
                    i2 = length;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= this.mNumberOfSuggestions) {
                            i3 = iMin;
                            z2 = false;
                            break;
                        }
                        if (this.mSuggestionInfos[i8].text.toString().equals(str)) {
                            SuggestionSpan suggestionSpan3 = this.mSuggestionInfos[i8].suggestionSpan;
                            i3 = iMin;
                            int spanStart2 = spannable.getSpanStart(suggestionSpan3);
                            int spanEnd2 = spannable.getSpanEnd(suggestionSpan3);
                            if (spanStart == spanStart2 && spanEnd == spanEnd2) {
                                z2 = true;
                                break;
                            }
                        } else {
                            i3 = iMin;
                        }
                        i8++;
                        iMin = i3;
                    }
                    if (!z2) {
                        SuggestionInfo suggestionInfo = this.mSuggestionInfos[this.mNumberOfSuggestions];
                        suggestionInfo.suggestionSpan = suggestionSpan2;
                        suggestionInfo.suggestionIndex = i7;
                        SpannableStringBuilder spannableStringBuilder = suggestionInfo.text;
                        spannableStringBuilder.replace(0, spannableStringBuilder.length(), (CharSequence) str);
                        i4 = 1;
                        int i9 = this.mNumberOfSuggestions + 1;
                        this.mNumberOfSuggestions = i9;
                        if (i9 == 5) {
                            i6 = i2;
                            break;
                        }
                    }
                    i7++;
                    suggestionSpans = suggestionSpanArr;
                    length = i2;
                    iMin = i3;
                }
                i6 += i4;
                suggestionSpans = suggestionSpanArr;
                length = i2;
                length2 = i3;
                i5 = 0;
            }
            for (int i10 = 0; i10 < this.mNumberOfSuggestions; i10++) {
                highlightTextDifferences(this.mSuggestionInfos[i10], length2, iMax);
            }
            if (suggestionSpan != null) {
                int spanStart3 = spannable.getSpanStart(suggestionSpan);
                int spanEnd3 = spannable.getSpanEnd(suggestionSpan);
                if (spanStart3 >= 0 && spanEnd3 > spanStart3) {
                    SuggestionInfo suggestionInfo2 = this.mSuggestionInfos[this.mNumberOfSuggestions];
                    suggestionInfo2.suggestionSpan = suggestionSpan;
                    suggestionInfo2.suggestionIndex = -1;
                    SpannableStringBuilder spannableStringBuilder2 = suggestionInfo2.text;
                    spannableStringBuilder2.replace(0, spannableStringBuilder2.length(), (CharSequence) Editor.this.mTextView.getContext().getString(17040366));
                    suggestionInfo2.text.setSpan(suggestionInfo2.highlightSpan, 0, 0, 33);
                    this.mNumberOfSuggestions++;
                }
            }
            SuggestionInfo suggestionInfo3 = this.mSuggestionInfos[this.mNumberOfSuggestions];
            suggestionInfo3.suggestionSpan = null;
            suggestionInfo3.suggestionIndex = -2;
            SpannableStringBuilder spannableStringBuilder3 = suggestionInfo3.text;
            spannableStringBuilder3.replace(0, spannableStringBuilder3.length(), (CharSequence) Editor.this.mTextView.getContext().getString(17040367));
            suggestionInfo3.text.setSpan(suggestionInfo3.highlightSpan, 0, 0, 33);
            this.mNumberOfSuggestions++;
            Editor editor = Editor.this;
            if (editor.mSuggestionRangeSpan == null) {
                editor.mSuggestionRangeSpan = new SuggestionRangeSpan();
            }
            if (underlineColor == 0) {
                Editor editor2 = Editor.this;
                editor2.mSuggestionRangeSpan.setBackgroundColor(editor2.mTextView.mHighlightColor);
            } else {
                Editor.this.mSuggestionRangeSpan.setBackgroundColor((16777215 & underlineColor) + (((int) (Color.alpha(underlineColor) * 0.4f)) << 24));
            }
            spannable.setSpan(Editor.this.mSuggestionRangeSpan, length2, iMax, 33);
            this.mSuggestionsAdapter.notifyDataSetChanged();
            return true;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int clipVertically(int i2) {
            return Math.min(i2, Editor.this.mTextView.getResources().getDisplayMetrics().heightPixels - this.mContentView.getMeasuredHeight());
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void createPopupWindow() {
            CustomPopupWindow customPopupWindow = new CustomPopupWindow(Editor.this.mTextView.getContext(), R.attr.textSuggestionsWindowStyle);
            this.mPopupWindow = customPopupWindow;
            customPopupWindow.setInputMethodMode(2);
            this.mPopupWindow.setFocusable(true);
            this.mPopupWindow.setClippingEnabled(false);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getTextOffset() {
            return Editor.this.mTextView.getSelectionStart();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getVerticalLocalPosition(int i2) {
            return Editor.this.mTextView.getLayout().getLineBottom(i2);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void hide() {
            super.hide();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void initContentView() {
            ListView listView = new ListView(Editor.this.mTextView.getContext());
            SuggestionAdapter suggestionAdapter = new SuggestionAdapter();
            this.mSuggestionsAdapter = suggestionAdapter;
            listView.setAdapter((ListAdapter) suggestionAdapter);
            listView.setOnItemClickListener(this);
            this.mContentView = listView;
            this.mSuggestionInfos = new SuggestionInfo[7];
            int i2 = 0;
            while (true) {
                SuggestionInfo[] suggestionInfoArr = this.mSuggestionInfos;
                if (i2 >= suggestionInfoArr.length) {
                    return;
                }
                suggestionInfoArr[i2] = new SuggestionInfo();
                i2++;
            }
        }

        public boolean isShowingUp() {
            return this.mIsShowingUp;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void measureContent() {
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE);
            View view = null;
            int iMax = 0;
            for (int i2 = 0; i2 < this.mNumberOfSuggestions; i2++) {
                view = this.mSuggestionsAdapter.getView(i2, view, this.mContentView);
                view.getLayoutParams().width = -2;
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                iMax = Math.max(iMax, view.getMeasuredWidth());
            }
            this.mContentView.measure(View.MeasureSpec.makeMeasureSpec(iMax, 1073741824), iMakeMeasureSpec2);
            Drawable background = this.mPopupWindow.getBackground();
            if (background != null) {
                if (Editor.this.mTempRect == null) {
                    Editor.this.mTempRect = new Rect();
                }
                background.getPadding(Editor.this.mTempRect);
                iMax += Editor.this.mTempRect.left + Editor.this.mTempRect.right;
            }
            this.mPopupWindow.setWidth(iMax);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            Editable editable = (Editable) Editor.this.mTextView.getText();
            SuggestionInfo suggestionInfo = this.mSuggestionInfos[i2];
            if (suggestionInfo.suggestionIndex == -2) {
                int spanStart = editable.getSpanStart(Editor.this.mSuggestionRangeSpan);
                int spanEnd = editable.getSpanEnd(Editor.this.mSuggestionRangeSpan);
                if (spanStart >= 0 && spanEnd > spanStart) {
                    if (spanEnd < editable.length() && Character.isSpaceChar(editable.charAt(spanEnd)) && (spanStart == 0 || Character.isSpaceChar(editable.charAt(spanStart - 1)))) {
                        spanEnd++;
                    }
                    Editor.this.mTextView.deleteText_internal(spanStart, spanEnd);
                }
                hide();
                return;
            }
            int spanStart2 = editable.getSpanStart(suggestionInfo.suggestionSpan);
            int spanEnd2 = editable.getSpanEnd(suggestionInfo.suggestionSpan);
            if (spanStart2 < 0 || spanEnd2 <= spanStart2) {
                hide();
                return;
            }
            String strSubstring = editable.toString().substring(spanStart2, spanEnd2);
            if (suggestionInfo.suggestionIndex == -1) {
                Intent intent = new Intent(Settings.ACTION_USER_DICTIONARY_INSERT);
                intent.putExtra(UserDictionary.Words.WORD, strSubstring);
                intent.putExtra(UserDictionary.Words.LOCALE, Editor.this.mTextView.getTextServicesLocale().toString());
                intent.setFlags(intent.getFlags() | 268435456);
                Editor.this.mTextView.getContext().startActivity(intent);
                editable.removeSpan(suggestionInfo.suggestionSpan);
                Selection.setSelection(editable, spanEnd2);
                Editor.this.updateSpellCheckSpans(spanStart2, spanEnd2, false);
            } else {
                SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) editable.getSpans(spanStart2, spanEnd2, SuggestionSpan.class);
                int length = suggestionSpanArr.length;
                int[] iArr = new int[length];
                int[] iArr2 = new int[length];
                int[] iArr3 = new int[length];
                for (int i3 = 0; i3 < length; i3++) {
                    SuggestionSpan suggestionSpan = suggestionSpanArr[i3];
                    iArr[i3] = editable.getSpanStart(suggestionSpan);
                    iArr2[i3] = editable.getSpanEnd(suggestionSpan);
                    iArr3[i3] = editable.getSpanFlags(suggestionSpan);
                    int flags = suggestionSpan.getFlags();
                    if ((flags & 2) > 0) {
                        suggestionSpan.setFlags(flags & (-3) & (-2));
                    }
                }
                String string = suggestionInfo.text.subSequence(suggestionInfo.suggestionStart, suggestionInfo.suggestionEnd).toString();
                Editor.this.mTextView.replaceText_internal(spanStart2, spanEnd2, string);
                suggestionInfo.suggestionSpan.notifySelection(Editor.this.mTextView.getContext(), strSubstring, suggestionInfo.suggestionIndex);
                suggestionInfo.suggestionSpan.getSuggestions()[suggestionInfo.suggestionIndex] = strSubstring;
                int length2 = string.length() - (spanEnd2 - spanStart2);
                for (int i4 = 0; i4 < length; i4++) {
                    if (iArr[i4] <= spanStart2 && iArr2[i4] >= spanEnd2) {
                        Editor.this.mTextView.setSpan_internal(suggestionSpanArr[i4], iArr[i4], iArr2[i4] + length2, iArr3[i4]);
                    }
                }
                int i5 = spanEnd2 + length2;
                Editor.this.mTextView.setCursorPosition_internal(i5, i5);
            }
            hide();
        }

        public void onParentLostFocus() {
            this.mIsShowingUp = false;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void show() {
            if ((Editor.this.mTextView.getText() instanceof Editable) && updateSuggestions()) {
                Editor editor = Editor.this;
                this.mCursorWasVisibleBeforeSuggestions = editor.mCursorVisible;
                editor.mTextView.setCursorVisible(false);
                this.mIsShowingUp = true;
                super.show();
            }
        }
    }

    public static class TextModifyOperation extends UndoOperation<TextView> {
        public static final Parcelable.ClassLoaderCreator<TextModifyOperation> CREATOR = new Parcelable.ClassLoaderCreator<TextModifyOperation>() { // from class: android.widget.Editor.TextModifyOperation.1
            @Override // android.os.Parcelable.Creator
            public TextModifyOperation[] newArray(int i2) {
                return new TextModifyOperation[i2];
            }

            @Override // android.os.Parcelable.Creator
            public TextModifyOperation createFromParcel(Parcel parcel) {
                return new TextModifyOperation(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public TextModifyOperation createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new TextModifyOperation(parcel, classLoader);
            }
        };
        public CharSequence mOldText;
        public int mRangeEnd;
        public int mRangeStart;

        public TextModifyOperation(UndoOwner undoOwner) {
            super(undoOwner);
        }

        private void swapText() {
            Editable editable = (Editable) getOwnerData().getText();
            int i2 = this.mRangeStart;
            int i3 = this.mRangeEnd;
            CharSequence charSequenceSubSequence = i2 >= i3 ? null : editable.subSequence(i2, i3);
            CharSequence charSequence = this.mOldText;
            if (charSequence == null) {
                editable.delete(this.mRangeStart, this.mRangeEnd);
                this.mRangeEnd = this.mRangeStart;
            } else {
                editable.replace(this.mRangeStart, this.mRangeEnd, charSequence);
                this.mRangeEnd = this.mRangeStart + this.mOldText.length();
            }
            this.mOldText = charSequenceSubSequence;
        }

        @Override // android.content.UndoOperation
        public void commit() {
        }

        @Override // android.content.UndoOperation
        public void redo() {
            swapText();
        }

        @Override // android.content.UndoOperation
        public void undo() {
            swapText();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mRangeStart);
            parcel.writeInt(this.mRangeEnd);
            TextUtils.writeToParcel(this.mOldText, parcel, i2);
        }

        public TextModifyOperation(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mRangeStart = parcel.readInt();
            this.mRangeEnd = parcel.readInt();
            this.mOldText = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    public interface TextViewPositionListener {
        void updatePosition(int i2, int i3, boolean z2, boolean z3);
    }

    public static class UndoInputFilter implements InputFilter {
        public final Editor mEditor;

        public UndoInputFilter(Editor editor) {
            this.mEditor = editor;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            int i6;
            UndoManager undoManager = this.mEditor.mUndoManager;
            if (undoManager.isInUndo()) {
                return null;
            }
            undoManager.beginUpdate("Edit text");
            TextModifyOperation textModifyOperation = (TextModifyOperation) undoManager.getLastOperation(TextModifyOperation.class, this.mEditor.mUndoOwner, 1);
            if (textModifyOperation != null) {
                CharSequence charSequence2 = textModifyOperation.mOldText;
                if (charSequence2 == null) {
                    if (i2 < i3 && ((i4 >= textModifyOperation.mRangeStart && i5 <= textModifyOperation.mRangeEnd) || (i4 == (i6 = textModifyOperation.mRangeEnd) && i5 == i6))) {
                        textModifyOperation.mRangeEnd = i4 + (i3 - i2);
                        undoManager.endUpdate();
                        return null;
                    }
                } else if (i2 == i3 && i5 == textModifyOperation.mRangeStart - 1) {
                    SpannableStringBuilder spannableStringBuilder = charSequence2 instanceof SpannableString ? (SpannableStringBuilder) charSequence2 : new SpannableStringBuilder(textModifyOperation.mOldText);
                    spannableStringBuilder.insert(0, (CharSequence) spanned, i4, i5);
                    textModifyOperation.mRangeStart = i4;
                    textModifyOperation.mOldText = spannableStringBuilder;
                    undoManager.endUpdate();
                    return null;
                }
                undoManager.commitState(null);
                undoManager.setUndoLabel("Edit text");
            }
            TextModifyOperation textModifyOperation2 = new TextModifyOperation(this.mEditor.mUndoOwner);
            textModifyOperation2.mRangeStart = i4;
            if (i2 < i3) {
                textModifyOperation2.mRangeEnd = (i3 - i2) + i4;
            } else {
                textModifyOperation2.mRangeEnd = i4;
            }
            if (i4 < i5) {
                textModifyOperation2.mOldText = spanned.subSequence(i4, i5);
            }
            undoManager.addOperation(textModifyOperation2, 0);
            undoManager.endUpdate();
            return null;
        }
    }

    public Editor(TextView textView) {
        this.mTextView = textView;
    }

    private boolean canSelectText() {
        return hasSelectionController() && this.mTextView.getText().length() != 0;
    }

    private void chooseSize(PopupWindow popupWindow, CharSequence charSequence, TextView textView) {
        int paddingLeft = textView.getPaddingLeft() + textView.getPaddingRight();
        int paddingTop = textView.getPaddingTop() + textView.getPaddingBottom();
        StaticLayout staticLayout = new StaticLayout(charSequence, textView.getPaint(), this.mTextView.getResources().getDimensionPixelSize(17104974), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        float fMax = 0.0f;
        for (int i2 = 0; i2 < staticLayout.getLineCount(); i2++) {
            fMax = Math.max(fMax, staticLayout.getLineWidth(i2));
        }
        popupWindow.setWidth(paddingLeft + ((int) Math.ceil(fMax)));
        popupWindow.setHeight(paddingTop + staticLayout.getHeight());
    }

    private void downgradeEasyCorrectionSpans() {
        CharSequence text = this.mTextView.getText();
        if (text instanceof Spannable) {
            Spannable spannable = (Spannable) text;
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(0, spannable.length(), SuggestionSpan.class);
            for (int i2 = 0; i2 < suggestionSpanArr.length; i2++) {
                int flags = suggestionSpanArr[i2].getFlags();
                if ((flags & 1) != 0 && (flags & 2) == 0) {
                    suggestionSpanArr[i2].setFlags(flags & (-2));
                }
            }
        }
    }

    private void drawCursor(Canvas canvas, int i2) {
        boolean z2 = i2 != 0;
        if (z2) {
            canvas.translate(0.0f, i2);
        }
        for (int i3 = 0; i3 < this.mCursorCount; i3++) {
            this.mCursorDrawable[i3].draw(canvas);
        }
        if (z2) {
            canvas.translate(0.0f, -i2);
        }
    }

    private void drawHardwareAccelerated(Canvas canvas, Layout layout, Path path, Paint paint, int i2) {
        int[] iArr;
        int i3;
        int i4;
        int i5;
        Editor editor = this;
        long lineRangeForDraw = layout.getLineRangeForDraw(canvas);
        int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(lineRangeForDraw);
        int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lineRangeForDraw);
        if (iUnpackRangeEndFromLong < 0) {
            return;
        }
        layout.drawBackground(canvas, path, paint, i2, iUnpackRangeStartFromLong, iUnpackRangeEndFromLong);
        if (!(layout instanceof DynamicLayout)) {
            layout.drawText(canvas, iUnpackRangeStartFromLong, iUnpackRangeEndFromLong);
            return;
        }
        int i6 = 0;
        if (editor.mTextDisplayLists == null) {
            editor.mTextDisplayLists = new DisplayList[u.a.j(0)];
        }
        DynamicLayout dynamicLayout = (DynamicLayout) layout;
        int[] blockEndLines = dynamicLayout.getBlockEndLines();
        int[] blockIndices = dynamicLayout.getBlockIndices();
        int numberOfBlocks = dynamicLayout.getNumberOfBlocks();
        int indexFirstChangedBlock = dynamicLayout.getIndexFirstChangedBlock();
        int i7 = -1;
        int i8 = 0;
        int i9 = 0;
        int i10 = -1;
        while (i8 < numberOfBlocks) {
            int i11 = blockEndLines[i8];
            int availableDisplayListIndex = blockIndices[i8];
            int i12 = availableDisplayListIndex == i7 ? 1 : i6;
            if (i12 != 0) {
                availableDisplayListIndex = editor.getAvailableDisplayListIndex(blockIndices, numberOfBlocks, i9);
                blockIndices[i8] = availableDisplayListIndex;
                i9 = availableDisplayListIndex + 1;
            }
            DisplayList[] displayListArr = editor.mTextDisplayLists;
            DisplayList displayListCreateDisplayList = displayListArr[availableDisplayListIndex];
            if (displayListCreateDisplayList == null) {
                HardwareRenderer hardwareRenderer = editor.mTextView.getHardwareRenderer();
                StringBuilder sb = new StringBuilder();
                iArr = blockEndLines;
                sb.append("Text ");
                sb.append(availableDisplayListIndex);
                displayListCreateDisplayList = hardwareRenderer.createDisplayList(sb.toString());
                displayListArr[availableDisplayListIndex] = displayListCreateDisplayList;
            } else {
                iArr = blockEndLines;
                if (i12 != 0) {
                    displayListCreateDisplayList.clear();
                }
            }
            DisplayList displayList = displayListCreateDisplayList;
            boolean z2 = !displayList.isValid();
            if (i8 >= indexFirstChangedBlock || z2) {
                int i13 = i10 + 1;
                int lineTop = layout.getLineTop(i13);
                int lineBottom = layout.getLineBottom(i11);
                int width = editor.mTextView.getWidth();
                if (editor.mTextView.getHorizontallyScrolling()) {
                    float fMin = Float.MAX_VALUE;
                    float fMax = Float.MIN_VALUE;
                    int i14 = i13;
                    while (i14 <= i11) {
                        fMin = Math.min(fMin, layout.getLineLeft(i14));
                        fMax = Math.max(fMax, layout.getLineRight(i14));
                        i14++;
                        indexFirstChangedBlock = indexFirstChangedBlock;
                    }
                    i3 = indexFirstChangedBlock;
                    i4 = (int) fMin;
                    width = (int) (fMax + 0.5f);
                } else {
                    i3 = indexFirstChangedBlock;
                    i4 = 0;
                }
                if (z2) {
                    HardwareCanvas hardwareCanvasStart = displayList.start(width - i4, lineBottom - lineTop);
                    try {
                        hardwareCanvasStart.translate(-i4, -lineTop);
                        layout.drawText(hardwareCanvasStart, i13, i11);
                        displayList.end();
                        i5 = 0;
                        displayList.setClipToBounds(false);
                    } catch (Throwable th) {
                        displayList.end();
                        displayList.setClipToBounds(false);
                        throw th;
                    }
                } else {
                    i5 = 0;
                }
                displayList.setLeftTopRightBottom(i4, lineTop, width, lineBottom);
            } else {
                i3 = indexFirstChangedBlock;
                i5 = 0;
            }
            ((HardwareCanvas) canvas).drawDisplayList(displayList, null, i5);
            i8++;
            editor = this;
            blockIndices = blockIndices;
            i6 = i5;
            i10 = i11;
            indexFirstChangedBlock = i3;
            blockEndLines = iArr;
            i7 = -1;
        }
        dynamicLayout.setIndexFirstChangedBlock(numberOfBlocks);
    }

    private boolean extractTextInternal(ExtractedTextRequest extractedTextRequest, int i2, int i3, int i4, ExtractedText extractedText) {
        CharSequence text = this.mTextView.getText();
        if (text == null) {
            return false;
        }
        if (i2 != -2) {
            int length = text.length();
            if (i2 < 0) {
                extractedText.partialEndOffset = -1;
                extractedText.partialStartOffset = -1;
                i2 = 0;
            } else {
                int i5 = i3 + i4;
                if (text instanceof Spanned) {
                    Spanned spanned = (Spanned) text;
                    Object[] spans = spanned.getSpans(i2, i5, ParcelableSpan.class);
                    int length2 = spans.length;
                    while (length2 > 0) {
                        length2--;
                        int spanStart = spanned.getSpanStart(spans[length2]);
                        if (spanStart < i2) {
                            i2 = spanStart;
                        }
                        int spanEnd = spanned.getSpanEnd(spans[length2]);
                        if (spanEnd > i5) {
                            i5 = spanEnd;
                        }
                    }
                }
                extractedText.partialStartOffset = i2;
                extractedText.partialEndOffset = i5 - i4;
                if (i2 > length) {
                    i2 = length;
                } else if (i2 < 0) {
                    i2 = 0;
                }
                if (i5 <= length) {
                    length = i5 < 0 ? 0 : i5;
                }
            }
            if ((extractedTextRequest.flags & 1) != 0) {
                extractedText.text = text.subSequence(i2, length);
            } else {
                extractedText.text = TextUtils.substring(text, i2, length);
            }
        } else {
            extractedText.partialStartOffset = 0;
            extractedText.partialEndOffset = 0;
            extractedText.text = ProxyProperties.LOCAL_EXCL_LIST;
        }
        extractedText.flags = 0;
        if (MetaKeyKeyListener.getMetaState(text, 2048) != 0) {
            extractedText.flags |= 2;
        }
        if (this.mTextView.isSingleLine()) {
            extractedText.flags |= 1;
        }
        extractedText.startOffset = 0;
        extractedText.selectionStart = this.mTextView.getSelectionStart();
        extractedText.selectionEnd = this.mTextView.getSelectionEnd();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean extractedTextModeWillBeStarted() {
        InputMethodManager inputMethodManagerPeekInstance;
        return ((this.mTextView instanceof ExtractEditText) || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null || !inputMethodManagerPeekInstance.isFullscreenMode()) ? false : true;
    }

    private int getAvailableDisplayListIndex(int[] iArr, int i2, int i3) {
        int length = this.mTextDisplayLists.length;
        while (true) {
            boolean z2 = false;
            if (i3 >= length) {
                DisplayList[] displayListArr = new DisplayList[u.a.h(length + 1)];
                System.arraycopy(this.mTextDisplayLists, 0, displayListArr, 0, length);
                this.mTextDisplayLists = displayListArr;
                return length;
            }
            for (int i4 = 0; i4 < i2; i4++) {
                if (iArr[i4] == i3) {
                    z2 = true;
                    break;
                }
            }
            if (!z2) {
                return i3;
            }
            i3++;
        }
    }

    private long getCharRange(int i2) {
        int length = this.mTextView.getText().length();
        int i3 = i2 + 1;
        if (i3 < length && Character.isSurrogatePair(this.mTextView.getText().charAt(i2), this.mTextView.getText().charAt(i3))) {
            return TextUtils.packRangeInLong(i2, i2 + 2);
        }
        if (i2 < length) {
            return TextUtils.packRangeInLong(i2, i3);
        }
        int i4 = i2 - 2;
        if (i4 >= 0) {
            if (Character.isSurrogatePair(this.mTextView.getText().charAt(i4), this.mTextView.getText().charAt(i2 - 1))) {
                return TextUtils.packRangeInLong(i4, i2);
            }
        }
        int i5 = i2 - 1;
        return i5 >= 0 ? TextUtils.packRangeInLong(i5, i2) : TextUtils.packRangeInLong(i2, i2);
    }

    private int getErrorX() {
        float f2 = this.mTextView.getResources().getDisplayMetrics().density;
        TextView textView = this.mTextView;
        TextView.Drawables drawables = textView.mDrawables;
        if (textView.getLayoutDirection() != 1) {
            return ((this.mTextView.getWidth() - this.mErrorPopup.getWidth()) - this.mTextView.getPaddingRight()) + ((-(drawables != null ? drawables.mDrawableSizeRight : 0)) / 2) + ((int) ((f2 * 25.0f) + 0.5f));
        }
        return this.mTextView.getPaddingLeft() + (((drawables != null ? drawables.mDrawableSizeLeft : 0) / 2) - ((int) ((f2 * 25.0f) + 0.5f)));
    }

    private int getErrorY() {
        int compoundPaddingTop = this.mTextView.getCompoundPaddingTop();
        int bottom = ((this.mTextView.getBottom() - this.mTextView.getTop()) - this.mTextView.getCompoundPaddingBottom()) - compoundPaddingTop;
        TextView textView = this.mTextView;
        TextView.Drawables drawables = textView.mDrawables;
        int i2 = 0;
        if (textView.getLayoutDirection() != 1) {
            if (drawables != null) {
                i2 = drawables.mDrawableHeightRight;
            }
        } else if (drawables != null) {
            i2 = drawables.mDrawableHeightLeft;
        }
        return (((compoundPaddingTop + ((bottom - i2) / 2)) + i2) - this.mTextView.getHeight()) - ((int) ((this.mTextView.getResources().getDisplayMetrics().density * 2.0f) + 0.5f));
    }

    private int getLastTapPosition() {
        int minTouchOffset;
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController == null || (minTouchOffset = selectionModifierCursorController.getMinTouchOffset()) < 0) {
            return -1;
        }
        return minTouchOffset > this.mTextView.getText().length() ? this.mTextView.getText().length() : minTouchOffset;
    }

    private long getLastTouchOffsets() {
        SelectionModifierCursorController selectionController = getSelectionController();
        return TextUtils.packRangeInLong(selectionController.getMinTouchOffset(), selectionController.getMaxTouchOffset());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PositionListener getPositionListener() {
        if (this.mPositionListener == null) {
            this.mPositionListener = new PositionListener();
        }
        return this.mPositionListener;
    }

    private float getPrimaryHorizontal(Layout layout, Layout layout2, int i2, boolean z2) {
        return (!TextUtils.isEmpty(layout.getText()) || layout2 == null || TextUtils.isEmpty(layout2.getText())) ? layout.getPrimaryHorizontal(i2, z2) : layout2.getPrimaryHorizontal(i2, z2);
    }

    private View.DragShadowBuilder getTextThumbnailBuilder(CharSequence charSequence) {
        TextView textView = (TextView) View.inflate(this.mTextView.getContext(), 17367209, null);
        if (textView == null) {
            throw new IllegalArgumentException("Unable to inflate text drag thumbnail");
        }
        int length = charSequence.length();
        int i2 = DRAG_SHADOW_MAX_TEXT_LENGTH;
        if (length > i2) {
            charSequence = charSequence.subSequence(0, i2);
        }
        textView.setText(charSequence);
        textView.setTextColor(this.mTextView.getTextColors());
        textView.setTextAppearance(this.mTextView.getContext(), 16);
        textView.setGravity(17);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        textView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        textView.invalidate();
        return new View.DragShadowBuilder(textView);
    }

    private boolean hasPasswordTransformationMethod() {
        return this.mTextView.getTransformationMethod() instanceof PasswordTransformationMethod;
    }

    private void hideCursorControllers() {
        SuggestionsPopupWindow suggestionsPopupWindow = this.mSuggestionsPopupWindow;
        if (suggestionsPopupWindow != null && !suggestionsPopupWindow.isShowingUp()) {
            this.mSuggestionsPopupWindow.hide();
        }
        hideInsertionPointCursorController();
        stopSelectionActionMode();
    }

    private void hideError() {
        ErrorPopup errorPopup = this.mErrorPopup;
        if (errorPopup != null && errorPopup.isShowing()) {
            this.mErrorPopup.dismiss();
        }
        this.mShowErrorAfterAttach = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideInsertionPointCursorController() {
        InsertionPointCursorController insertionPointCursorController = this.mInsertionPointCursorController;
        if (insertionPointCursorController != null) {
            insertionPointCursorController.hide();
        }
    }

    private void hideSpanControllers() {
        SpanController spanController = this.mSpanController;
        if (spanController != null) {
            spanController.hide();
        }
    }

    private boolean isCursorInsideEasyCorrectionSpan() {
        for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) ((Spannable) this.mTextView.getText()).getSpans(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), SuggestionSpan.class)) {
            if ((suggestionSpan.getFlags() & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCursorInsideSuggestionSpan() {
        CharSequence text = this.mTextView.getText();
        return (text instanceof Spannable) && ((SuggestionSpan[]) ((Spannable) text).getSpans(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), SuggestionSpan.class)).length > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOffsetVisible(int i2) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return false;
        }
        return isPositionVisible(((int) layout.getPrimaryHorizontal(i2)) + this.mTextView.viewportToContentHorizontalOffset(), layout.getLineBottom(layout.getLineForOffset(i2)) + this.mTextView.viewportToContentVerticalOffset());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPositionOnText(float f2, float f3) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return false;
        }
        int lineAtCoordinate = this.mTextView.getLineAtCoordinate(f3);
        float fConvertToLocalHorizontalCoordinate = this.mTextView.convertToLocalHorizontalCoordinate(f2);
        return fConvertToLocalHorizontalCoordinate >= layout.getLineLeft(lineAtCoordinate) && fConvertToLocalHorizontalCoordinate <= layout.getLineRight(lineAtCoordinate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPositionVisible(int i2, int i3) {
        float[] fArr = TEMP_POSITION;
        synchronized (fArr) {
            fArr[0] = i2;
            fArr[1] = i3;
            View view = this.mTextView;
            while (view != null) {
                if (view != this.mTextView) {
                    fArr[0] = fArr[0] - view.getScrollX();
                    fArr[1] = fArr[1] - view.getScrollY();
                }
                if (fArr[0] >= 0.0f && fArr[1] >= 0.0f && fArr[0] <= view.getWidth() && fArr[1] <= view.getHeight()) {
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

    private void resumeBlink() {
        Blink blink = this.mBlink;
        if (blink != null) {
            blink.uncancel();
            makeBlink();
        }
    }

    private boolean selectCurrentWord() {
        int spanStart;
        int spanEnd;
        if (!canSelectText()) {
            return false;
        }
        if (hasPasswordTransformationMethod()) {
            return this.mTextView.selectAllText();
        }
        int inputType = this.mTextView.getInputType();
        int i2 = inputType & 15;
        int i3 = inputType & InputType.TYPE_MASK_VARIATION;
        if (i2 == 2 || i2 == 3 || i2 == 4 || i3 == 16 || i3 == 32 || i3 == 208 || i3 == 176) {
            return this.mTextView.selectAllText();
        }
        long lastTouchOffsets = getLastTouchOffsets();
        int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(lastTouchOffsets);
        int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lastTouchOffsets);
        if (iUnpackRangeStartFromLong < 0 || iUnpackRangeStartFromLong >= this.mTextView.getText().length() || iUnpackRangeEndFromLong < 0 || iUnpackRangeEndFromLong >= this.mTextView.getText().length()) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) ((Spanned) this.mTextView.getText()).getSpans(iUnpackRangeStartFromLong, iUnpackRangeEndFromLong, URLSpan.class);
        if (uRLSpanArr.length >= 1) {
            URLSpan uRLSpan = uRLSpanArr[0];
            spanStart = ((Spanned) this.mTextView.getText()).getSpanStart(uRLSpan);
            spanEnd = ((Spanned) this.mTextView.getText()).getSpanEnd(uRLSpan);
        } else {
            WordIterator wordIterator = getWordIterator();
            wordIterator.setCharSequence(this.mTextView.getText(), iUnpackRangeStartFromLong, iUnpackRangeEndFromLong);
            int beginning = wordIterator.getBeginning(iUnpackRangeStartFromLong);
            int end = wordIterator.getEnd(iUnpackRangeEndFromLong);
            if (beginning == -1 || end == -1 || beginning == end) {
                long charRange = getCharRange(iUnpackRangeStartFromLong);
                int iUnpackRangeStartFromLong2 = TextUtils.unpackRangeStartFromLong(charRange);
                int iUnpackRangeEndFromLong2 = TextUtils.unpackRangeEndFromLong(charRange);
                spanStart = iUnpackRangeStartFromLong2;
                spanEnd = iUnpackRangeEndFromLong2;
            } else {
                spanEnd = end;
                spanStart = beginning;
            }
        }
        Selection.setSelection((Spannable) this.mTextView.getText(), spanStart, spanEnd);
        return spanEnd > spanStart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUpdateSelection() {
        InputMethodManager inputMethodManagerPeekInstance;
        int i2;
        int composingSpanEnd;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState == null || inputMethodState.mBatchEditNesting > 0 || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null) {
            return;
        }
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        if (this.mTextView.getText() instanceof Spannable) {
            Spannable spannable = (Spannable) this.mTextView.getText();
            int composingSpanStart = BaseInputConnection.getComposingSpanStart(spannable);
            composingSpanEnd = BaseInputConnection.getComposingSpanEnd(spannable);
            i2 = composingSpanStart;
        } else {
            i2 = -1;
            composingSpanEnd = -1;
        }
        inputMethodManagerPeekInstance.updateSelection(this.mTextView, selectionStart, selectionEnd, i2, composingSpanEnd);
    }

    private void setErrorIcon(Drawable drawable) {
        TextView textView = this.mTextView;
        TextView.Drawables drawables = textView.mDrawables;
        if (drawables == null) {
            drawables = new TextView.Drawables(textView.getContext());
            textView.mDrawables = drawables;
        }
        drawables.setErrorDrawable(drawable, this.mTextView);
        this.mTextView.resetResolvedDrawables();
        this.mTextView.invalidate();
        this.mTextView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldBlink() {
        int selectionStart;
        int selectionEnd;
        return isCursorVisible() && this.mTextView.isFocused() && (selectionStart = this.mTextView.getSelectionStart()) >= 0 && (selectionEnd = this.mTextView.getSelectionEnd()) >= 0 && selectionStart == selectionEnd;
    }

    private void showError() {
        if (this.mTextView.getWindowToken() == null) {
            this.mShowErrorAfterAttach = true;
            return;
        }
        if (this.mErrorPopup == null) {
            TextView textView = (TextView) LayoutInflater.from(this.mTextView.getContext()).inflate(17367217, (ViewGroup) null);
            float f2 = this.mTextView.getResources().getDisplayMetrics().density;
            ErrorPopup errorPopup = new ErrorPopup(textView, (int) ((200.0f * f2) + 0.5f), (int) ((f2 * 50.0f) + 0.5f));
            this.mErrorPopup = errorPopup;
            errorPopup.setFocusable(false);
            this.mErrorPopup.setInputMethodMode(1);
        }
        TextView textView2 = (TextView) this.mErrorPopup.getContentView();
        chooseSize(this.mErrorPopup, this.mError, textView2);
        textView2.setText(this.mError);
        this.mErrorPopup.showAsDropDown(this.mTextView, getErrorX(), getErrorY());
        ErrorPopup errorPopup2 = this.mErrorPopup;
        errorPopup2.fixDirection(errorPopup2.isAboveAnchor());
    }

    private void suspendBlink() {
        Blink blink = this.mBlink;
        if (blink != null) {
            blink.cancel();
        }
    }

    private boolean touchPositionIsInSelection() {
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        if (selectionStart == selectionEnd) {
            return false;
        }
        if (selectionStart > selectionEnd) {
            Selection.setSelection((Spannable) this.mTextView.getText(), selectionEnd, selectionStart);
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        SelectionModifierCursorController selectionController = getSelectionController();
        return selectionController.getMinTouchOffset() >= selectionStart && selectionController.getMaxTouchOffset() < selectionEnd;
    }

    private void updateCursorPosition(int i2, int i3, int i4, float f2) {
        Drawable[] drawableArr = this.mCursorDrawable;
        if (drawableArr[i2] == null) {
            drawableArr[i2] = this.mTextView.getResources().getDrawable(this.mTextView.mCursorDrawableRes);
        }
        if (this.mTempRect == null) {
            this.mTempRect = new Rect();
        }
        this.mCursorDrawable[i2].getPadding(this.mTempRect);
        int intrinsicWidth = this.mCursorDrawable[i2].getIntrinsicWidth();
        int iMax = (int) Math.max(0.5f, f2 - 0.5f);
        Rect rect = this.mTempRect;
        int i5 = iMax - rect.left;
        this.mCursorDrawable[i2].setBounds(i5, i3 - rect.top, intrinsicWidth + i5, i4 + rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpellCheckSpans(int i2, int i3, boolean z2) {
        this.mTextView.removeAdjacentSuggestionSpans(i2);
        this.mTextView.removeAdjacentSuggestionSpans(i3);
        if (this.mTextView.isTextEditable() && this.mTextView.isSuggestionsEnabled() && !(this.mTextView instanceof ExtractEditText)) {
            if (this.mSpellChecker == null && z2) {
                this.mSpellChecker = new SpellChecker(this.mTextView);
            }
            SpellChecker spellChecker = this.mSpellChecker;
            if (spellChecker != null) {
                spellChecker.spellCheck(i2, i3);
            }
        }
    }

    public void addSpanWatchers(Spannable spannable) {
        int length = spannable.length();
        KeyListener keyListener = this.mKeyListener;
        if (keyListener != null) {
            spannable.setSpan(keyListener, 0, length, 18);
        }
        if (this.mSpanController == null) {
            this.mSpanController = new SpanController();
        }
        spannable.setSpan(this.mSpanController, 0, length, 18);
    }

    public void adjustInputType(boolean z2, boolean z3, boolean z4, boolean z5) {
        int i2 = this.mInputType;
        if ((i2 & 15) != 1) {
            if ((i2 & 15) == 2 && z5) {
                this.mInputType = (i2 & (-4081)) | 16;
                return;
            }
            return;
        }
        if (z2 || z3) {
            this.mInputType = (i2 & (-4081)) | 128;
        }
        if (z4) {
            this.mInputType = (this.mInputType & (-4081)) | 224;
        }
    }

    public boolean areSuggestionsShown() {
        SuggestionsPopupWindow suggestionsPopupWindow = this.mSuggestionsPopupWindow;
        return suggestionsPopupWindow != null && suggestionsPopupWindow.isShowing();
    }

    public void beginBatchEdit() {
        this.mInBatchEditControllers = true;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null) {
            int i2 = inputMethodState.mBatchEditNesting + 1;
            inputMethodState.mBatchEditNesting = i2;
            if (i2 == 1) {
                inputMethodState.mCursorChanged = false;
                inputMethodState.mChangedDelta = 0;
                if (inputMethodState.mContentChanged) {
                    inputMethodState.mChangedStart = 0;
                    inputMethodState.mChangedEnd = this.mTextView.getText().length();
                } else {
                    inputMethodState.mChangedStart = -1;
                    inputMethodState.mChangedEnd = -1;
                    inputMethodState.mContentChanged = false;
                }
                this.mTextView.onBeginBatchEdit();
            }
        }
    }

    public void createInputContentTypeIfNeeded() {
        if (this.mInputContentType == null) {
            this.mInputContentType = new InputContentType();
        }
    }

    public void createInputMethodStateIfNeeded() {
        if (this.mInputMethodState == null) {
            this.mInputMethodState = new InputMethodState();
        }
    }

    public void endBatchEdit() {
        this.mInBatchEditControllers = false;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null) {
            int i2 = inputMethodState.mBatchEditNesting - 1;
            inputMethodState.mBatchEditNesting = i2;
            if (i2 == 0) {
                finishBatchEdit(inputMethodState);
            }
        }
    }

    public void ensureEndedBatchEdit() {
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState == null || inputMethodState.mBatchEditNesting == 0) {
            return;
        }
        inputMethodState.mBatchEditNesting = 0;
        finishBatchEdit(inputMethodState);
    }

    public boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        return extractTextInternal(extractedTextRequest, -1, -1, -1, extractedText);
    }

    public void finishBatchEdit(InputMethodState inputMethodState) {
        this.mTextView.onEndBatchEdit();
        if (inputMethodState.mContentChanged || inputMethodState.mSelectionModeChanged) {
            this.mTextView.updateAfterEdit();
            reportExtractedText();
        } else if (inputMethodState.mCursorChanged) {
            this.mTextView.invalidateCursor();
        }
        sendUpdateSelection();
    }

    public InsertionPointCursorController getInsertionController() {
        if (!this.mInsertionControllerEnabled) {
            return null;
        }
        if (this.mInsertionPointCursorController == null) {
            this.mInsertionPointCursorController = new InsertionPointCursorController();
            this.mTextView.getViewTreeObserver().addOnTouchModeChangeListener(this.mInsertionPointCursorController);
        }
        return this.mInsertionPointCursorController;
    }

    public SelectionModifierCursorController getSelectionController() {
        if (!this.mSelectionControllerEnabled) {
            return null;
        }
        if (this.mSelectionModifierCursorController == null) {
            this.mSelectionModifierCursorController = new SelectionModifierCursorController();
            this.mTextView.getViewTreeObserver().addOnTouchModeChangeListener(this.mSelectionModifierCursorController);
        }
        return this.mSelectionModifierCursorController;
    }

    public WordIterator getWordIterator() {
        if (this.mWordIterator == null) {
            this.mWordIterator = new WordIterator(this.mTextView.getTextServicesLocale());
        }
        return this.mWordIterator;
    }

    public boolean hasInsertionController() {
        return this.mInsertionControllerEnabled;
    }

    public boolean hasSelectionController() {
        return this.mSelectionControllerEnabled;
    }

    public void hideControllers() {
        hideCursorControllers();
        hideSpanControllers();
    }

    public void invalidateTextDisplayList(Layout layout, int i2, int i3) {
        if (this.mTextDisplayLists == null || !(layout instanceof DynamicLayout)) {
            return;
        }
        int lineForOffset = layout.getLineForOffset(i2);
        int lineForOffset2 = layout.getLineForOffset(i3);
        DynamicLayout dynamicLayout = (DynamicLayout) layout;
        int[] blockEndLines = dynamicLayout.getBlockEndLines();
        int[] blockIndices = dynamicLayout.getBlockIndices();
        int numberOfBlocks = dynamicLayout.getNumberOfBlocks();
        int i4 = 0;
        while (i4 < numberOfBlocks && blockEndLines[i4] < lineForOffset) {
            i4++;
        }
        while (i4 < numberOfBlocks) {
            int i5 = blockIndices[i4];
            if (i5 != -1) {
                this.mTextDisplayLists[i5].clear();
            }
            if (blockEndLines[i4] >= lineForOffset2) {
                return;
            } else {
                i4++;
            }
        }
    }

    public boolean isCursorVisible() {
        return this.mCursorVisible && this.mTextView.isTextEditable();
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
    public void makeBlink() {
        if (!shouldBlink()) {
            Blink blink = this.mBlink;
            if (blink != null) {
                blink.removeCallbacks(blink);
                return;
            }
            return;
        }
        this.mShowCursor = SystemClock.uptimeMillis();
        if (this.mBlink == null) {
            this.mBlink = new Blink();
        }
        Blink blink2 = this.mBlink;
        blink2.removeCallbacks(blink2);
        Blink blink3 = this.mBlink;
        blink3.postAtTime(blink3, this.mShowCursor + 500);
    }

    public void onAttachedToWindow() {
        if (this.mShowErrorAfterAttach) {
            showError();
            this.mShowErrorAfterAttach = false;
        }
        this.mTemporaryDetach = false;
        ViewTreeObserver viewTreeObserver = this.mTextView.getViewTreeObserver();
        InsertionPointCursorController insertionPointCursorController = this.mInsertionPointCursorController;
        if (insertionPointCursorController != null) {
            viewTreeObserver.addOnTouchModeChangeListener(insertionPointCursorController);
        }
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.resetTouchOffsets();
            viewTreeObserver.addOnTouchModeChangeListener(this.mSelectionModifierCursorController);
        }
        updateSpellCheckSpans(0, this.mTextView.getText().length(), true);
        if (!this.mTextView.hasTransientState() || this.mTextView.getSelectionStart() == this.mTextView.getSelectionEnd()) {
            return;
        }
        this.mTextView.setHasTransientState(false);
        startSelectionActionMode();
    }

    public void onCommitCorrection(CorrectionInfo correctionInfo) {
        CorrectionHighlighter correctionHighlighter = this.mCorrectionHighlighter;
        if (correctionHighlighter == null) {
            this.mCorrectionHighlighter = new CorrectionHighlighter();
        } else {
            correctionHighlighter.invalidate(false);
        }
        this.mCorrectionHighlighter.highlight(correctionInfo);
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
    public void onDetachedFromWindow() {
        if (this.mError != null) {
            hideError();
        }
        Blink blink = this.mBlink;
        if (blink != null) {
            blink.removeCallbacks(blink);
        }
        InsertionPointCursorController insertionPointCursorController = this.mInsertionPointCursorController;
        if (insertionPointCursorController != null) {
            insertionPointCursorController.onDetached();
        }
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.onDetached();
        }
        Runnable runnable = this.mShowSuggestionRunnable;
        if (runnable != null) {
            this.mTextView.removeCallbacks(runnable);
        }
        invalidateTextDisplayList();
        SpellChecker spellChecker = this.mSpellChecker;
        if (spellChecker != null) {
            spellChecker.closeSession();
            this.mSpellChecker = null;
        }
        this.mPreserveDetachedSelection = true;
        hideControllers();
        this.mPreserveDetachedSelection = false;
        this.mTemporaryDetach = false;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    public void onDraw(Canvas canvas, Layout layout, Path path, Paint paint, int i2) {
        InputMethodManager inputMethodManagerPeekInstance;
        Path path2 = path;
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null && inputMethodState.mBatchEditNesting == 0 && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null) {
            if (inputMethodManagerPeekInstance.isActive(this.mTextView) && (inputMethodState.mContentChanged || inputMethodState.mSelectionModeChanged)) {
                reportExtractedText();
            }
            if (inputMethodManagerPeekInstance.isWatchingCursor(this.mTextView) && path2 != null) {
                path2.computeBounds(inputMethodState.mTmpRectF, true);
                float[] fArr = inputMethodState.mTmpOffset;
                fArr[1] = 0.0f;
                fArr[0] = 0.0f;
                canvas.getMatrix().mapPoints(inputMethodState.mTmpOffset);
                RectF rectF = inputMethodState.mTmpRectF;
                float[] fArr2 = inputMethodState.mTmpOffset;
                rectF.offset(fArr2[0], fArr2[1]);
                inputMethodState.mTmpRectF.offset(0.0f, i2);
                Rect rect = inputMethodState.mCursorRectInWindow;
                RectF rectF2 = inputMethodState.mTmpRectF;
                rect.set((int) (((double) rectF2.left) + 0.5d), (int) (((double) rectF2.top) + 0.5d), (int) (((double) rectF2.right) + 0.5d), (int) (((double) rectF2.bottom) + 0.5d));
                TextView textView = this.mTextView;
                Rect rect2 = inputMethodState.mCursorRectInWindow;
                inputMethodManagerPeekInstance.updateCursor(textView, rect2.left, rect2.top, rect2.right, rect2.bottom);
            }
        }
        CorrectionHighlighter correctionHighlighter = this.mCorrectionHighlighter;
        if (correctionHighlighter != null) {
            correctionHighlighter.draw(canvas, i2);
        }
        if (path2 != null && selectionStart == selectionEnd && this.mCursorCount > 0) {
            drawCursor(canvas, i2);
            path2 = null;
        }
        Path path3 = path2;
        if (this.mTextView.canHaveDisplayList() && canvas.isHardwareAccelerated()) {
            drawHardwareAccelerated(canvas, layout, path3, paint, i2);
        } else {
            layout.draw(canvas, path3, paint, i2);
        }
    }

    public void onDrop(DragEvent dragEvent) {
        StringBuilder sb = new StringBuilder(ProxyProperties.LOCAL_EXCL_LIST);
        ClipData clipData = dragEvent.getClipData();
        int itemCount = clipData.getItemCount();
        for (int i2 = 0; i2 < itemCount; i2++) {
            sb.append(clipData.getItemAt(i2).coerceToStyledText(this.mTextView.getContext()));
        }
        int offsetForPosition = this.mTextView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        Object localState = dragEvent.getLocalState();
        DragLocalState dragLocalState = localState instanceof DragLocalState ? (DragLocalState) localState : null;
        boolean z2 = dragLocalState != null && dragLocalState.sourceTextView == this.mTextView;
        if (!z2 || offsetForPosition < dragLocalState.start || offsetForPosition >= dragLocalState.end) {
            int length = this.mTextView.getText().length();
            long jPrepareSpacesAroundPaste = this.mTextView.prepareSpacesAroundPaste(offsetForPosition, offsetForPosition, sb);
            int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(jPrepareSpacesAroundPaste);
            int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(jPrepareSpacesAroundPaste);
            Selection.setSelection((Spannable) this.mTextView.getText(), iUnpackRangeEndFromLong);
            this.mTextView.replaceText_internal(iUnpackRangeStartFromLong, iUnpackRangeEndFromLong, sb);
            if (z2) {
                int i3 = dragLocalState.start;
                int i4 = dragLocalState.end;
                if (iUnpackRangeEndFromLong <= i3) {
                    int length2 = this.mTextView.getText().length() - length;
                    i3 += length2;
                    i4 += length2;
                }
                this.mTextView.deleteText_internal(i3, i4);
                int iMax = Math.max(0, i3 - 1);
                int iMin = Math.min(this.mTextView.getText().length(), i3 + 1);
                int i5 = iMax + 1;
                if (iMin > i5) {
                    CharSequence transformedText = this.mTextView.getTransformedText(iMax, iMin);
                    if (Character.isSpaceChar(transformedText.charAt(0)) && Character.isSpaceChar(transformedText.charAt(1))) {
                        this.mTextView.deleteText_internal(iMax, i5);
                    }
                }
            }
        }
    }

    public void onFocusChanged(boolean z2, int i2) {
        this.mShowCursor = SystemClock.uptimeMillis();
        ensureEndedBatchEdit();
        if (!z2) {
            if (this.mError != null) {
                hideError();
            }
            this.mTextView.onEndBatchEdit();
            TextView textView = this.mTextView;
            if (textView instanceof ExtractEditText) {
                int selectionStart = textView.getSelectionStart();
                int selectionEnd = this.mTextView.getSelectionEnd();
                hideControllers();
                Selection.setSelection((Spannable) this.mTextView.getText(), selectionStart, selectionEnd);
            } else {
                if (this.mTemporaryDetach) {
                    this.mPreserveDetachedSelection = true;
                }
                hideControllers();
                if (this.mTemporaryDetach) {
                    this.mPreserveDetachedSelection = false;
                }
                downgradeEasyCorrectionSpans();
            }
            SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
            if (selectionModifierCursorController != null) {
                selectionModifierCursorController.resetTouchOffsets();
                return;
            }
            return;
        }
        int selectionStart2 = this.mTextView.getSelectionStart();
        int selectionEnd2 = this.mTextView.getSelectionEnd();
        this.mCreatedWithASelection = this.mFrozenWithFocus && this.mTextView.hasSelection() && !(this.mSelectAllOnFocus && selectionStart2 == 0 && selectionEnd2 == this.mTextView.getText().length());
        if (!this.mFrozenWithFocus || selectionStart2 < 0 || selectionEnd2 < 0) {
            int lastTapPosition = getLastTapPosition();
            if (lastTapPosition >= 0) {
                Selection.setSelection((Spannable) this.mTextView.getText(), lastTapPosition);
            }
            MovementMethod movementMethod = this.mTextView.getMovementMethod();
            if (movementMethod != null) {
                TextView textView2 = this.mTextView;
                movementMethod.onTakeFocus(textView2, (Spannable) textView2.getText(), i2);
            }
            TextView textView3 = this.mTextView;
            if (((textView3 instanceof ExtractEditText) || this.mSelectionMoved) && selectionStart2 >= 0 && selectionEnd2 >= 0) {
                Selection.setSelection((Spannable) textView3.getText(), selectionStart2, selectionEnd2);
            }
            if (this.mSelectAllOnFocus) {
                this.mTextView.selectAllText();
            }
            this.mTouchFocusSelected = true;
        }
        this.mFrozenWithFocus = false;
        this.mSelectionMoved = false;
        if (this.mError != null) {
            showError();
        }
        makeBlink();
    }

    public void onLocaleChanged() {
        this.mWordIterator = null;
    }

    public void onScreenStateChanged(int i2) {
        if (i2 == 0) {
            suspendBlink();
        } else {
            if (i2 != 1) {
                return;
            }
            resumeBlink();
        }
    }

    public void onScrollChanged() {
        PositionListener positionListener = this.mPositionListener;
        if (positionListener != null) {
            positionListener.onScrollChanged();
        }
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        if (hasSelectionController()) {
            getSelectionController().onTouchEvent(motionEvent);
        }
        Runnable runnable = this.mShowSuggestionRunnable;
        if (runnable != null) {
            this.mTextView.removeCallbacks(runnable);
            this.mShowSuggestionRunnable = null;
        }
        if (motionEvent.getActionMasked() == 0) {
            this.mLastDownPositionX = motionEvent.getX();
            this.mLastDownPositionY = motionEvent.getY();
            this.mTouchFocusSelected = false;
            this.mIgnoreActionUpEvent = false;
        }
    }

    public void onTouchUpEvent(MotionEvent motionEvent) {
        boolean z2 = this.mSelectAllOnFocus && this.mTextView.didTouchFocusSelect();
        hideControllers();
        CharSequence text = this.mTextView.getText();
        if (z2 || text.length() <= 0) {
            return;
        }
        Selection.setSelection((Spannable) text, this.mTextView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY()));
        SpellChecker spellChecker = this.mSpellChecker;
        if (spellChecker != null) {
            spellChecker.onSelectionChanged();
        }
        if (extractedTextModeWillBeStarted()) {
            return;
        }
        if (isCursorInsideEasyCorrectionSpan()) {
            Runnable runnable = new Runnable() { // from class: android.widget.Editor.1
                @Override // java.lang.Runnable
                public void run() {
                    Editor.this.showSuggestions();
                }
            };
            this.mShowSuggestionRunnable = runnable;
            this.mTextView.postDelayed(runnable, ViewConfiguration.getDoubleTapTimeout());
        } else if (hasInsertionController()) {
            getInsertionController().show();
        }
    }

    public void onWindowFocusChanged(boolean z2) {
        if (z2) {
            Blink blink = this.mBlink;
            if (blink != null) {
                blink.uncancel();
                makeBlink();
                return;
            }
            return;
        }
        Blink blink2 = this.mBlink;
        if (blink2 != null) {
            blink2.cancel();
        }
        InputContentType inputContentType = this.mInputContentType;
        if (inputContentType != null) {
            inputContentType.enterDown = false;
        }
        hideControllers();
        SuggestionsPopupWindow suggestionsPopupWindow = this.mSuggestionsPopupWindow;
        if (suggestionsPopupWindow != null) {
            suggestionsPopupWindow.onParentLostFocus();
        }
        ensureEndedBatchEdit();
    }

    public boolean performLongClick(boolean z2) {
        boolean z3 = true;
        if (!z2 && !isPositionOnText(this.mLastDownPositionX, this.mLastDownPositionY) && this.mInsertionControllerEnabled) {
            int offsetForPosition = this.mTextView.getOffsetForPosition(this.mLastDownPositionX, this.mLastDownPositionY);
            stopSelectionActionMode();
            Selection.setSelection((Spannable) this.mTextView.getText(), offsetForPosition);
            getInsertionController().showWithActionPopup();
            z2 = true;
        }
        if (z2 || this.mSelectionActionMode == null) {
            z3 = z2;
        } else if (touchPositionIsInSelection()) {
            int selectionStart = this.mTextView.getSelectionStart();
            int selectionEnd = this.mTextView.getSelectionEnd();
            CharSequence transformedText = this.mTextView.getTransformedText(selectionStart, selectionEnd);
            this.mTextView.startDrag(ClipData.newPlainText(null, transformedText), getTextThumbnailBuilder(transformedText), new DragLocalState(this.mTextView, selectionStart, selectionEnd), 0);
            stopSelectionActionMode();
        } else {
            getSelectionController().hide();
            selectCurrentWord();
            getSelectionController().show();
        }
        return !z3 ? startSelectionActionMode() : z3;
    }

    public void prepareCursorControllers() {
        int i2;
        ViewGroup.LayoutParams layoutParams = this.mTextView.getRootView().getLayoutParams();
        boolean z2 = ((layoutParams instanceof WindowManager.LayoutParams) && ((i2 = ((WindowManager.LayoutParams) layoutParams).type) < 1000 || i2 > 1999)) && this.mTextView.getLayout() != null;
        this.mInsertionControllerEnabled = z2 && isCursorVisible();
        this.mSelectionControllerEnabled = z2 && this.mTextView.textCanBeSelected();
        if (!this.mInsertionControllerEnabled) {
            hideInsertionPointCursorController();
            InsertionPointCursorController insertionPointCursorController = this.mInsertionPointCursorController;
            if (insertionPointCursorController != null) {
                insertionPointCursorController.onDetached();
                this.mInsertionPointCursorController = null;
            }
        }
        if (this.mSelectionControllerEnabled) {
            return;
        }
        stopSelectionActionMode();
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.onDetached();
            this.mSelectionModifierCursorController = null;
        }
    }

    public boolean reportExtractedText() {
        boolean z2;
        InputMethodManager inputMethodManagerPeekInstance;
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null && ((z2 = inputMethodState.mContentChanged) || inputMethodState.mSelectionModeChanged)) {
            inputMethodState.mContentChanged = false;
            inputMethodState.mSelectionModeChanged = false;
            ExtractedTextRequest extractedTextRequest = inputMethodState.mExtractedTextRequest;
            if (extractedTextRequest != null && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null) {
                if (inputMethodState.mChangedStart < 0 && !z2) {
                    inputMethodState.mChangedStart = -2;
                }
                if (extractTextInternal(extractedTextRequest, inputMethodState.mChangedStart, inputMethodState.mChangedEnd, inputMethodState.mChangedDelta, inputMethodState.mExtractedText)) {
                    inputMethodManagerPeekInstance.updateExtractedText(this.mTextView, extractedTextRequest.token, inputMethodState.mExtractedText);
                    inputMethodState.mChangedStart = -1;
                    inputMethodState.mChangedEnd = -1;
                    inputMethodState.mChangedDelta = 0;
                    inputMethodState.mContentChanged = false;
                    return true;
                }
            }
        }
        return false;
    }

    public void sendOnTextChanged(int i2, int i3) {
        updateSpellCheckSpans(i2, i3 + i2, false);
        hideCursorControllers();
    }

    public void setError(CharSequence charSequence, Drawable drawable) {
        CharSequence charSequenceStringOrSpannedString = TextUtils.stringOrSpannedString(charSequence);
        this.mError = charSequenceStringOrSpannedString;
        this.mErrorWasChanged = true;
        if (charSequenceStringOrSpannedString != null) {
            setErrorIcon(drawable);
            if (this.mTextView.isFocused()) {
                showError();
                return;
            }
            return;
        }
        setErrorIcon(null);
        ErrorPopup errorPopup = this.mErrorPopup;
        if (errorPopup != null) {
            if (errorPopup.isShowing()) {
                this.mErrorPopup.dismiss();
            }
            this.mErrorPopup = null;
        }
        this.mShowErrorAfterAttach = false;
    }

    public void setFrame() {
        ErrorPopup errorPopup = this.mErrorPopup;
        if (errorPopup != null) {
            chooseSize(this.mErrorPopup, this.mError, (TextView) errorPopup.getContentView());
            this.mErrorPopup.update(this.mTextView, getErrorX(), getErrorY(), this.mErrorPopup.getWidth(), this.mErrorPopup.getHeight());
        }
    }

    public void showSuggestions() {
        if (this.mSuggestionsPopupWindow == null) {
            this.mSuggestionsPopupWindow = new SuggestionsPopupWindow();
        }
        hideControllers();
        this.mSuggestionsPopupWindow.show();
    }

    public boolean startSelectionActionMode() {
        InputMethodManager inputMethodManagerPeekInstance;
        if (this.mSelectionActionMode != null) {
            return false;
        }
        if (!canSelectText() || !this.mTextView.requestFocus()) {
            Log.w(TextView.LOG_TAG, "TextView does not support text selection. Action mode cancelled.");
            return false;
        }
        if (!this.mTextView.hasSelection() && !selectCurrentWord()) {
            return false;
        }
        boolean zExtractedTextModeWillBeStarted = extractedTextModeWillBeStarted();
        if (!zExtractedTextModeWillBeStarted) {
            this.mSelectionActionMode = this.mTextView.startActionMode(new SelectionActionModeCallback());
        }
        boolean z2 = this.mSelectionActionMode != null || zExtractedTextModeWillBeStarted;
        if (z2 && !this.mTextView.isTextSelectable() && this.mShowSoftInputOnFocus && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null) {
            inputMethodManagerPeekInstance.showSoftInput(this.mTextView, 0, null);
        }
        return z2;
    }

    public void stopSelectionActionMode() {
        ActionMode actionMode = this.mSelectionActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    public void updateCursorsPositions() {
        TextView textView = this.mTextView;
        if (textView.mCursorDrawableRes == 0) {
            this.mCursorCount = 0;
            return;
        }
        Layout layout = textView.getLayout();
        Layout hintLayout = this.mTextView.getHintLayout();
        int selectionStart = this.mTextView.getSelectionStart();
        int lineForOffset = layout.getLineForOffset(selectionStart);
        int lineTop = layout.getLineTop(lineForOffset);
        int lineTop2 = layout.getLineTop(lineForOffset + 1);
        int i2 = layout.isLevelBoundary(selectionStart) ? 2 : 1;
        this.mCursorCount = i2;
        int i3 = i2 == 2 ? (lineTop + lineTop2) >> 1 : lineTop2;
        boolean zShouldClampCursor = layout.shouldClampCursor(lineForOffset);
        updateCursorPosition(0, lineTop, i3, getPrimaryHorizontal(layout, hintLayout, selectionStart, zShouldClampCursor));
        if (this.mCursorCount == 2) {
            updateCursorPosition(1, i3, lineTop2, layout.getSecondaryHorizontal(selectionStart, zShouldClampCursor));
        }
    }

    public abstract class PinnedPopupWindow implements TextViewPositionListener {
        public ViewGroup mContentView;
        public PopupWindow mPopupWindow;
        public int mPositionX;
        public int mPositionY;

        public PinnedPopupWindow() {
            createPopupWindow();
            this.mPopupWindow.setWindowLayoutType(1002);
            this.mPopupWindow.setWidth(-2);
            this.mPopupWindow.setHeight(-2);
            initContentView();
            this.mContentView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.mPopupWindow.setContentView(this.mContentView);
        }

        private void computeLocalPosition() {
            measureContent();
            int measuredWidth = this.mContentView.getMeasuredWidth();
            int textOffset = getTextOffset();
            int primaryHorizontal = (int) (Editor.this.mTextView.getLayout().getPrimaryHorizontal(textOffset) - (measuredWidth / 2.0f));
            this.mPositionX = primaryHorizontal;
            this.mPositionX = primaryHorizontal + Editor.this.mTextView.viewportToContentHorizontalOffset();
            int verticalLocalPosition = getVerticalLocalPosition(Editor.this.mTextView.getLayout().getLineForOffset(textOffset));
            this.mPositionY = verticalLocalPosition;
            this.mPositionY = verticalLocalPosition + Editor.this.mTextView.viewportToContentVerticalOffset();
        }

        private void updatePosition(int i2, int i3) {
            int i4 = i2 + this.mPositionX;
            int iClipVertically = clipVertically(i3 + this.mPositionY);
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            int iMax = Math.max(0, Math.min(displayMetrics.widthPixels - this.mContentView.getMeasuredWidth(), i4));
            if (isShowing()) {
                this.mPopupWindow.update(iMax, iClipVertically, -1, -1);
            } else {
                this.mPopupWindow.showAtLocation(Editor.this.mTextView, 0, iMax, iClipVertically);
            }
        }

        public abstract int clipVertically(int i2);

        public abstract void createPopupWindow();

        public abstract int getTextOffset();

        public abstract int getVerticalLocalPosition(int i2);

        public void hide() {
            this.mPopupWindow.dismiss();
            Editor.this.getPositionListener().removeSubscriber(this);
        }

        public abstract void initContentView();

        public boolean isShowing() {
            return this.mPopupWindow.isShowing();
        }

        public void measureContent() {
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            this.mContentView.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        }

        public void show() {
            Editor.this.getPositionListener().addSubscriber(this, false);
            computeLocalPosition();
            PositionListener positionListener = Editor.this.getPositionListener();
            updatePosition(positionListener.getPositionX(), positionListener.getPositionY());
        }

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i2, int i3, boolean z2, boolean z3) {
            if (isShowing() && Editor.this.isOffsetVisible(getTextOffset())) {
                if (z3) {
                    computeLocalPosition();
                }
                updatePosition(i2, i3);
                return;
            }
            hide();
        }
    }

    public void invalidateTextDisplayList() {
        if (this.mTextDisplayLists == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            DisplayList[] displayListArr = this.mTextDisplayLists;
            if (i2 >= displayListArr.length) {
                return;
            }
            if (displayListArr[i2] != null) {
                displayListArr[i2].clear();
            }
            i2++;
        }
    }
}
