package com.android.internal.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class PlatLogoActivity extends Activity {
    public static final boolean FINISH = true;
    PathInterpolator mInterpolator = new PathInterpolator(0.0f, 0.0f, 0.5f, 1.0f);
    int mKeyCount;
    FrameLayout mLayout;
    int mTapCount;

    /* JADX INFO: renamed from: com.android.internal.app.PlatLogoActivity$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        final /* synthetic */ ImageView val$im;

        public AnonymousClass2(ImageView imageView) {
            this.val$im = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.val$im.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.internal.app.PlatLogoActivity.2.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    PlatLogoActivity platLogoActivity = PlatLogoActivity.this;
                    if (platLogoActivity.mTapCount < 5) {
                        return false;
                    }
                    ContentResolver contentResolver = platLogoActivity.getContentResolver();
                    if (Settings.System.getLong(contentResolver, Settings.System.EGG_MODE, 0L) == 0) {
                        try {
                            Settings.System.putLong(contentResolver, Settings.System.EGG_MODE, System.currentTimeMillis());
                        } catch (RuntimeException e2) {
                            Log.e("PlatLogoActivity", "Can't write settings", e2);
                        }
                    }
                    AnonymousClass2.this.val$im.post(new Runnable() { // from class: com.android.internal.app.PlatLogoActivity.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                PlatLogoActivity.this.startActivity(new Intent(Intent.ACTION_MAIN).setFlags(276856832).addCategory("com.android.internal.category.PLATLOGO"));
                            } catch (ActivityNotFoundException unused) {
                                Log.e("PlatLogoActivity", "No more eggs.");
                            }
                            PlatLogoActivity.this.finish();
                        }
                    });
                    return true;
                }
            });
            PlatLogoActivity.this.mTapCount++;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f2 = displayMetrics.density;
        int iMin = (int) (Math.min(Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels), 600.0f * f2) - (100.0f * f2));
        final ImageView imageView = new ImageView(this);
        int i2 = (int) (40.0f * f2);
        imageView.setPadding(i2, i2, i2, i2);
        imageView.setTranslationZ(20.0f);
        imageView.setScaleX(0.5f);
        imageView.setScaleY(0.5f);
        imageView.setAlpha(0.0f);
        imageView.setBackground(new RippleDrawable(ColorStateList.valueOf(-8952201), getDrawable(R.drawable.platlogo), (Drawable) null));
        imageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.internal.app.PlatLogoActivity.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                double width = view.getWidth();
                double height = view.getHeight();
                outline.setOval((int) (width * 0.125d), (int) (0.125d * height), (int) (width * 0.96d), (int) (height * 0.96d));
            }
        });
        imageView.setElevation(f2 * 12.0f);
        imageView.setClickable(true);
        imageView.setOnClickListener(new AnonymousClass2(imageView));
        imageView.setFocusable(true);
        imageView.requestFocus();
        imageView.setOnKeyListener(new View.OnKeyListener() { // from class: com.android.internal.app.PlatLogoActivity.3
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (i3 == 4 || keyEvent.getAction() != 0) {
                    return false;
                }
                PlatLogoActivity platLogoActivity = PlatLogoActivity.this;
                int i4 = platLogoActivity.mKeyCount + 1;
                platLogoActivity.mKeyCount = i4;
                if (i4 > 2) {
                    if (platLogoActivity.mTapCount > 5) {
                        imageView.performLongClick();
                    } else {
                        imageView.performClick();
                    }
                }
                return true;
            }
        });
        this.mLayout.addView(imageView, new FrameLayout.LayoutParams(iMin, iMin, 17));
        imageView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setInterpolator(this.mInterpolator).setDuration(500L).setStartDelay(800L).start();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FrameLayout frameLayout = new FrameLayout(this);
        this.mLayout = frameLayout;
        setContentView(frameLayout);
    }
}
