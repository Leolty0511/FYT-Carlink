package android.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.LayerDrawable;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LauncherIcons {
    private static final int AMBIENT_SHADOW_ALPHA = 30;
    private static final float ICON_SIZE_BLUR_FACTOR = 0.010416667f;
    private static final float ICON_SIZE_KEY_SHADOW_DELTA_FACTOR = 0.020833334f;
    private static final int KEY_SHADOW_ALPHA = 61;
    private final int mIconSize;
    private final Resources mRes;
    private final SparseArray<Bitmap> mShadowCache = new SparseArray<>();

    public LauncherIcons(Context context) {
        Resources resources = context.getResources();
        this.mRes = resources;
        this.mIconSize = resources.getDimensionPixelSize(17104896);
    }

    private Bitmap getShadowBitmap(AdaptiveIconDrawable adaptiveIconDrawable) {
        int iMax = Math.max(this.mIconSize, adaptiveIconDrawable.getIntrinsicHeight());
        synchronized (this.mShadowCache) {
            Bitmap bitmap = this.mShadowCache.get(iMax);
            if (bitmap != null) {
                return bitmap;
            }
            adaptiveIconDrawable.setBounds(0, 0, iMax, iMax);
            float f2 = iMax;
            float f3 = ICON_SIZE_BLUR_FACTOR * f2;
            float f4 = ICON_SIZE_KEY_SHADOW_DELTA_FACTOR * f2;
            int i2 = (int) ((f3 * 2.0f) + f2 + f4);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.translate((f4 / 2.0f) + f3, f3);
            Paint paint = new Paint(1);
            paint.setColor(0);
            paint.setShadowLayer(f3, 0.0f, 0.0f, 503316480);
            canvas.drawPath(adaptiveIconDrawable.getIconMask(), paint);
            canvas.translate(0.0f, f4);
            paint.setShadowLayer(f3, 0.0f, 0.0f, 1023410176);
            canvas.drawPath(adaptiveIconDrawable.getIconMask(), paint);
            canvas.setBitmap(null);
            synchronized (this.mShadowCache) {
                this.mShadowCache.put(iMax, bitmapCreateBitmap);
            }
            return bitmapCreateBitmap;
        }
    }

    public Drawable getBadgeDrawable(int i2, int i3) {
        return getBadgedDrawable(null, i2, i3);
    }

    public Drawable getBadgedDrawable(Drawable drawable, int i2, int i3) {
        Resources system = Resources.getSystem();
        Drawable drawable2 = system.getDrawable(R.drawable.ic_corp_icon_badge_shadow);
        Drawable drawableMutate = system.getDrawable(R.drawable.ic_corp_icon_badge_color).getConstantState().newDrawable().mutate();
        drawableMutate.setTint(i3);
        Drawable drawable3 = system.getDrawable(i2);
        return new LayerDrawable(drawable == null ? new Drawable[]{drawable2, drawableMutate, drawable3} : new Drawable[]{drawable, drawable2, drawableMutate, drawable3});
    }

    public Drawable wrapIconDrawableWithShadow(Drawable drawable) {
        return !(drawable instanceof AdaptiveIconDrawable) ? drawable : new ShadowDrawable(getShadowBitmap((AdaptiveIconDrawable) drawable), drawable);
    }

    public static class ShadowDrawable extends DrawableWrapper {
        final MyConstantState mState;

        public static class MyConstantState extends Drawable.ConstantState {
            final Drawable.ConstantState mChildState;
            final Paint mPaint = new Paint(2);
            final Bitmap mShadow;

            public MyConstantState(Bitmap bitmap, Drawable.ConstantState constantState) {
                this.mShadow = bitmap;
                this.mChildState = constantState;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return this.mChildState.getChangingConfigurations();
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return new ShadowDrawable(this);
            }
        }

        public ShadowDrawable(Bitmap bitmap, Drawable drawable) {
            super(drawable);
            this.mState = new MyConstantState(bitmap, drawable.getConstantState());
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            MyConstantState myConstantState = this.mState;
            canvas.drawBitmap(myConstantState.mShadow, (Rect) null, bounds, myConstantState.mPaint);
            canvas.save();
            canvas.translate(bounds.width() * 0.9599999f * LauncherIcons.ICON_SIZE_KEY_SHADOW_DELTA_FACTOR, bounds.height() * 0.9599999f * LauncherIcons.ICON_SIZE_BLUR_FACTOR);
            canvas.scale(0.9599999f, 0.9599999f);
            super.draw(canvas);
            canvas.restore();
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return this.mState;
        }

        public ShadowDrawable(MyConstantState myConstantState) {
            super(myConstantState.mChildState.newDrawable());
            this.mState = myConstantState;
        }
    }
}
