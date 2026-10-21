package com.android.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.IntArray;
import android.util.SparseArray;
import android.view.DisplayListCanvas;
import android.view.MotionEvent;
import android.view.RenderNodeAnimator;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.android.internal.R;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class LockPatternView extends View {
    private static final int ASPECT_LOCK_HEIGHT = 2;
    private static final int ASPECT_LOCK_WIDTH = 1;
    private static final int ASPECT_SQUARE = 0;
    public static final boolean DEBUG_A11Y = false;
    private static final float DRAG_THRESHHOLD = 0.0f;
    private static final int MILLIS_PER_CIRCLE_ANIMATING = 700;
    private static final boolean PROFILE_DRAWING = false;
    private static final String TAG = "LockPatternView";
    public static final int VIRTUAL_BASE_VIEW_ID = 1;
    private long mAnimatingPeriodStart;
    private int mAspect;
    private AudioManager mAudioManager;
    private final CellState[][] mCellStates;
    private final Path mCurrentPath;
    private final int mDotSize;
    private final int mDotSizeActivated;
    private boolean mDrawingProfilingStarted;
    private boolean mEnableHapticFeedback;
    private int mErrorColor;
    private PatternExploreByTouchHelper mExploreByTouchHelper;
    private final Interpolator mFastOutSlowInInterpolator;
    private float mHitFactor;
    private float mInProgressX;
    private float mInProgressY;
    private boolean mInStealthMode;
    private boolean mInputEnabled;
    private final Rect mInvalidate;
    private final Interpolator mLinearOutSlowInInterpolator;
    private Drawable mNotSelectedDrawable;
    private OnPatternListener mOnPatternListener;
    private final Paint mPaint;
    private final Paint mPathPaint;
    private final int mPathWidth;
    private final ArrayList<Cell> mPattern;
    private DisplayMode mPatternDisplayMode;
    private final boolean[][] mPatternDrawLookup;
    private boolean mPatternInProgress;
    private int mRegularColor;
    private Drawable mSelectedDrawable;
    private float mSquareHeight;
    private float mSquareWidth;
    private int mSuccessColor;
    private final Rect mTmpInvalidateRect;
    private boolean mUseLockPatternDrawable;

    public static final class Cell {
        private static final Cell[][] sCells = createCells();
        final int column;
        final int row;

        private Cell(int i2, int i3) {
            checkRange(i2, i3);
            this.row = i2;
            this.column = i3;
        }

        private static void checkRange(int i2, int i3) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("row must be in range 0-2");
            }
            if (i3 < 0 || i3 > 2) {
                throw new IllegalArgumentException("column must be in range 0-2");
            }
        }

        private static Cell[][] createCells() {
            Cell[][] cellArr = (Cell[][]) Array.newInstance((Class<?>) Cell.class, 3, 3);
            for (int i2 = 0; i2 < 3; i2++) {
                for (int i3 = 0; i3 < 3; i3++) {
                    cellArr[i2][i3] = new Cell(i2, i3);
                }
            }
            return cellArr;
        }

        public static Cell of(int i2, int i3) {
            checkRange(i2, i3);
            return sCells[i2][i3];
        }

        public int getColumn() {
            return this.column;
        }

        public int getRow() {
            return this.row;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("(row=");
            sb.append(this.row);
            sb.append(",clmn=");
            return android.accessibilityservice.c.m(sb, this.column, ")");
        }
    }

    public static class CellState {
        int col;
        boolean hwAnimating;
        CanvasProperty<Float> hwCenterX;
        CanvasProperty<Float> hwCenterY;
        CanvasProperty<Paint> hwPaint;
        CanvasProperty<Float> hwRadius;
        public ValueAnimator lineAnimator;
        float radius;
        int row;
        float translationY;
        float alpha = 1.0f;
        public float lineEndX = Float.MIN_VALUE;
        public float lineEndY = Float.MIN_VALUE;
    }

    public enum DisplayMode {
        Correct,
        Animate,
        Wrong
    }

    public interface OnPatternListener {
        void onPatternCellAdded(List<Cell> list);

        void onPatternCleared();

        void onPatternDetected(List<Cell> list);

        void onPatternStart();
    }

    public final class PatternExploreByTouchHelper extends ExploreByTouchHelper {
        private final SparseArray<VirtualViewContainer> mItems;
        private Rect mTempRect;

        public class VirtualViewContainer {
            CharSequence description;

            public VirtualViewContainer(CharSequence charSequence) {
                this.description = charSequence;
            }
        }

        public PatternExploreByTouchHelper(View view) {
            super(view);
            this.mTempRect = new Rect();
            this.mItems = new SparseArray<>();
            for (int i2 = 1; i2 < 10; i2++) {
                this.mItems.put(i2, new VirtualViewContainer(getTextForVirtualView(i2)));
            }
        }

        private Rect getBoundsForVirtualView(int i2) {
            int i3 = i2 - 1;
            Rect rect = this.mTempRect;
            int i4 = i3 / 3;
            int i5 = i3 % 3;
            CellState cellState = LockPatternView.this.mCellStates[i4][i5];
            float centerXForColumn = LockPatternView.this.getCenterXForColumn(i5);
            float centerYForRow = LockPatternView.this.getCenterYForRow(i4);
            float f2 = LockPatternView.this.mHitFactor * LockPatternView.this.mSquareHeight * 0.5f;
            float f3 = LockPatternView.this.mHitFactor * LockPatternView.this.mSquareWidth * 0.5f;
            rect.left = (int) (centerXForColumn - f3);
            rect.right = (int) (centerXForColumn + f3);
            rect.top = (int) (centerYForRow - f2);
            rect.bottom = (int) (centerYForRow + f2);
            return rect;
        }

        private CharSequence getTextForVirtualView(int i2) {
            return LockPatternView.this.getResources().getString(R.string.lockscreen_access_pattern_cell_added_verbose, Integer.valueOf(i2));
        }

        private int getVirtualViewIdForHit(float f2, float f3) {
            int columnHit;
            int rowHit = LockPatternView.this.getRowHit(f3);
            if (rowHit < 0 || (columnHit = LockPatternView.this.getColumnHit(f2)) < 0) {
                return Integer.MIN_VALUE;
            }
            boolean z2 = LockPatternView.this.mPatternDrawLookup[rowHit][columnHit];
            int i2 = (rowHit * 3) + columnHit + 1;
            if (z2) {
                return i2;
            }
            return Integer.MIN_VALUE;
        }

        private boolean isClickable(int i2) {
            if (i2 == Integer.MIN_VALUE) {
                return false;
            }
            int i3 = i2 - 1;
            return !LockPatternView.this.mPatternDrawLookup[i3 / 3][i3 % 3];
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f2, float f3) {
            return getVirtualViewIdForHit(f2, f3);
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(IntArray intArray) {
            if (LockPatternView.this.mPatternInProgress) {
                for (int i2 = 1; i2 < 10; i2++) {
                    intArray.add(i2);
                }
            }
        }

        public boolean onItemClicked(int i2) {
            invalidateVirtualView(i2);
            sendEventForVirtualView(i2, 1);
            return true;
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i2, int i3, Bundle bundle) {
            if (i3 != 16) {
                return false;
            }
            return onItemClicked(i2);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (LockPatternView.this.mPatternInProgress) {
                return;
            }
            accessibilityEvent.setContentDescription(LockPatternView.this.getContext().getText(R.string.lockscreen_access_pattern_area));
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void onPopulateEventForVirtualView(int i2, AccessibilityEvent accessibilityEvent) {
            VirtualViewContainer virtualViewContainer = this.mItems.get(i2);
            if (virtualViewContainer != null) {
                accessibilityEvent.getText().add(virtualViewContainer.description);
            }
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i2, AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.setText(getTextForVirtualView(i2));
            accessibilityNodeInfo.setContentDescription(getTextForVirtualView(i2));
            if (LockPatternView.this.mPatternInProgress) {
                accessibilityNodeInfo.setFocusable(true);
                if (isClickable(i2)) {
                    accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                    accessibilityNodeInfo.setClickable(isClickable(i2));
                }
            }
            accessibilityNodeInfo.setBoundsInParent(getBoundsForVirtualView(i2));
        }
    }

    public LockPatternView(Context context) {
        this(context, null);
    }

    private void addCellToPattern(Cell cell) {
        this.mPatternDrawLookup[cell.getRow()][cell.getColumn()] = true;
        this.mPattern.add(cell);
        if (!this.mInStealthMode) {
            startCellActivatedAnimation(cell);
        }
        notifyCellAdded();
    }

    private float calculateLastSegmentAlpha(float f2, float f3, float f4, float f5) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        return Math.min(1.0f, Math.max(0.0f, ((((float) Math.sqrt((f7 * f7) + (f6 * f6))) / this.mSquareWidth) - 0.3f) * 4.0f));
    }

    private void cancelLineAnimations() {
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                CellState cellState = this.mCellStates[i2][i3];
                ValueAnimator valueAnimator = cellState.lineAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    cellState.lineEndX = Float.MIN_VALUE;
                    cellState.lineEndY = Float.MIN_VALUE;
                }
            }
        }
    }

    private Cell checkForNewHit(float f2, float f3) {
        int columnHit;
        int rowHit = getRowHit(f3);
        if (rowHit >= 0 && (columnHit = getColumnHit(f2)) >= 0 && !this.mPatternDrawLookup[rowHit][columnHit]) {
            return Cell.of(rowHit, columnHit);
        }
        return null;
    }

    private void clearPatternDrawLookup() {
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                this.mPatternDrawLookup[i2][i3] = false;
            }
        }
    }

    private Cell detectAndAddHit(float f2, float f3) {
        Cell cellCheckForNewHit = checkForNewHit(f2, f3);
        Cell cellOf = null;
        if (cellCheckForNewHit == null) {
            return null;
        }
        ArrayList<Cell> arrayList = this.mPattern;
        if (!arrayList.isEmpty()) {
            Cell cell = arrayList.get(arrayList.size() - 1);
            int i2 = cellCheckForNewHit.row;
            int i3 = cell.row;
            int i4 = i2 - i3;
            int i5 = cellCheckForNewHit.column;
            int i6 = cell.column;
            int i7 = i5 - i6;
            if (Math.abs(i4) == 2 && Math.abs(i7) != 1) {
                i3 = cell.row + (i4 > 0 ? 1 : -1);
            }
            if (Math.abs(i7) == 2 && Math.abs(i4) != 1) {
                i6 = cell.column + (i7 > 0 ? 1 : -1);
            }
            cellOf = Cell.of(i3, i6);
        }
        if (cellOf != null && !this.mPatternDrawLookup[cellOf.row][cellOf.column]) {
            addCellToPattern(cellOf);
        }
        addCellToPattern(cellCheckForNewHit);
        if (this.mEnableHapticFeedback) {
            performHapticFeedback(1, 3);
        }
        return cellCheckForNewHit;
    }

    private void drawCellDrawable(Canvas canvas, int i2, int i3, float f2, boolean z2) {
        int i4 = this.mPaddingLeft;
        float f3 = this.mSquareWidth;
        int i5 = this.mPaddingTop;
        float f4 = this.mSquareHeight;
        Rect rect = new Rect((int) ((i3 * f3) + i4), (int) ((i2 * f4) + i5), (int) (((i3 + 1) * f3) + i4), (int) (((i2 + 1) * f4) + i5));
        float f5 = f2 / (this.mDotSize / 2);
        canvas.save();
        canvas.clipRect(rect);
        canvas.scale(f5, f5, rect.centerX(), rect.centerY());
        if (!z2 || f5 > 1.0f) {
            this.mNotSelectedDrawable.draw(canvas);
        } else {
            this.mSelectedDrawable.draw(canvas);
        }
        canvas.restore();
    }

    private void drawCircle(Canvas canvas, float f2, float f3, float f4, boolean z2, float f5) {
        this.mPaint.setColor(getCurrentColor(z2));
        this.mPaint.setAlpha((int) (f5 * 255.0f));
        canvas.drawCircle(f2, f3, f4, this.mPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCenterXForColumn(int i2) {
        float f2 = this.mPaddingLeft;
        float f3 = this.mSquareWidth;
        return (f3 / 2.0f) + (i2 * f3) + f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCenterYForRow(int i2) {
        float f2 = this.mPaddingTop;
        float f3 = this.mSquareHeight;
        return (f3 / 2.0f) + (i2 * f3) + f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnHit(float f2) {
        float f3 = this.mSquareWidth;
        float f4 = this.mHitFactor * f3;
        float f5 = ((f3 - f4) / 2.0f) + this.mPaddingLeft;
        for (int i2 = 0; i2 < 3; i2++) {
            float f6 = (i2 * f3) + f5;
            if (f2 >= f6 && f2 <= f6 + f4) {
                return i2;
            }
        }
        return -1;
    }

    private int getCurrentColor(boolean z2) {
        if (!z2 || this.mInStealthMode || this.mPatternInProgress) {
            return this.mRegularColor;
        }
        DisplayMode displayMode = this.mPatternDisplayMode;
        if (displayMode == DisplayMode.Wrong) {
            return this.mErrorColor;
        }
        if (displayMode == DisplayMode.Correct || displayMode == DisplayMode.Animate) {
            return this.mSuccessColor;
        }
        throw new IllegalStateException("unknown display mode " + this.mPatternDisplayMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRowHit(float f2) {
        float f3 = this.mSquareHeight;
        float f4 = this.mHitFactor * f3;
        float f5 = ((f3 - f4) / 2.0f) + this.mPaddingTop;
        for (int i2 = 0; i2 < 3; i2++) {
            float f6 = (i2 * f3) + f5;
            if (f2 >= f6 && f2 <= f6 + f4) {
                return i2;
            }
        }
        return -1;
    }

    private void handleActionDown(MotionEvent motionEvent) {
        resetPattern();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        Cell cellDetectAndAddHit = detectAndAddHit(x2, y2);
        if (cellDetectAndAddHit != null) {
            setPatternInProgress(true);
            this.mPatternDisplayMode = DisplayMode.Correct;
            notifyPatternStarted();
        } else if (this.mPatternInProgress) {
            setPatternInProgress(false);
            notifyPatternCleared();
        }
        if (cellDetectAndAddHit != null) {
            float centerXForColumn = getCenterXForColumn(cellDetectAndAddHit.column);
            float centerYForRow = getCenterYForRow(cellDetectAndAddHit.row);
            float f2 = this.mSquareWidth / 2.0f;
            float f3 = this.mSquareHeight / 2.0f;
            invalidate((int) (centerXForColumn - f2), (int) (centerYForRow - f3), (int) (centerXForColumn + f2), (int) (centerYForRow + f3));
        }
        this.mInProgressX = x2;
        this.mInProgressY = y2;
    }

    private void handleActionMove(MotionEvent motionEvent) {
        float f2 = this.mPathWidth;
        int historySize = motionEvent.getHistorySize();
        this.mTmpInvalidateRect.setEmpty();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < historySize + 1) {
            float historicalX = i2 < historySize ? motionEvent.getHistoricalX(i2) : motionEvent.getX();
            float historicalY = i2 < historySize ? motionEvent.getHistoricalY(i2) : motionEvent.getY();
            Cell cellDetectAndAddHit = detectAndAddHit(historicalX, historicalY);
            int size = this.mPattern.size();
            if (cellDetectAndAddHit != null && size == 1) {
                setPatternInProgress(true);
                notifyPatternStarted();
            }
            float fAbs = Math.abs(historicalX - this.mInProgressX);
            float fAbs2 = Math.abs(historicalY - this.mInProgressY);
            if (fAbs > 0.0f || fAbs2 > 0.0f) {
                z2 = true;
            }
            if (this.mPatternInProgress && size > 0) {
                Cell cell = this.mPattern.get(size - 1);
                float centerXForColumn = getCenterXForColumn(cell.column);
                float centerYForRow = getCenterYForRow(cell.row);
                float fMin = Math.min(centerXForColumn, historicalX) - f2;
                float fMax = Math.max(centerXForColumn, historicalX) + f2;
                float fMin2 = Math.min(centerYForRow, historicalY) - f2;
                float fMax2 = Math.max(centerYForRow, historicalY) + f2;
                if (cellDetectAndAddHit != null) {
                    float f3 = this.mSquareWidth * 0.5f;
                    float f4 = this.mSquareHeight * 0.5f;
                    float centerXForColumn2 = getCenterXForColumn(cellDetectAndAddHit.column);
                    float centerYForRow2 = getCenterYForRow(cellDetectAndAddHit.row);
                    fMin = Math.min(centerXForColumn2 - f3, fMin);
                    fMax = Math.max(centerXForColumn2 + f3, fMax);
                    fMin2 = Math.min(centerYForRow2 - f4, fMin2);
                    fMax2 = Math.max(centerYForRow2 + f4, fMax2);
                }
                this.mTmpInvalidateRect.union(Math.round(fMin), Math.round(fMin2), Math.round(fMax), Math.round(fMax2));
            }
            i2++;
        }
        this.mInProgressX = motionEvent.getX();
        this.mInProgressY = motionEvent.getY();
        if (z2) {
            this.mInvalidate.union(this.mTmpInvalidateRect);
            invalidate(this.mInvalidate);
            this.mInvalidate.set(this.mTmpInvalidateRect);
        }
    }

    private void handleActionUp() {
        if (this.mPattern.isEmpty()) {
            return;
        }
        setPatternInProgress(false);
        cancelLineAnimations();
        notifyPatternDetected();
        invalidate();
    }

    private void notifyCellAdded() {
        OnPatternListener onPatternListener = this.mOnPatternListener;
        if (onPatternListener != null) {
            onPatternListener.onPatternCellAdded(this.mPattern);
        }
        this.mExploreByTouchHelper.invalidateRoot();
    }

    private void notifyPatternCleared() {
        sendAccessEvent(R.string.lockscreen_access_pattern_cleared);
        OnPatternListener onPatternListener = this.mOnPatternListener;
        if (onPatternListener != null) {
            onPatternListener.onPatternCleared();
        }
    }

    private void notifyPatternDetected() {
        sendAccessEvent(R.string.lockscreen_access_pattern_detected);
        OnPatternListener onPatternListener = this.mOnPatternListener;
        if (onPatternListener != null) {
            onPatternListener.onPatternDetected(this.mPattern);
        }
    }

    private void notifyPatternStarted() {
        sendAccessEvent(R.string.lockscreen_access_pattern_start);
        OnPatternListener onPatternListener = this.mOnPatternListener;
        if (onPatternListener != null) {
            onPatternListener.onPatternStart();
        }
    }

    private void resetPattern() {
        this.mPattern.clear();
        clearPatternDrawLookup();
        this.mPatternDisplayMode = DisplayMode.Correct;
        invalidate();
    }

    private int resolveMeasured(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : i3;
        }
        return Math.max(size, i3);
    }

    private void sendAccessEvent(int i2) {
        announceForAccessibility(this.mContext.getString(i2));
    }

    private void setPatternInProgress(boolean z2) {
        this.mPatternInProgress = z2;
        this.mExploreByTouchHelper.invalidateRoot();
    }

    private void startCellActivatedAnimation(Cell cell) {
        final CellState cellState = this.mCellStates[cell.row][cell.column];
        startRadiusAnimation(this.mDotSize / 2, this.mDotSizeActivated / 2, 96L, this.mLinearOutSlowInInterpolator, cellState, new Runnable() { // from class: com.android.internal.widget.LockPatternView.4
            @Override // java.lang.Runnable
            public void run() {
                LockPatternView lockPatternView = LockPatternView.this;
                lockPatternView.startRadiusAnimation(lockPatternView.mDotSizeActivated / 2, LockPatternView.this.mDotSize / 2, 192L, LockPatternView.this.mFastOutSlowInInterpolator, cellState, null);
            }
        });
        startLineEndAnimation(cellState, this.mInProgressX, this.mInProgressY, getCenterXForColumn(cell.column), getCenterYForRow(cell.row));
    }

    private void startCellStateAnimationHw(final CellState cellState, float f2, float f3, float f4, float f5, float f6, float f7, long j2, long j3, Interpolator interpolator, final Runnable runnable) {
        cellState.alpha = f3;
        cellState.translationY = f5;
        cellState.radius = (this.mDotSize / 2) * f7;
        cellState.hwAnimating = true;
        cellState.hwCenterY = CanvasProperty.createFloat(getCenterYForRow(cellState.row) + f4);
        cellState.hwCenterX = CanvasProperty.createFloat(getCenterXForColumn(cellState.col));
        cellState.hwRadius = CanvasProperty.createFloat((this.mDotSize / 2) * f6);
        this.mPaint.setColor(getCurrentColor(false));
        this.mPaint.setAlpha((int) (255.0f * f2));
        cellState.hwPaint = CanvasProperty.createPaint(new Paint(this.mPaint));
        startRtFloatAnimation(cellState.hwCenterY, getCenterYForRow(cellState.row) + f5, j2, j3, interpolator);
        startRtFloatAnimation(cellState.hwRadius, (this.mDotSize / 2) * f7, j2, j3, interpolator);
        startRtAlphaAnimation(cellState, f3, j2, j3, interpolator, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cellState.hwAnimating = false;
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        invalidate();
    }

    private void startCellStateAnimationSw(final CellState cellState, final float f2, final float f3, final float f4, final float f5, final float f6, final float f7, long j2, long j3, Interpolator interpolator, final Runnable runnable) {
        cellState.alpha = f2;
        cellState.translationY = f4;
        cellState.radius = (this.mDotSize / 2) * f6;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(j3);
        valueAnimatorOfFloat.setStartDelay(j2);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.widget.LockPatternView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CellState cellState2 = cellState;
                float f8 = 1.0f - fFloatValue;
                cellState2.alpha = (f3 * fFloatValue) + (f2 * f8);
                cellState2.translationY = (f5 * fFloatValue) + (f4 * f8);
                cellState2.radius = ((fFloatValue * f7) + (f8 * f6)) * (LockPatternView.this.mDotSize / 2);
                LockPatternView.this.invalidate();
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        valueAnimatorOfFloat.start();
    }

    private void startLineEndAnimation(final CellState cellState, final float f2, final float f3, final float f4, final float f5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.widget.LockPatternView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CellState cellState2 = cellState;
                float f6 = 1.0f - fFloatValue;
                cellState2.lineEndX = (f4 * fFloatValue) + (f2 * f6);
                cellState2.lineEndY = (fFloatValue * f5) + (f6 * f3);
                LockPatternView.this.invalidate();
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cellState.lineAnimator = null;
            }
        });
        valueAnimatorOfFloat.setInterpolator(this.mFastOutSlowInInterpolator);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.start();
        cellState.lineAnimator = valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRadiusAnimation(float f2, float f3, long j2, Interpolator interpolator, final CellState cellState, final Runnable runnable) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.widget.LockPatternView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                cellState.radius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                LockPatternView.this.invalidate();
            }
        });
        if (runnable != null) {
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }
            });
        }
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.setDuration(j2);
        valueAnimatorOfFloat.start();
    }

    private void startRtAlphaAnimation(CellState cellState, float f2, long j2, long j3, Interpolator interpolator, Animator.AnimatorListener animatorListener) {
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(cellState.hwPaint, 1, (int) (f2 * 255.0f));
        renderNodeAnimator.setDuration(j3);
        renderNodeAnimator.setStartDelay(j2);
        renderNodeAnimator.setInterpolator(interpolator);
        renderNodeAnimator.setTarget((View) this);
        renderNodeAnimator.addListener(animatorListener);
        renderNodeAnimator.start();
    }

    private void startRtFloatAnimation(CanvasProperty<Float> canvasProperty, float f2, long j2, long j3, Interpolator interpolator) {
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(canvasProperty, f2);
        renderNodeAnimator.setDuration(j3);
        renderNodeAnimator.setStartDelay(j2);
        renderNodeAnimator.setInterpolator(interpolator);
        renderNodeAnimator.setTarget((View) this);
        renderNodeAnimator.start();
    }

    public void clearPattern() {
        resetPattern();
    }

    public void disableInput() {
        this.mInputEnabled = false;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mExploreByTouchHelper.dispatchHoverEvent(motionEvent) | super.dispatchHoverEvent(motionEvent);
    }

    public void enableInput() {
        this.mInputEnabled = true;
    }

    public CellState[][] getCellStates() {
        return this.mCellStates;
    }

    public boolean isInStealthMode() {
        return this.mInStealthMode;
    }

    public boolean isTactileFeedbackEnabled() {
        return this.mEnableHapticFeedback;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0152  */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        float f2;
        ArrayList<Cell> arrayList = this.mPattern;
        int size = arrayList.size();
        boolean[][] zArr = this.mPatternDrawLookup;
        if (this.mPatternDisplayMode == DisplayMode.Animate) {
            int iElapsedRealtime = ((int) (SystemClock.elapsedRealtime() - this.mAnimatingPeriodStart)) % ((size + 1) * 700);
            int i3 = iElapsedRealtime / 700;
            clearPatternDrawLookup();
            for (int i4 = 0; i4 < i3; i4++) {
                Cell cell = arrayList.get(i4);
                zArr[cell.getRow()][cell.getColumn()] = true;
            }
            if (i3 > 0 && i3 < size) {
                float f3 = (iElapsedRealtime % 700) / 700.0f;
                Cell cell2 = arrayList.get(i3 - 1);
                float centerXForColumn = getCenterXForColumn(cell2.column);
                float centerYForRow = getCenterYForRow(cell2.row);
                Cell cell3 = arrayList.get(i3);
                float centerXForColumn2 = (getCenterXForColumn(cell3.column) - centerXForColumn) * f3;
                float centerYForRow2 = (getCenterYForRow(cell3.row) - centerYForRow) * f3;
                this.mInProgressX = centerXForColumn + centerXForColumn2;
                this.mInProgressY = centerYForRow + centerYForRow2;
            }
            invalidate();
        }
        Path path = this.mCurrentPath;
        path.rewind();
        int i5 = 0;
        while (true) {
            if (i5 >= 3) {
                break;
            }
            float centerYForRow3 = getCenterYForRow(i5);
            int i6 = 0;
            for (int i7 = 3; i6 < i7; i7 = i7) {
                CellState cellState = this.mCellStates[i5][i6];
                float centerXForColumn3 = getCenterXForColumn(i6);
                float f4 = cellState.translationY;
                if (this.mUseLockPatternDrawable) {
                    i2 = i6;
                    f2 = centerYForRow3;
                    drawCellDrawable(canvas, i5, i6, cellState.radius, zArr[i5][i6]);
                } else {
                    i2 = i6;
                    f2 = centerYForRow3;
                    if (isHardwareAccelerated() && cellState.hwAnimating) {
                        ((DisplayListCanvas) canvas).drawCircle(cellState.hwCenterX, cellState.hwCenterY, cellState.hwRadius, cellState.hwPaint);
                    } else {
                        drawCircle(canvas, (int) centerXForColumn3, ((int) f2) + f4, cellState.radius, zArr[i5][i2], cellState.alpha);
                    }
                    i6 = i2 + 1;
                    centerYForRow3 = f2;
                }
                i6 = i2 + 1;
                centerYForRow3 = f2;
            }
            i5++;
        }
        if (!this.mInStealthMode) {
            this.mPathPaint.setColor(getCurrentColor(true));
            float f5 = 0.0f;
            float f6 = 0.0f;
            int i8 = 0;
            boolean z2 = false;
            while (i8 < size) {
                Cell cell4 = arrayList.get(i8);
                boolean[] zArr2 = zArr[cell4.row];
                int i9 = cell4.column;
                if (!zArr2[i9]) {
                    break;
                }
                float centerXForColumn4 = getCenterXForColumn(i9);
                float centerYForRow4 = getCenterYForRow(cell4.row);
                if (i8 != 0) {
                    CellState cellState2 = this.mCellStates[cell4.row][cell4.column];
                    path.rewind();
                    path.moveTo(f5, f6);
                    float f7 = cellState2.lineEndX;
                    if (f7 != Float.MIN_VALUE) {
                        float f8 = cellState2.lineEndY;
                        if (f8 != Float.MIN_VALUE) {
                            path.lineTo(f7, f8);
                        } else {
                            path.lineTo(centerXForColumn4, centerYForRow4);
                        }
                    } else {
                        path.lineTo(centerXForColumn4, centerYForRow4);
                    }
                    canvas.drawPath(path, this.mPathPaint);
                }
                i8++;
                f5 = centerXForColumn4;
                f6 = centerYForRow4;
                z2 = true;
            }
            if ((this.mPatternInProgress || this.mPatternDisplayMode == DisplayMode.Animate) && z2) {
                path.rewind();
                path.moveTo(f5, f6);
                path.lineTo(this.mInProgressX, this.mInProgressY);
                this.mPathPaint.setAlpha((int) (calculateLastSegmentAlpha(this.mInProgressX, this.mInProgressY, f5, f6) * 255.0f));
                canvas.drawPath(path, this.mPathPaint);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (AccessibilityManager.getInstance(this.mContext).isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7) {
                motionEvent.setAction(2);
            } else if (action == 9) {
                motionEvent.setAction(0);
            } else if (action == 10) {
                motionEvent.setAction(1);
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int iResolveMeasured = resolveMeasured(i2, suggestedMinimumWidth);
        int iResolveMeasured2 = resolveMeasured(i3, suggestedMinimumHeight);
        int i4 = this.mAspect;
        if (i4 == 0) {
            iResolveMeasured = Math.min(iResolveMeasured, iResolveMeasured2);
            iResolveMeasured2 = iResolveMeasured;
        } else if (i4 == 1) {
            iResolveMeasured2 = Math.min(iResolveMeasured, iResolveMeasured2);
        } else if (i4 == 2) {
            iResolveMeasured = Math.min(iResolveMeasured, iResolveMeasured2);
        }
        setMeasuredDimension(iResolveMeasured, iResolveMeasured2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setPattern(DisplayMode.Correct, LockPatternUtils.stringToPattern(savedState.getSerializedPattern()));
        this.mPatternDisplayMode = DisplayMode.values()[savedState.getDisplayMode()];
        this.mInputEnabled = savedState.isInputEnabled();
        this.mInStealthMode = savedState.isInStealthMode();
        this.mEnableHapticFeedback = savedState.isTactileFeedbackEnabled();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), LockPatternUtils.patternToString(this.mPattern), this.mPatternDisplayMode.ordinal(), this.mInputEnabled, this.mInStealthMode, this.mEnableHapticFeedback);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        int i6 = (i2 - this.mPaddingLeft) - this.mPaddingRight;
        this.mSquareWidth = i6 / 3.0f;
        int i7 = (i3 - this.mPaddingTop) - this.mPaddingBottom;
        this.mSquareHeight = i7 / 3.0f;
        this.mExploreByTouchHelper.invalidateRoot();
        if (this.mUseLockPatternDrawable) {
            this.mNotSelectedDrawable.setBounds(this.mPaddingLeft, this.mPaddingTop, i6, i7);
            this.mSelectedDrawable.setBounds(this.mPaddingLeft, this.mPaddingTop, i6, i7);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mInputEnabled || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            handleActionDown(motionEvent);
            return true;
        }
        if (action == 1) {
            handleActionUp();
            return true;
        }
        if (action == 2) {
            handleActionMove(motionEvent);
            return true;
        }
        if (action != 3) {
            return false;
        }
        if (this.mPatternInProgress) {
            setPatternInProgress(false);
            resetPattern();
            notifyPatternCleared();
        }
        return true;
    }

    public void setDisplayMode(DisplayMode displayMode) {
        this.mPatternDisplayMode = displayMode;
        if (displayMode == DisplayMode.Animate) {
            if (this.mPattern.size() == 0) {
                throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
            }
            this.mAnimatingPeriodStart = SystemClock.elapsedRealtime();
            Cell cell = this.mPattern.get(0);
            this.mInProgressX = getCenterXForColumn(cell.getColumn());
            this.mInProgressY = getCenterYForRow(cell.getRow());
            clearPatternDrawLookup();
        }
        invalidate();
    }

    public void setInStealthMode(boolean z2) {
        this.mInStealthMode = z2;
    }

    public void setOnPatternListener(OnPatternListener onPatternListener) {
        this.mOnPatternListener = onPatternListener;
    }

    public void setPattern(DisplayMode displayMode, List<Cell> list) {
        this.mPattern.clear();
        this.mPattern.addAll(list);
        clearPatternDrawLookup();
        for (Cell cell : list) {
            this.mPatternDrawLookup[cell.getRow()][cell.getColumn()] = true;
        }
        setDisplayMode(displayMode);
    }

    public void setTactileFeedbackEnabled(boolean z2) {
        this.mEnableHapticFeedback = z2;
    }

    public void startCellStateAnimation(CellState cellState, float f2, float f3, float f4, float f5, float f6, float f7, long j2, long j3, Interpolator interpolator, Runnable runnable) {
        if (isHardwareAccelerated()) {
            startCellStateAnimationHw(cellState, f2, f3, f4, f5, f6, f7, j2, j3, interpolator, runnable);
        } else {
            startCellStateAnimationSw(cellState, f2, f3, f4, f5, f6, f7, j2, j3, interpolator, runnable);
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.widget.LockPatternView.SavedState.1
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
        private final int mDisplayMode;
        private final boolean mInStealthMode;
        private final boolean mInputEnabled;
        private final String mSerializedPattern;
        private final boolean mTactileFeedbackEnabled;

        public int getDisplayMode() {
            return this.mDisplayMode;
        }

        public String getSerializedPattern() {
            return this.mSerializedPattern;
        }

        public boolean isInStealthMode() {
            return this.mInStealthMode;
        }

        public boolean isInputEnabled() {
            return this.mInputEnabled;
        }

        public boolean isTactileFeedbackEnabled() {
            return this.mTactileFeedbackEnabled;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.mSerializedPattern);
            parcel.writeInt(this.mDisplayMode);
            parcel.writeValue(Boolean.valueOf(this.mInputEnabled));
            parcel.writeValue(Boolean.valueOf(this.mInStealthMode));
            parcel.writeValue(Boolean.valueOf(this.mTactileFeedbackEnabled));
        }

        private SavedState(Parcelable parcelable, String str, int i2, boolean z2, boolean z3, boolean z4) {
            super(parcelable);
            this.mSerializedPattern = str;
            this.mDisplayMode = i2;
            this.mInputEnabled = z2;
            this.mInStealthMode = z3;
            this.mTactileFeedbackEnabled = z4;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mSerializedPattern = parcel.readString();
            this.mDisplayMode = parcel.readInt();
            this.mInputEnabled = ((Boolean) parcel.readValue(null)).booleanValue();
            this.mInStealthMode = ((Boolean) parcel.readValue(null)).booleanValue();
            this.mTactileFeedbackEnabled = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public LockPatternView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDrawingProfilingStarted = false;
        Paint paint = new Paint();
        this.mPaint = paint;
        Paint paint2 = new Paint();
        this.mPathPaint = paint2;
        this.mPattern = new ArrayList<>(9);
        this.mPatternDrawLookup = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, 3);
        this.mInProgressX = -1.0f;
        this.mInProgressY = -1.0f;
        this.mPatternDisplayMode = DisplayMode.Correct;
        this.mInputEnabled = true;
        this.mInStealthMode = false;
        this.mEnableHapticFeedback = true;
        this.mPatternInProgress = false;
        this.mHitFactor = 0.6f;
        this.mCurrentPath = new Path();
        this.mInvalidate = new Rect();
        this.mTmpInvalidateRect = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LockPatternView, R.attr.lockPatternStyle, R.style.Widget_LockPatternView);
        String string = typedArrayObtainStyledAttributes.getString(0);
        if ("square".equals(string)) {
            this.mAspect = 0;
        } else if ("lock_width".equals(string)) {
            this.mAspect = 1;
        } else if ("lock_height".equals(string)) {
            this.mAspect = 2;
        } else {
            this.mAspect = 0;
        }
        setClickable(true);
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        this.mRegularColor = typedArrayObtainStyledAttributes.getColor(3, 0);
        this.mErrorColor = typedArrayObtainStyledAttributes.getColor(1, 0);
        this.mSuccessColor = typedArrayObtainStyledAttributes.getColor(4, 0);
        paint2.setColor(typedArrayObtainStyledAttributes.getColor(2, this.mRegularColor));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeJoin(Paint.Join.ROUND);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.lock_pattern_dot_line_width);
        this.mPathWidth = dimensionPixelSize;
        paint2.setStrokeWidth(dimensionPixelSize);
        this.mDotSize = getResources().getDimensionPixelSize(R.dimen.lock_pattern_dot_size);
        this.mDotSizeActivated = getResources().getDimensionPixelSize(R.dimen.lock_pattern_dot_size_activated);
        boolean z2 = getResources().getBoolean(R.bool.use_lock_pattern_drawable);
        this.mUseLockPatternDrawable = z2;
        if (z2) {
            this.mSelectedDrawable = getResources().getDrawable(R.drawable.lockscreen_selected);
            this.mNotSelectedDrawable = getResources().getDrawable(R.drawable.lockscreen_notselected);
        }
        paint.setAntiAlias(true);
        paint.setDither(true);
        this.mCellStates = (CellState[][]) Array.newInstance((Class<?>) CellState.class, 3, 3);
        for (int i2 = 0; i2 < 3; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                this.mCellStates[i2][i3] = new CellState();
                CellState cellState = this.mCellStates[i2][i3];
                cellState.radius = this.mDotSize / 2;
                cellState.row = i2;
                cellState.col = i3;
            }
        }
        this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563661);
        this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563662);
        PatternExploreByTouchHelper patternExploreByTouchHelper = new PatternExploreByTouchHelper(this);
        this.mExploreByTouchHelper = patternExploreByTouchHelper;
        setAccessibilityDelegate(patternExploreByTouchHelper);
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        typedArrayObtainStyledAttributes.recycle();
    }
}
