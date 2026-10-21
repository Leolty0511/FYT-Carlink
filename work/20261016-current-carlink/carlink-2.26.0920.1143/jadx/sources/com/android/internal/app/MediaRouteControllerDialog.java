package com.android.internal.app;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaRouter;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class MediaRouteControllerDialog extends AlertDialog {
    private static final int VOLUME_UPDATE_DELAY_MILLIS = 250;
    private boolean mAttachedToWindow;
    private final MediaRouterCallback mCallback;
    private View mControlView;
    private boolean mCreated;
    private Drawable mCurrentIconDrawable;
    private Drawable mMediaRouteButtonDrawable;
    private int[] mMediaRouteConnectingState;
    private int[] mMediaRouteOnState;
    private final MediaRouter.RouteInfo mRoute;
    private final MediaRouter mRouter;
    private boolean mVolumeControlEnabled;
    private LinearLayout mVolumeLayout;
    private SeekBar mVolumeSlider;
    private boolean mVolumeSliderTouched;

    public final class MediaRouterCallback extends MediaRouter.SimpleCallback {
        private MediaRouterCallback() {
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i2) {
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
            MediaRouteControllerDialog.this.update();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            if (routeInfo == MediaRouteControllerDialog.this.mRoute) {
                MediaRouteControllerDialog.this.updateVolume();
            }
        }
    }

    public MediaRouteControllerDialog(Context context, int i2) {
        super(context, i2);
        this.mMediaRouteConnectingState = new int[]{16842912, 16842910};
        this.mMediaRouteOnState = new int[]{16843518, 16842910};
        this.mVolumeControlEnabled = true;
        MediaRouter mediaRouter = (MediaRouter) context.getSystemService(Context.MEDIA_ROUTER_SERVICE);
        this.mRouter = mediaRouter;
        this.mCallback = new MediaRouterCallback();
        this.mRoute = mediaRouter.getSelectedRoute();
    }

    private Drawable getIconDrawable() {
        Drawable drawable = this.mMediaRouteButtonDrawable;
        if (!(drawable instanceof StateListDrawable)) {
            return drawable;
        }
        if (this.mRoute.isConnecting()) {
            StateListDrawable stateListDrawable = (StateListDrawable) this.mMediaRouteButtonDrawable;
            stateListDrawable.setState(this.mMediaRouteConnectingState);
            return stateListDrawable.getCurrent();
        }
        StateListDrawable stateListDrawable2 = (StateListDrawable) this.mMediaRouteButtonDrawable;
        stateListDrawable2.setState(this.mMediaRouteOnState);
        return stateListDrawable2.getCurrent();
    }

    private boolean isVolumeControlAvailable() {
        return this.mVolumeControlEnabled && this.mRoute.getVolumeHandling() == 1;
    }

    private Drawable obtainMediaRouteButtonDrawable() {
        Context context = getContext();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(16843693, typedValue, true)) {
            return null;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(typedValue.data, new int[]{R.attr.externalRouteEnabledDrawable});
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean update() {
        if (!this.mRoute.isSelected() || this.mRoute.isDefault()) {
            dismiss();
            return false;
        }
        setTitle(this.mRoute.getName());
        updateVolume();
        Drawable iconDrawable = getIconDrawable();
        if (iconDrawable != this.mCurrentIconDrawable) {
            this.mCurrentIconDrawable = iconDrawable;
            if (iconDrawable instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) iconDrawable;
                if (!this.mAttachedToWindow && !this.mRoute.isConnecting()) {
                    if (animationDrawable.isRunning()) {
                        animationDrawable.stop();
                    }
                    iconDrawable = animationDrawable.getFrame(animationDrawable.getNumberOfFrames() - 1);
                } else if (!animationDrawable.isRunning()) {
                    animationDrawable.start();
                }
            }
            setIcon(iconDrawable);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVolume() {
        if (this.mVolumeSliderTouched) {
            return;
        }
        if (!isVolumeControlAvailable()) {
            this.mVolumeLayout.setVisibility(8);
            return;
        }
        this.mVolumeLayout.setVisibility(0);
        this.mVolumeSlider.setMax(this.mRoute.getVolumeMax());
        this.mVolumeSlider.setProgress(this.mRoute.getVolume());
    }

    public View getMediaControlView() {
        return this.mControlView;
    }

    public MediaRouter.RouteInfo getRoute() {
        return this.mRoute;
    }

    public boolean isVolumeControlEnabled() {
        return this.mVolumeControlEnabled;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(0, this.mCallback, 2);
        update();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        setTitle(this.mRoute.getName());
        setButton(-2, getContext().getResources().getString(R.string.media_route_controller_disconnect), new DialogInterface.OnClickListener() { // from class: com.android.internal.app.MediaRouteControllerDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (MediaRouteControllerDialog.this.mRoute.isSelected()) {
                    if (MediaRouteControllerDialog.this.mRoute.isBluetooth()) {
                        MediaRouteControllerDialog.this.mRouter.getDefaultRoute().select();
                    } else {
                        MediaRouteControllerDialog.this.mRouter.getFallbackRoute().select();
                    }
                }
                MediaRouteControllerDialog.this.dismiss();
            }
        });
        View viewInflate = getLayoutInflater().inflate(R.layout.media_route_controller_dialog, (ViewGroup) null);
        setView(viewInflate, 0, 0, 0, 0);
        super.onCreate(bundle);
        View viewFindViewById = getWindow().findViewById(R.id.customPanel);
        if (viewFindViewById != null) {
            viewFindViewById.setMinimumHeight(0);
        }
        this.mVolumeLayout = (LinearLayout) viewInflate.findViewById(R.id.media_route_volume_layout);
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.media_route_volume_slider);
        this.mVolumeSlider = seekBar;
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.android.internal.app.MediaRouteControllerDialog.2
            private final Runnable mStopTrackingTouch = new Runnable() { // from class: com.android.internal.app.MediaRouteControllerDialog.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaRouteControllerDialog.this.mVolumeSliderTouched) {
                        MediaRouteControllerDialog.this.mVolumeSliderTouched = false;
                        MediaRouteControllerDialog.this.updateVolume();
                    }
                }
            };

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i2, boolean z2) {
                if (z2) {
                    MediaRouteControllerDialog.this.mRoute.requestSetVolume(i2);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                if (MediaRouteControllerDialog.this.mVolumeSliderTouched) {
                    MediaRouteControllerDialog.this.mVolumeSlider.removeCallbacks(this.mStopTrackingTouch);
                } else {
                    MediaRouteControllerDialog.this.mVolumeSliderTouched = true;
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                MediaRouteControllerDialog.this.mVolumeSlider.postDelayed(this.mStopTrackingTouch, 250L);
            }
        });
        this.mMediaRouteButtonDrawable = obtainMediaRouteButtonDrawable();
        this.mCreated = true;
        if (update()) {
            this.mControlView = onCreateMediaControlView(bundle);
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.media_route_control_frame);
            View view = this.mControlView;
            if (view == null) {
                frameLayout.setVisibility(8);
            } else {
                frameLayout.addView(view);
                frameLayout.setVisibility(0);
            }
        }
    }

    public View onCreateMediaControlView(Bundle bundle) {
        return null;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.mRouter.removeCallback(this.mCallback);
        this.mAttachedToWindow = false;
        super.onDetachedFromWindow();
    }

    @Override // android.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 25 && i2 != 24) {
            return super.onKeyDown(i2, keyEvent);
        }
        this.mRoute.requestUpdateVolume(i2 == 25 ? -1 : 1);
        return true;
    }

    @Override // android.app.AlertDialog, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 25 || i2 == 24) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void setVolumeControlEnabled(boolean z2) {
        if (this.mVolumeControlEnabled != z2) {
            this.mVolumeControlEnabled = z2;
            if (this.mCreated) {
                updateVolume();
            }
        }
    }
}
