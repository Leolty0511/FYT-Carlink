package com.android.internal.policy;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.view.DisplayInfo;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class DividerSnapAlgorithm {
    private static final int MIN_DISMISS_VELOCITY_DP_PER_SECOND = 600;
    private static final int MIN_FLING_VELOCITY_DP_PER_SECOND = 400;
    private static final int SNAP_FIXED_RATIO = 1;
    private static final int SNAP_MODE_16_9 = 0;
    private static final int SNAP_MODE_MINIMIZED = 3;
    private static final int SNAP_ONLY_1_1 = 2;
    private final SnapTarget mDismissEndTarget;
    private final SnapTarget mDismissStartTarget;
    private final int mDisplayHeight;
    private final int mDisplayWidth;
    private final int mDividerSize;
    private final SnapTarget mFirstSplitTarget;
    private final float mFixedRatio;
    private final Rect mInsets;
    private boolean mIsHorizontalDivision;
    private final SnapTarget mLastSplitTarget;
    private final SnapTarget mMiddleTarget;
    private final float mMinDismissVelocityPxPerSecond;
    private final float mMinFlingVelocityPxPerSecond;
    private final int mMinimalSizeResizableTask;
    private final int mSnapMode;
    private final ArrayList<SnapTarget> mTargets;
    private final int mTaskHeightInMinimizedMode;

    public static class SnapTarget {
        public static final int FLAG_DISMISS_END = 2;
        public static final int FLAG_DISMISS_START = 1;
        public static final int FLAG_NONE = 0;
        private final float distanceMultiplier;
        public final int flag;
        public final int position;
        public final int taskPosition;

        public SnapTarget(int i2, int i3, int i4) {
            this(i2, i3, i4, 1.0f);
        }

        public SnapTarget(int i2, int i3, int i4, float f2) {
            this.position = i2;
            this.taskPosition = i3;
            this.flag = i4;
            this.distanceMultiplier = f2;
        }
    }

    public DividerSnapAlgorithm(Resources resources, int i2, int i3, int i4, boolean z2, Rect rect) {
        this(resources, i2, i3, i4, z2, rect, false);
    }

    private void addFixedDivisionTargets(boolean z2, int i2) {
        int i3;
        int i4;
        Rect rect = this.mInsets;
        int i5 = z2 ? rect.top : rect.left;
        if (z2) {
            i3 = this.mDisplayHeight;
            i4 = this.mInsets.bottom;
        } else {
            i3 = this.mDisplayWidth;
            i4 = this.mInsets.right;
        }
        int i6 = i3 - i4;
        int i7 = (int) (this.mFixedRatio * (i6 - i5));
        int i8 = this.mDividerSize;
        int i9 = i7 - (i8 / 2);
        addNonDismissingTargets(z2, i5 + i9, (i6 - i9) - i8, i2);
    }

    private void addMiddleTarget(boolean z2) {
        int iCalculateMiddlePosition = DockedDividerUtils.calculateMiddlePosition(z2, this.mInsets, this.mDisplayWidth, this.mDisplayHeight, this.mDividerSize);
        this.mTargets.add(new SnapTarget(iCalculateMiddlePosition, iCalculateMiddlePosition, 0));
    }

    private void addMinimizedTarget(boolean z2) {
        int i2 = this.mTaskHeightInMinimizedMode;
        Rect rect = this.mInsets;
        int i3 = i2 + rect.top;
        if (!z2) {
            i3 += rect.left;
        }
        this.mTargets.add(new SnapTarget(i3, i3, 0));
    }

    private void addNonDismissingTargets(boolean z2, int i2, int i3, int i4) {
        maybeAddTarget(i2, i2 - this.mInsets.top);
        addMiddleTarget(z2);
        maybeAddTarget(i3, (i4 - this.mInsets.bottom) - (this.mDividerSize + i3));
    }

    private void addRatio16_9Targets(boolean z2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        Rect rect = this.mInsets;
        int i7 = z2 ? rect.top : rect.left;
        if (z2) {
            i3 = this.mDisplayHeight;
            i4 = this.mInsets.bottom;
        } else {
            i3 = this.mDisplayWidth;
            i4 = this.mInsets.right;
        }
        int i8 = i3 - i4;
        Rect rect2 = this.mInsets;
        int i9 = z2 ? rect2.left : rect2.top;
        if (z2) {
            i5 = this.mDisplayWidth;
            i6 = this.mInsets.right;
        } else {
            i5 = this.mDisplayHeight;
            i6 = this.mInsets.bottom;
        }
        int iFloor = (int) Math.floor(((i5 - i6) - i9) * 0.5625f);
        addNonDismissingTargets(z2, i7 + iFloor, (i8 - iFloor) - this.mDividerSize, i2);
    }

    private void calculateTargets(boolean z2) {
        this.mTargets.clear();
        int i2 = z2 ? this.mDisplayHeight : this.mDisplayWidth;
        Rect rect = this.mInsets;
        int i3 = z2 ? rect.bottom : rect.right;
        ArrayList<SnapTarget> arrayList = this.mTargets;
        int i4 = this.mDividerSize;
        arrayList.add(new SnapTarget(-i4, -i4, 1, 0.35f));
        int i5 = this.mSnapMode;
        if (i5 == 0) {
            addRatio16_9Targets(z2, i2);
        } else if (i5 == 1) {
            addFixedDivisionTargets(z2, i2);
        } else if (i5 == 2) {
            addMiddleTarget(z2);
        } else if (i5 == 3) {
            addMinimizedTarget(z2);
        }
        this.mTargets.add(new SnapTarget(i2 - i3, i2, 2, 0.35f));
    }

    public static DividerSnapAlgorithm create(Context context, Rect rect) {
        DisplayInfo displayInfo = new DisplayInfo();
        ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0).getDisplayInfo(displayInfo);
        return new DividerSnapAlgorithm(context.getResources(), displayInfo.logicalWidth, displayInfo.logicalHeight, context.getResources().getDimensionPixelSize(R.dimen.docked_stack_divider_thickness) - (context.getResources().getDimensionPixelSize(R.dimen.docked_stack_divider_insets) * 2), context.getApplicationContext().getResources().getConfiguration().orientation == 1, rect);
    }

    private int getEndInset() {
        return this.mIsHorizontalDivision ? this.mInsets.bottom : this.mInsets.right;
    }

    private int getStartInset() {
        return this.mIsHorizontalDivision ? this.mInsets.top : this.mInsets.left;
    }

    private void maybeAddTarget(int i2, int i3) {
        if (i3 >= this.mMinimalSizeResizableTask) {
            this.mTargets.add(new SnapTarget(i2, i2, 0));
        }
    }

    private SnapTarget snap(int i2, boolean z2) {
        int size = this.mTargets.size();
        int i3 = -1;
        float f2 = Float.MAX_VALUE;
        for (int i4 = 0; i4 < size; i4++) {
            SnapTarget snapTarget = this.mTargets.get(i4);
            float fAbs = Math.abs(i2 - snapTarget.position);
            if (z2) {
                fAbs /= snapTarget.distanceMultiplier;
            }
            if (fAbs < f2) {
                i3 = i4;
                f2 = fAbs;
            }
        }
        return this.mTargets.get(i3);
    }

    public float calculateDismissingFraction(int i2) {
        if (i2 < this.mFirstSplitTarget.position) {
            return 1.0f - ((i2 - getStartInset()) / (this.mFirstSplitTarget.position - getStartInset()));
        }
        int i3 = this.mLastSplitTarget.position;
        if (i2 > i3) {
            return (i2 - i3) / ((this.mDismissEndTarget.position - i3) - this.mDividerSize);
        }
        return 0.0f;
    }

    public SnapTarget calculateNonDismissingSnapTarget(int i2) {
        SnapTarget snapTargetSnap = snap(i2, false);
        if (snapTargetSnap == this.mDismissStartTarget) {
            return this.mFirstSplitTarget;
        }
        return snapTargetSnap == this.mDismissEndTarget ? this.mLastSplitTarget : snapTargetSnap;
    }

    public SnapTarget calculateSnapTarget(int i2, float f2) {
        return calculateSnapTarget(i2, f2, true);
    }

    public SnapTarget cycleNonDismissTarget(SnapTarget snapTarget, int i2) {
        int iIndexOf = this.mTargets.indexOf(snapTarget);
        if (iIndexOf == -1) {
            return snapTarget;
        }
        ArrayList<SnapTarget> arrayList = this.mTargets;
        SnapTarget snapTarget2 = arrayList.get(((arrayList.size() + iIndexOf) + i2) % this.mTargets.size());
        if (snapTarget2 == this.mDismissStartTarget) {
            return this.mLastSplitTarget;
        }
        return snapTarget2 == this.mDismissEndTarget ? this.mFirstSplitTarget : snapTarget2;
    }

    public SnapTarget getClosestDismissTarget(int i2) {
        if (i2 < this.mFirstSplitTarget.position) {
            return this.mDismissStartTarget;
        }
        if (i2 > this.mLastSplitTarget.position) {
            return this.mDismissEndTarget;
        }
        SnapTarget snapTarget = this.mDismissStartTarget;
        int i3 = i2 - snapTarget.position;
        SnapTarget snapTarget2 = this.mDismissEndTarget;
        return i3 < snapTarget2.position - i2 ? snapTarget : snapTarget2;
    }

    public SnapTarget getDismissEndTarget() {
        return this.mDismissEndTarget;
    }

    public SnapTarget getDismissStartTarget() {
        return this.mDismissStartTarget;
    }

    public SnapTarget getFirstSplitTarget() {
        return this.mFirstSplitTarget;
    }

    public SnapTarget getLastSplitTarget() {
        return this.mLastSplitTarget;
    }

    public SnapTarget getMiddleTarget() {
        return this.mMiddleTarget;
    }

    public SnapTarget getNextTarget(SnapTarget snapTarget) {
        int iIndexOf = this.mTargets.indexOf(snapTarget);
        return (iIndexOf == -1 || iIndexOf >= this.mTargets.size() + (-1)) ? snapTarget : this.mTargets.get(iIndexOf + 1);
    }

    public SnapTarget getPreviousTarget(SnapTarget snapTarget) {
        int iIndexOf = this.mTargets.indexOf(snapTarget);
        return (iIndexOf == -1 || iIndexOf <= 0) ? snapTarget : this.mTargets.get(iIndexOf - 1);
    }

    public boolean isFirstSplitTargetAvailable() {
        return this.mFirstSplitTarget != this.mMiddleTarget;
    }

    public boolean isLastSplitTargetAvailable() {
        return this.mLastSplitTarget != this.mMiddleTarget;
    }

    public boolean isSplitScreenFeasible() {
        Rect rect = this.mInsets;
        int i2 = rect.top;
        boolean z2 = this.mIsHorizontalDivision;
        return ((((z2 ? this.mDisplayHeight : this.mDisplayWidth) - (z2 ? rect.bottom : rect.right)) - i2) - this.mDividerSize) / 2 >= this.mMinimalSizeResizableTask;
    }

    public DividerSnapAlgorithm(Resources resources, int i2, int i3, int i4, boolean z2, Rect rect, boolean z3) {
        ArrayList<SnapTarget> arrayList = new ArrayList<>();
        this.mTargets = arrayList;
        Rect rect2 = new Rect();
        this.mInsets = rect2;
        this.mMinFlingVelocityPxPerSecond = resources.getDisplayMetrics().density * 400.0f;
        this.mMinDismissVelocityPxPerSecond = resources.getDisplayMetrics().density * 600.0f;
        this.mDividerSize = i4;
        this.mDisplayWidth = i2;
        this.mDisplayHeight = i3;
        this.mIsHorizontalDivision = z2;
        rect2.set(rect);
        this.mSnapMode = z3 ? 3 : resources.getInteger(R.integer.config_dockedStackDividerSnapMode);
        this.mFixedRatio = resources.getFraction(R.fraction.docked_stack_divider_fixed_ratio, 1, 1);
        this.mMinimalSizeResizableTask = resources.getDimensionPixelSize(R.dimen.default_minimal_size_resizable_task);
        this.mTaskHeightInMinimizedMode = resources.getDimensionPixelSize(R.dimen.task_height_of_minimized_mode);
        calculateTargets(z2);
        this.mFirstSplitTarget = arrayList.get(1);
        this.mLastSplitTarget = arrayList.get(arrayList.size() - 2);
        this.mDismissStartTarget = arrayList.get(0);
        this.mDismissEndTarget = arrayList.get(arrayList.size() - 1);
        this.mMiddleTarget = arrayList.get(arrayList.size() / 2);
    }

    public SnapTarget calculateSnapTarget(int i2, float f2, boolean z2) {
        if (i2 < this.mFirstSplitTarget.position && f2 < (-this.mMinDismissVelocityPxPerSecond)) {
            return this.mDismissStartTarget;
        }
        if (i2 > this.mLastSplitTarget.position && f2 > this.mMinDismissVelocityPxPerSecond) {
            return this.mDismissEndTarget;
        }
        if (Math.abs(f2) < this.mMinFlingVelocityPxPerSecond) {
            return snap(i2, z2);
        }
        return f2 < 0.0f ? this.mFirstSplitTarget : this.mLastSplitTarget;
    }
}
