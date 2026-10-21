package android.accessibilityservice;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GestureDescription {
    private static final long MAX_GESTURE_DURATION_MS = 60000;
    private static final int MAX_STROKE_COUNT = 10;
    private final List<StrokeDescription> mStrokes;
    private final float[] mTempPos;

    public static class Builder {
        private final List<StrokeDescription> mStrokes = new ArrayList();

        public Builder addStroke(StrokeDescription strokeDescription) {
            if (this.mStrokes.size() >= 10) {
                throw new IllegalStateException("Attempting to add too many strokes to a gesture");
            }
            this.mStrokes.add(strokeDescription);
            if (GestureDescription.getTotalDuration(this.mStrokes) <= 60000) {
                return this;
            }
            this.mStrokes.remove(strokeDescription);
            throw new IllegalStateException("Gesture would exceed maximum duration with new stroke");
        }

        public GestureDescription build() {
            if (this.mStrokes.size() != 0) {
                return new GestureDescription(this.mStrokes);
            }
            throw new IllegalStateException("Gestures must have at least one stroke");
        }
    }

    public static class MotionEventGenerator {
        private static TouchPoint[] sCurrentTouchPoints;

        private static TouchPoint[] getCurrentTouchPoints(int i2) {
            TouchPoint[] touchPointArr = sCurrentTouchPoints;
            if (touchPointArr == null || touchPointArr.length < i2) {
                sCurrentTouchPoints = new TouchPoint[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    sCurrentTouchPoints[i3] = new TouchPoint();
                }
            }
            return sCurrentTouchPoints;
        }

        public static List<GestureStep> getGestureStepsFromGestureDescription(GestureDescription gestureDescription, int i2) {
            ArrayList arrayList = new ArrayList();
            TouchPoint[] currentTouchPoints = getCurrentTouchPoints(gestureDescription.getStrokeCount());
            long nextKeyPointAtLeast = gestureDescription.getNextKeyPointAtLeast(0L);
            int pointsForTime = 0;
            long j2 = 0;
            while (nextKeyPointAtLeast >= 0) {
                if (pointsForTime != 0) {
                    nextKeyPointAtLeast = Math.min(nextKeyPointAtLeast, j2 + ((long) i2));
                }
                j2 = nextKeyPointAtLeast;
                pointsForTime = gestureDescription.getPointsForTime(j2, currentTouchPoints);
                arrayList.add(new GestureStep(j2, pointsForTime, currentTouchPoints));
                nextKeyPointAtLeast = gestureDescription.getNextKeyPointAtLeast(1 + j2);
            }
            return arrayList;
        }
    }

    public static class StrokeDescription {
        private static final int INVALID_STROKE_ID = -1;
        static int sIdCounter;
        boolean mContinued;
        int mContinuedStrokeId;
        long mEndTime;
        int mId;
        Path mPath;
        private PathMeasure mPathMeasure;
        long mStartTime;
        float[] mTapLocation;
        private float mTimeToLengthConversion;

        public StrokeDescription(Path path, long j2, long j3) {
            this(path, j2, j3, false);
        }

        public StrokeDescription continueStroke(Path path, long j2, long j3, boolean z2) {
            if (!this.mContinued) {
                throw new IllegalStateException("Only strokes marked willContinue can be continued");
            }
            StrokeDescription strokeDescription = new StrokeDescription(path, j2, j3, z2);
            strokeDescription.mContinuedStrokeId = this.mId;
            return strokeDescription;
        }

        public int getContinuedStrokeId() {
            return this.mContinuedStrokeId;
        }

        public long getDuration() {
            return this.mEndTime - this.mStartTime;
        }

        public int getId() {
            return this.mId;
        }

        public float getLength() {
            return this.mPathMeasure.getLength();
        }

        public Path getPath() {
            return new Path(this.mPath);
        }

        public boolean getPosForTime(long j2, float[] fArr) {
            float[] fArr2 = this.mTapLocation;
            if (fArr2 != null) {
                fArr[0] = fArr2[0];
                fArr[1] = fArr2[1];
                return true;
            }
            if (j2 == this.mEndTime) {
                return this.mPathMeasure.getPosTan(getLength(), fArr, null);
            }
            return this.mPathMeasure.getPosTan(this.mTimeToLengthConversion * (j2 - this.mStartTime), fArr, null);
        }

        public long getStartTime() {
            return this.mStartTime;
        }

        public boolean hasPointForTime(long j2) {
            return j2 >= this.mStartTime && j2 <= this.mEndTime;
        }

        public boolean willContinue() {
            return this.mContinued;
        }

        public StrokeDescription(Path path, long j2, long j3, boolean z2) {
            this.mContinuedStrokeId = -1;
            this.mContinued = z2;
            Preconditions.checkArgument(j3 > 0, "Duration must be positive");
            Preconditions.checkArgument(j2 >= 0, "Start time must not be negative");
            Preconditions.checkArgument(!path.isEmpty(), "Path is empty");
            RectF rectF = new RectF();
            path.computeBounds(rectF, false);
            Preconditions.checkArgument(rectF.bottom >= 0.0f && rectF.top >= 0.0f && rectF.right >= 0.0f && rectF.left >= 0.0f, "Path bounds must not be negative");
            this.mPath = new Path(path);
            PathMeasure pathMeasure = new PathMeasure(path, false);
            this.mPathMeasure = pathMeasure;
            if (pathMeasure.getLength() == 0.0f) {
                Path path2 = new Path(path);
                path2.lineTo(-1.0f, -1.0f);
                this.mTapLocation = new float[2];
                new PathMeasure(path2, false).getPosTan(0.0f, this.mTapLocation, null);
            }
            if (this.mPathMeasure.nextContour()) {
                throw new IllegalArgumentException("Path has more than one contour");
            }
            this.mPathMeasure.setPath(this.mPath, false);
            this.mStartTime = j2;
            this.mEndTime = j2 + j3;
            this.mTimeToLengthConversion = getLength() / j3;
            int i2 = sIdCounter;
            sIdCounter = i2 + 1;
            this.mId = i2;
        }
    }

    public static class TouchPoint implements Parcelable {
        public static final Parcelable.Creator<TouchPoint> CREATOR = new Parcelable.Creator<TouchPoint>() { // from class: android.accessibilityservice.GestureDescription.TouchPoint.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TouchPoint createFromParcel(Parcel parcel) {
                return new TouchPoint(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TouchPoint[] newArray(int i2) {
                return new TouchPoint[i2];
            }
        };
        private static final int FLAG_IS_END_OF_PATH = 2;
        private static final int FLAG_IS_START_OF_PATH = 1;
        public int mContinuedStrokeId;
        public boolean mIsEndOfPath;
        public boolean mIsStartOfPath;
        public int mStrokeId;
        public float mX;
        public float mY;

        public TouchPoint() {
        }

        public void copyFrom(TouchPoint touchPoint) {
            this.mStrokeId = touchPoint.mStrokeId;
            this.mContinuedStrokeId = touchPoint.mContinuedStrokeId;
            this.mIsStartOfPath = touchPoint.mIsStartOfPath;
            this.mIsEndOfPath = touchPoint.mIsEndOfPath;
            this.mX = touchPoint.mX;
            this.mY = touchPoint.mY;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mStrokeId);
            parcel.writeInt(this.mContinuedStrokeId);
            parcel.writeInt((this.mIsStartOfPath ? 1 : 0) | (this.mIsEndOfPath ? 2 : 0));
            parcel.writeFloat(this.mX);
            parcel.writeFloat(this.mY);
        }

        public TouchPoint(TouchPoint touchPoint) {
            copyFrom(touchPoint);
        }

        public TouchPoint(Parcel parcel) {
            this.mStrokeId = parcel.readInt();
            this.mContinuedStrokeId = parcel.readInt();
            int i2 = parcel.readInt();
            this.mIsStartOfPath = (i2 & 1) != 0;
            this.mIsEndOfPath = (i2 & 2) != 0;
            this.mX = parcel.readFloat();
            this.mY = parcel.readFloat();
        }
    }

    public static long getMaxGestureDuration() {
        return 60000L;
    }

    public static int getMaxStrokeCount() {
        return 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getNextKeyPointAtLeast(long j2) {
        long j3 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < this.mStrokes.size(); i2++) {
            long j4 = this.mStrokes.get(i2).mStartTime;
            if (j4 < j3 && j4 >= j2) {
                j3 = j4;
            }
            long j5 = this.mStrokes.get(i2).mEndTime;
            if (j5 < j3 && j5 >= j2) {
                j3 = j5;
            }
        }
        if (j3 == Long.MAX_VALUE) {
            return -1L;
        }
        return j3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPointsForTime(long j2, TouchPoint[] touchPointArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.mStrokes.size(); i3++) {
            StrokeDescription strokeDescription = this.mStrokes.get(i3);
            if (strokeDescription.hasPointForTime(j2)) {
                touchPointArr[i2].mStrokeId = strokeDescription.getId();
                touchPointArr[i2].mContinuedStrokeId = strokeDescription.getContinuedStrokeId();
                touchPointArr[i2].mIsStartOfPath = strokeDescription.getContinuedStrokeId() < 0 && j2 == strokeDescription.mStartTime;
                touchPointArr[i2].mIsEndOfPath = !strokeDescription.willContinue() && j2 == strokeDescription.mEndTime;
                strokeDescription.getPosForTime(j2, this.mTempPos);
                touchPointArr[i2].mX = Math.round(this.mTempPos[0]);
                touchPointArr[i2].mY = Math.round(this.mTempPos[1]);
                i2++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getTotalDuration(List<StrokeDescription> list) {
        long jMax = Long.MIN_VALUE;
        for (int i2 = 0; i2 < list.size(); i2++) {
            jMax = Math.max(jMax, list.get(i2).mEndTime);
        }
        return Math.max(jMax, 0L);
    }

    public StrokeDescription getStroke(int i2) {
        return this.mStrokes.get(i2);
    }

    public int getStrokeCount() {
        return this.mStrokes.size();
    }

    private GestureDescription() {
        this.mStrokes = new ArrayList();
        this.mTempPos = new float[2];
    }

    public static class GestureStep implements Parcelable {
        public static final Parcelable.Creator<GestureStep> CREATOR = new Parcelable.Creator<GestureStep>() { // from class: android.accessibilityservice.GestureDescription.GestureStep.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GestureStep createFromParcel(Parcel parcel) {
                return new GestureStep(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public GestureStep[] newArray(int i2) {
                return new GestureStep[i2];
            }
        };
        public int numTouchPoints;
        public long timeSinceGestureStart;
        public TouchPoint[] touchPoints;

        public GestureStep(long j2, int i2, TouchPoint[] touchPointArr) {
            this.timeSinceGestureStart = j2;
            this.numTouchPoints = i2;
            this.touchPoints = new TouchPoint[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.touchPoints[i3] = new TouchPoint(touchPointArr[i3]);
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.timeSinceGestureStart);
            parcel.writeParcelableArray(this.touchPoints, i2);
        }

        public GestureStep(Parcel parcel) {
            this.timeSinceGestureStart = parcel.readLong();
            Parcelable[] parcelableArray = parcel.readParcelableArray(TouchPoint.class.getClassLoader());
            int length = parcelableArray == null ? 0 : parcelableArray.length;
            this.numTouchPoints = length;
            this.touchPoints = new TouchPoint[length];
            for (int i2 = 0; i2 < this.numTouchPoints; i2++) {
                this.touchPoints[i2] = (TouchPoint) parcelableArray[i2];
            }
        }
    }

    private GestureDescription(List<StrokeDescription> list) {
        ArrayList arrayList = new ArrayList();
        this.mStrokes = arrayList;
        this.mTempPos = new float[2];
        arrayList.addAll(list);
    }
}
