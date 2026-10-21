package com.android.internal.policy;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Size;
import android.view.Gravity;
import com.android.internal.R;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PipSnapAlgorithm {
    private static final float CORNER_MAGNET_THRESHOLD = 0.3f;
    private static final int SNAP_MODE_CORNERS_AND_SIDES = 1;
    private static final int SNAP_MODE_CORNERS_ONLY = 0;
    private static final int SNAP_MODE_EDGE = 2;
    private static final int SNAP_MODE_EDGE_MAGNET_CORNERS = 3;
    private static final int SNAP_MODE_LONG_EDGE_MAGNET_CORNERS = 4;
    private final Context mContext;
    private final float mDefaultSizePercent;
    private final int mFlingDeceleration;
    private boolean mIsMinimized;
    private final float mMaxAspectRatioForMinSize;
    private final float mMinAspectRatioForMinSize;
    private final int mMinimizedVisibleSize;
    private final ArrayList<Integer> mSnapGravities = new ArrayList<>();
    private final int mDefaultSnapMode = 3;
    private int mSnapMode = 3;
    private int mOrientation = 0;

    public PipSnapAlgorithm(Context context) {
        Resources resources = context.getResources();
        this.mContext = context;
        this.mMinimizedVisibleSize = resources.getDimensionPixelSize(R.dimen.pip_minimized_visible_size);
        this.mDefaultSizePercent = resources.getFloat(R.dimen.config_pictureInPictureDefaultSizePercent);
        float f2 = resources.getFloat(R.dimen.config_pictureInPictureAspectRatioLimitForMinSize);
        this.mMaxAspectRatioForMinSize = f2;
        this.mMinAspectRatioForMinSize = 1.0f / f2;
        this.mFlingDeceleration = context.getResources().getDimensionPixelSize(R.dimen.pip_fling_deceleration);
        onConfigurationChanged();
    }

    private void calculateSnapTargets() {
        this.mSnapGravities.clear();
        int i2 = this.mSnapMode;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 3 && i2 != 4) {
                    return;
                }
            } else if (this.mOrientation == 2) {
                this.mSnapGravities.add(49);
                this.mSnapGravities.add(81);
            } else {
                this.mSnapGravities.add(19);
                this.mSnapGravities.add(21);
            }
        }
        this.mSnapGravities.add(51);
        this.mSnapGravities.add(53);
        this.mSnapGravities.add(83);
        this.mSnapGravities.add(85);
    }

    private float distanceToPoint(Point point, int i2, int i3) {
        return PointF.length(point.f71x - i2, point.f72y - i3);
    }

    private Point findClosestPoint(int i2, int i3, Point[] pointArr) {
        Point point = null;
        float f2 = Float.MAX_VALUE;
        for (Point point2 : pointArr) {
            float fDistanceToPoint = distanceToPoint(point2, i2, i3);
            if (fDistanceToPoint < f2) {
                point = point2;
                f2 = fDistanceToPoint;
            }
        }
        return point;
    }

    private int findX(float f2, float f3, float f4) {
        return (int) ((f4 - f3) / f2);
    }

    private int findY(float f2, float f3, float f4) {
        return (int) ((f2 * f4) + f3);
    }

    private void snapRectToClosestEdge(Rect rect, Rect rect2, Rect rect3) {
        int iMin;
        int iMax = Math.max(rect2.left, Math.min(rect2.right, rect.left));
        int iMax2 = Math.max(rect2.top, Math.min(rect2.bottom, rect.top));
        rect3.set(rect);
        if (this.mIsMinimized) {
            rect3.offsetTo(iMax, iMax2);
            return;
        }
        int iAbs = Math.abs(rect.left - rect2.left);
        int iAbs2 = Math.abs(rect.top - rect2.top);
        int iAbs3 = Math.abs(rect2.right - rect.left);
        int iAbs4 = Math.abs(rect2.bottom - rect.top);
        if (this.mSnapMode == 4) {
            iMin = this.mOrientation == 2 ? Math.min(iAbs2, iAbs4) : Math.min(iAbs, iAbs3);
        } else {
            iMin = Math.min(Math.min(iAbs, iAbs3), Math.min(iAbs2, iAbs4));
        }
        if (iMin == iAbs) {
            rect3.offsetTo(rect2.left, iMax2);
            return;
        }
        if (iMin == iAbs2) {
            rect3.offsetTo(iMax, rect2.top);
        } else if (iMin == iAbs3) {
            rect3.offsetTo(rect2.right, iMax2);
        } else {
            rect3.offsetTo(iMax, rect2.bottom);
        }
    }

    public void applyMinimizedOffset(Rect rect, Rect rect2, Point point, Rect rect3) {
        if (rect.left <= rect2.centerX()) {
            rect.offsetTo((rect3.left + this.mMinimizedVisibleSize) - rect.width(), rect.top);
        } else {
            rect.offsetTo((point.f71x - rect3.right) - this.mMinimizedVisibleSize, rect.top);
        }
    }

    public void applySnapFraction(Rect rect, Rect rect2, float f2) {
        if (f2 < 1.0f) {
            rect.offsetTo(rect2.left + ((int) (f2 * rect2.width())), rect2.top);
            return;
        }
        if (f2 < 2.0f) {
            rect.offsetTo(rect2.right, rect2.top + ((int) ((f2 - 1.0f) * rect2.height())));
        } else if (f2 < 3.0f) {
            rect.offsetTo(rect2.left + ((int) ((1.0f - (f2 - 2.0f)) * rect2.width())), rect2.bottom);
        } else {
            rect.offsetTo(rect2.left, rect2.top + ((int) ((1.0f - (f2 - 3.0f)) * rect2.height())));
        }
    }

    public void dump(PrintWriter printWriter, String str) {
        String strD = c.D(str, "  ");
        printWriter.println(str + "PipSnapAlgorithm");
        printWriter.println(strD + "mSnapMode=" + this.mSnapMode);
        printWriter.println(strD + "mOrientation=" + this.mOrientation);
        printWriter.println(strD + "mMinimizedVisibleSize=" + this.mMinimizedVisibleSize);
        printWriter.println(strD + "mIsMinimized=" + this.mIsMinimized);
    }

    public Rect findClosestSnapBounds(Rect rect, Rect rect2, float f2, float f3, Point point) {
        Rect rect3 = new Rect(rect2);
        Point edgeIntersect = getEdgeIntersect(rect2, rect, f2, f3, point);
        rect3.offsetTo(edgeIntersect.f71x, edgeIntersect.f72y);
        return findClosestSnapBounds(rect, rect3);
    }

    public Point getEdgeIntersect(Rect rect, Rect rect2, float f2, float f3, Point point) {
        int i2;
        int i3;
        boolean z2 = this.mOrientation == 2;
        int i4 = rect.left;
        int i5 = rect.top;
        float f4 = f3 / f2;
        float f5 = i5 - (i4 * f4);
        Point point2 = new Point();
        Point point3 = new Point();
        int i6 = f2 > 0.0f ? rect2.right : rect2.left;
        point2.f71x = i6;
        point2.f72y = findY(f4, f5, i6);
        int i7 = f3 > 0.0f ? rect2.bottom : rect2.top;
        point3.f72y = i7;
        int iFindX = findX(f4, f5, i7);
        point3.f71x = iFindX;
        if (z2) {
            if (f2 > 0.0f) {
                i2 = rect2.right;
                i3 = rect.left;
            } else {
                i2 = rect.left;
                i3 = rect2.left;
            }
        } else if (f3 > 0.0f) {
            i2 = rect2.bottom;
            i3 = rect.top;
        } else {
            i2 = rect.top;
            i3 = rect2.top;
        }
        int i8 = i2 - i3;
        if (i8 > 0) {
            int i9 = z2 ? point.f72y : point.f71x;
            if (z2) {
                iFindX = point3.f72y;
            }
            int iCenterX = rect2.centerX();
            if ((i9 < iCenterX && iFindX < iCenterX) || (i9 > iCenterX && iFindX > iCenterX)) {
                int iMin = Math.min(((int) (0.0d - Math.pow(z2 ? f2 : f3, 2.0d))) / (this.mFlingDeceleration * 2), i8);
                if (z2) {
                    int i10 = rect.left;
                    if (f2 <= 0.0f) {
                        iMin = -iMin;
                    }
                    point3.f71x = i10 + iMin;
                } else {
                    int i11 = rect.top;
                    if (f3 <= 0.0f) {
                        iMin = -iMin;
                    }
                    point3.f72y = i11 + iMin;
                }
                return point3;
            }
        }
        double dHypot = Math.hypot(point2.f71x - i4, point2.f72y - i5);
        double dHypot2 = Math.hypot(point3.f71x - i4, point3.f72y - i5);
        if (dHypot == 0.0d) {
            return point3;
        }
        return (dHypot2 != 0.0d && Math.abs(dHypot) > Math.abs(dHypot2)) ? point3 : point2;
    }

    public void getMovementBounds(Rect rect, Rect rect2, Rect rect3, int i2) {
        rect3.set(rect2);
        rect3.right = Math.max(rect2.left, rect2.right - rect.width());
        rect3.bottom = Math.max(rect2.top, rect2.bottom - rect.height()) - i2;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003c  */
    /* JADX WARN: Code duplicated, block: B:11:0x0043  */
    /* JADX WARN: Code duplicated, block: B:8:0x0038  */
    public Size getSizeForAspectRatio(float f2, float f3, int i2, int i3) {
        int iRound;
        int iRound2;
        int iMax = (int) Math.max(f3, Math.min(i2, i3) * this.mDefaultSizePercent);
        if (f2 > this.mMinAspectRatioForMinSize) {
            float f4 = this.mMaxAspectRatioForMinSize;
            if (f2 <= f4) {
                float f5 = iMax;
                float length = PointF.length(f4 * f5, f5);
                iMax = (int) Math.round(Math.sqrt((length * length) / ((f2 * f2) + 1.0f)));
                iRound = Math.round(iMax * f2);
            } else if (f2 <= 1.0f) {
                iRound2 = Math.round(iMax / f2);
            } else {
                iRound = Math.round(iMax * f2);
            }
            int i4 = iMax;
            iMax = iRound;
            iRound2 = i4;
        } else if (f2 <= 1.0f) {
            iRound2 = Math.round(iMax / f2);
        } else {
            iRound = Math.round(iMax * f2);
            int i5 = iMax;
            iMax = iRound;
            iRound2 = i5;
        }
        return new Size(iMax, iRound2);
    }

    public float getSnapFraction(Rect rect, Rect rect2) {
        Rect rect3 = new Rect();
        snapRectToClosestEdge(rect, rect2, rect3);
        float fWidth = (rect3.left - rect2.left) / rect2.width();
        float fHeight = (rect3.top - rect2.top) / rect2.height();
        int i2 = rect3.top;
        if (i2 == rect2.top) {
            return fWidth;
        }
        if (rect3.left == rect2.right) {
            return fHeight + 1.0f;
        }
        return i2 == rect2.bottom ? (1.0f - fWidth) + 2.0f : (1.0f - fHeight) + 3.0f;
    }

    public void onConfigurationChanged() {
        Resources resources = this.mContext.getResources();
        this.mOrientation = resources.getConfiguration().orientation;
        this.mSnapMode = resources.getInteger(R.integer.config_pictureInPictureSnapMode);
        calculateSnapTargets();
    }

    public void setMinimized(boolean z2) {
        this.mIsMinimized = z2;
    }

    public Rect findClosestSnapBounds(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect.left, rect.top, rect2.width() + rect.right, rect2.height() + rect.bottom);
        Rect rect4 = new Rect(rect2);
        int i2 = this.mSnapMode;
        if (i2 == 4 || i2 == 3) {
            Rect rect5 = new Rect();
            Point[] pointArr = new Point[this.mSnapGravities.size()];
            for (int i3 = 0; i3 < this.mSnapGravities.size(); i3++) {
                Gravity.apply(this.mSnapGravities.get(i3).intValue(), rect2.width(), rect2.height(), rect3, 0, 0, rect5);
                pointArr[i3] = new Point(rect5.left, rect5.top);
            }
            Point pointFindClosestPoint = findClosestPoint(rect2.left, rect2.top, pointArr);
            if (distanceToPoint(pointFindClosestPoint, rect2.left, rect2.top) < Math.max(rect2.width(), rect2.height()) * CORNER_MAGNET_THRESHOLD) {
                rect4.offsetTo(pointFindClosestPoint.f71x, pointFindClosestPoint.f72y);
            } else {
                snapRectToClosestEdge(rect2, rect, rect4);
            }
        } else if (i2 == 2) {
            snapRectToClosestEdge(rect2, rect, rect4);
        } else {
            Rect rect6 = new Rect();
            Point[] pointArr2 = new Point[this.mSnapGravities.size()];
            for (int i4 = 0; i4 < this.mSnapGravities.size(); i4++) {
                Gravity.apply(this.mSnapGravities.get(i4).intValue(), rect2.width(), rect2.height(), rect3, 0, 0, rect6);
                pointArr2[i4] = new Point(rect6.left, rect6.top);
            }
            Point pointFindClosestPoint2 = findClosestPoint(rect2.left, rect2.top, pointArr2);
            rect4.offsetTo(pointFindClosestPoint2.f71x, pointFindClosestPoint2.f72y);
        }
        return rect4;
    }
}
