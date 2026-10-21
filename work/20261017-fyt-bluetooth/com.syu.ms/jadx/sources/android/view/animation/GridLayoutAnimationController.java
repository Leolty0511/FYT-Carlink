package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import i.a;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutAnimationController extends LayoutAnimationController {
    public static final int DIRECTION_BOTTOM_TO_TOP = 2;
    public static final int DIRECTION_HORIZONTAL_MASK = 1;
    public static final int DIRECTION_LEFT_TO_RIGHT = 0;
    public static final int DIRECTION_RIGHT_TO_LEFT = 1;
    public static final int DIRECTION_TOP_TO_BOTTOM = 0;
    public static final int DIRECTION_VERTICAL_MASK = 2;
    public static final int PRIORITY_COLUMN = 1;
    public static final int PRIORITY_NONE = 0;
    public static final int PRIORITY_ROW = 2;
    private float mColumnDelay;
    private int mDirection;
    private int mDirectionPriority;
    private float mRowDelay;

    public static class AnimationParameters extends LayoutAnimationController.AnimationParameters {
        public int column;
        public int columnsCount;
        public int row;
        public int rowsCount;
    }

    public GridLayoutAnimationController(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.GridLayoutAnimation);
        this.mColumnDelay = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(0)).value;
        this.mRowDelay = Animation.Description.parseValue(typedArrayObtainStyledAttributes.peekValue(1)).value;
        this.mDirection = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.mDirectionPriority = typedArrayObtainStyledAttributes.getInt(3, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private int getTransformedColumnIndex(AnimationParameters animationParameters) {
        int iNextFloat;
        int order = getOrder();
        if (order == 1) {
            iNextFloat = (animationParameters.columnsCount - 1) - animationParameters.column;
        } else if (order != 2) {
            iNextFloat = animationParameters.column;
        } else {
            if (this.mRandomizer == null) {
                this.mRandomizer = new Random();
            }
            iNextFloat = (int) (animationParameters.columnsCount * this.mRandomizer.nextFloat());
        }
        return (this.mDirection & 1) == 1 ? (animationParameters.columnsCount - 1) - iNextFloat : iNextFloat;
    }

    private int getTransformedRowIndex(AnimationParameters animationParameters) {
        int iNextFloat;
        int order = getOrder();
        if (order == 1) {
            iNextFloat = (animationParameters.rowsCount - 1) - animationParameters.row;
        } else if (order != 2) {
            iNextFloat = animationParameters.row;
        } else {
            if (this.mRandomizer == null) {
                this.mRandomizer = new Random();
            }
            iNextFloat = (int) (animationParameters.rowsCount * this.mRandomizer.nextFloat());
        }
        return (this.mDirection & 2) == 2 ? (animationParameters.rowsCount - 1) - iNextFloat : iNextFloat;
    }

    public float getColumnDelay() {
        return this.mColumnDelay;
    }

    @Override // android.view.animation.LayoutAnimationController
    public long getDelayForView(View view) {
        long j2;
        float f2;
        float f3;
        float f4;
        AnimationParameters animationParameters = (AnimationParameters) view.getLayoutParams().layoutAnimationParameters;
        if (animationParameters == null) {
            return 0L;
        }
        int transformedColumnIndex = getTransformedColumnIndex(animationParameters);
        int transformedRowIndex = getTransformedRowIndex(animationParameters);
        int i2 = animationParameters.rowsCount;
        int i3 = animationParameters.columnsCount;
        float duration = this.mAnimation.getDuration();
        float f5 = this.mColumnDelay * duration;
        float f6 = this.mRowDelay * duration;
        if (this.mInterpolator == null) {
            this.mInterpolator = new LinearInterpolator();
        }
        int i4 = this.mDirectionPriority;
        if (i4 != 1) {
            if (i4 != 2) {
                j2 = (long) ((transformedColumnIndex * f5) + (transformedRowIndex * f6));
                f4 = (i3 * f5) + (i2 * f6);
            } else {
                j2 = (long) ((transformedColumnIndex * f5) + (transformedRowIndex * i3 * f5));
                f2 = i3 * f5;
                f3 = i2 * i3 * f5;
            }
            return (long) (this.mInterpolator.getInterpolation(j2 / f4) * f4);
        }
        j2 = (long) ((transformedRowIndex * f6) + (transformedColumnIndex * i2 * f6));
        f2 = i2 * f6;
        f3 = i3 * i2 * f6;
        f4 = f3 + f2;
        return (long) (this.mInterpolator.getInterpolation(j2 / f4) * f4);
    }

    public int getDirection() {
        return this.mDirection;
    }

    public int getDirectionPriority() {
        return this.mDirectionPriority;
    }

    public float getRowDelay() {
        return this.mRowDelay;
    }

    public void setColumnDelay(float f2) {
        this.mColumnDelay = f2;
    }

    public void setDirection(int i2) {
        this.mDirection = i2;
    }

    public void setDirectionPriority(int i2) {
        this.mDirectionPriority = i2;
    }

    public void setRowDelay(float f2) {
        this.mRowDelay = f2;
    }

    @Override // android.view.animation.LayoutAnimationController
    public boolean willOverlap() {
        return this.mColumnDelay < 1.0f || this.mRowDelay < 1.0f;
    }

    public GridLayoutAnimationController(Animation animation) {
        this(animation, 0.5f, 0.5f);
    }

    public GridLayoutAnimationController(Animation animation, float f2, float f3) {
        super(animation);
        this.mColumnDelay = f2;
        this.mRowDelay = f3;
    }
}
