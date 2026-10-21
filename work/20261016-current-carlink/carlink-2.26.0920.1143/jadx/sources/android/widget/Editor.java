package android.widget;

import android.app.PendingIntent;
import android.app.m;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.Intent;
import android.content.UndoManager;
import android.content.UndoOperation;
import android.content.UndoOwner;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.metrics.LogMaker;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ParcelableParcel;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.DynamicLayout;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.Layout;
import android.text.ParcelableSpan;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.text.method.MovementMethod;
import android.text.method.WordIterator;
import android.text.style.EasyEditSpan;
import android.text.style.SuggestionRangeSpan;
import android.text.style.SuggestionSpan;
import android.text.style.TextAppearanceSpan;
import android.text.style.URLSpan;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.DisplayListCanvas;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.RenderNode;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassification;
import com.android.internal.R;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.transition.EpicenterTranslateClipReveal;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Editor {
    static final int BLINK = 500;
    private static final boolean DEBUG_UNDO = false;
    private static final int DRAG_SHADOW_MAX_TEXT_LENGTH = 20;
    static final int EXTRACT_NOTHING = -2;
    static final int EXTRACT_UNKNOWN = -1;
    public static final int HANDLE_TYPE_SELECTION_END = 1;
    public static final int HANDLE_TYPE_SELECTION_START = 0;
    private static final float LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS = 0.5f;
    private static final int MENU_ITEM_ORDER_ASSIST = 0;
    private static final int MENU_ITEM_ORDER_AUTOFILL = 10;
    private static final int MENU_ITEM_ORDER_COPY = 5;
    private static final int MENU_ITEM_ORDER_CUT = 4;
    private static final int MENU_ITEM_ORDER_PASTE = 6;
    private static final int MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT = 11;
    private static final int MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START = 100;
    private static final int MENU_ITEM_ORDER_REDO = 3;
    private static final int MENU_ITEM_ORDER_REPLACE = 9;
    private static final int MENU_ITEM_ORDER_SELECT_ALL = 8;
    private static final int MENU_ITEM_ORDER_SHARE = 7;
    private static final int MENU_ITEM_ORDER_UNDO = 2;
    private static final String TAG = "Editor";
    private static final int TAP_STATE_DOUBLE_TAP = 2;
    private static final int TAP_STATE_FIRST_TAP = 1;
    private static final int TAP_STATE_INITIAL = 0;
    private static final int TAP_STATE_TRIPLE_CLICK = 3;
    private static final String UNDO_OWNER_TAG = "Editor";
    private static final int UNSET_LINE = -1;
    private static final int UNSET_X_VALUE = -1;
    boolean mAllowUndo;
    private Blink mBlink;
    private float mContextMenuAnchorX;
    private float mContextMenuAnchorY;
    private CorrectionHighlighter mCorrectionHighlighter;
    boolean mCreatedWithASelection;
    private final CursorAnchorInfoNotifier mCursorAnchorInfoNotifier;
    int mCursorCount;
    final Drawable[] mCursorDrawable;
    boolean mCursorVisible;
    ActionMode.Callback mCustomInsertionActionModeCallback;
    ActionMode.Callback mCustomSelectionActionModeCallback;
    boolean mDiscardNextActionUp;
    CharSequence mError;
    private ErrorPopup mErrorPopup;
    boolean mErrorWasChanged;
    boolean mFrozenWithFocus;
    private final boolean mHapticTextHandleEnabled;
    boolean mIgnoreActionUpEvent;
    boolean mInBatchEditControllers;
    InputContentType mInputContentType;
    InputMethodState mInputMethodState;
    int mInputType;
    private Runnable mInsertionActionModeRunnable;
    private boolean mInsertionControllerEnabled;
    private InsertionPointCursorController mInsertionPointCursorController;
    boolean mIsBeingLongClicked;
    boolean mIsInsertionActionModeStartPending;
    KeyListener mKeyListener;
    private int mLastButtonState;
    private float mLastDownPositionX;
    private float mLastDownPositionY;
    private long mLastTouchUpTime;
    private final MetricsLogger mMetricsLogger;
    private final MenuItem.OnMenuItemClickListener mOnContextMenuItemClickListener;
    private PositionListener mPositionListener;
    private boolean mPreserveSelection;
    final ProcessTextIntentActionsHandler mProcessTextIntentActionsHandler;
    private boolean mRestartActionModeOnNextRefresh;
    boolean mSelectAllOnFocus;
    private Drawable mSelectHandleCenter;
    private Drawable mSelectHandleLeft;
    private Drawable mSelectHandleRight;
    private SelectionActionModeHelper mSelectionActionModeHelper;
    private boolean mSelectionControllerEnabled;
    SelectionModifierCursorController mSelectionModifierCursorController;
    boolean mSelectionMoved;
    long mShowCursor;
    private boolean mShowErrorAfterAttach;
    private final Runnable mShowFloatingToolbar;
    boolean mShowSoftInputOnFocus;
    private Runnable mShowSuggestionRunnable;
    private SpanController mSpanController;
    SpellChecker mSpellChecker;
    private final SuggestionHelper mSuggestionHelper;
    SuggestionRangeSpan mSuggestionRangeSpan;
    private SuggestionsPopupWindow mSuggestionsPopupWindow;
    private int mTapState;
    private Rect mTempRect;
    private ActionMode mTextActionMode;
    boolean mTextIsSelectable;
    private TextRenderNode[] mTextRenderNodes;
    private final TextView mTextView;
    boolean mTouchFocusSelected;
    final UndoInputFilter mUndoInputFilter;
    private final UndoManager mUndoManager;
    private UndoOwner mUndoOwner;
    private boolean mUpdateWordIteratorText;
    private WordIterator mWordIterator;
    private WordIterator mWordIteratorWithText;

    public class Blink implements Runnable {
        private boolean mCancelled;

        private Blink() {
        }

        public void cancel() {
            if (this.mCancelled) {
                return;
            }
            Editor.this.mTextView.removeCallbacks(this);
            this.mCancelled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCancelled) {
                return;
            }
            Editor.this.mTextView.removeCallbacks(this);
            if (Editor.this.shouldBlink()) {
                if (Editor.this.mTextView.getLayout() != null) {
                    Editor.this.mTextView.invalidateCursorPath();
                }
                Editor.this.mTextView.postDelayed(this, 500L);
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
            int verticalOffset = Editor.this.mTextView.getVerticalOffset(true) + Editor.this.mTextView.getExtendedPaddingTop();
            if (z2) {
                TextView textView = Editor.this.mTextView;
                RectF rectF = this.mTempRectF;
                textView.postInvalidateOnAnimation(((int) rectF.left) + compoundPaddingLeft, ((int) rectF.top) + verticalOffset, compoundPaddingLeft + ((int) rectF.right), verticalOffset + ((int) rectF.bottom));
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
            this.mEnd = correctionInfo.getNewText().length() + offset;
            this.mFadingStartTime = SystemClock.uptimeMillis();
            if (this.mStart < 0 || this.mEnd < 0) {
                stopAnimation();
            }
        }
    }

    public final class CursorAnchorInfoNotifier implements TextViewPositionListener {
        final CursorAnchorInfo.Builder mSelectionInfoBuilder;
        final int[] mTmpIntOffset;
        final Matrix mViewToScreenMatrix;

        private CursorAnchorInfoNotifier() {
            this.mSelectionInfoBuilder = new CursorAnchorInfo.Builder();
            this.mTmpIntOffset = new int[2];
            this.mViewToScreenMatrix = new Matrix();
        }

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i2, int i3, boolean z2, boolean z3) {
            InputMethodManager inputMethodManagerPeekInstance;
            Layout layout;
            int i4;
            InputMethodState inputMethodState = Editor.this.mInputMethodState;
            if (inputMethodState == null || inputMethodState.mBatchEditNesting > 0 || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null || !inputMethodManagerPeekInstance.isActive(Editor.this.mTextView) || !inputMethodManagerPeekInstance.isCursorAnchorInfoEnabled() || (layout = Editor.this.mTextView.getLayout()) == null) {
                return;
            }
            CursorAnchorInfo.Builder builder = this.mSelectionInfoBuilder;
            builder.reset();
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            builder.setSelectionRange(selectionStart, Editor.this.mTextView.getSelectionEnd());
            this.mViewToScreenMatrix.set(Editor.this.mTextView.getMatrix());
            Editor.this.mTextView.getLocationOnScreen(this.mTmpIntOffset);
            Matrix matrix = this.mViewToScreenMatrix;
            int[] iArr = this.mTmpIntOffset;
            matrix.postTranslate(iArr[0], iArr[1]);
            builder.setMatrix(this.mViewToScreenMatrix);
            float fViewportToContentHorizontalOffset = Editor.this.mTextView.viewportToContentHorizontalOffset();
            float fViewportToContentVerticalOffset = Editor.this.mTextView.viewportToContentVerticalOffset();
            CharSequence text = Editor.this.mTextView.getText();
            if (text instanceof Spannable) {
                Spannable spannable = (Spannable) text;
                int composingSpanStart = BaseInputConnection.getComposingSpanStart(spannable);
                int composingSpanEnd = BaseInputConnection.getComposingSpanEnd(spannable);
                if (composingSpanEnd < composingSpanStart) {
                    i4 = composingSpanStart;
                    composingSpanStart = composingSpanEnd;
                } else {
                    i4 = composingSpanEnd;
                }
                if (composingSpanStart >= 0 && composingSpanStart < i4) {
                    builder.setComposingText(composingSpanStart, text.subSequence(composingSpanStart, i4));
                    Editor.this.mTextView.populateCharacterBounds(builder, composingSpanStart, i4, fViewportToContentHorizontalOffset, fViewportToContentVerticalOffset);
                }
            }
            if (selectionStart >= 0) {
                int lineForOffset = layout.getLineForOffset(selectionStart);
                float primaryHorizontal = layout.getPrimaryHorizontal(selectionStart) + fViewportToContentHorizontalOffset;
                float lineTop = layout.getLineTop(lineForOffset) + fViewportToContentVerticalOffset;
                float lineBaseline = layout.getLineBaseline(lineForOffset) + fViewportToContentVerticalOffset;
                float lineBottom = layout.getLineBottom(lineForOffset) + fViewportToContentVerticalOffset;
                boolean zIsPositionVisible = Editor.this.mTextView.isPositionVisible(primaryHorizontal, lineTop);
                boolean zIsPositionVisible2 = Editor.this.mTextView.isPositionVisible(primaryHorizontal, lineBottom);
                int i5 = (zIsPositionVisible || zIsPositionVisible2) ? 1 : 0;
                if (!zIsPositionVisible || !zIsPositionVisible2) {
                    i5 |= 2;
                }
                builder.setInsertionMarkerLocation(primaryHorizontal, lineTop, lineBaseline, lineBottom, layout.isRtlCharAt(selectionStart) ? i5 | 4 : i5);
            }
            inputMethodManagerPeekInstance.updateCursorAnchorInfo(Editor.this.mTextView, builder.build());
        }
    }

    public interface CursorController extends ViewTreeObserver.OnTouchModeChangeListener {
        void hide();

        boolean isActive();

        boolean isCursorBeingModified();

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
        private static final int POPUP_TEXT_LAYOUT = 17367285;
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
            PopupWindow popupWindow = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, 16843464);
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
            linearLayout.setBackgroundResource(R.drawable.text_edit_side_paste_window);
            LayoutInflater layoutInflater = (LayoutInflater) Editor.this.mTextView.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
            TextView textView = (TextView) layoutInflater.inflate(17367285, (ViewGroup) null);
            this.mDeleteTextView = textView;
            textView.setLayoutParams(layoutParams);
            this.mDeleteTextView.setText(R.string.delete);
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
            int resourceId = getResourceId(0, 290);
            this.mPopupInlineErrorBackgroundId = resourceId;
            textView.setBackgroundResource(resourceId);
        }

        private int getResourceId(int i2, int i3) {
            if (i2 != 0) {
                return i2;
            }
            TypedArray typedArrayObtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(android.R.styleable.Theme);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(i3, 0);
            typedArrayObtainStyledAttributes.recycle();
            return resourceId;
        }

        public void fixDirection(boolean z2) {
            this.mAbove = z2;
            if (z2) {
                this.mPopupInlineErrorAboveBackgroundId = getResourceId(this.mPopupInlineErrorAboveBackgroundId, 289);
            } else {
                this.mPopupInlineErrorBackgroundId = getResourceId(this.mPopupInlineErrorBackgroundId, 290);
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

    @Retention(RetentionPolicy.SOURCE)
    public @interface HandleType {
    }

    public abstract class HandleView extends View implements TextViewPositionListener {
        private static final int HISTORY_SIZE = 5;
        private static final int TOUCH_UP_FILTER_DELAY_AFTER = 150;
        private static final int TOUCH_UP_FILTER_DELAY_BEFORE = 350;
        private final PopupWindow mContainer;
        protected Drawable mDrawable;
        protected Drawable mDrawableLtr;
        protected Drawable mDrawableRtl;
        protected int mHorizontalGravity;
        protected int mHotspotX;
        private float mIdealVerticalOffset;
        private boolean mIsDragging;
        private int mLastParentX;
        private int mLastParentXOnScreen;
        private int mLastParentY;
        private int mLastParentYOnScreen;
        private int mMinSize;
        private int mNumberPreviousOffsets;
        private boolean mPositionHasChanged;
        private int mPositionX;
        private int mPositionY;
        protected int mPrevLine;
        protected int mPreviousLineTouched;
        protected int mPreviousOffset;
        private int mPreviousOffsetIndex;
        private final int[] mPreviousOffsets;
        private final long[] mPreviousOffsetsTimes;
        private float mTouchOffsetY;
        private float mTouchToWindowOffsetX;
        private float mTouchToWindowOffsetY;

        private void addPositionToTouchUpFilter(int i2) {
            int i3 = (this.mPreviousOffsetIndex + 1) % 5;
            this.mPreviousOffsetIndex = i3;
            this.mPreviousOffsets[i3] = i2;
            this.mPreviousOffsetsTimes[i3] = SystemClock.uptimeMillis();
            this.mNumberPreviousOffsets++;
        }

        private void filterOnTouchUp(boolean z2) {
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
            positionAtCursorOffset(this.mPreviousOffsets[i2], false, z2);
        }

        private int getHorizontalOffset() {
            int preferredWidth = getPreferredWidth();
            int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
            int i2 = this.mHorizontalGravity;
            if (i2 != 3) {
                return i2 != 5 ? (preferredWidth - intrinsicWidth) / 2 : preferredWidth - intrinsicWidth;
            }
            return 0;
        }

        private int getPreferredHeight() {
            return Math.max(this.mDrawable.getIntrinsicHeight(), this.mMinSize);
        }

        private int getPreferredWidth() {
            return Math.max(this.mDrawable.getIntrinsicWidth(), this.mMinSize);
        }

        private boolean isVisible() {
            if (this.mIsDragging) {
                return true;
            }
            if (Editor.this.mTextView.isInBatchEditMode()) {
                return false;
            }
            return Editor.this.mTextView.isPositionVisible(this.mPositionX + this.mHotspotX + getHorizontalOffset(), this.mPositionY);
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

        public int getCursorHorizontalPosition(Layout layout, int i2) {
            return (int) (getHorizontal(layout, i2) - 0.5f);
        }

        public int getCursorOffset() {
            return 0;
        }

        public float getHorizontal(Layout layout, int i2) {
            return layout.getPrimaryHorizontal(i2);
        }

        public abstract int getHorizontalGravity(boolean z2);

        public abstract int getHotspotX(Drawable drawable, boolean z2);

        public float getIdealVerticalOffset() {
            return this.mIdealVerticalOffset;
        }

        public int getOffsetAtCoordinate(Layout layout, int i2, float f2) {
            return Editor.this.mTextView.getOffsetAtCoordinate(i2, f2);
        }

        public void hide() {
            dismiss();
            Editor.this.getPositionListener().removeSubscriber(this);
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            if (isShowing()) {
                positionAtCursorOffset(getCurrentCursorOffset(), true, false);
            }
        }

        public boolean isAtRtlRun(Layout layout, int i2) {
            return layout.isRtlCharAt(i2);
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
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
            int horizontalOffset = getHorizontalOffset();
            Drawable drawable = this.mDrawable;
            drawable.setBounds(horizontalOffset, 0, intrinsicWidth + horizontalOffset, drawable.getIntrinsicHeight());
            this.mDrawable.draw(canvas);
        }

        public void onHandleMoved() {
        }

        @Override // android.view.View
        public void onMeasure(int i2, int i3) {
            setMeasuredDimension(getPreferredWidth(), getPreferredHeight());
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            Editor.this.updateFloatingToolbarVisibility(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                startTouchUpFilter(getCurrentCursorOffset());
                PositionListener positionListener = Editor.this.getPositionListener();
                this.mLastParentX = positionListener.getPositionX();
                this.mLastParentY = positionListener.getPositionY();
                this.mLastParentXOnScreen = positionListener.getPositionXOnScreen();
                this.mLastParentYOnScreen = positionListener.getPositionYOnScreen();
                float rawX = (motionEvent.getRawX() - this.mLastParentXOnScreen) + this.mLastParentX;
                float rawY = (motionEvent.getRawY() - this.mLastParentYOnScreen) + this.mLastParentY;
                this.mTouchToWindowOffsetX = rawX - this.mPositionX;
                this.mTouchToWindowOffsetY = rawY - this.mPositionY;
                this.mIsDragging = true;
                this.mPreviousLineTouched = -1;
            } else if (actionMasked == 1) {
                filterOnTouchUp(motionEvent.isFromSource(4098));
                this.mIsDragging = false;
                updateDrawable();
            } else if (actionMasked == 2) {
                float rawX2 = (motionEvent.getRawX() - this.mLastParentXOnScreen) + this.mLastParentX;
                float rawY2 = motionEvent.getRawY() - this.mLastParentYOnScreen;
                int i2 = this.mLastParentY;
                float f2 = rawY2 + i2;
                float f3 = this.mTouchToWindowOffsetY - i2;
                float f4 = (f2 - this.mPositionY) - i2;
                float f5 = this.mIdealVerticalOffset;
                this.mTouchToWindowOffsetY = (f3 < f5 ? Math.max(Math.min(f4, f5), f3) : Math.min(Math.max(f4, f5), f3)) + this.mLastParentY;
                updatePosition((rawX2 - this.mTouchToWindowOffsetX) + this.mHotspotX + getHorizontalOffset(), (f2 - this.mTouchToWindowOffsetY) + this.mTouchOffsetY, motionEvent.isFromSource(4098));
            } else if (actionMasked == 3) {
                this.mIsDragging = false;
                updateDrawable();
            }
            return true;
        }

        public void positionAtCursorOffset(int i2, boolean z2, boolean z3) {
            if (Editor.this.mTextView.getLayout() == null) {
                Editor.this.prepareCursorControllers();
                return;
            }
            Layout layout = Editor.this.mTextView.getLayout();
            boolean z4 = i2 != this.mPreviousOffset;
            if (z4 || z2) {
                if (z4) {
                    updateSelection(i2);
                    if (z3 && Editor.this.mHapticTextHandleEnabled) {
                        Editor.this.mTextView.performHapticFeedback(9);
                    }
                    addPositionToTouchUpFilter(i2);
                }
                int lineForOffset = layout.getLineForOffset(i2);
                this.mPrevLine = lineForOffset;
                this.mPositionX = getCursorOffset() + ((getCursorHorizontalPosition(layout, i2) - this.mHotspotX) - getHorizontalOffset());
                this.mPositionY = layout.getLineBottom(lineForOffset);
                this.mPositionX = Editor.this.mTextView.viewportToContentHorizontalOffset() + this.mPositionX;
                this.mPositionY = Editor.this.mTextView.viewportToContentVerticalOffset() + this.mPositionY;
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
            positionAtCursorOffset(getCurrentCursorOffset(), false, false);
        }

        public void updateDrawable() {
            Layout layout;
            if (this.mIsDragging || (layout = Editor.this.mTextView.getLayout()) == null) {
                return;
            }
            int currentCursorOffset = getCurrentCursorOffset();
            boolean zIsAtRtlRun = isAtRtlRun(layout, currentCursorOffset);
            Drawable drawable = this.mDrawable;
            Drawable drawable2 = zIsAtRtlRun ? this.mDrawableRtl : this.mDrawableLtr;
            this.mDrawable = drawable2;
            this.mHotspotX = getHotspotX(drawable2, zIsAtRtlRun);
            this.mHorizontalGravity = getHorizontalGravity(zIsAtRtlRun);
            if (drawable == this.mDrawable || !isShowing()) {
                return;
            }
            int cursorOffset = getCursorOffset() + ((getCursorHorizontalPosition(layout, currentCursorOffset) - this.mHotspotX) - getHorizontalOffset());
            this.mPositionX = cursorOffset;
            this.mPositionX = Editor.this.mTextView.viewportToContentHorizontalOffset() + cursorOffset;
            this.mPositionHasChanged = true;
            updatePosition(this.mLastParentX, this.mLastParentY, false, false);
            postInvalidate();
        }

        public abstract void updatePosition(float f2, float f3, boolean z2);

        @Override // android.widget.Editor.TextViewPositionListener
        public void updatePosition(int i2, int i3, boolean z2, boolean z3) {
            positionAtCursorOffset(getCurrentCursorOffset(), z3, false);
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
                    int[] iArr = {this.mPositionX + this.mHotspotX + getHorizontalOffset(), this.mPositionY};
                    Editor.this.mTextView.transformFromViewToWindowSpace(iArr);
                    iArr[0] = iArr[0] - (this.mHotspotX + getHorizontalOffset());
                    if (isShowing()) {
                        this.mContainer.update(iArr[0], iArr[1], -1, -1);
                    } else {
                        this.mContainer.showAtLocation(Editor.this.mTextView, 0, iArr[0], iArr[1]);
                    }
                } else if (isShowing()) {
                    dismiss();
                }
                this.mPositionHasChanged = false;
            }
        }

        public abstract void updateSelection(int i2);

        private HandleView(Drawable drawable, Drawable drawable2, int i2) {
            super(Editor.this.mTextView.getContext());
            this.mPreviousOffset = -1;
            this.mPositionHasChanged = true;
            this.mPrevLine = -1;
            this.mPreviousLineTouched = -1;
            this.mPreviousOffsetsTimes = new long[5];
            this.mPreviousOffsets = new int[5];
            this.mPreviousOffsetIndex = 0;
            this.mNumberPreviousOffsets = 0;
            setId(i2);
            PopupWindow popupWindow = new PopupWindow(Editor.this.mTextView.getContext(), (AttributeSet) null, 16843464);
            this.mContainer = popupWindow;
            popupWindow.setSplitTouchEnabled(true);
            popupWindow.setClippingEnabled(false);
            popupWindow.setWindowLayoutType(1002);
            popupWindow.setWidth(-2);
            popupWindow.setHeight(-2);
            popupWindow.setContentView(this);
            this.mDrawableLtr = drawable;
            this.mDrawableRtl = drawable2;
            this.mMinSize = Editor.this.mTextView.getContext().getResources().getDimensionPixelSize(R.dimen.text_handle_min_size);
            updateDrawable();
            float preferredHeight = getPreferredHeight();
            this.mTouchOffsetY = (-0.3f) * preferredHeight;
            this.mIdealVerticalOffset = preferredHeight * 0.7f;
        }
    }

    public static class InputContentType {
        boolean enterDown;
        Bundle extras;
        int imeActionId;
        CharSequence imeActionLabel;
        LocaleList imeHintLocales;
        int imeOptions = 0;
        TextView.OnEditorActionListener onEditorActionListener;
        String privateImeOptions;
    }

    public static class InputMethodState {
        int mBatchEditNesting;
        int mChangedDelta;
        int mChangedEnd;
        int mChangedStart;
        boolean mContentChanged;
        boolean mCursorChanged;
        final ExtractedText mExtractedText = new ExtractedText();
        ExtractedTextRequest mExtractedTextRequest;
        boolean mSelectionModeChanged;
    }

    public class InsertionHandleView extends HandleView {
        private static final int DELAY_BEFORE_HANDLE_FADES_OUT = 4000;
        private static final int RECENT_CUT_COPY_DURATION = 15000;
        private float mDownPositionX;
        private float mDownPositionY;
        private Runnable mHider;

        public InsertionHandleView(Drawable drawable) {
            super(drawable, drawable, R.id.insertion_handle);
        }

        private void hideAfterDelay() {
            if (this.mHider == null) {
                this.mHider = new Runnable() { // from class: android.widget.Editor.InsertionHandleView.2
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
        public int getCursorHorizontalPosition(Layout layout, int i2) {
            Editor editor = Editor.this;
            Drawable drawable = editor.mCursorCount > 0 ? editor.mCursorDrawable[0] : null;
            if (drawable != null) {
                return Editor.this.clampHorizontalPosition(drawable, getHorizontal(layout, i2)) + Editor.this.mTempRect.left;
            }
            return super.getCursorHorizontalPosition(layout, i2);
        }

        @Override // android.widget.Editor.HandleView
        public int getCursorOffset() {
            int cursorOffset = super.getCursorOffset();
            Editor editor = Editor.this;
            Drawable drawable = editor.mCursorCount > 0 ? editor.mCursorDrawable[0] : null;
            if (drawable == null) {
                return cursorOffset;
            }
            drawable.getPadding(editor.mTempRect);
            return m.b(drawable.getIntrinsicWidth() - Editor.this.mTempRect.left, Editor.this.mTempRect.right, 2, cursorOffset);
        }

        @Override // android.widget.Editor.HandleView
        public int getHorizontalGravity(boolean z2) {
            return 1;
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
                    float f2 = (rawY * rawY) + (rawX * rawX);
                    int scaledTouchSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledTouchSlop();
                    if (f2 < scaledTouchSlop * scaledTouchSlop) {
                        if (Editor.this.mTextActionMode != null) {
                            Editor.this.stopTextActionMode();
                        } else {
                            Editor.this.startInsertionActionMode();
                        }
                    }
                } else if (Editor.this.mTextActionMode != null) {
                    Editor.this.mTextActionMode.invalidateContentRect();
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
            long jUptimeMillis = SystemClock.uptimeMillis() - TextView.sLastCutCopyOrTextChangedTime;
            if (Editor.this.mInsertionActionModeRunnable != null && (Editor.this.mTapState == 2 || Editor.this.mTapState == 3 || Editor.this.isCursorInsideEasyCorrectionSpan())) {
                Editor.this.mTextView.removeCallbacks(Editor.this.mInsertionActionModeRunnable);
            }
            if (Editor.this.mTapState != 2 && Editor.this.mTapState != 3 && !Editor.this.isCursorInsideEasyCorrectionSpan() && jUptimeMillis < 15000 && Editor.this.mTextActionMode == null) {
                if (Editor.this.mInsertionActionModeRunnable == null) {
                    Editor.this.mInsertionActionModeRunnable = new Runnable() { // from class: android.widget.Editor.InsertionHandleView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Editor.this.startInsertionActionMode();
                        }
                    };
                }
                Editor.this.mTextView.postDelayed(Editor.this.mInsertionActionModeRunnable, ViewConfiguration.getDoubleTapTimeout() + 1);
            }
            hideAfterDelay();
        }

        @Override // android.widget.Editor.HandleView
        public void updatePosition(float f2, float f3, boolean z2) {
            Layout layout = Editor.this.mTextView.getLayout();
            int offsetAtCoordinate = -1;
            if (layout != null) {
                if (this.mPreviousLineTouched == -1) {
                    this.mPreviousLineTouched = Editor.this.mTextView.getLineAtCoordinate(f3);
                }
                int currentLineAdjustedForSlop = Editor.this.getCurrentLineAdjustedForSlop(layout, this.mPreviousLineTouched, f3);
                offsetAtCoordinate = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f2);
                this.mPreviousLineTouched = currentLineAdjustedForSlop;
            }
            positionAtCursorOffset(offsetAtCoordinate, false, z2);
            if (Editor.this.mTextActionMode != null) {
                Editor.this.invalidateActionMode();
            }
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

        /* JADX INFO: Access modifiers changed from: private */
        public InsertionHandleView getHandle() {
            if (Editor.this.mSelectHandleCenter == null) {
                Editor editor = Editor.this;
                editor.mSelectHandleCenter = editor.mTextView.getContext().getDrawable(Editor.this.mTextView.mTextSelectHandleRes);
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

        public void invalidateHandle() {
            InsertionHandleView insertionHandleView = this.mHandle;
            if (insertionHandleView != null) {
                insertionHandleView.invalidate();
            }
        }

        @Override // android.widget.Editor.CursorController
        public boolean isActive() {
            InsertionHandleView insertionHandleView = this.mHandle;
            return insertionHandleView != null && insertionHandleView.isShowing();
        }

        @Override // android.widget.Editor.CursorController
        public boolean isCursorBeingModified() {
            InsertionHandleView insertionHandleView = this.mHandle;
            return insertionHandleView != null && insertionHandleView.isDragging();
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
            SelectionModifierCursorController selectionModifierCursorController = Editor.this.mSelectionModifierCursorController;
            if (selectionModifierCursorController != null) {
                selectionModifierCursorController.hide();
            }
        }
    }

    public class PositionListener implements ViewTreeObserver.OnPreDrawListener {
        private static final int MAXIMUM_NUMBER_OF_LISTENERS = 7;
        private boolean[] mCanMove;
        private int mNumberOfListeners;
        private boolean mPositionHasChanged;
        private TextViewPositionListener[] mPositionListeners;
        private int mPositionX;
        private int mPositionXOnScreen;
        private int mPositionY;
        private int mPositionYOnScreen;
        private boolean mScrollHasChanged;
        final int[] mTempCoords;

        private PositionListener() {
            this.mPositionListeners = new TextViewPositionListener[7];
            this.mCanMove = new boolean[7];
            this.mPositionHasChanged = true;
            this.mTempCoords = new int[2];
        }

        private void updatePosition() {
            Editor.this.mTextView.getLocationInWindow(this.mTempCoords);
            int[] iArr = this.mTempCoords;
            int i2 = iArr[0];
            this.mPositionHasChanged = (i2 == this.mPositionX && iArr[1] == this.mPositionY) ? false : true;
            this.mPositionX = i2;
            this.mPositionY = iArr[1];
            Editor.this.mTextView.getLocationOnScreen(this.mTempCoords);
            int[] iArr2 = this.mTempCoords;
            this.mPositionXOnScreen = iArr2[0];
            this.mPositionYOnScreen = iArr2[1];
        }

        public void addSubscriber(TextViewPositionListener textViewPositionListener, boolean z2) {
            if (this.mNumberOfListeners == 0) {
                updatePosition();
                Editor.this.mTextView.getViewTreeObserver().addOnPreDrawListener(this);
            }
            int i2 = -1;
            for (int i3 = 0; i3 < 7; i3++) {
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

        public int getPositionXOnScreen() {
            return this.mPositionXOnScreen;
        }

        public int getPositionY() {
            return this.mPositionY;
        }

        public int getPositionYOnScreen() {
            return this.mPositionYOnScreen;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            TextViewPositionListener textViewPositionListener;
            updatePosition();
            for (int i2 = 0; i2 < 7; i2++) {
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
            for (int i2 = 0; i2 < 7; i2++) {
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

    public static final class ProcessTextIntentActionsHandler {
        private final SparseArray<AccessibilityNodeInfo.AccessibilityAction> mAccessibilityActions;
        private final SparseArray<Intent> mAccessibilityIntents;
        private final Context mContext;
        private final Editor mEditor;
        private final PackageManager mPackageManager;
        private final String mPackageName;
        private final List<ResolveInfo> mSupportedActivities;
        private final TextView mTextView;

        private Intent createProcessTextIntent() {
            return new Intent().setAction(Intent.ACTION_PROCESS_TEXT).setType(ClipDescription.MIMETYPE_TEXT_PLAIN);
        }

        private Intent createProcessTextIntentForResolveInfo(ResolveInfo resolveInfo) {
            Intent intentPutExtra = createProcessTextIntent().putExtra(Intent.EXTRA_PROCESS_TEXT_READONLY, !this.mTextView.isTextEditable());
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return intentPutExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        private boolean fireIntent(Intent intent) {
            if (intent == null || !Intent.ACTION_PROCESS_TEXT.equals(intent.getAction())) {
                return false;
            }
            intent.putExtra(Intent.EXTRA_PROCESS_TEXT, this.mTextView.getSelectedText());
            this.mEditor.mPreserveSelection = true;
            this.mTextView.startActivityForResult(intent, 100);
            return true;
        }

        private CharSequence getLabel(ResolveInfo resolveInfo) {
            return resolveInfo.loadLabel(this.mPackageManager);
        }

        private boolean isSupportedActivity(ResolveInfo resolveInfo) {
            String str;
            if (!this.mPackageName.equals(resolveInfo.activityInfo.packageName)) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (!activityInfo.exported || ((str = activityInfo.permission) != null && this.mContext.checkSelfPermission(str) != 0)) {
                    return false;
                }
            }
            return true;
        }

        private void loadSupportedActivities() {
            this.mSupportedActivities.clear();
            for (ResolveInfo resolveInfo : this.mTextView.getContext().getPackageManager().queryIntentActivities(createProcessTextIntent(), 0)) {
                if (isSupportedActivity(resolveInfo)) {
                    this.mSupportedActivities.add(resolveInfo);
                }
            }
        }

        public void initializeAccessibilityActions() {
            this.mAccessibilityIntents.clear();
            this.mAccessibilityActions.clear();
            loadSupportedActivities();
            int i2 = 0;
            for (ResolveInfo resolveInfo : this.mSupportedActivities) {
                int i3 = i2 + 1;
                int i4 = i2 + 268435712;
                this.mAccessibilityActions.put(i4, new AccessibilityNodeInfo.AccessibilityAction(i4, getLabel(resolveInfo)));
                this.mAccessibilityIntents.put(i4, createProcessTextIntentForResolveInfo(resolveInfo));
                i2 = i3;
            }
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            for (int i2 = 0; i2 < this.mAccessibilityActions.size(); i2++) {
                accessibilityNodeInfo.addAction(this.mAccessibilityActions.valueAt(i2));
            }
        }

        public void onInitializeMenu(Menu menu) {
            int size = this.mSupportedActivities.size();
            loadSupportedActivities();
            for (int i2 = 0; i2 < size; i2 = i2 + 1 + 1) {
                ResolveInfo resolveInfo = this.mSupportedActivities.get(i2);
                menu.add(0, 0, i2 + 100, getLabel(resolveInfo)).setIntent(createProcessTextIntentForResolveInfo(resolveInfo)).setShowAsAction(1);
            }
        }

        public boolean performAccessibilityAction(int i2) {
            return fireIntent(this.mAccessibilityIntents.get(i2));
        }

        public boolean performMenuItemAction(MenuItem menuItem) {
            return fireIntent(menuItem.getIntent());
        }

        private ProcessTextIntentActionsHandler(Editor editor) {
            this.mAccessibilityIntents = new SparseArray<>();
            this.mAccessibilityActions = new SparseArray<>();
            this.mSupportedActivities = new ArrayList();
            Editor editor2 = (Editor) Preconditions.checkNotNull(editor);
            this.mEditor = editor2;
            TextView textView = (TextView) Preconditions.checkNotNull(editor2.mTextView);
            this.mTextView = textView;
            Context context = (Context) Preconditions.checkNotNull(textView.getContext());
            this.mContext = context;
            this.mPackageManager = (PackageManager) Preconditions.checkNotNull(context.getPackageManager());
            this.mPackageName = (String) Preconditions.checkNotNull(context.getPackageName());
        }
    }

    public class SelectionHandleView extends HandleView {
        private final int mHandleType;
        private boolean mInWord;
        private boolean mLanguageDirectionChanged;
        private float mPrevX;
        private final float mTextViewEdgeSlop;
        private final int[] mTextViewLocation;
        private float mTouchWordDelta;

        public SelectionHandleView(Drawable drawable, Drawable drawable2, int i2, int i3) {
            super(drawable, drawable2, i2);
            this.mInWord = false;
            this.mLanguageDirectionChanged = false;
            this.mTextViewLocation = new int[2];
            this.mHandleType = i3;
            this.mTextViewEdgeSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledTouchSlop() * 4;
        }

        private boolean isStartHandle() {
            return this.mHandleType == 0;
        }

        private void positionAndAdjustForCrossingHandles(int i2, boolean z2) {
            int selectionEnd = isStartHandle() ? Editor.this.mTextView.getSelectionEnd() : Editor.this.mTextView.getSelectionStart();
            if ((isStartHandle() && i2 >= selectionEnd) || (!isStartHandle() && i2 <= selectionEnd)) {
                this.mTouchWordDelta = 0.0f;
                Layout layout = Editor.this.mTextView.getLayout();
                if (layout != null && i2 != selectionEnd) {
                    float horizontal = getHorizontal(layout, i2);
                    float horizontal2 = getHorizontal(layout, selectionEnd, !isStartHandle());
                    float horizontal3 = getHorizontal(layout, this.mPreviousOffset);
                    if ((horizontal3 < horizontal2 && horizontal < horizontal2) || (horizontal3 > horizontal2 && horizontal > horizontal2)) {
                        int currentCursorOffset = getCurrentCursorOffset();
                        if (!isStartHandle()) {
                            currentCursorOffset = Math.max(currentCursorOffset - 1, 0);
                        }
                        long runRange = layout.getRunRange(currentCursorOffset);
                        positionAtCursorOffset(isStartHandle() ? TextUtils.unpackRangeStartFromLong(runRange) : TextUtils.unpackRangeEndFromLong(runRange), false, z2);
                        return;
                    }
                }
                i2 = Editor.this.getNextCursorOffset(selectionEnd, !isStartHandle());
            }
            positionAtCursorOffset(i2, false, z2);
        }

        private boolean positionNearEdgeOfScrollingView(float f2, boolean z2) {
            Editor.this.mTextView.getLocationOnScreen(this.mTextViewLocation);
            if (z2 == isStartHandle()) {
                if (f2 > ((Editor.this.mTextView.getWidth() + this.mTextViewLocation[0]) - Editor.this.mTextView.getPaddingRight()) - this.mTextViewEdgeSlop) {
                    return true;
                }
            } else {
                if (f2 < Editor.this.mTextView.getPaddingLeft() + this.mTextViewLocation[0] + this.mTextViewEdgeSlop) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.widget.Editor.HandleView
        public int getCurrentCursorOffset() {
            return isStartHandle() ? Editor.this.mTextView.getSelectionStart() : Editor.this.mTextView.getSelectionEnd();
        }

        @Override // android.widget.Editor.HandleView
        public float getHorizontal(Layout layout, int i2) {
            return getHorizontal(layout, i2, isStartHandle());
        }

        @Override // android.widget.Editor.HandleView
        public int getHorizontalGravity(boolean z2) {
            return z2 == isStartHandle() ? 3 : 5;
        }

        @Override // android.widget.Editor.HandleView
        public int getHotspotX(Drawable drawable, boolean z2) {
            return z2 == isStartHandle() ? drawable.getIntrinsicWidth() / 4 : (drawable.getIntrinsicWidth() * 3) / 4;
        }

        @Override // android.widget.Editor.HandleView
        public int getOffsetAtCoordinate(Layout layout, int i2, float f2) {
            float fConvertToLocalHorizontalCoordinate = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f2);
            int offsetForHorizontal = layout.getOffsetForHorizontal(i2, fConvertToLocalHorizontalCoordinate, true);
            if (!layout.isLevelBoundary(offsetForHorizontal)) {
                return offsetForHorizontal;
            }
            int offsetForHorizontal2 = layout.getOffsetForHorizontal(i2, fConvertToLocalHorizontalCoordinate, false);
            int currentCursorOffset = getCurrentCursorOffset();
            int iAbs = Math.abs(offsetForHorizontal - currentCursorOffset);
            int iAbs2 = Math.abs(offsetForHorizontal2 - currentCursorOffset);
            if (iAbs < iAbs2) {
                return offsetForHorizontal;
            }
            if (iAbs > iAbs2) {
                return offsetForHorizontal2;
            }
            if (!isStartHandle()) {
                currentCursorOffset = Math.max(currentCursorOffset - 1, 0);
            }
            return layout.isRtlCharAt(currentCursorOffset) == (layout.getParagraphDirection(i2) == -1) ? offsetForHorizontal : offsetForHorizontal2;
        }

        @Override // android.widget.Editor.HandleView
        public boolean isAtRtlRun(Layout layout, int i2) {
            if (!isStartHandle()) {
                i2 = Math.max(i2 - 1, 0);
            }
            return layout.isRtlCharAt(i2);
        }

        @Override // android.widget.Editor.HandleView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (motionEvent.getActionMasked() == 0) {
                this.mTouchWordDelta = 0.0f;
                this.mPrevX = -1.0f;
            }
            return zOnTouchEvent;
        }

        @Override // android.widget.Editor.HandleView
        public void positionAtCursorOffset(int i2, boolean z2, boolean z3) {
            super.positionAtCursorOffset(i2, z2, z3);
            this.mInWord = (i2 == -1 || Editor.this.getWordIteratorWithText().isBoundary(i2)) ? false : true;
        }

        /* JADX WARN: Code duplicated, block: B:174:0x0252  */
        /* JADX WARN: Code duplicated, block: B:69:0x0111  */
        /* JADX WARN: Code duplicated, block: B:79:0x012d  */
        /* JADX WARN: Code duplicated, block: B:80:0x0134  */
        @Override // android.widget.Editor.HandleView
        public void updatePosition(float f2, float f3, boolean z2) {
            int offsetToLeftOf;
            Layout layout = Editor.this.mTextView.getLayout();
            if (layout == null) {
                positionAndAdjustForCrossingHandles(Editor.this.mTextView.getOffsetForPosition(f2, f3), z2);
                return;
            }
            if (this.mPreviousLineTouched == -1) {
                this.mPreviousLineTouched = Editor.this.mTextView.getLineAtCoordinate(f3);
            }
            int selectionEnd = isStartHandle() ? Editor.this.mTextView.getSelectionEnd() : Editor.this.mTextView.getSelectionStart();
            int currentLineAdjustedForSlop = Editor.this.getCurrentLineAdjustedForSlop(layout, this.mPreviousLineTouched, f3);
            int offsetAtCoordinate = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f2);
            if ((isStartHandle() && offsetAtCoordinate >= selectionEnd) || (!isStartHandle() && offsetAtCoordinate <= selectionEnd)) {
                currentLineAdjustedForSlop = layout.getLineForOffset(selectionEnd);
                offsetAtCoordinate = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f2);
            }
            int wordEnd = Editor.this.getWordEnd(offsetAtCoordinate);
            int wordStart = Editor.this.getWordStart(offsetAtCoordinate);
            if (this.mPrevX == -1.0f) {
                this.mPrevX = f2;
            }
            int currentCursorOffset = getCurrentCursorOffset();
            boolean zIsAtRtlRun = isAtRtlRun(layout, currentCursorOffset);
            boolean zIsAtRtlRun2 = isAtRtlRun(layout, offsetAtCoordinate);
            boolean zIsLevelBoundary = layout.isLevelBoundary(offsetAtCoordinate);
            boolean z3 = true;
            if (zIsLevelBoundary || ((zIsAtRtlRun && !zIsAtRtlRun2) || (!zIsAtRtlRun && zIsAtRtlRun2))) {
                this.mLanguageDirectionChanged = true;
                this.mTouchWordDelta = 0.0f;
                positionAndAdjustForCrossingHandles(offsetAtCoordinate, z2);
                return;
            }
            boolean z4 = false;
            if (this.mLanguageDirectionChanged && !zIsLevelBoundary) {
                positionAndAdjustForCrossingHandles(offsetAtCoordinate, z2);
                this.mTouchWordDelta = 0.0f;
                this.mLanguageDirectionChanged = false;
                return;
            }
            float f4 = f2 - this.mPrevX;
            boolean z5 = (zIsAtRtlRun2 != isStartHandle() ? f4 < 0.0f : f4 > 0.0f) | (!isStartHandle() ? currentLineAdjustedForSlop <= this.mPreviousLineTouched : currentLineAdjustedForSlop >= this.mPreviousLineTouched);
            if (Editor.this.mTextView.getHorizontallyScrolling() && positionNearEdgeOfScrollingView(f2, zIsAtRtlRun2)) {
                if (isStartHandle() && Editor.this.mTextView.getScrollX() != 0) {
                    if (!z5) {
                    }
                    this.mTouchWordDelta = 0.0f;
                    if (zIsAtRtlRun2 == isStartHandle()) {
                        offsetToLeftOf = layout.getOffsetToRightOf(this.mPreviousOffset);
                    } else {
                        offsetToLeftOf = layout.getOffsetToLeftOf(this.mPreviousOffset);
                    }
                    positionAndAdjustForCrossingHandles(offsetToLeftOf, z2);
                    return;
                }
                if (!isStartHandle()) {
                    if (Editor.this.mTextView.canScrollHorizontally(zIsAtRtlRun2 ? -1 : 1)) {
                        if ((!z5 && ((isStartHandle() && offsetAtCoordinate < currentCursorOffset) || (!isStartHandle() && offsetAtCoordinate > currentCursorOffset))) || !z5) {
                            this.mTouchWordDelta = 0.0f;
                            if (zIsAtRtlRun2 == isStartHandle()) {
                                offsetToLeftOf = layout.getOffsetToRightOf(this.mPreviousOffset);
                            } else {
                                offsetToLeftOf = layout.getOffsetToLeftOf(this.mPreviousOffset);
                            }
                            positionAndAdjustForCrossingHandles(offsetToLeftOf, z2);
                            return;
                        }
                    }
                }
            }
            if (!z5) {
                int offsetAtCoordinate2 = getOffsetAtCoordinate(layout, currentLineAdjustedForSlop, f2 - this.mTouchWordDelta);
                if (!(!isStartHandle() ? !(offsetAtCoordinate2 < this.mPreviousOffset || currentLineAdjustedForSlop < this.mPrevLine) : !(offsetAtCoordinate2 > this.mPreviousOffset || currentLineAdjustedForSlop > this.mPrevLine))) {
                    if ((isStartHandle() && offsetAtCoordinate2 < this.mPreviousOffset) || (!isStartHandle() && offsetAtCoordinate2 > this.mPreviousOffset)) {
                        this.mTouchWordDelta = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f2) - getHorizontal(layout, this.mPreviousOffset);
                    }
                    z3 = false;
                } else if (currentLineAdjustedForSlop != this.mPrevLine) {
                    if (isStartHandle()) {
                        wordEnd = wordStart;
                    }
                    if ((!isStartHandle() || wordEnd >= offsetAtCoordinate) && (isStartHandle() || wordEnd <= offsetAtCoordinate)) {
                        this.mTouchWordDelta = 0.0f;
                    } else {
                        this.mTouchWordDelta = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f2) - getHorizontal(layout, wordEnd);
                    }
                } else {
                    offsetAtCoordinate = offsetAtCoordinate2;
                }
                if (z3) {
                    this.mPreviousLineTouched = currentLineAdjustedForSlop;
                    positionAndAdjustForCrossingHandles(offsetAtCoordinate, z2);
                }
                this.mPrevX = f2;
            }
            int lineStart = isStartHandle() ? wordStart : wordEnd;
            if ((!this.mInWord || (!isStartHandle() ? currentLineAdjustedForSlop > this.mPrevLine : currentLineAdjustedForSlop < this.mPrevLine)) && zIsAtRtlRun2 == isAtRtlRun(layout, lineStart)) {
                z4 = true;
            }
            if (z4) {
                if (layout.getLineForOffset(lineStart) != currentLineAdjustedForSlop) {
                    lineStart = isStartHandle() ? layout.getLineStart(currentLineAdjustedForSlop) : layout.getLineEnd(currentLineAdjustedForSlop);
                }
                int iB = isStartHandle() ? wordEnd - ((wordEnd - lineStart) / 2) : m.b(lineStart, wordStart, 2, wordStart);
                if (isStartHandle() && (offsetAtCoordinate <= iB || currentLineAdjustedForSlop < this.mPrevLine)) {
                    wordEnd = wordStart;
                } else if (isStartHandle() || (offsetAtCoordinate < iB && currentLineAdjustedForSlop <= this.mPrevLine)) {
                    wordEnd = this.mPreviousOffset;
                }
            } else {
                wordEnd = offsetAtCoordinate;
            }
            if ((!isStartHandle() || wordEnd >= offsetAtCoordinate) && (isStartHandle() || wordEnd <= offsetAtCoordinate)) {
                this.mTouchWordDelta = 0.0f;
            } else {
                this.mTouchWordDelta = Editor.this.mTextView.convertToLocalHorizontalCoordinate(f2) - getHorizontal(layout, wordEnd);
            }
            offsetAtCoordinate = wordEnd;
            if (z3) {
                this.mPreviousLineTouched = currentLineAdjustedForSlop;
                positionAndAdjustForCrossingHandles(offsetAtCoordinate, z2);
            }
            this.mPrevX = f2;
        }

        @Override // android.widget.Editor.HandleView
        public void updateSelection(int i2) {
            if (isStartHandle()) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i2, Editor.this.mTextView.getSelectionEnd());
            } else {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionStart(), i2);
            }
            updateDrawable();
            if (Editor.this.mTextActionMode != null) {
                Editor.this.invalidateActionMode();
            }
        }

        private float getHorizontal(Layout layout, int i2, boolean z2) {
            return layout.isRtlCharAt(z2 ? i2 : Math.max(i2 + (-1), 0)) == (layout.getParagraphDirection(layout.getLineForOffset(i2)) == -1) ? layout.getPrimaryHorizontal(i2) : layout.getSecondaryHorizontal(i2);
        }
    }

    public class SelectionModifierCursorController implements CursorController {
        private static final int DRAG_ACCELERATOR_MODE_CHARACTER = 1;
        private static final int DRAG_ACCELERATOR_MODE_INACTIVE = 0;
        private static final int DRAG_ACCELERATOR_MODE_PARAGRAPH = 3;
        private static final int DRAG_ACCELERATOR_MODE_WORD = 2;
        private float mDownPositionX;
        private float mDownPositionY;
        private SelectionHandleView mEndHandle;
        private boolean mGestureStayedInTapRegion;
        private boolean mHaventMovedEnoughToStartDrag;
        private int mMaxTouchOffset;
        private int mMinTouchOffset;
        private SelectionHandleView mStartHandle;
        private int mStartOffset = -1;
        private int mLineSelectionIsOn = -1;
        private boolean mSwitchedLines = false;
        private int mDragAcceleratorMode = 0;

        public SelectionModifierCursorController() {
            resetTouchOffsets();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initDrawables() {
            if (Editor.this.mSelectHandleLeft == null) {
                Editor editor = Editor.this;
                editor.mSelectHandleLeft = editor.mTextView.getContext().getDrawable(Editor.this.mTextView.mTextSelectHandleLeftRes);
            }
            if (Editor.this.mSelectHandleRight == null) {
                Editor editor2 = Editor.this;
                editor2.mSelectHandleRight = editor2.mTextView.getContext().getDrawable(Editor.this.mTextView.mTextSelectHandleRightRes);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initHandles() {
            if (this.mStartHandle == null) {
                Editor editor = Editor.this;
                this.mStartHandle = editor.new SelectionHandleView(editor.mSelectHandleLeft, Editor.this.mSelectHandleRight, R.id.selection_start_handle, 0);
            }
            if (this.mEndHandle == null) {
                Editor editor2 = Editor.this;
                this.mEndHandle = editor2.new SelectionHandleView(editor2.mSelectHandleRight, Editor.this.mSelectHandleLeft, R.id.selection_end_handle, 1);
            }
            this.mStartHandle.show();
            this.mEndHandle.show();
            Editor.this.hideInsertionPointCursorController();
        }

        private void resetDragAcceleratorState() {
            this.mStartOffset = -1;
            this.mDragAcceleratorMode = 0;
            this.mSwitchedLines = false;
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            int selectionEnd = Editor.this.mTextView.getSelectionEnd();
            if (selectionStart > selectionEnd) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), selectionEnd, selectionStart);
            }
        }

        private boolean selectCurrentParagraphAndStartDrag() {
            if (Editor.this.mInsertionActionModeRunnable != null) {
                Editor.this.mTextView.removeCallbacks(Editor.this.mInsertionActionModeRunnable);
            }
            Editor.this.stopTextActionMode();
            if (!Editor.this.selectCurrentParagraph()) {
                return false;
            }
            enterDrag(3);
            return true;
        }

        private void updateCharacterBasedSelection(MotionEvent motionEvent) {
            updateSelectionInternal(this.mStartOffset, Editor.this.mTextView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY()), motionEvent.isFromSource(4098));
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

        private void updateParagraphBasedSelection(MotionEvent motionEvent) {
            int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
            long paragraphsRange = Editor.this.getParagraphsRange(Math.min(offsetForPosition, this.mStartOffset), Math.max(offsetForPosition, this.mStartOffset));
            updateSelectionInternal(TextUtils.unpackRangeStartFromLong(paragraphsRange), TextUtils.unpackRangeEndFromLong(paragraphsRange), motionEvent.isFromSource(4098));
        }

        private void updateSelection(MotionEvent motionEvent) {
            if (Editor.this.mTextView.getLayout() != null) {
                int i2 = this.mDragAcceleratorMode;
                if (i2 == 1) {
                    updateCharacterBasedSelection(motionEvent);
                } else if (i2 == 2) {
                    updateWordBasedSelection(motionEvent);
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    updateParagraphBasedSelection(motionEvent);
                }
            }
        }

        private void updateSelectionInternal(int i2, int i3, boolean z2) {
            boolean z3 = z2 && Editor.this.mHapticTextHandleEnabled && !(Editor.this.mTextView.getSelectionStart() == i2 && Editor.this.mTextView.getSelectionEnd() == i3);
            Selection.setSelection((Spannable) Editor.this.mTextView.getText(), i2, i3);
            if (z3) {
                Editor.this.mTextView.performHapticFeedback(9);
            }
        }

        private void updateWordBasedSelection(MotionEvent motionEvent) {
            int currentLineAdjustedForSlop;
            int wordStart;
            int wordEnd;
            if (this.mHaventMovedEnoughToStartDrag) {
                return;
            }
            boolean zIsFromSource = motionEvent.isFromSource(8194);
            ViewConfiguration viewConfiguration = ViewConfiguration.get(Editor.this.mTextView.getContext());
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (zIsFromSource) {
                currentLineAdjustedForSlop = Editor.this.mTextView.getLineAtCoordinate(y2);
            } else {
                if (this.mSwitchedLines) {
                    int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                    SelectionHandleView selectionHandleView = this.mStartHandle;
                    y2 -= selectionHandleView != null ? selectionHandleView.getIdealVerticalOffset() : scaledTouchSlop;
                }
                Editor editor = Editor.this;
                currentLineAdjustedForSlop = editor.getCurrentLineAdjustedForSlop(editor.mTextView.getLayout(), this.mLineSelectionIsOn, y2);
                if (!this.mSwitchedLines && currentLineAdjustedForSlop != this.mLineSelectionIsOn) {
                    this.mSwitchedLines = true;
                    return;
                }
            }
            int offsetAtCoordinate = Editor.this.mTextView.getOffsetAtCoordinate(currentLineAdjustedForSlop, x2);
            if (this.mStartOffset < offsetAtCoordinate) {
                wordStart = Editor.this.getWordEnd(offsetAtCoordinate);
                wordEnd = Editor.this.getWordStart(this.mStartOffset);
            } else {
                wordStart = Editor.this.getWordStart(offsetAtCoordinate);
                wordEnd = Editor.this.getWordEnd(this.mStartOffset);
                if (wordEnd == wordStart) {
                    wordStart = Editor.this.getNextCursorOffset(wordStart, false);
                }
            }
            this.mLineSelectionIsOn = currentLineAdjustedForSlop;
            updateSelectionInternal(wordEnd, wordStart, motionEvent.isFromSource(4098));
        }

        public void enterDrag(int i2) {
            show();
            this.mDragAcceleratorMode = i2;
            this.mStartOffset = Editor.this.mTextView.getOffsetForPosition(Editor.this.mLastDownPositionX, Editor.this.mLastDownPositionY);
            this.mLineSelectionIsOn = Editor.this.mTextView.getLineAtCoordinate(Editor.this.mLastDownPositionY);
            hide();
            Editor.this.mTextView.getParent().requestDisallowInterceptTouchEvent(true);
            Editor.this.mTextView.cancelLongPress();
        }

        public int getMaxTouchOffset() {
            return this.mMaxTouchOffset;
        }

        public int getMinTouchOffset() {
            return this.mMinTouchOffset;
        }

        @Override // android.widget.Editor.CursorController
        public void hide() {
            SelectionHandleView selectionHandleView = this.mStartHandle;
            if (selectionHandleView != null) {
                selectionHandleView.hide();
            }
            SelectionHandleView selectionHandleView2 = this.mEndHandle;
            if (selectionHandleView2 != null) {
                selectionHandleView2.hide();
            }
        }

        public void invalidateHandles() {
            SelectionHandleView selectionHandleView = this.mStartHandle;
            if (selectionHandleView != null) {
                selectionHandleView.invalidate();
            }
            SelectionHandleView selectionHandleView2 = this.mEndHandle;
            if (selectionHandleView2 != null) {
                selectionHandleView2.invalidate();
            }
        }

        @Override // android.widget.Editor.CursorController
        public boolean isActive() {
            SelectionHandleView selectionHandleView = this.mStartHandle;
            return selectionHandleView != null && selectionHandleView.isShowing();
        }

        @Override // android.widget.Editor.CursorController
        public boolean isCursorBeingModified() {
            SelectionHandleView selectionHandleView;
            return isDragAcceleratorActive() || isSelectionStartDragged() || ((selectionHandleView = this.mEndHandle) != null && selectionHandleView.isDragging());
        }

        public boolean isDragAcceleratorActive() {
            return this.mDragAcceleratorMode != 0;
        }

        public boolean isSelectionStartDragged() {
            SelectionHandleView selectionHandleView = this.mStartHandle;
            return selectionHandleView != null && selectionHandleView.isDragging();
        }

        @Override // android.widget.Editor.CursorController
        public void onDetached() {
            Editor.this.mTextView.getViewTreeObserver().removeOnTouchModeChangeListener(this);
            SelectionHandleView selectionHandleView = this.mStartHandle;
            if (selectionHandleView != null) {
                selectionHandleView.onDetached();
            }
            SelectionHandleView selectionHandleView2 = this.mEndHandle;
            if (selectionHandleView2 != null) {
                selectionHandleView2.onDetached();
            }
        }

        public void onTouchEvent(MotionEvent motionEvent) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            boolean zIsFromSource = motionEvent.isFromSource(8194);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (Editor.this.extractedTextModeWillBeStarted()) {
                    hide();
                    return;
                }
                int offsetForPosition = Editor.this.mTextView.getOffsetForPosition(x2, y2);
                this.mMaxTouchOffset = offsetForPosition;
                this.mMinTouchOffset = offsetForPosition;
                if (this.mGestureStayedInTapRegion && (Editor.this.mTapState == 2 || Editor.this.mTapState == 3)) {
                    float f2 = x2 - this.mDownPositionX;
                    float f3 = y2 - this.mDownPositionY;
                    float f4 = (f3 * f3) + (f2 * f2);
                    int scaledDoubleTapSlop = ViewConfiguration.get(Editor.this.mTextView.getContext()).getScaledDoubleTapSlop();
                    if ((f4 < ((float) (scaledDoubleTapSlop * scaledDoubleTapSlop))) && (zIsFromSource || Editor.this.isPositionOnText(x2, y2))) {
                        if (Editor.this.mTapState == 2) {
                            Editor.this.selectCurrentWordAndStartDrag();
                        } else if (Editor.this.mTapState == 3) {
                            selectCurrentParagraphAndStartDrag();
                        }
                        Editor.this.mDiscardNextActionUp = true;
                    }
                }
                this.mDownPositionX = x2;
                this.mDownPositionY = y2;
                this.mGestureStayedInTapRegion = true;
                this.mHaventMovedEnoughToStartDrag = true;
                return;
            }
            if (actionMasked == 1) {
                if (isDragAcceleratorActive()) {
                    updateSelection(motionEvent);
                    Editor.this.mTextView.getParent().requestDisallowInterceptTouchEvent(false);
                    try {
                        resetDragAcceleratorState();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (Editor.this.mTextView.hasSelection()) {
                        Editor.this.startSelectionActionModeAsync(this.mHaventMovedEnoughToStartDrag);
                        return;
                    }
                    return;
                }
                return;
            }
            if (actionMasked != 2) {
                if ((actionMasked == 5 || actionMasked == 6) && Editor.this.mTextView.getContext().getPackageManager().hasSystemFeature(PackageManager.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT)) {
                    updateMinAndMaxOffsets(motionEvent);
                    return;
                }
                return;
            }
            ViewConfiguration viewConfiguration = ViewConfiguration.get(Editor.this.mTextView.getContext());
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            boolean z2 = this.mGestureStayedInTapRegion;
            if (z2 || this.mHaventMovedEnoughToStartDrag) {
                float f5 = x2 - this.mDownPositionX;
                float f6 = y2 - this.mDownPositionY;
                float f7 = (f6 * f6) + (f5 * f5);
                if (z2) {
                    int scaledDoubleTapTouchSlop = viewConfiguration.getScaledDoubleTapTouchSlop();
                    this.mGestureStayedInTapRegion = f7 <= ((float) (scaledDoubleTapTouchSlop * scaledDoubleTapTouchSlop));
                }
                if (this.mHaventMovedEnoughToStartDrag) {
                    this.mHaventMovedEnoughToStartDrag = f7 <= ((float) (scaledTouchSlop * scaledTouchSlop));
                }
            }
            if (zIsFromSource && !isDragAcceleratorActive()) {
                int offsetForPosition2 = Editor.this.mTextView.getOffsetForPosition(x2, y2);
                if (Editor.this.mTextView.hasSelection() && ((!this.mHaventMovedEnoughToStartDrag || this.mStartOffset != offsetForPosition2) && offsetForPosition2 >= Editor.this.mTextView.getSelectionStart() && offsetForPosition2 <= Editor.this.mTextView.getSelectionEnd())) {
                    Editor.this.startDragAndDrop();
                    return;
                } else if (this.mStartOffset != offsetForPosition2) {
                    Editor.this.stopTextActionMode();
                    enterDrag(1);
                    Editor.this.mDiscardNextActionUp = true;
                    this.mHaventMovedEnoughToStartDrag = false;
                }
            }
            SelectionHandleView selectionHandleView = this.mStartHandle;
            if (selectionHandleView == null || !selectionHandleView.isShowing()) {
                updateSelection(motionEvent);
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
            resetDragAcceleratorState();
        }

        @Override // android.widget.Editor.CursorController
        public void show() {
            if (Editor.this.mTextView.isInBatchEditMode()) {
                return;
            }
            initDrawables();
            initHandles();
        }
    }

    public class SpanController implements SpanWatcher {
        private static final int DISPLAY_TIMEOUT_MS = 3000;
        private Runnable mHidePopup;
        private EasyEditPopupWindow mPopupWindow;

        private SpanController() {
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
                Log.w("Editor", "PendingIntent for notification cannot be sent", e2);
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

    public class SuggestionHelper {
        private final HashMap<SuggestionSpan, Integer> mSpansLengths;
        private final Comparator<SuggestionSpan> mSuggestionSpanComparator;

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
                return ((Integer) SuggestionHelper.this.mSpansLengths.get(suggestionSpan)).intValue() - ((Integer) SuggestionHelper.this.mSpansLengths.get(suggestionSpan2)).intValue();
            }
        }

        private SuggestionHelper() {
            this.mSuggestionSpanComparator = new SuggestionSpanComparator();
            this.mSpansLengths = new HashMap<>();
        }

        private SuggestionSpan[] getSortedSuggestionSpans() {
            int selectionStart = Editor.this.mTextView.getSelectionStart();
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(selectionStart, selectionStart, SuggestionSpan.class);
            this.mSpansLengths.clear();
            for (SuggestionSpan suggestionSpan : suggestionSpanArr) {
                this.mSpansLengths.put(suggestionSpan, Integer.valueOf(spannable.getSpanEnd(suggestionSpan) - spannable.getSpanStart(suggestionSpan)));
            }
            Arrays.sort(suggestionSpanArr, this.mSuggestionSpanComparator);
            this.mSpansLengths.clear();
            return suggestionSpanArr;
        }

        public int getSuggestionInfo(SuggestionInfo[] suggestionInfoArr, SuggestionSpanInfo suggestionSpanInfo) {
            int i2;
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpan[] sortedSuggestionSpans = getSortedSuggestionSpans();
            int i3 = 0;
            if (sortedSuggestionSpans.length == 0) {
                return 0;
            }
            int i4 = 0;
            for (SuggestionSpan suggestionSpan : sortedSuggestionSpans) {
                int spanStart = spannable.getSpanStart(suggestionSpan);
                int spanEnd = spannable.getSpanEnd(suggestionSpan);
                if (suggestionSpanInfo != 0 && (suggestionSpan.getFlags() & 2) != 0) {
                    suggestionSpanInfo.mSuggestionSpan = suggestionSpan;
                    suggestionSpanInfo.mSpanStart = spanStart;
                    suggestionSpanInfo.mSpanEnd = spanEnd;
                }
                String[] suggestions = suggestionSpan.getSuggestions();
                int length = suggestions.length;
                int i5 = i3;
                while (i5 < length) {
                    String str = suggestions[i5];
                    while (true) {
                        if (i3 >= i4) {
                            SuggestionInfo suggestionInfo = suggestionInfoArr[i4];
                            suggestionInfo.setSpanInfo(suggestionSpan, spanStart, spanEnd);
                            suggestionInfo.mSuggestionIndex = i5;
                            i2 = 0;
                            suggestionInfo.mSuggestionStart = 0;
                            suggestionInfo.mSuggestionEnd = str.length();
                            SpannableStringBuilder spannableStringBuilder = suggestionInfo.mText;
                            spannableStringBuilder.replace(0, spannableStringBuilder.length(), (CharSequence) str);
                            i4++;
                            if (i4 < suggestionInfoArr.length) {
                                break;
                            }
                            return i4;
                        }
                        SuggestionInfo suggestionInfo2 = suggestionInfoArr[i3];
                        if (suggestionInfo2.mText.toString().equals(str)) {
                            SuggestionSpanInfo suggestionSpanInfo2 = suggestionInfo2.mSuggestionSpanInfo;
                            int i6 = suggestionSpanInfo2.mSpanStart;
                            int i7 = suggestionSpanInfo2.mSpanEnd;
                            if (spanStart == i6 && spanEnd == i7) {
                                i2 = 0;
                                break;
                            }
                        }
                        i3++;
                    }
                    i5++;
                    i3 = i2;
                }
            }
            return i4;
        }
    }

    public static final class SuggestionInfo {
        int mSuggestionEnd;
        int mSuggestionIndex;
        final SuggestionSpanInfo mSuggestionSpanInfo;
        int mSuggestionStart;
        final SpannableStringBuilder mText;

        private SuggestionInfo() {
            this.mSuggestionSpanInfo = new SuggestionSpanInfo();
            this.mText = new SpannableStringBuilder();
        }

        public void clear() {
            this.mSuggestionSpanInfo.clear();
            this.mText.clear();
        }

        public void setSpanInfo(SuggestionSpan suggestionSpan, int i2, int i3) {
            SuggestionSpanInfo suggestionSpanInfo = this.mSuggestionSpanInfo;
            suggestionSpanInfo.mSuggestionSpan = suggestionSpan;
            suggestionSpanInfo.mSpanStart = i2;
            suggestionSpanInfo.mSpanEnd = i3;
        }
    }

    public static final class SuggestionSpanInfo {
        int mSpanEnd;
        int mSpanStart;
        SuggestionSpan mSuggestionSpan;

        private SuggestionSpanInfo() {
        }

        public void clear() {
            this.mSuggestionSpan = null;
        }
    }

    public class SuggestionsPopupWindow extends PinnedPopupWindow implements AdapterView.OnItemClickListener {
        private static final int MAX_NUMBER_SUGGESTIONS = 5;
        private static final String USER_DICTIONARY_EXTRA_LOCALE = "locale";
        private static final String USER_DICTIONARY_EXTRA_WORD = "word";
        private TextView mAddToDictionaryButton;
        private int mContainerMarginTop;
        private int mContainerMarginWidth;
        private LinearLayout mContainerView;
        private Context mContext;
        private boolean mCursorWasVisibleBeforeSuggestions;
        private TextView mDeleteButton;
        private TextAppearanceSpan mHighlightSpan;
        private boolean mIsShowingUp;
        private final SuggestionSpanInfo mMisspelledSpanInfo;
        private int mNumberOfSuggestions;
        private SuggestionInfo[] mSuggestionInfos;
        private ListView mSuggestionListView;
        private SuggestionAdapter mSuggestionsAdapter;

        public class CustomPopupWindow extends PopupWindow {
            private CustomPopupWindow() {
            }

            @Override // android.widget.PopupWindow
            public void dismiss() {
                if (isShowing()) {
                    super.dismiss();
                    Editor.this.getPositionListener().removeSubscriber(SuggestionsPopupWindow.this);
                    ((Spannable) Editor.this.mTextView.getText()).removeSpan(Editor.this.mSuggestionRangeSpan);
                    Editor.this.mTextView.setCursorVisible(SuggestionsPopupWindow.this.mCursorWasVisibleBeforeSuggestions);
                    if (!Editor.this.hasInsertionController() || Editor.this.extractedTextModeWillBeStarted()) {
                        return;
                    }
                    Editor.this.getInsertionController().show();
                }
            }
        }

        public class SuggestionAdapter extends BaseAdapter {
            private LayoutInflater mInflater;

            private SuggestionAdapter() {
                this.mInflater = (LayoutInflater) SuggestionsPopupWindow.this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
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
                textView.setText(SuggestionsPopupWindow.this.mSuggestionInfos[i2].mText);
                return textView;
            }
        }

        public SuggestionsPopupWindow() {
            super();
            this.mIsShowingUp = false;
            this.mMisspelledSpanInfo = new SuggestionSpanInfo();
            this.mCursorWasVisibleBeforeSuggestions = Editor.this.mCursorVisible;
        }

        private Context applyDefaultTheme(Context context) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.isLightTheme});
            int i2 = typedArrayObtainStyledAttributes.getBoolean(0, true) ? 16974410 : 16974411;
            typedArrayObtainStyledAttributes.recycle();
            return new ContextThemeWrapper(context, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hideWithCleanUp() {
            for (SuggestionInfo suggestionInfo : this.mSuggestionInfos) {
                suggestionInfo.clear();
            }
            this.mMisspelledSpanInfo.clear();
            hide();
        }

        private void highlightTextDifferences(SuggestionInfo suggestionInfo, int i2, int i3) {
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            SuggestionSpanInfo suggestionSpanInfo = suggestionInfo.mSuggestionSpanInfo;
            int i4 = suggestionSpanInfo.mSpanStart;
            int i5 = suggestionSpanInfo.mSpanEnd;
            int i6 = i4 - i2;
            suggestionInfo.mSuggestionStart = i6;
            suggestionInfo.mSuggestionEnd = suggestionInfo.mText.length() + i6;
            SpannableStringBuilder spannableStringBuilder = suggestionInfo.mText;
            spannableStringBuilder.setSpan(this.mHighlightSpan, 0, spannableStringBuilder.length(), 33);
            String string = spannable.toString();
            suggestionInfo.mText.insert(0, (CharSequence) string.substring(i2, i4));
            suggestionInfo.mText.append((CharSequence) string.substring(i5, i3));
        }

        private boolean updateSuggestions() {
            int i2;
            Spannable spannable = (Spannable) Editor.this.mTextView.getText();
            int suggestionInfo = Editor.this.mSuggestionHelper.getSuggestionInfo(this.mSuggestionInfos, this.mMisspelledSpanInfo);
            this.mNumberOfSuggestions = suggestionInfo;
            if (suggestionInfo == 0 && this.mMisspelledSpanInfo.mSuggestionSpan == null) {
                return false;
            }
            int length = Editor.this.mTextView.getText().length();
            int iMax = 0;
            for (int i3 = 0; i3 < this.mNumberOfSuggestions; i3++) {
                SuggestionSpanInfo suggestionSpanInfo = this.mSuggestionInfos[i3].mSuggestionSpanInfo;
                length = Math.min(length, suggestionSpanInfo.mSpanStart);
                iMax = Math.max(iMax, suggestionSpanInfo.mSpanEnd);
            }
            SuggestionSpanInfo suggestionSpanInfo2 = this.mMisspelledSpanInfo;
            if (suggestionSpanInfo2.mSuggestionSpan != null) {
                length = Math.min(length, suggestionSpanInfo2.mSpanStart);
                iMax = Math.max(iMax, this.mMisspelledSpanInfo.mSpanEnd);
            }
            for (int i4 = 0; i4 < this.mNumberOfSuggestions; i4++) {
                highlightTextDifferences(this.mSuggestionInfos[i4], length, iMax);
            }
            SuggestionSpanInfo suggestionSpanInfo3 = this.mMisspelledSpanInfo;
            this.mAddToDictionaryButton.setVisibility((suggestionSpanInfo3.mSuggestionSpan == null || (i2 = suggestionSpanInfo3.mSpanStart) < 0 || suggestionSpanInfo3.mSpanEnd <= i2) ? 8 : 0);
            Editor editor = Editor.this;
            if (editor.mSuggestionRangeSpan == null) {
                editor.mSuggestionRangeSpan = new SuggestionRangeSpan();
            }
            int underlineColor = this.mNumberOfSuggestions != 0 ? this.mSuggestionInfos[0].mSuggestionSpanInfo.mSuggestionSpan.getUnderlineColor() : this.mMisspelledSpanInfo.mSuggestionSpan.getUnderlineColor();
            if (underlineColor == 0) {
                Editor editor2 = Editor.this;
                editor2.mSuggestionRangeSpan.setBackgroundColor(editor2.mTextView.mHighlightColor);
            } else {
                Editor.this.mSuggestionRangeSpan.setBackgroundColor((underlineColor & 16777215) + (((int) (Color.alpha(underlineColor) * 0.4f)) << 24));
            }
            StringBuilder sbT = android.accessibilityservice.c.t("setSpan spanUnionStart: ", length, ", spanUnionEnd: ", iMax, ", Text.len: ");
            sbT.append(Editor.this.mTextView.getText().length());
            sbT.append(", Text: ");
            sbT.append(String.valueOf(Editor.this.mTextView.getText()));
            Log.d("Editor", sbT.toString());
            spannable.setSpan(Editor.this.mSuggestionRangeSpan, length, iMax, 33);
            this.mSuggestionsAdapter.notifyDataSetChanged();
            return true;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int clipVertically(int i2) {
            return Math.min(i2, Editor.this.mTextView.getResources().getDisplayMetrics().heightPixels - this.mContentView.getMeasuredHeight());
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void createPopupWindow() {
            CustomPopupWindow customPopupWindow = new CustomPopupWindow();
            this.mPopupWindow = customPopupWindow;
            customPopupWindow.setInputMethodMode(2);
            this.mPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
            this.mPopupWindow.setFocusable(true);
            this.mPopupWindow.setClippingEnabled(false);
        }

        public ViewGroup getContentViewForTesting() {
            return this.mContentView;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getTextOffset() {
            return (Editor.this.mTextView.getSelectionStart() + Editor.this.mTextView.getSelectionStart()) / 2;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public int getVerticalLocalPosition(int i2) {
            return Editor.this.mTextView.getLayout().getLineBottom(i2) - this.mContainerMarginTop;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public /* bridge */ /* synthetic */ void hide() {
            super.hide();
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void initContentView() {
            ViewGroup viewGroup = (ViewGroup) ((LayoutInflater) this.mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(Editor.this.mTextView.mTextEditSuggestionContainerLayout, (ViewGroup) null);
            this.mContentView = viewGroup;
            LinearLayout linearLayout = (LinearLayout) viewGroup.findViewById(R.id.suggestionWindowContainer);
            this.mContainerView = linearLayout;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
            int i2 = marginLayoutParams.leftMargin;
            int i3 = marginLayoutParams.rightMargin;
            this.mContainerMarginWidth = i2 + i3;
            this.mContainerMarginTop = marginLayoutParams.topMargin;
            this.mClippingLimitLeft = i2;
            this.mClippingLimitRight = i3;
            this.mSuggestionListView = (ListView) this.mContentView.findViewById(R.id.suggestionContainer);
            SuggestionAdapter suggestionAdapter = new SuggestionAdapter();
            this.mSuggestionsAdapter = suggestionAdapter;
            this.mSuggestionListView.setAdapter((ListAdapter) suggestionAdapter);
            this.mSuggestionListView.setOnItemClickListener(this);
            this.mSuggestionInfos = new SuggestionInfo[5];
            int i4 = 0;
            while (true) {
                SuggestionInfo[] suggestionInfoArr = this.mSuggestionInfos;
                if (i4 >= suggestionInfoArr.length) {
                    TextView textView = (TextView) this.mContentView.findViewById(R.id.addToDictionaryButton);
                    this.mAddToDictionaryButton = textView;
                    textView.setOnClickListener(new View.OnClickListener() { // from class: android.widget.Editor.SuggestionsPopupWindow.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            SuggestionsPopupWindow suggestionsPopupWindow = SuggestionsPopupWindow.this;
                            SuggestionSpan suggestionSpanFindEquivalentSuggestionSpan = Editor.this.findEquivalentSuggestionSpan(suggestionsPopupWindow.mMisspelledSpanInfo);
                            if (suggestionSpanFindEquivalentSuggestionSpan == null) {
                                return;
                            }
                            Editable editable = (Editable) Editor.this.mTextView.getText();
                            int spanStart = editable.getSpanStart(suggestionSpanFindEquivalentSuggestionSpan);
                            int spanEnd = editable.getSpanEnd(suggestionSpanFindEquivalentSuggestionSpan);
                            if (spanStart < 0 || spanEnd <= spanStart) {
                                return;
                            }
                            String strSubstring = TextUtils.substring(editable, spanStart, spanEnd);
                            Intent intent = new Intent(Settings.ACTION_USER_DICTIONARY_INSERT);
                            intent.putExtra("word", strSubstring);
                            intent.putExtra("locale", Editor.this.mTextView.getTextServicesLocale().toString());
                            intent.setFlags(intent.getFlags() | 268435456);
                            Editor.this.mTextView.getContext().startActivity(intent);
                            editable.removeSpan(SuggestionsPopupWindow.this.mMisspelledSpanInfo.mSuggestionSpan);
                            Selection.setSelection(editable, spanEnd);
                            Editor.this.updateSpellCheckSpans(spanStart, spanEnd, false);
                            SuggestionsPopupWindow.this.hideWithCleanUp();
                        }
                    });
                    TextView textView2 = (TextView) this.mContentView.findViewById(R.id.deleteButton);
                    this.mDeleteButton = textView2;
                    textView2.setOnClickListener(new View.OnClickListener() { // from class: android.widget.Editor.SuggestionsPopupWindow.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            Editable editable = (Editable) Editor.this.mTextView.getText();
                            int spanStart = editable.getSpanStart(Editor.this.mSuggestionRangeSpan);
                            int spanEnd = editable.getSpanEnd(Editor.this.mSuggestionRangeSpan);
                            if (spanStart >= 0 && spanEnd > spanStart) {
                                if (spanEnd < editable.length() && Character.isSpaceChar(editable.charAt(spanEnd)) && (spanStart == 0 || Character.isSpaceChar(editable.charAt(spanStart - 1)))) {
                                    spanEnd++;
                                }
                                Editor.this.mTextView.deleteText_internal(spanStart, spanEnd);
                            }
                            SuggestionsPopupWindow.this.hideWithCleanUp();
                        }
                    });
                    return;
                }
                suggestionInfoArr[i4] = new SuggestionInfo();
                i4++;
            }
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public /* bridge */ /* synthetic */ boolean isShowing() {
            return super.isShowing();
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
            if (this.mAddToDictionaryButton.getVisibility() != 8) {
                this.mAddToDictionaryButton.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                iMax = Math.max(iMax, this.mAddToDictionaryButton.getMeasuredWidth());
            }
            this.mDeleteButton.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int paddingRight = this.mContainerView.getPaddingRight() + this.mContainerView.getPaddingLeft() + this.mContainerMarginWidth + Math.max(iMax, this.mDeleteButton.getMeasuredWidth());
            this.mContentView.measure(View.MeasureSpec.makeMeasureSpec(paddingRight, 1073741824), iMakeMeasureSpec2);
            Drawable background = this.mPopupWindow.getBackground();
            if (background != null) {
                if (Editor.this.mTempRect == null) {
                    Editor.this.mTempRect = new Rect();
                }
                background.getPadding(Editor.this.mTempRect);
                paddingRight += Editor.this.mTempRect.left + Editor.this.mTempRect.right;
            }
            this.mPopupWindow.setWidth(paddingRight);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            Editor.this.replaceWithSuggestion(this.mSuggestionInfos[i2]);
            hideWithCleanUp();
        }

        public void onParentLostFocus() {
            this.mIsShowingUp = false;
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void setUp() {
            Context contextApplyDefaultTheme = applyDefaultTheme(Editor.this.mTextView.getContext());
            this.mContext = contextApplyDefaultTheme;
            this.mHighlightSpan = new TextAppearanceSpan(contextApplyDefaultTheme, Editor.this.mTextView.mTextEditSuggestionHighlightStyle);
        }

        @Override // android.widget.Editor.PinnedPopupWindow
        public void show() {
            if ((Editor.this.mTextView.getText() instanceof Editable) && !Editor.this.extractedTextModeWillBeStarted() && updateSuggestions()) {
                Editor editor = Editor.this;
                this.mCursorWasVisibleBeforeSuggestions = editor.mCursorVisible;
                editor.mTextView.setCursorVisible(false);
                this.mIsShowingUp = true;
                super.show();
            }
        }

        @Override // android.widget.Editor.PinnedPopupWindow, android.widget.Editor.TextViewPositionListener
        public /* bridge */ /* synthetic */ void updatePosition(int i2, int i3, boolean z2, boolean z3) {
            super.updatePosition(i2, i3, z2, z3);
        }
    }

    public class TextActionModeCallback extends ActionMode.Callback2 {
        private final int mHandleHeight;
        private final boolean mHasSelection;
        private final Path mSelectionPath = new Path();
        private final RectF mSelectionBounds = new RectF();

        public TextActionModeCallback(boolean z2) {
            this.mHasSelection = z2;
            if (z2) {
                SelectionModifierCursorController selectionController = Editor.this.getSelectionController();
                if (selectionController.mStartHandle == null) {
                    selectionController.initDrawables();
                    selectionController.initHandles();
                    selectionController.hide();
                }
                this.mHandleHeight = Math.max(Editor.this.mSelectHandleLeft.getMinimumHeight(), Editor.this.mSelectHandleRight.getMinimumHeight());
                return;
            }
            InsertionPointCursorController insertionController = Editor.this.getInsertionController();
            if (insertionController == null) {
                this.mHandleHeight = 0;
            } else {
                insertionController.getHandle();
                this.mHandleHeight = Editor.this.mSelectHandleCenter.getMinimumHeight();
            }
        }

        private boolean canAssist() {
            TextClassification textClassification = Editor.this.getSelectionActionModeHelper().getTextClassification();
            return Editor.this.mTextView.isDeviceProvisioned() && textClassification != null && !(textClassification.getIcon() == null && TextUtils.isEmpty(textClassification.getLabel())) && (textClassification.getOnClickListener() != null || (textClassification.getIntent() != null && Editor.this.mTextView.getContext().canStartActivityForResult()));
        }

        private ActionMode.Callback getCustomCallback() {
            return this.mHasSelection ? Editor.this.mCustomSelectionActionModeCallback : Editor.this.mCustomInsertionActionModeCallback;
        }

        private void populateMenuWithItems(Menu menu) {
            String selectedText;
            if (Editor.this.mTextView.canCut()) {
                menu.add(0, 16908320, 4, 17039363).setAlphabeticShortcut(EpicenterTranslateClipReveal.StateProperty.TARGET_X).setShowAsAction(2);
            }
            if (Editor.this.mTextView.canCopy()) {
                menu.add(0, 16908321, 5, 17039361).setAlphabeticShortcut('c').setShowAsAction(2);
            }
            if (Editor.this.mTextView.canPaste()) {
                menu.add(0, 16908322, 6, 17039371).setAlphabeticShortcut('v').setShowAsAction(2);
            }
            if (Editor.this.mTextView.canShare()) {
                menu.add(0, 16908341, 7, R.string.share).setShowAsAction(1);
            }
            if (Editor.this.mTextView.canRequestAutofill() && ((selectedText = Editor.this.mTextView.getSelectedText()) == null || selectedText.isEmpty())) {
                menu.add(0, 16908355, 10, 17039386).setShowAsAction(Integer.MIN_VALUE);
            }
            if (Editor.this.mTextView.canPasteAsPlainText()) {
                menu.add(0, 16908337, 11, 17039385).setShowAsAction(1);
            }
            updateSelectAllItem(menu);
            updateReplaceItem(menu);
            updateAssistMenuItem(menu);
        }

        private void updateAssistMenuItem(Menu menu) {
            menu.removeItem(16908353);
            TextClassification textClassification = Editor.this.getSelectionActionModeHelper().getTextClassification();
            if (canAssist()) {
                menu.add(16908353, 16908353, 0, textClassification.getLabel()).setIcon(textClassification.getIcon()).setShowAsAction(2);
                Editor.this.mMetricsLogger.write(new LogMaker(MetricsProto.MetricsEvent.TEXT_SELECTION_MENU_ITEM_ASSIST).setType(1).setSubtype(textClassification.getLogType()));
            }
        }

        private void updateReplaceItem(Menu menu) {
            boolean z2 = Editor.this.mTextView.isSuggestionsEnabled() && Editor.this.shouldOfferToShowSuggestions();
            boolean z3 = menu.findItem(16908340) != null;
            if (z2 && !z3) {
                menu.add(0, 16908340, 9, R.string.replace).setShowAsAction(1);
            } else {
                if (z2 || !z3) {
                    return;
                }
                menu.removeItem(16908340);
            }
        }

        private void updateSelectAllItem(Menu menu) {
            boolean zCanSelectAllText = Editor.this.mTextView.canSelectAllText();
            boolean z2 = menu.findItem(16908319) != null;
            if (zCanSelectAllText && !z2) {
                menu.add(0, 16908319, 8, 17039373).setShowAsAction(1);
            } else {
                if (zCanSelectAllText || !z2) {
                    return;
                }
                menu.removeItem(16908319);
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            Editor.this.getSelectionActionModeHelper().onSelectionAction(menuItem.getItemId());
            if (Editor.this.mProcessTextIntentActionsHandler.performMenuItemAction(menuItem)) {
                return true;
            }
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null && customCallback.onActionItemClicked(actionMode, menuItem)) {
                return true;
            }
            TextClassification textClassification = Editor.this.getSelectionActionModeHelper().getTextClassification();
            if (16908353 != menuItem.getItemId() || textClassification == null) {
                return Editor.this.mTextView.onTextContextMenuItem(menuItem.getItemId());
            }
            View.OnClickListener onClickListener = textClassification.getOnClickListener();
            if (onClickListener != null) {
                onClickListener.onClick(Editor.this.mTextView);
            } else {
                Intent intent = textClassification.getIntent();
                if (intent != null) {
                    TextClassification.createStartActivityOnClickListener(Editor.this.mTextView.getContext(), intent).onClick(Editor.this.mTextView);
                }
            }
            Editor.this.mMetricsLogger.action(MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_MENU_ITEM_ASSIST, textClassification.getLogType());
            Editor.this.stopTextActionMode();
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            actionMode.setTitle((CharSequence) null);
            actionMode.setSubtitle((CharSequence) null);
            actionMode.setTitleOptionalHint(true);
            populateMenuWithItems(menu);
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null && !customCallback.onCreateActionMode(actionMode, menu)) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionEnd());
                return false;
            }
            if (Editor.this.mTextView.canProcessText()) {
                Editor.this.mProcessTextIntentActionsHandler.onInitializeMenu(menu);
            }
            if (!menu.hasVisibleItems() && actionMode.getCustomView() == null) {
                return false;
            }
            if (this.mHasSelection && !Editor.this.mTextView.hasTransientState()) {
                Editor.this.mTextView.setHasTransientState(true);
            }
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            Editor.this.getSelectionActionModeHelper().onDestroyActionMode();
            Editor.this.mTextActionMode = null;
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null) {
                customCallback.onDestroyActionMode(actionMode);
            }
            if (!Editor.this.mPreserveSelection) {
                Selection.setSelection((Spannable) Editor.this.mTextView.getText(), Editor.this.mTextView.getSelectionEnd());
            }
            SelectionModifierCursorController selectionModifierCursorController = Editor.this.mSelectionModifierCursorController;
            if (selectionModifierCursorController != null) {
                selectionModifierCursorController.hide();
            }
        }

        @Override // android.view.ActionMode.Callback2
        public void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            if (!view.equals(Editor.this.mTextView) || Editor.this.mTextView.getLayout() == null) {
                super.onGetContentRect(actionMode, view, rect);
                return;
            }
            if (Editor.this.mTextView.getSelectionStart() != Editor.this.mTextView.getSelectionEnd()) {
                this.mSelectionPath.reset();
                Editor.this.mTextView.getLayout().getSelectionPath(Editor.this.mTextView.getSelectionStart(), Editor.this.mTextView.getSelectionEnd(), this.mSelectionPath);
                this.mSelectionPath.computeBounds(this.mSelectionBounds, true);
                this.mSelectionBounds.bottom += this.mHandleHeight;
            } else {
                Editor editor = Editor.this;
                if (editor.mCursorCount == 2) {
                    Rect bounds = editor.mCursorDrawable[0].getBounds();
                    Rect bounds2 = Editor.this.mCursorDrawable[1].getBounds();
                    this.mSelectionBounds.set(Math.min(bounds.left, bounds2.left), Math.min(bounds.top, bounds2.top), Math.max(bounds.right, bounds2.right), Math.max(bounds.bottom, bounds2.bottom) + this.mHandleHeight);
                } else {
                    Layout layout = editor.mTextView.getLayout();
                    int lineForOffset = layout.getLineForOffset(Editor.this.mTextView.getSelectionStart());
                    Editor editor2 = Editor.this;
                    float fClampHorizontalPosition = editor2.clampHorizontalPosition(null, layout.getPrimaryHorizontal(editor2.mTextView.getSelectionStart()));
                    this.mSelectionBounds.set(fClampHorizontalPosition, layout.getLineTop(lineForOffset), fClampHorizontalPosition, layout.getLineTop(lineForOffset + 1) + this.mHandleHeight);
                }
            }
            float fViewportToContentHorizontalOffset = Editor.this.mTextView.viewportToContentHorizontalOffset();
            float fViewportToContentVerticalOffset = Editor.this.mTextView.viewportToContentVerticalOffset();
            rect.set((int) Math.floor(this.mSelectionBounds.left + fViewportToContentHorizontalOffset), (int) Math.floor(this.mSelectionBounds.top + fViewportToContentVerticalOffset), (int) Math.ceil(this.mSelectionBounds.right + fViewportToContentHorizontalOffset), (int) Math.ceil(this.mSelectionBounds.bottom + fViewportToContentVerticalOffset));
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            updateSelectAllItem(menu);
            updateReplaceItem(menu);
            updateAssistMenuItem(menu);
            ActionMode.Callback customCallback = getCustomCallback();
            if (customCallback != null) {
                return customCallback.onPrepareActionMode(actionMode, menu);
            }
            return true;
        }
    }

    public static class TextRenderNode {
        boolean isDirty = true;
        boolean needsToBeShifted = true;
        RenderNode renderNode;

        public TextRenderNode(String str) {
            this.renderNode = RenderNode.create(str, null);
        }

        public boolean needsRecord() {
            return this.isDirty || !this.renderNode.isValid();
        }
    }

    public interface TextViewPositionListener {
        void updatePosition(int i2, int i3, boolean z2, boolean z3);
    }

    public static class UndoInputFilter implements InputFilter {
        private static final int MERGE_EDIT_MODE_FORCE_MERGE = 0;
        private static final int MERGE_EDIT_MODE_NEVER_MERGE = 1;
        private static final int MERGE_EDIT_MODE_NORMAL = 2;
        private final Editor mEditor;
        private boolean mExpanding;
        private boolean mHasComposition;
        private boolean mIsUserEdit;
        private boolean mPreviousOperationWasInSameBatchEdit;

        @Retention(RetentionPolicy.SOURCE)
        public @interface MergeMode {
        }

        public UndoInputFilter(Editor editor) {
            this.mEditor = editor;
        }

        private boolean canUndoEdit(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            Editor editor = this.mEditor;
            if (editor.mAllowUndo && !editor.mUndoManager.isInUndo() && Editor.isValidRange(charSequence, i2, i3) && Editor.isValidRange(spanned, i4, i5)) {
                return (i2 == i3 && i4 == i5) ? false : true;
            }
            return false;
        }

        private EditOperation getLastEdit() {
            return (EditOperation) this.mEditor.mUndoManager.getLastOperation(EditOperation.class, this.mEditor.mUndoOwner, 1);
        }

        private void handleEdit(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5, boolean z2) {
            int i6;
            if (isInTextWatcher() || this.mPreviousOperationWasInSameBatchEdit) {
                i6 = 0;
            } else {
                i6 = z2 ? 1 : 2;
            }
            EditOperation editOperation = new EditOperation(this.mEditor, TextUtils.substring(spanned, i4, i5), i4, TextUtils.substring(charSequence, i2, i3), this.mHasComposition);
            if (this.mHasComposition && TextUtils.equals(editOperation.mNewText, editOperation.mOldText)) {
                return;
            }
            recordEdit(editOperation, i6);
        }

        private static boolean isComposition(CharSequence charSequence) {
            if (!(charSequence instanceof Spannable)) {
                return false;
            }
            Spannable spannable = (Spannable) charSequence;
            return BaseInputConnection.getComposingSpanStart(spannable) < BaseInputConnection.getComposingSpanEnd(spannable);
        }

        private boolean isInTextWatcher() {
            CharSequence text = this.mEditor.mTextView.getText();
            return (text instanceof SpannableStringBuilder) && ((SpannableStringBuilder) text).getTextWatcherDepth() > 0;
        }

        private void recordEdit(EditOperation editOperation, int i2) {
            UndoManager undoManager = this.mEditor.mUndoManager;
            undoManager.beginUpdate("Edit text");
            EditOperation lastEdit = getLastEdit();
            if (lastEdit == null) {
                undoManager.addOperation(editOperation, 0);
            } else if (i2 == 0) {
                lastEdit.forceMergeWith(editOperation);
            } else if (!this.mIsUserEdit || i2 != 2 || !lastEdit.mergeWith(editOperation)) {
                undoManager.commitState(this.mEditor.mUndoOwner);
                undoManager.addOperation(editOperation, 0);
            }
            this.mPreviousOperationWasInSameBatchEdit = this.mIsUserEdit;
            undoManager.endUpdate();
        }

        public void beginBatchEdit() {
            this.mIsUserEdit = true;
        }

        public void endBatchEdit() {
            this.mIsUserEdit = false;
            this.mPreviousOperationWasInSameBatchEdit = false;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0028  */
        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            boolean z2;
            if (!canUndoEdit(charSequence, i2, i3, spanned, i4, i5)) {
                return null;
            }
            boolean z3 = this.mHasComposition;
            this.mHasComposition = isComposition(charSequence);
            boolean z4 = this.mExpanding;
            int i6 = i3 - i2;
            int i7 = i5 - i4;
            if (i6 == i7) {
                z2 = false;
            } else {
                boolean z5 = i6 > i7;
                this.mExpanding = z5;
                if (!z3 || z5 == z4) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            handleEdit(charSequence, i2, i3, spanned, i4, i5, z2);
            return null;
        }

        public void freezeLastEdit() {
            this.mEditor.mUndoManager.beginUpdate("Edit text");
            EditOperation lastEdit = getLastEdit();
            if (lastEdit != null) {
                lastEdit.mFrozen = true;
            }
            this.mEditor.mUndoManager.endUpdate();
        }

        public void restoreInstanceState(Parcel parcel) {
            this.mIsUserEdit = parcel.readInt() != 0;
            this.mHasComposition = parcel.readInt() != 0;
            this.mExpanding = parcel.readInt() != 0;
            this.mPreviousOperationWasInSameBatchEdit = parcel.readInt() != 0;
        }

        public void saveInstanceState(Parcel parcel) {
            parcel.writeInt(this.mIsUserEdit ? 1 : 0);
            parcel.writeInt(this.mHasComposition ? 1 : 0);
            parcel.writeInt(this.mExpanding ? 1 : 0);
            parcel.writeInt(this.mPreviousOperationWasInSameBatchEdit ? 1 : 0);
        }
    }

    public Editor(TextView textView) {
        UndoManager undoManager = new UndoManager();
        this.mUndoManager = undoManager;
        this.mUndoOwner = undoManager.getOwner("Editor", this);
        this.mUndoInputFilter = new UndoInputFilter(this);
        this.mAllowUndo = true;
        this.mMetricsLogger = new MetricsLogger();
        this.mInputType = 0;
        this.mCursorVisible = true;
        this.mShowSoftInputOnFocus = true;
        this.mCursorDrawable = new Drawable[2];
        this.mTapState = 0;
        this.mLastTouchUpTime = 0L;
        this.mCursorAnchorInfoNotifier = new CursorAnchorInfoNotifier();
        this.mShowFloatingToolbar = new Runnable() { // from class: android.widget.Editor.1
            @Override // java.lang.Runnable
            public void run() {
                if (Editor.this.mTextActionMode != null) {
                    Editor.this.mTextActionMode.hide(0L);
                }
            }
        };
        this.mIsInsertionActionModeStartPending = false;
        this.mSuggestionHelper = new SuggestionHelper();
        this.mOnContextMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: android.widget.Editor.4
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (Editor.this.mProcessTextIntentActionsHandler.performMenuItemAction(menuItem)) {
                    return true;
                }
                return Editor.this.mTextView.onTextContextMenuItem(menuItem.getItemId());
            }
        };
        this.mTextView = textView;
        textView.setFilters(textView.getFilters());
        this.mProcessTextIntentActionsHandler = new ProcessTextIntentActionsHandler();
        this.mHapticTextHandleEnabled = textView.getContext().getResources().getBoolean(R.bool.config_enableHapticTextHandle);
    }

    private void chooseSize(PopupWindow popupWindow, CharSequence charSequence, TextView textView) {
        int paddingRight = textView.getPaddingRight() + textView.getPaddingLeft();
        int paddingBottom = textView.getPaddingBottom() + textView.getPaddingTop();
        StaticLayout staticLayout = new StaticLayout(charSequence, textView.getPaint(), this.mTextView.getResources().getDimensionPixelSize(R.dimen.textview_error_popup_default_width), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        float fMax = 0.0f;
        for (int i2 = 0; i2 < staticLayout.getLineCount(); i2++) {
            fMax = Math.max(fMax, staticLayout.getLineWidth(i2));
        }
        popupWindow.setWidth(paddingRight + ((int) Math.ceil(fMax)));
        popupWindow.setHeight(staticLayout.getHeight() + paddingBottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int clampHorizontalPosition(Drawable drawable, float f2) {
        int intrinsicWidth;
        float fMax = Math.max(0.5f, f2 - 0.5f);
        if (this.mTempRect == null) {
            this.mTempRect = new Rect();
        }
        if (drawable != null) {
            drawable.getPadding(this.mTempRect);
            intrinsicWidth = drawable.getIntrinsicWidth();
        } else {
            this.mTempRect.setEmpty();
            intrinsicWidth = 0;
        }
        int scrollX = this.mTextView.getScrollX();
        float f3 = fMax - scrollX;
        int width = (this.mTextView.getWidth() - this.mTextView.getCompoundPaddingLeft()) - this.mTextView.getCompoundPaddingRight();
        float f4 = width;
        if (f3 >= f4 - 1.0f) {
            return (width + scrollX) - (intrinsicWidth - this.mTempRect.right);
        }
        return (Math.abs(f3) <= 1.0f || (TextUtils.isEmpty(this.mTextView.getText()) && ((float) (1048576 - scrollX)) <= f4 + 1.0f && fMax <= 1.0f)) ? scrollX - this.mTempRect.left : ((int) fMax) - this.mTempRect.left;
    }

    private void discardTextDisplayLists() {
        if (this.mTextRenderNodes == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            TextRenderNode[] textRenderNodeArr = this.mTextRenderNodes;
            if (i2 >= textRenderNodeArr.length) {
                return;
            }
            TextRenderNode textRenderNode = textRenderNodeArr[i2];
            RenderNode renderNode = textRenderNode != null ? textRenderNode.renderNode : null;
            if (renderNode != null && renderNode.isValid()) {
                renderNode.discardDisplayList();
            }
            i2++;
        }
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
        int i3;
        ArraySet<Integer> arraySet;
        int i4;
        int[] iArr;
        DynamicLayout dynamicLayout;
        int iMax;
        TextRenderNode textRenderNode;
        int i5;
        int i6;
        TextRenderNode textRenderNode2;
        TextRenderNode textRenderNode3;
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
        if (this.mTextRenderNodes == null) {
            this.mTextRenderNodes = (TextRenderNode[]) ArrayUtils.emptyArray(TextRenderNode.class);
        }
        DynamicLayout dynamicLayout2 = (DynamicLayout) layout;
        int[] blockEndLines = dynamicLayout2.getBlockEndLines();
        int[] blockIndices = dynamicLayout2.getBlockIndices();
        int numberOfBlocks = dynamicLayout2.getNumberOfBlocks();
        int indexFirstChangedBlock = dynamicLayout2.getIndexFirstChangedBlock();
        ArraySet<Integer> blocksAlwaysNeedToBeRedrawn = dynamicLayout2.getBlocksAlwaysNeedToBeRedrawn();
        int i7 = -1;
        int i8 = 0;
        boolean z2 = true;
        if (blocksAlwaysNeedToBeRedrawn != null) {
            for (int i9 = 0; i9 < blocksAlwaysNeedToBeRedrawn.size(); i9++) {
                int blockIndex = dynamicLayout2.getBlockIndex(blocksAlwaysNeedToBeRedrawn.valueAt(i9).intValue());
                if (blockIndex != -1 && (textRenderNode3 = this.mTextRenderNodes[blockIndex]) != null) {
                    textRenderNode3.needsToBeShifted = true;
                }
            }
        }
        int iBinarySearch = Arrays.binarySearch(blockEndLines, 0, numberOfBlocks, iUnpackRangeStartFromLong);
        if (iBinarySearch < 0) {
            iBinarySearch = -(iBinarySearch + 1);
        }
        int iMin = Math.min(indexFirstChangedBlock, iBinarySearch);
        int iDrawHardwareAcceleratedInner = 0;
        while (true) {
            if (iMin >= numberOfBlocks) {
                i3 = i8;
                arraySet = blocksAlwaysNeedToBeRedrawn;
                i4 = numberOfBlocks;
                iArr = blockEndLines;
                dynamicLayout = dynamicLayout2;
                iMax = i4;
                break;
            }
            int i10 = blockIndices[iMin];
            if (iMin >= indexFirstChangedBlock && i10 != i7 && (textRenderNode2 = this.mTextRenderNodes[i10]) != null) {
                textRenderNode2.needsToBeShifted = z2;
            }
            if (blockEndLines[iMin] >= iUnpackRangeStartFromLong) {
                i5 = iMin;
                i3 = i8;
                arraySet = blocksAlwaysNeedToBeRedrawn;
                i6 = indexFirstChangedBlock;
                i4 = numberOfBlocks;
                iArr = blockEndLines;
                dynamicLayout = dynamicLayout2;
                iDrawHardwareAcceleratedInner = drawHardwareAcceleratedInner(canvas, layout, path, paint, i2, blockEndLines, blockIndices, i5, i4, iDrawHardwareAcceleratedInner);
                if (iArr[i5] >= iUnpackRangeEndFromLong) {
                    iMax = Math.max(i6, i5 + 1);
                    break;
                }
            } else {
                i5 = iMin;
                i3 = i8;
                arraySet = blocksAlwaysNeedToBeRedrawn;
                i6 = indexFirstChangedBlock;
                i4 = numberOfBlocks;
                iArr = blockEndLines;
                dynamicLayout = dynamicLayout2;
            }
            iMin = i5 + 1;
            blocksAlwaysNeedToBeRedrawn = arraySet;
            indexFirstChangedBlock = i6;
            dynamicLayout2 = dynamicLayout;
            z2 = z2;
            i8 = i3;
            numberOfBlocks = i4;
            blockEndLines = iArr;
            iUnpackRangeStartFromLong = iUnpackRangeStartFromLong;
            i7 = -1;
        }
        if (arraySet != null) {
            int iDrawHardwareAcceleratedInner2 = iDrawHardwareAcceleratedInner;
            for (int i11 = i3; i11 < arraySet.size(); i11++) {
                int iIntValue = arraySet.valueAt(i11).intValue();
                int blockIndex2 = dynamicLayout.getBlockIndex(iIntValue);
                if (blockIndex2 == -1 || (textRenderNode = this.mTextRenderNodes[blockIndex2]) == null || textRenderNode.needsToBeShifted) {
                    iDrawHardwareAcceleratedInner2 = drawHardwareAcceleratedInner(canvas, layout, path, paint, i2, iArr, blockIndices, iIntValue, i4, iDrawHardwareAcceleratedInner2);
                }
            }
        }
        dynamicLayout.setIndexFirstChangedBlock(iMax);
    }

    private int drawHardwareAcceleratedInner(Canvas canvas, Layout layout, Path path, Paint paint, int i2, int[] iArr, int[] iArr2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8 = iArr[i3];
        int availableDisplayListIndex = iArr2[i3];
        if (availableDisplayListIndex == -1) {
            availableDisplayListIndex = getAvailableDisplayListIndex(iArr2, i4, i5);
            iArr2[i3] = availableDisplayListIndex;
            TextRenderNode textRenderNode = this.mTextRenderNodes[availableDisplayListIndex];
            if (textRenderNode != null) {
                textRenderNode.isDirty = true;
            }
            i6 = availableDisplayListIndex + 1;
        } else {
            i6 = i5;
        }
        TextRenderNode[] textRenderNodeArr = this.mTextRenderNodes;
        if (textRenderNodeArr[availableDisplayListIndex] == null) {
            textRenderNodeArr[availableDisplayListIndex] = new TextRenderNode(android.accessibilityservice.c.d("Text ", availableDisplayListIndex));
        }
        boolean zNeedsRecord = this.mTextRenderNodes[availableDisplayListIndex].needsRecord();
        TextRenderNode textRenderNode2 = this.mTextRenderNodes[availableDisplayListIndex];
        RenderNode renderNode = textRenderNode2.renderNode;
        if (textRenderNode2.needsToBeShifted || zNeedsRecord) {
            int i9 = i3 == 0 ? 0 : iArr[i3 - 1] + 1;
            int lineTop = layout.getLineTop(i9);
            int lineBottom = layout.getLineBottom(i8);
            int width = this.mTextView.getWidth();
            if (this.mTextView.getHorizontallyScrolling()) {
                float fMin = Float.MAX_VALUE;
                float fMax = Float.MIN_VALUE;
                for (int i10 = i9; i10 <= i8; i10++) {
                    fMin = Math.min(fMin, layout.getLineLeft(i10));
                    fMax = Math.max(fMax, layout.getLineRight(i10));
                }
                int i11 = (int) (fMax + 0.5f);
                i7 = (int) fMin;
                width = i11;
            } else {
                i7 = 0;
            }
            if (zNeedsRecord) {
                DisplayListCanvas displayListCanvasStart = renderNode.start(width - i7, lineBottom - lineTop);
                try {
                    displayListCanvasStart.translate(-i7, -lineTop);
                    layout.drawText(displayListCanvasStart, i9, i8);
                    this.mTextRenderNodes[availableDisplayListIndex].isDirty = false;
                    renderNode.end(displayListCanvasStart);
                    renderNode.setClipToBounds(false);
                } catch (Throwable th) {
                    renderNode.end(displayListCanvasStart);
                    renderNode.setClipToBounds(false);
                    throw th;
                }
            }
            renderNode.setLeftTopRightBottom(i7, lineTop, width, lineBottom);
            this.mTextRenderNodes[availableDisplayListIndex].needsToBeShifted = false;
        }
        ((DisplayListCanvas) canvas).drawRenderNode(renderNode);
        return i6;
    }

    private boolean extractTextInternal(ExtractedTextRequest extractedTextRequest, int i2, int i3, int i4, ExtractedText extractedText) {
        CharSequence text;
        if (extractedTextRequest == null || extractedText == null || (text = this.mTextView.getText()) == null) {
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
            extractedText.text = "";
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
        return (this.mTextView.isInExtractedMode() || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null || !inputMethodManagerPeekInstance.isFullscreenMode()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SuggestionSpan findEquivalentSuggestionSpan(SuggestionSpanInfo suggestionSpanInfo) {
        Editable editable = (Editable) this.mTextView.getText();
        if (editable.getSpanStart(suggestionSpanInfo.mSuggestionSpan) >= 0) {
            return suggestionSpanInfo.mSuggestionSpan;
        }
        for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) editable.getSpans(suggestionSpanInfo.mSpanStart, suggestionSpanInfo.mSpanEnd, SuggestionSpan.class)) {
            if (editable.getSpanStart(suggestionSpan) == suggestionSpanInfo.mSpanStart && editable.getSpanEnd(suggestionSpan) == suggestionSpanInfo.mSpanEnd && suggestionSpan.equals(suggestionSpanInfo.mSuggestionSpan)) {
                return suggestionSpan;
            }
        }
        return null;
    }

    private int getAvailableDisplayListIndex(int[] iArr, int i2, int i3) {
        int length = this.mTextRenderNodes.length;
        while (i3 < length) {
            boolean z2 = false;
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
        this.mTextRenderNodes = (TextRenderNode[]) GrowingArrayUtils.append(this.mTextRenderNodes, length, (Object) null);
        return length;
    }

    private long getCharClusterRange(int i2) {
        if (i2 < this.mTextView.getText().length()) {
            int nextCursorOffset = getNextCursorOffset(i2, true);
            return TextUtils.packRangeInLong(getNextCursorOffset(nextCursorOffset, false), nextCursorOffset);
        }
        if (i2 - 1 < 0) {
            return TextUtils.packRangeInLong(i2, i2);
        }
        int nextCursorOffset2 = getNextCursorOffset(i2, false);
        return TextUtils.packRangeInLong(nextCursorOffset2, getNextCursorOffset(nextCursorOffset2, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentLineAdjustedForSlop(Layout layout, int i2, float f2) {
        int lineAtCoordinate = this.mTextView.getLineAtCoordinate(f2);
        if (layout == null || i2 > layout.getLineCount() || layout.getLineCount() <= 0 || i2 < 0 || Math.abs(lineAtCoordinate - i2) >= 2) {
            return lineAtCoordinate;
        }
        float fViewportToContentVerticalOffset = this.mTextView.viewportToContentVerticalOffset();
        int lineCount = layout.getLineCount();
        float lineHeight = this.mTextView.getLineHeight() * 0.5f;
        float fMax = Math.max((layout.getLineTop(i2) + fViewportToContentVerticalOffset) - lineHeight, layout.getLineTop(0) + fViewportToContentVerticalOffset + lineHeight);
        int i3 = lineCount - 1;
        float fMin = Math.min(layout.getLineBottom(i2) + fViewportToContentVerticalOffset + lineHeight, (layout.getLineBottom(i3) + fViewportToContentVerticalOffset) - lineHeight);
        if (f2 <= fMax) {
            return Math.max(i2 - 1, 0);
        }
        return f2 >= fMin ? Math.min(i2 + 1, i3) : i2;
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
        return ((m.b(bottom, i2, 2, compoundPaddingTop) + i2) - this.mTextView.getHeight()) - ((int) ((this.mTextView.getResources().getDisplayMetrics().density * 2.0f) + 0.5f));
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    public int getNextCursorOffset(int i2, boolean z2) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return i2;
        }
        return z2 == layout.isRtlCharAt(i2) ? layout.getOffsetToLeftOf(i2) : layout.getOffsetToRightOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getParagraphsRange(int i2, int i3) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return TextUtils.packRangeInLong(-1, -1);
        }
        CharSequence text = this.mTextView.getText();
        int lineForOffset = layout.getLineForOffset(i2);
        while (lineForOffset > 0 && text.charAt(layout.getLineEnd(lineForOffset - 1) - 1) != '\n') {
            lineForOffset--;
        }
        int lineForOffset2 = layout.getLineForOffset(i3);
        while (lineForOffset2 < layout.getLineCount() - 1 && text.charAt(layout.getLineEnd(lineForOffset2) - 1) != '\n') {
            lineForOffset2++;
        }
        return TextUtils.packRangeInLong(layout.getLineStart(lineForOffset), layout.getLineEnd(lineForOffset2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PositionListener getPositionListener() {
        if (this.mPositionListener == null) {
            this.mPositionListener = new PositionListener();
        }
        return this.mPositionListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SelectionActionModeHelper getSelectionActionModeHelper() {
        if (this.mSelectionActionModeHelper == null) {
            this.mSelectionActionModeHelper = new SelectionActionModeHelper(this);
        }
        return this.mSelectionActionModeHelper;
    }

    private View.DragShadowBuilder getTextThumbnailBuilder(int i2, int i3) {
        TextView textView = (TextView) View.inflate(this.mTextView.getContext(), R.layout.text_drag_thumbnail, null);
        if (textView == null) {
            throw new IllegalArgumentException("Unable to inflate text drag thumbnail");
        }
        if (i3 - i2 > 20) {
            i3 = TextUtils.unpackRangeEndFromLong(getCharClusterRange(i2 + 20));
        }
        textView.setText(this.mTextView.getTransformedText(i2, i3));
        textView.setTextColor(this.mTextView.getTextColors());
        textView.setTextAppearance(16);
        textView.setGravity(17);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        textView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        textView.invalidate();
        return new View.DragShadowBuilder(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWordEnd(int i2) {
        int punctuationEnd = getWordIteratorWithText().isAfterPunctuation(getWordIteratorWithText().nextBoundary(i2)) ? getWordIteratorWithText().getPunctuationEnd(i2) : getWordIteratorWithText().getNextWordEndOnTwoWordBoundary(i2);
        return punctuationEnd == -1 ? i2 : punctuationEnd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WordIterator getWordIteratorWithText() {
        if (this.mWordIteratorWithText == null) {
            this.mWordIteratorWithText = new WordIterator(this.mTextView.getTextServicesLocale());
            this.mUpdateWordIteratorText = true;
        }
        if (this.mUpdateWordIteratorText) {
            CharSequence text = this.mTextView.getText();
            this.mWordIteratorWithText.setCharSequence(text, 0, text.length());
            this.mUpdateWordIteratorText = false;
        }
        return this.mWordIteratorWithText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWordStart(int i2) {
        int punctuationBeginning = getWordIteratorWithText().isOnPunctuation(getWordIteratorWithText().prevBoundary(i2)) ? getWordIteratorWithText().getPunctuationBeginning(i2) : getWordIteratorWithText().getPrevWordBeginningOnTwoWordsBoundary(i2);
        return punctuationBeginning == -1 ? i2 : punctuationBeginning;
    }

    private void hideCursorControllers() {
        if (this.mSuggestionsPopupWindow != null && (this.mTextView.isInExtractedMode() || !this.mSuggestionsPopupWindow.isShowingUp())) {
            this.mSuggestionsPopupWindow.hide();
        }
        hideInsertionPointCursorController();
    }

    private void hideError() {
        ErrorPopup errorPopup = this.mErrorPopup;
        if (errorPopup != null && errorPopup.isShowing()) {
            this.mErrorPopup.dismiss();
        }
        this.mShowErrorAfterAttach = false;
    }

    private void hideSpanControllers() {
        SpanController spanController = this.mSpanController;
        if (spanController != null) {
            spanController.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateActionMode() {
        ActionMode actionMode = this.mTextActionMode;
        if (actionMode != null) {
            actionMode.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCursorInsideEasyCorrectionSpan() {
        for (SuggestionSpan suggestionSpan : (SuggestionSpan[]) ((Spannable) this.mTextView.getText()).getSpans(this.mTextView.getSelectionStart(), this.mTextView.getSelectionEnd(), SuggestionSpan.class)) {
            if ((suggestionSpan.getFlags() & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOffsetVisible(int i2) {
        Layout layout = this.mTextView.getLayout();
        if (layout == null) {
            return false;
        }
        int lineBottom = layout.getLineBottom(layout.getLineForOffset(i2));
        int primaryHorizontal = (int) layout.getPrimaryHorizontal(i2);
        TextView textView = this.mTextView;
        return textView.isPositionVisible(textView.viewportToContentHorizontalOffset() + primaryHorizontal, this.mTextView.viewportToContentVerticalOffset() + lineBottom);
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
    public static boolean isValidRange(CharSequence charSequence, int i2, int i3) {
        return i2 >= 0 && i2 <= i3 && i3 <= charSequence.length();
    }

    private boolean needsToSelectAllToSelectWordOrParagraph() {
        if (this.mTextView.hasPasswordTransformationMethod()) {
            return true;
        }
        int inputType = this.mTextView.getInputType();
        int i2 = inputType & 15;
        int i3 = inputType & InputType.TYPE_MASK_VARIATION;
        return i2 == 2 || i2 == 3 || i2 == 4 || i3 == 16 || i3 == 32 || i3 == 208 || i3 == 176;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceWithSuggestion(SuggestionInfo suggestionInfo) {
        int i2;
        SuggestionSpan suggestionSpanFindEquivalentSuggestionSpan = findEquivalentSuggestionSpan(suggestionInfo.mSuggestionSpanInfo);
        if (suggestionSpanFindEquivalentSuggestionSpan == null) {
            return;
        }
        Editable editable = (Editable) this.mTextView.getText();
        int spanStart = editable.getSpanStart(suggestionSpanFindEquivalentSuggestionSpan);
        int spanEnd = editable.getSpanEnd(suggestionSpanFindEquivalentSuggestionSpan);
        if (spanStart < 0 || spanEnd <= spanStart) {
            return;
        }
        String strSubstring = TextUtils.substring(editable, spanStart, spanEnd);
        SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) editable.getSpans(spanStart, spanEnd, SuggestionSpan.class);
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
            if ((flags & 2) != 0) {
                suggestionSpan.setFlags(flags & (-3) & (-2));
            }
        }
        suggestionSpanFindEquivalentSuggestionSpan.notifySelection(this.mTextView.getContext(), strSubstring, suggestionInfo.mSuggestionIndex);
        String string = suggestionInfo.mText.subSequence(suggestionInfo.mSuggestionStart, suggestionInfo.mSuggestionEnd).toString();
        this.mTextView.replaceText_internal(spanStart, spanEnd, string);
        suggestionSpanFindEquivalentSuggestionSpan.getSuggestions()[suggestionInfo.mSuggestionIndex] = strSubstring;
        int length2 = string.length() - (spanEnd - spanStart);
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            if (i5 <= spanStart && (i2 = iArr2[i4]) >= spanEnd) {
                TextView textView = this.mTextView;
                textView.setSpan_internal(suggestionSpanArr[i4], i5, Math.min(i2 + length2, textView.length()), iArr3[i4]);
            }
        }
        int iMin = Math.min(spanEnd + length2, this.mTextView.length());
        this.mTextView.setCursorPosition_internal(iMin, iMin);
    }

    private void resumeBlink() {
        Blink blink = this.mBlink;
        if (blink != null) {
            blink.uncancel();
            makeBlink();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean selectCurrentParagraph() {
        if (!this.mTextView.canSelectText()) {
            return false;
        }
        if (needsToSelectAllToSelectWordOrParagraph()) {
            return this.mTextView.selectAllText();
        }
        long lastTouchOffsets = getLastTouchOffsets();
        long paragraphsRange = getParagraphsRange(TextUtils.unpackRangeStartFromLong(lastTouchOffsets), TextUtils.unpackRangeEndFromLong(lastTouchOffsets));
        int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(paragraphsRange);
        int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(paragraphsRange);
        if (iUnpackRangeStartFromLong >= iUnpackRangeEndFromLong) {
            return false;
        }
        Selection.setSelection((Spannable) this.mTextView.getText(), iUnpackRangeStartFromLong, iUnpackRangeEndFromLong);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean selectCurrentWordAndStartDrag() {
        Runnable runnable = this.mInsertionActionModeRunnable;
        if (runnable != null) {
            this.mTextView.removeCallbacks(runnable);
        }
        if (extractedTextModeWillBeStarted() || !checkField()) {
            return false;
        }
        if (!this.mTextView.hasSelection() && !selectCurrentWord()) {
            return false;
        }
        stopTextActionModeWithPreservingSelection();
        getSelectionController().enterDrag(2);
        return true;
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

    private boolean shouldFilterOutTouchEvent(MotionEvent motionEvent) {
        if (!motionEvent.isFromSource(8194)) {
            return false;
        }
        boolean z2 = ((this.mLastButtonState ^ motionEvent.getButtonState()) & 1) != 0;
        int actionMasked = motionEvent.getActionMasked();
        if ((actionMasked == 0 || actionMasked == 1) && !z2) {
            return true;
        }
        return actionMasked == 2 && !motionEvent.isButtonPressed(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldOfferToShowSuggestions() {
        CharSequence text = this.mTextView.getText();
        if (!(text instanceof Spannable)) {
            return false;
        }
        Spannable spannable = (Spannable) text;
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        SuggestionSpan[] suggestionSpanArr = (SuggestionSpan[]) spannable.getSpans(selectionStart, selectionEnd, SuggestionSpan.class);
        if (suggestionSpanArr.length == 0) {
            return false;
        }
        if (selectionStart == selectionEnd) {
            for (SuggestionSpan suggestionSpan : suggestionSpanArr) {
                if (suggestionSpan.getSuggestions().length > 0) {
                    return true;
                }
            }
            return false;
        }
        int length = this.mTextView.getText().length();
        int length2 = this.mTextView.getText().length();
        boolean z2 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i2 = 0; i2 < suggestionSpanArr.length; i2++) {
            int spanStart = spannable.getSpanStart(suggestionSpanArr[i2]);
            int spanEnd = spannable.getSpanEnd(suggestionSpanArr[i2]);
            length = Math.min(length, spanStart);
            iMax = Math.max(iMax, spanEnd);
            if (selectionStart >= spanStart && selectionStart <= spanEnd) {
                z2 = z2 || suggestionSpanArr[i2].getSuggestions().length > 0;
                length2 = Math.min(length2, spanStart);
                iMax2 = Math.max(iMax2, spanEnd);
            }
        }
        return z2 && length2 < iMax2 && length >= length2 && iMax <= iMax2;
    }

    private void showError() {
        if (this.mTextView.getWindowToken() == null) {
            this.mShowErrorAfterAttach = true;
            return;
        }
        if (this.mErrorPopup == null) {
            TextView textView = (TextView) LayoutInflater.from(this.mTextView.getContext()).inflate(R.layout.textview_hint, (ViewGroup) null);
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

    private void showFloatingToolbar() {
        if (this.mTextActionMode != null) {
            this.mTextView.postDelayed(this.mShowFloatingToolbar, ViewConfiguration.getDoubleTapTimeout());
            invalidateActionModeAsync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDragAndDrop() {
        getSelectionActionModeHelper().onSelectionDrag();
        if (this.mTextView.isInExtractedMode()) {
            return;
        }
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        this.mTextView.startDragAndDrop(ClipData.newPlainText(null, this.mTextView.getTransformedText(selectionStart, selectionEnd)), getTextThumbnailBuilder(selectionStart, selectionEnd), new DragLocalState(this.mTextView, selectionStart, selectionEnd), 256);
        stopTextActionMode();
        if (hasSelectionController()) {
            getSelectionController().resetTouchOffsets();
        }
    }

    private void stopTextActionModeWithPreservingSelection() {
        if (this.mTextActionMode != null) {
            this.mRestartActionModeOnNextRefresh = true;
        }
        this.mPreserveSelection = true;
        stopTextActionMode();
        this.mPreserveSelection = false;
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
            drawableArr[i2] = this.mTextView.getContext().getDrawable(this.mTextView.mCursorDrawableRes);
        }
        Drawable drawable = this.mCursorDrawable[i2];
        int iClampHorizontalPosition = clampHorizontalPosition(drawable, f2);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        Rect rect = this.mTempRect;
        drawable.setBounds(iClampHorizontalPosition, i3 - rect.top, intrinsicWidth + iClampHorizontalPosition, i4 + rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFloatingToolbarVisibility(MotionEvent motionEvent) {
        if (this.mTextActionMode != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    hideFloatingToolbar(-1);
                    return;
                } else if (actionMasked != 3) {
                    return;
                }
            }
            showFloatingToolbar();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpellCheckSpans(int i2, int i3, boolean z2) {
        this.mTextView.removeAdjacentSuggestionSpans(i2);
        this.mTextView.removeAdjacentSuggestionSpans(i3);
        if (this.mTextView.isTextEditable() && this.mTextView.isSuggestionsEnabled() && !this.mTextView.isInExtractedMode()) {
            if (this.mSpellChecker == null && z2) {
                this.mSpellChecker = new SpellChecker(this.mTextView);
            }
            SpellChecker spellChecker = this.mSpellChecker;
            if (spellChecker != null) {
                spellChecker.spellCheck(i2, i3);
            }
        }
    }

    private void updateTapState(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            boolean zIsFromSource = motionEvent.isFromSource(8194);
            int i2 = this.mTapState;
            if ((i2 != 1 && (i2 != 2 || !zIsFromSource)) || SystemClock.uptimeMillis() - this.mLastTouchUpTime > ViewConfiguration.getDoubleTapTimeout()) {
                this.mTapState = 1;
            } else if (this.mTapState == 1) {
                this.mTapState = 2;
            } else {
                this.mTapState = 3;
            }
        }
        if (actionMasked == 1) {
            this.mLastTouchUpTime = SystemClock.uptimeMillis();
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
                this.mUndoInputFilter.beginBatchEdit();
                this.mTextView.onBeginBatchEdit();
            }
        }
    }

    public boolean canRedo() {
        return this.mAllowUndo && this.mUndoManager.countRedos(new UndoOwner[]{this.mUndoOwner}) > 0;
    }

    public boolean canUndo() {
        return this.mAllowUndo && this.mUndoManager.countUndos(new UndoOwner[]{this.mUndoOwner}) > 0;
    }

    public boolean checkField() {
        if (this.mTextView.canSelectText() && this.mTextView.requestFocus()) {
            return true;
        }
        Log.w("TextView", "TextView does not support text selection. Selection cancelled.");
        return false;
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
        this.mUndoInputFilter.endBatchEdit();
        if (inputMethodState.mContentChanged || inputMethodState.mSelectionModeChanged) {
            this.mTextView.updateAfterEdit();
            reportExtractedText();
        } else if (inputMethodState.mCursorChanged) {
            this.mTextView.invalidateCursor();
        }
        sendUpdateSelection();
        if (this.mTextActionMode != null) {
            CursorController selectionController = this.mTextView.hasSelection() ? getSelectionController() : getInsertionController();
            if (selectionController == null || selectionController.isActive() || selectionController.isCursorBeingModified()) {
                return;
            }
            selectionController.show();
        }
    }

    public void forgetUndoRedo() {
        UndoOwner[] undoOwnerArr = {this.mUndoOwner};
        this.mUndoManager.forgetUndos(undoOwnerArr, -1);
        this.mUndoManager.forgetRedos(undoOwnerArr, -1);
    }

    public Drawable[] getCursorDrawable() {
        return this.mCursorDrawable;
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

    public SuggestionsPopupWindow getSuggestionsPopupWindowForTesting() {
        return this.mSuggestionsPopupWindow;
    }

    public ActionMode getTextActionMode() {
        return this.mTextActionMode;
    }

    public TextView getTextView() {
        return this.mTextView;
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

    public void hideCursorAndSpanControllers() {
        hideCursorControllers();
        hideSpanControllers();
    }

    public void hideFloatingToolbar(int i2) {
        if (this.mTextActionMode != null) {
            this.mTextView.removeCallbacks(this.mShowFloatingToolbar);
            this.mTextActionMode.hide(i2);
        }
    }

    public void hideInsertionPointCursorController() {
        InsertionPointCursorController insertionPointCursorController = this.mInsertionPointCursorController;
        if (insertionPointCursorController != null) {
            insertionPointCursorController.hide();
        }
    }

    public void invalidateActionModeAsync() {
        getSelectionActionModeHelper().invalidateActionModeAsync();
    }

    public void invalidateHandlesAndActionMode() {
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.invalidateHandles();
        }
        InsertionPointCursorController insertionPointCursorController = this.mInsertionPointCursorController;
        if (insertionPointCursorController != null) {
            insertionPointCursorController.invalidateHandle();
        }
        if (this.mTextActionMode != null) {
            invalidateActionMode();
        }
    }

    public void invalidateTextDisplayList(Layout layout, int i2, int i3) {
        if (this.mTextRenderNodes == null || !(layout instanceof DynamicLayout)) {
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
                this.mTextRenderNodes[i5].isDirty = true;
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

    public void makeBlink() {
        if (!shouldBlink()) {
            Blink blink = this.mBlink;
            if (blink != null) {
                this.mTextView.removeCallbacks(blink);
                return;
            }
            return;
        }
        this.mShowCursor = SystemClock.uptimeMillis();
        if (this.mBlink == null) {
            this.mBlink = new Blink();
        }
        this.mTextView.removeCallbacks(this.mBlink);
        this.mTextView.postDelayed(this.mBlink, 500L);
    }

    public void onAttachedToWindow() {
        if (this.mShowErrorAfterAttach) {
            showError();
            this.mShowErrorAfterAttach = false;
        }
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
        if (this.mTextView.hasSelection()) {
            refreshTextActionMode();
        }
        getPositionListener().addSubscriber(this.mCursorAnchorInfoNotifier, true);
        resumeBlink();
    }

    public void onCommitCorrection(CorrectionInfo correctionInfo) {
        CorrectionHighlighter correctionHighlighter = this.mCorrectionHighlighter;
        if (correctionHighlighter == null) {
            this.mCorrectionHighlighter = new CorrectionHighlighter();
        } else {
            correctionHighlighter.invalidate(false);
        }
        this.mCorrectionHighlighter.highlight(correctionInfo);
        this.mUndoInputFilter.freezeLastEdit();
    }

    public void onCreateContextMenu(ContextMenu contextMenu) {
        int offsetForPosition;
        if (this.mIsBeingLongClicked || Float.isNaN(this.mContextMenuAnchorX) || Float.isNaN(this.mContextMenuAnchorY) || (offsetForPosition = this.mTextView.getOffsetForPosition(this.mContextMenuAnchorX, this.mContextMenuAnchorY)) == -1) {
            return;
        }
        stopTextActionModeWithPreservingSelection();
        if (this.mTextView.canSelectText()) {
            if (!(this.mTextView.hasSelection() && offsetForPosition >= this.mTextView.getSelectionStart() && offsetForPosition <= this.mTextView.getSelectionEnd())) {
                Selection.setSelection((Spannable) this.mTextView.getText(), offsetForPosition);
                stopTextActionMode();
            }
        }
        if (shouldOfferToShowSuggestions()) {
            SuggestionInfo[] suggestionInfoArr = new SuggestionInfo[5];
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    break;
                }
                suggestionInfoArr[i2] = new SuggestionInfo();
                i2++;
            }
            SubMenu subMenuAddSubMenu = contextMenu.addSubMenu(0, 0, 9, R.string.replace);
            int suggestionInfo = this.mSuggestionHelper.getSuggestionInfo(suggestionInfoArr, null);
            for (int i3 = 0; i3 < suggestionInfo; i3++) {
                final SuggestionInfo suggestionInfo2 = suggestionInfoArr[i3];
                subMenuAddSubMenu.add(0, 0, i3, suggestionInfo2.mText).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: android.widget.Editor.3
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        Editor.this.replaceWithSuggestion(suggestionInfo2);
                        return true;
                    }
                });
            }
        }
        contextMenu.add(0, 16908338, 2, R.string.undo).setAlphabeticShortcut(DateFormat.TIME_ZONE).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canUndo());
        contextMenu.add(0, 16908339, 3, R.string.redo).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canRedo());
        contextMenu.add(0, 16908320, 4, 17039363).setAlphabeticShortcut(EpicenterTranslateClipReveal.StateProperty.TARGET_X).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canCut());
        contextMenu.add(0, 16908321, 5, 17039361).setAlphabeticShortcut('c').setOnMenuItemClickListener(this.mOnContextMenuItemClickListener).setEnabled(this.mTextView.canCopy());
        contextMenu.add(0, 16908322, 6, 17039371).setAlphabeticShortcut('v').setEnabled(this.mTextView.canPaste()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, 16908337, 11, 17039385).setEnabled(this.mTextView.canPasteAsPlainText()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, 16908341, 7, R.string.share).setEnabled(this.mTextView.canShare()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, 16908319, 8, 17039373).setAlphabeticShortcut(DateFormat.AM_PM).setEnabled(this.mTextView.canSelectAllText()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        contextMenu.add(0, 16908355, 10, 17039386).setEnabled(this.mTextView.canRequestAutofill()).setOnMenuItemClickListener(this.mOnContextMenuItemClickListener);
        this.mPreserveSelection = true;
    }

    public void onDetachedFromWindow() {
        getPositionListener().removeSubscriber(this.mCursorAnchorInfoNotifier);
        if (this.mError != null) {
            hideError();
        }
        suspendBlink();
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
        Runnable runnable2 = this.mInsertionActionModeRunnable;
        if (runnable2 != null) {
            this.mTextView.removeCallbacks(runnable2);
        }
        this.mTextView.removeCallbacks(this.mShowFloatingToolbar);
        discardTextDisplayLists();
        SpellChecker spellChecker = this.mSpellChecker;
        if (spellChecker != null) {
            spellChecker.closeSession();
            this.mSpellChecker = null;
        }
        hideCursorAndSpanControllers();
        stopTextActionModeWithPreservingSelection();
    }

    public void onDraw(Canvas canvas, Layout layout, Path path, Paint paint, int i2) {
        InputMethodManager inputMethodManagerPeekInstance;
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        InputMethodState inputMethodState = this.mInputMethodState;
        if (inputMethodState != null && inputMethodState.mBatchEditNesting == 0 && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null && inputMethodManagerPeekInstance.isActive(this.mTextView) && (inputMethodState.mContentChanged || inputMethodState.mSelectionModeChanged)) {
            reportExtractedText();
        }
        CorrectionHighlighter correctionHighlighter = this.mCorrectionHighlighter;
        if (correctionHighlighter != null) {
            correctionHighlighter.draw(canvas, i2);
        }
        if (path != null && selectionStart == selectionEnd && this.mCursorCount > 0) {
            drawCursor(canvas, i2);
            path = null;
        }
        Path path2 = path;
        if (this.mTextView.canHaveDisplayList() && canvas.isHardwareAccelerated()) {
            drawHardwareAccelerated(canvas, layout, path2, paint, i2);
        } else {
            layout.draw(canvas, path2, paint, i2);
        }
    }

    public void onDrop(DragEvent dragEvent) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        DragAndDropPermissions dragAndDropPermissionsObtain = DragAndDropPermissions.obtain(dragEvent);
        if (dragAndDropPermissionsObtain != null) {
            dragAndDropPermissionsObtain.takeTransient();
        }
        try {
            ClipData clipData = dragEvent.getClipData();
            int itemCount = clipData.getItemCount();
            for (int i2 = 0; i2 < itemCount; i2++) {
                spannableStringBuilder.append(clipData.getItemAt(i2).coerceToStyledText(this.mTextView.getContext()));
            }
            if (dragAndDropPermissionsObtain != null) {
                dragAndDropPermissionsObtain.release();
            }
            this.mTextView.beginBatchEdit();
            this.mUndoInputFilter.freezeLastEdit();
            try {
                int offsetForPosition = this.mTextView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
                Object localState = dragEvent.getLocalState();
                DragLocalState dragLocalState = localState instanceof DragLocalState ? (DragLocalState) localState : null;
                boolean z2 = dragLocalState != null && dragLocalState.sourceTextView == this.mTextView;
                if (!z2 || offsetForPosition < dragLocalState.start || offsetForPosition >= dragLocalState.end) {
                    int length = this.mTextView.getText().length();
                    Selection.setSelection((Spannable) this.mTextView.getText(), offsetForPosition);
                    this.mTextView.replaceText_internal(offsetForPosition, offsetForPosition, spannableStringBuilder);
                    if (z2) {
                        int i3 = dragLocalState.start;
                        int i4 = dragLocalState.end;
                        if (offsetForPosition <= i3) {
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
            } finally {
                this.mTextView.endBatchEdit();
                this.mUndoInputFilter.freezeLastEdit();
            }
        } catch (Throwable th) {
            if (dragAndDropPermissionsObtain != null) {
                dragAndDropPermissionsObtain.release();
            }
            throw th;
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
            if (this.mTextView.isInExtractedMode()) {
                hideCursorAndSpanControllers();
                stopTextActionModeWithPreservingSelection();
            } else {
                hideCursorAndSpanControllers();
                if (this.mTextView.isTemporarilyDetached()) {
                    stopTextActionModeWithPreservingSelection();
                } else {
                    stopTextActionMode();
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
        int selectionStart = this.mTextView.getSelectionStart();
        int selectionEnd = this.mTextView.getSelectionEnd();
        this.mCreatedWithASelection = this.mFrozenWithFocus && this.mTextView.hasSelection() && !(this.mSelectAllOnFocus && selectionStart == 0 && selectionEnd == this.mTextView.getText().length());
        if (!this.mFrozenWithFocus || selectionStart < 0 || selectionEnd < 0) {
            int lastTapPosition = getLastTapPosition();
            if (lastTapPosition >= 0) {
                Selection.setSelection((Spannable) this.mTextView.getText(), lastTapPosition);
            }
            MovementMethod movementMethod = this.mTextView.getMovementMethod();
            if (movementMethod != null) {
                TextView textView = this.mTextView;
                movementMethod.onTakeFocus(textView, (Spannable) textView.getText(), i2);
            }
            if ((this.mTextView.isInExtractedMode() || this.mSelectionMoved) && selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection((Spannable) this.mTextView.getText(), selectionStart, selectionEnd);
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
        this.mWordIteratorWithText = null;
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
        ActionMode actionMode = this.mTextActionMode;
        if (actionMode != null) {
            actionMode.invalidateContentRect();
        }
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        boolean zShouldFilterOutTouchEvent = shouldFilterOutTouchEvent(motionEvent);
        this.mLastButtonState = motionEvent.getButtonState();
        if (zShouldFilterOutTouchEvent) {
            if (motionEvent.getActionMasked() == 1) {
                this.mDiscardNextActionUp = true;
                return;
            }
            return;
        }
        updateTapState(motionEvent);
        updateFloatingToolbarVisibility(motionEvent);
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
        if (getSelectionActionModeHelper().resetSelection(getTextView().getOffsetForPosition(motionEvent.getX(), motionEvent.getY()))) {
            return;
        }
        boolean z2 = this.mSelectAllOnFocus && this.mTextView.didTouchFocusSelect();
        hideCursorAndSpanControllers();
        stopTextActionMode();
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
        if (!isCursorInsideEasyCorrectionSpan()) {
            if (hasInsertionController()) {
                getInsertionController().show();
            }
        } else {
            Runnable runnable = this.mInsertionActionModeRunnable;
            if (runnable != null) {
                this.mTextView.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: android.widget.Editor.2
                @Override // java.lang.Runnable
                public void run() {
                    Editor.this.replace();
                }
            };
            this.mShowSuggestionRunnable = runnable2;
            this.mTextView.postDelayed(runnable2, ViewConfiguration.getDoubleTapTimeout());
        }
    }

    public void onWindowFocusChanged(boolean z2) {
        if (z2) {
            Blink blink = this.mBlink;
            if (blink != null) {
                blink.uncancel();
                makeBlink();
            }
            if (!this.mTextView.hasSelection() || extractedTextModeWillBeStarted()) {
                return;
            }
            refreshTextActionMode();
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
        hideCursorAndSpanControllers();
        stopTextActionModeWithPreservingSelection();
        SuggestionsPopupWindow suggestionsPopupWindow = this.mSuggestionsPopupWindow;
        if (suggestionsPopupWindow != null) {
            suggestionsPopupWindow.onParentLostFocus();
        }
        ensureEndedBatchEdit();
    }

    public boolean performLongClick(boolean z2) {
        if (!z2 && !isPositionOnText(this.mLastDownPositionX, this.mLastDownPositionY) && this.mInsertionControllerEnabled) {
            Selection.setSelection((Spannable) this.mTextView.getText(), this.mTextView.getOffsetForPosition(this.mLastDownPositionX, this.mLastDownPositionY));
            getInsertionController().show();
            this.mIsInsertionActionModeStartPending = true;
            MetricsLogger.action(this.mTextView.getContext(), MetricsProto.MetricsEvent.TEXT_LONGPRESS, 0);
            z2 = true;
        }
        if (!z2 && this.mTextActionMode != null) {
            if (touchPositionIsInSelection()) {
                startDragAndDrop();
                MetricsLogger.action(this.mTextView.getContext(), MetricsProto.MetricsEvent.TEXT_LONGPRESS, 2);
            } else {
                stopTextActionMode();
                selectCurrentWordAndStartDrag();
                MetricsLogger.action(this.mTextView.getContext(), MetricsProto.MetricsEvent.TEXT_LONGPRESS, 1);
            }
            z2 = true;
        }
        if (!z2 && (z2 = selectCurrentWordAndStartDrag())) {
            MetricsLogger.action(this.mTextView.getContext(), MetricsProto.MetricsEvent.TEXT_LONGPRESS, 1);
        }
        return z2;
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
        stopTextActionMode();
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.onDetached();
            this.mSelectionModifierCursorController = null;
        }
    }

    public void redo() {
        if (this.mAllowUndo) {
            this.mUndoManager.redo(new UndoOwner[]{this.mUndoOwner}, 1);
        }
    }

    public void refreshTextActionMode() {
        if (extractedTextModeWillBeStarted()) {
            this.mRestartActionModeOnNextRefresh = false;
            return;
        }
        boolean zHasSelection = this.mTextView.hasSelection();
        SelectionModifierCursorController selectionController = getSelectionController();
        InsertionPointCursorController insertionController = getInsertionController();
        if ((selectionController != null && selectionController.isCursorBeingModified()) || (insertionController != null && insertionController.isCursorBeingModified())) {
            this.mRestartActionModeOnNextRefresh = false;
            return;
        }
        if (zHasSelection) {
            hideInsertionPointCursorController();
            if (this.mTextActionMode == null) {
                if (this.mRestartActionModeOnNextRefresh) {
                    startSelectionActionModeAsync(false);
                }
            } else if (selectionController == null || !selectionController.isActive()) {
                stopTextActionModeWithPreservingSelection();
                startSelectionActionModeAsync(false);
            } else {
                this.mTextActionMode.invalidateContentRect();
            }
        } else if (insertionController == null || !insertionController.isActive()) {
            stopTextActionMode();
        } else {
            ActionMode actionMode = this.mTextActionMode;
            if (actionMode != null) {
                actionMode.invalidateContentRect();
            }
        }
        this.mRestartActionModeOnNextRefresh = false;
    }

    public void replace() {
        if (this.mSuggestionsPopupWindow == null) {
            this.mSuggestionsPopupWindow = new SuggestionsPopupWindow();
        }
        hideCursorAndSpanControllers();
        this.mSuggestionsPopupWindow.show();
        Selection.setSelection((Spannable) this.mTextView.getText(), (this.mTextView.getSelectionEnd() + this.mTextView.getSelectionStart()) / 2);
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

    public void restoreInstanceState(ParcelableParcel parcelableParcel) {
        Parcel parcel = parcelableParcel.getParcel();
        this.mUndoManager.restoreInstanceState(parcel, parcelableParcel.getClassLoader());
        this.mUndoInputFilter.restoreInstanceState(parcel);
        this.mUndoOwner = this.mUndoManager.getOwner("Editor", this);
    }

    public ParcelableParcel saveInstanceState() {
        ParcelableParcel parcelableParcel = new ParcelableParcel(getClass().getClassLoader());
        Parcel parcel = parcelableParcel.getParcel();
        this.mUndoManager.saveInstanceState(parcel);
        this.mUndoInputFilter.saveInstanceState(parcel);
        return parcelableParcel;
    }

    public boolean selectCurrentWord() {
        int spanStart;
        int spanEnd;
        if (!this.mTextView.canSelectText()) {
            return false;
        }
        if (needsToSelectAllToSelectWordOrParagraph()) {
            return this.mTextView.selectAllText();
        }
        long lastTouchOffsets = getLastTouchOffsets();
        int iUnpackRangeStartFromLong = TextUtils.unpackRangeStartFromLong(lastTouchOffsets);
        int iUnpackRangeEndFromLong = TextUtils.unpackRangeEndFromLong(lastTouchOffsets);
        if (iUnpackRangeStartFromLong < 0 || iUnpackRangeStartFromLong > this.mTextView.getText().length() || iUnpackRangeEndFromLong < 0 || iUnpackRangeEndFromLong > this.mTextView.getText().length()) {
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
                long charClusterRange = getCharClusterRange(iUnpackRangeStartFromLong);
                int iUnpackRangeStartFromLong2 = TextUtils.unpackRangeStartFromLong(charClusterRange);
                int iUnpackRangeEndFromLong2 = TextUtils.unpackRangeEndFromLong(charClusterRange);
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

    public void sendOnTextChanged(int i2, int i3, int i4) {
        getSelectionActionModeHelper().onTextChanged(i2, i3 + i2);
        updateSpellCheckSpans(i2, i4 + i2, false);
        this.mUpdateWordIteratorText = true;
        hideCursorControllers();
        SelectionModifierCursorController selectionModifierCursorController = this.mSelectionModifierCursorController;
        if (selectionModifierCursorController != null) {
            selectionModifierCursorController.resetTouchOffsets();
        }
        stopTextActionMode();
    }

    public void setContextMenuAnchor(float f2, float f3) {
        this.mContextMenuAnchorX = f2;
        this.mContextMenuAnchorY = f3;
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

    public void setRestartActionModeOnNextRefresh(boolean z2) {
        this.mRestartActionModeOnNextRefresh = z2;
    }

    public void startInsertionActionMode() {
        Runnable runnable = this.mInsertionActionModeRunnable;
        if (runnable != null) {
            this.mTextView.removeCallbacks(runnable);
        }
        if (extractedTextModeWillBeStarted()) {
            return;
        }
        stopTextActionMode();
        ActionMode actionModeStartActionMode = this.mTextView.startActionMode(new TextActionModeCallback(false), 1);
        this.mTextActionMode = actionModeStartActionMode;
        if (actionModeStartActionMode == null || getInsertionController() == null) {
            return;
        }
        getInsertionController().show();
    }

    public void startSelectionActionModeAsync(boolean z2) {
        getSelectionActionModeHelper().startActionModeAsync(z2);
    }

    public boolean startSelectionActionModeInternal() {
        InputMethodManager inputMethodManagerPeekInstance;
        if (extractedTextModeWillBeStarted()) {
            return false;
        }
        if (this.mTextActionMode != null) {
            invalidateActionMode();
            return false;
        }
        if (!checkField() || !this.mTextView.hasSelection()) {
            return false;
        }
        ActionMode actionModeStartActionMode = this.mTextView.startActionMode(new TextActionModeCallback(true), 1);
        this.mTextActionMode = actionModeStartActionMode;
        boolean z2 = actionModeStartActionMode != null;
        if (z2 && !this.mTextView.isTextSelectable() && this.mShowSoftInputOnFocus && (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) != null) {
            inputMethodManagerPeekInstance.showSoftInput(this.mTextView, 0, null);
        }
        return z2;
    }

    public void stopTextActionMode() {
        ActionMode actionMode = this.mTextActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    public void undo() {
        if (this.mAllowUndo) {
            this.mUndoManager.undo(new UndoOwner[]{this.mUndoOwner}, 1);
        }
    }

    public void updateCursorsPositions() {
        TextView textView = this.mTextView;
        if (textView.mCursorDrawableRes == 0) {
            this.mCursorCount = 0;
            return;
        }
        Layout layout = textView.getLayout();
        int selectionStart = this.mTextView.getSelectionStart();
        int lineForOffset = layout.getLineForOffset(selectionStart);
        int lineTop = layout.getLineTop(lineForOffset);
        int lineTop2 = layout.getLineTop(lineForOffset + 1);
        int i2 = layout.isLevelBoundary(selectionStart) ? 2 : 1;
        this.mCursorCount = i2;
        int i3 = i2 == 2 ? (lineTop + lineTop2) >> 1 : lineTop2;
        boolean zShouldClampCursor = layout.shouldClampCursor(lineForOffset);
        updateCursorPosition(0, lineTop, i3, layout.getPrimaryHorizontal(selectionStart, zShouldClampCursor));
        if (this.mCursorCount == 2) {
            updateCursorPosition(1, i3, lineTop2, layout.getSecondaryHorizontal(selectionStart, zShouldClampCursor));
        }
    }

    public abstract class PinnedPopupWindow implements TextViewPositionListener {
        int mClippingLimitLeft;
        int mClippingLimitRight;
        protected ViewGroup mContentView;
        protected PopupWindow mPopupWindow;
        int mPositionX;
        int mPositionY;

        public PinnedPopupWindow() {
            setUp();
            createPopupWindow();
            this.mPopupWindow.setWindowLayoutType(1005);
            this.mPopupWindow.setWidth(-2);
            this.mPopupWindow.setHeight(-2);
            initContentView();
            this.mContentView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.mPopupWindow.setContentView(this.mContentView);
        }

        private void computeLocalPosition() {
            try {
                measureContent();
                int measuredWidth = this.mContentView.getMeasuredWidth();
                int textOffset = getTextOffset();
                if (Editor.this.mTextView.getLayout() == null) {
                    Log.e("Editor", "mTextView.getLayout() is null, pls check it");
                    return;
                }
                int primaryHorizontal = (int) (Editor.this.mTextView.getLayout().getPrimaryHorizontal(textOffset) - (measuredWidth / 2.0f));
                this.mPositionX = primaryHorizontal;
                this.mPositionX = primaryHorizontal + Editor.this.mTextView.viewportToContentHorizontalOffset();
                int verticalLocalPosition = getVerticalLocalPosition(Editor.this.mTextView.getLayout().getLineForOffset(textOffset));
                this.mPositionY = verticalLocalPosition;
                this.mPositionY = verticalLocalPosition + Editor.this.mTextView.viewportToContentVerticalOffset();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        private void updatePosition(int i2, int i3) {
            int i4 = i2 + this.mPositionX;
            int iClipVertically = clipVertically(i3 + this.mPositionY);
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            int iMax = Math.max(-this.mClippingLimitLeft, Math.min((displayMetrics.widthPixels - this.mContentView.getMeasuredWidth()) + this.mClippingLimitRight, i4));
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
            if (isShowing()) {
                this.mPopupWindow.dismiss();
                Editor.this.getPositionListener().removeSubscriber(this);
            }
        }

        public abstract void initContentView();

        public boolean isShowing() {
            return this.mPopupWindow.isShowing();
        }

        public void measureContent() {
            DisplayMetrics displayMetrics = Editor.this.mTextView.getResources().getDisplayMetrics();
            this.mContentView.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        }

        public void setUp() {
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

    public static class EditOperation extends UndoOperation<Editor> {
        public static final Parcelable.ClassLoaderCreator<EditOperation> CREATOR = new Parcelable.ClassLoaderCreator<EditOperation>() { // from class: android.widget.Editor.EditOperation.1
            @Override // android.os.Parcelable.Creator
            public EditOperation[] newArray(int i2) {
                return new EditOperation[i2];
            }

            @Override // android.os.Parcelable.Creator
            public EditOperation createFromParcel(Parcel parcel) {
                return new EditOperation(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public EditOperation createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new EditOperation(parcel, classLoader);
            }
        };
        private static final int TYPE_DELETE = 1;
        private static final int TYPE_INSERT = 0;
        private static final int TYPE_REPLACE = 2;
        private boolean mFrozen;
        private boolean mIsComposition;
        private int mNewCursorPos;
        private String mNewText;
        private int mOldCursorPos;
        private String mOldText;
        private int mStart;
        private int mType;

        public EditOperation(Editor editor, String str, int i2, String str2, boolean z2) {
            super(editor.mUndoOwner);
            this.mOldText = str;
            this.mNewText = str2;
            if (str2.length() > 0 && this.mOldText.length() == 0) {
                this.mType = 0;
            } else if (this.mNewText.length() != 0 || this.mOldText.length() <= 0) {
                this.mType = 2;
            } else {
                this.mType = 1;
            }
            this.mStart = i2;
            this.mOldCursorPos = editor.mTextView.getSelectionStart();
            this.mNewCursorPos = this.mNewText.length() + i2;
            this.mIsComposition = z2;
        }

        private int getNewTextEnd() {
            return this.mNewText.length() + this.mStart;
        }

        private int getOldTextEnd() {
            return this.mOldText.length() + this.mStart;
        }

        private String getTypeString() {
            int i2 = this.mType;
            if (i2 == 0) {
                return "insert";
            }
            if (i2 != 1) {
                return i2 != 2 ? "" : "replace";
            }
            return "delete";
        }

        private boolean mergeDeleteWith(EditOperation editOperation) {
            if (editOperation.mType != 1 || this.mStart != editOperation.getOldTextEnd()) {
                return false;
            }
            this.mStart = editOperation.mStart;
            this.mOldText = editOperation.mOldText + this.mOldText;
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
            return true;
        }

        private boolean mergeInsertWith(EditOperation editOperation) {
            int i2 = editOperation.mType;
            if (i2 == 0) {
                if (getNewTextEnd() != editOperation.mStart) {
                    return false;
                }
                this.mNewText += editOperation.mNewText;
                this.mNewCursorPos = editOperation.mNewCursorPos;
                this.mFrozen = editOperation.mFrozen;
                this.mIsComposition = editOperation.mIsComposition;
                return true;
            }
            if (!this.mIsComposition || i2 != 2 || this.mStart > editOperation.mStart || getNewTextEnd() < editOperation.getOldTextEnd()) {
                return false;
            }
            this.mNewText = this.mNewText.substring(0, editOperation.mStart - this.mStart) + editOperation.mNewText + this.mNewText.substring(editOperation.getOldTextEnd() - this.mStart, this.mNewText.length());
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
            return true;
        }

        private boolean mergeReplaceWith(EditOperation editOperation) {
            if (editOperation.mType == 0 && getNewTextEnd() == editOperation.mStart) {
                this.mNewText += editOperation.mNewText;
                this.mNewCursorPos = editOperation.mNewCursorPos;
                return true;
            }
            if (!this.mIsComposition) {
                return false;
            }
            if (editOperation.mType != 1 || this.mStart > editOperation.mStart || getNewTextEnd() < editOperation.getOldTextEnd()) {
                if (editOperation.mType != 2 || this.mStart != editOperation.mStart || !TextUtils.equals(this.mNewText, editOperation.mOldText)) {
                    return false;
                }
                this.mNewText = editOperation.mNewText;
                this.mNewCursorPos = editOperation.mNewCursorPos;
                this.mIsComposition = editOperation.mIsComposition;
                return true;
            }
            String str = this.mNewText.substring(0, editOperation.mStart - this.mStart) + this.mNewText.substring(editOperation.getOldTextEnd() - this.mStart, this.mNewText.length());
            this.mNewText = str;
            if (str.isEmpty()) {
                this.mType = 1;
            }
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean mergeWith(EditOperation editOperation) {
            if (this.mFrozen) {
                return false;
            }
            int i2 = this.mType;
            if (i2 == 0) {
                return mergeInsertWith(editOperation);
            }
            if (i2 == 1) {
                return mergeDeleteWith(editOperation);
            }
            if (i2 != 2) {
                return false;
            }
            return mergeReplaceWith(editOperation);
        }

        private static void modifyText(Editable editable, int i2, int i3, CharSequence charSequence, int i4, int i5) {
            if (Editor.isValidRange(editable, i2, i3) && i4 <= editable.length() - (i3 - i2)) {
                if (i2 != i3) {
                    editable.delete(i2, i3);
                }
                if (charSequence.length() != 0) {
                    editable.insert(i4, charSequence);
                }
            }
            if (i5 < 0 || i5 > editable.length()) {
                return;
            }
            Selection.setSelection(editable, i5);
        }

        @Override // android.content.UndoOperation
        public void commit() {
        }

        public void forceMergeWith(EditOperation editOperation) {
            if (mergeWith(editOperation)) {
                return;
            }
            Editable editable = (Editable) getOwnerData().mTextView.getText();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(editable.toString());
            modifyText(spannableStringBuilder, this.mStart, getNewTextEnd(), this.mOldText, this.mStart, this.mOldCursorPos);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(editable.toString());
            modifyText(spannableStringBuilder2, editOperation.mStart, editOperation.getOldTextEnd(), editOperation.mNewText, editOperation.mStart, editOperation.mNewCursorPos);
            this.mType = 2;
            this.mNewText = spannableStringBuilder2.toString();
            this.mOldText = spannableStringBuilder.toString();
            this.mStart = 0;
            this.mNewCursorPos = editOperation.mNewCursorPos;
            this.mIsComposition = editOperation.mIsComposition;
        }

        @Override // android.content.UndoOperation
        public void redo() {
            modifyText((Editable) getOwnerData().mTextView.getText(), this.mStart, getOldTextEnd(), this.mNewText, this.mStart, this.mNewCursorPos);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[mType=");
            sb.append(getTypeString());
            sb.append(", mOldText=");
            sb.append(this.mOldText);
            sb.append(", mNewText=");
            sb.append(this.mNewText);
            sb.append(", mStart=");
            sb.append(this.mStart);
            sb.append(", mOldCursorPos=");
            sb.append(this.mOldCursorPos);
            sb.append(", mNewCursorPos=");
            sb.append(this.mNewCursorPos);
            sb.append(", mFrozen=");
            sb.append(this.mFrozen);
            sb.append(", mIsComposition=");
            return android.accessibilityservice.c.o(sb, this.mIsComposition, "]");
        }

        @Override // android.content.UndoOperation
        public void undo() {
            modifyText((Editable) getOwnerData().mTextView.getText(), this.mStart, getNewTextEnd(), this.mOldText, this.mStart, this.mOldCursorPos);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mType);
            parcel.writeString(this.mOldText);
            parcel.writeString(this.mNewText);
            parcel.writeInt(this.mStart);
            parcel.writeInt(this.mOldCursorPos);
            parcel.writeInt(this.mNewCursorPos);
            parcel.writeInt(this.mFrozen ? 1 : 0);
            parcel.writeInt(this.mIsComposition ? 1 : 0);
        }

        public EditOperation(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mType = parcel.readInt();
            this.mOldText = parcel.readString();
            this.mNewText = parcel.readString();
            this.mStart = parcel.readInt();
            this.mOldCursorPos = parcel.readInt();
            this.mNewCursorPos = parcel.readInt();
            this.mFrozen = parcel.readInt() == 1;
            this.mIsComposition = parcel.readInt() == 1;
        }
    }

    public void invalidateTextDisplayList() {
        if (this.mTextRenderNodes == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            TextRenderNode[] textRenderNodeArr = this.mTextRenderNodes;
            if (i2 >= textRenderNodeArr.length) {
                return;
            }
            TextRenderNode textRenderNode = textRenderNodeArr[i2];
            if (textRenderNode != null) {
                textRenderNode.isDirty = true;
            }
            i2++;
        }
    }
}
