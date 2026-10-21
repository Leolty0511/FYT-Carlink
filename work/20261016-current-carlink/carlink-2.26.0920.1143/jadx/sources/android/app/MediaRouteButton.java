package android.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaRouter;
import android.util.AttributeSet;
import android.view.View;
import com.android.internal.R;
import com.android.internal.app.MediaRouteDialogPresenter;

/* JADX INFO: loaded from: classes.dex */
public class MediaRouteButton extends View {
    private boolean mAttachedToWindow;
    private final MediaRouterCallback mCallback;
    private View.OnClickListener mExtendedSettingsClickListener;
    private boolean mIsConnecting;
    private int mMinHeight;
    private int mMinWidth;
    private boolean mRemoteActive;
    private Drawable mRemoteIndicator;
    private int mRouteTypes;
    private final MediaRouter mRouter;
    private static final int[] CHECKED_STATE_SET = {16842912};
    private static final int[] ACTIVATED_STATE_SET = {16843518};

    public final class MediaRouterCallback extends MediaRouter.SimpleCallback {
        private MediaRouterCallback() {
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i2) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteSelected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
            MediaRouteButton.this.refreshRoute();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }
    }

    public MediaRouteButton(Context context) {
        this(context, null);
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        throw new IllegalStateException("The MediaRouteButton's Context is not an Activity.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshRoute() {
        MediaRouter.RouteInfo selectedRoute = this.mRouter.getSelectedRoute();
        boolean z2 = false;
        boolean z3 = !selectedRoute.isDefault() && selectedRoute.matchesTypes(this.mRouteTypes);
        boolean z4 = z3 && selectedRoute.isConnecting();
        if (this.mRemoteActive != z3) {
            this.mRemoteActive = z3;
            z2 = true;
        }
        if (this.mIsConnecting != z4) {
            this.mIsConnecting = z4;
            z2 = true;
        }
        if (z2) {
            refreshDrawableState();
        }
        if (this.mAttachedToWindow) {
            setEnabled(this.mRouter.isRouteAvailable(this.mRouteTypes, 1));
        }
        Drawable drawable = this.mRemoteIndicator;
        if (drawable == null || !(drawable.getCurrent() instanceof AnimationDrawable)) {
            return;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) this.mRemoteIndicator.getCurrent();
        if (this.mAttachedToWindow) {
            if ((z2 || z4) && !animationDrawable.isRunning()) {
                animationDrawable.start();
                return;
            }
            return;
        }
        if (!z3 || z4) {
            return;
        }
        if (animationDrawable.isRunning()) {
            animationDrawable.stop();
        }
        animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
    }

    private void setRemoteIndicatorDrawable(Drawable drawable) {
        Drawable drawable2 = this.mRemoteIndicator;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mRemoteIndicator);
        }
        this.mRemoteIndicator = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
        }
        refreshDrawableState();
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    public int getRouteTypes() {
        return this.mRouteTypes;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        int i2 = this.mRouteTypes;
        if (i2 != 0) {
            this.mRouter.addCallback(i2, this.mCallback, 8);
        }
        refreshRoute();
    }

    @Override // android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (this.mIsConnecting) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        } else if (this.mRemoteActive) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, ACTIVATED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.mAttachedToWindow = false;
        if (this.mRouteTypes != 0) {
            this.mRouter.removeCallback(this.mCallback);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mRemoteIndicator == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        int intrinsicWidth = this.mRemoteIndicator.getIntrinsicWidth();
        int intrinsicHeight = this.mRemoteIndicator.getIntrinsicHeight();
        int i2 = (((width - paddingLeft) - intrinsicWidth) / 2) + paddingLeft;
        int i3 = (((height - paddingTop) - intrinsicHeight) / 2) + paddingTop;
        this.mRemoteIndicator.setBounds(i2, i3, intrinsicWidth + i2, intrinsicHeight + i3);
        this.mRemoteIndicator.draw(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int paddingRight;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i4 = this.mMinWidth;
        Drawable drawable = this.mRemoteIndicator;
        int paddingBottom = 0;
        if (drawable != null) {
            paddingRight = getPaddingRight() + getPaddingLeft() + drawable.getIntrinsicWidth();
        } else {
            paddingRight = 0;
        }
        int iMax = Math.max(i4, paddingRight);
        int i5 = this.mMinHeight;
        Drawable drawable2 = this.mRemoteIndicator;
        if (drawable2 != null) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + drawable2.getIntrinsicHeight();
        }
        int iMax2 = Math.max(i5, paddingBottom);
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(size, iMax);
        } else if (mode != 1073741824) {
            size = iMax;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(size2, iMax2);
        } else if (mode2 != 1073741824) {
            size2 = iMax2;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        return showDialogInternal() || zPerformClick;
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        setTooltipText(charSequence);
    }

    public void setExtendedSettingsClickListener(View.OnClickListener onClickListener) {
        this.mExtendedSettingsClickListener = onClickListener;
    }

    public void setRouteTypes(int i2) {
        int i3 = this.mRouteTypes;
        if (i3 != i2) {
            if (this.mAttachedToWindow && i3 != 0) {
                this.mRouter.removeCallback(this.mCallback);
            }
            this.mRouteTypes = i2;
            if (this.mAttachedToWindow && i2 != 0) {
                this.mRouter.addCallback(i2, this.mCallback, 8);
            }
            refreshRoute();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null) {
            drawable.setVisible(getVisibility() == 0, false);
        }
    }

    public void showDialog() {
        showDialogInternal();
    }

    public boolean showDialogInternal() {
        return this.mAttachedToWindow && MediaRouteDialogPresenter.showDialogFragment(getActivity(), this.mRouteTypes, this.mExtendedSettingsClickListener) != null;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mRemoteIndicator;
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843693);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mRouter = (MediaRouter) context.getSystemService(Context.MEDIA_ROUTER_SERVICE);
        this.mCallback = new MediaRouterCallback();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediaRouteButton, i2, i3);
        setRemoteIndicatorDrawable(typedArrayObtainStyledAttributes.getDrawable(3));
        this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        int integer = typedArrayObtainStyledAttributes.getInteger(2, 1);
        typedArrayObtainStyledAttributes.recycle();
        setClickable(true);
        setRouteTypes(integer);
    }
}
