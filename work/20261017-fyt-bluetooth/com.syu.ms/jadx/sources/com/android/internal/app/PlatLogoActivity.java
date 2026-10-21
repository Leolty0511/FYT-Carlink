package com.android.internal.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Typeface;
import android.media.AudioSystem;
import android.media.videoeditor.MediaProperties;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.method.AllCapsTransformationMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class PlatLogoActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f842b = new Handler();

    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f843a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ TextView f844b;

        public a(TextView textView) {
            this.f844b = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = this.f843a + 1;
            this.f843a = i2;
            if (i2 >= 6) {
                PlatLogoActivity.this.f841a.performLongClick();
                return;
            }
            this.f844b.animate().cancel();
            int rotation = (int) this.f844b.getRotation();
            int i3 = MediaProperties.HEIGHT_360;
            float f2 = rotation % MediaProperties.HEIGHT_360;
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.f844b.animate();
            if (Math.random() <= 0.5d) {
                i3 = -360;
            }
            viewPropertyAnimatorAnimate.rotationBy(i3 - f2).setInterpolator(new DecelerateInterpolator()).setDuration(700L).start();
        }
    }

    public class b implements View.OnLongClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ImageView f846a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ TextView f848c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ TextView f849d;

        public b(ImageView imageView, View view, TextView textView, TextView textView2) {
            this.f846a = imageView;
            this.f847b = view;
            this.f848c = textView;
            this.f849d = textView2;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (this.f846a.getVisibility() == 0) {
                return false;
            }
            this.f847b.setScaleX(0.01f);
            this.f847b.animate().alpha(1.0f).scaleX(1.0f).setStartDelay(500L).start();
            this.f848c.animate().alpha(0.0f).scaleY(0.5f).scaleX(0.5f).rotationBy(360.0f).setInterpolator(new AccelerateInterpolator()).setDuration(1000L).start();
            this.f846a.setAlpha(0.0f);
            this.f846a.setVisibility(0);
            this.f846a.setScaleX(0.5f);
            this.f846a.setScaleY(0.5f);
            this.f846a.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(1000L).setStartDelay(500L).setInterpolator(new AnticipateOvershootInterpolator()).start();
            this.f849d.setAlpha(0.0f);
            this.f849d.setVisibility(0);
            this.f849d.animate().alpha(1.0f).setDuration(1000L).setStartDelay(1000L).start();
            return true;
        }
    }

    public class c implements View.OnLongClickListener {
        public c() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (Settings.System.getLong(PlatLogoActivity.this.getContentResolver(), Settings.System.EGG_MODE, 0L) == 0) {
                Settings.System.putLong(PlatLogoActivity.this.getContentResolver(), Settings.System.EGG_MODE, System.currentTimeMillis());
            }
            try {
                PlatLogoActivity.this.startActivity(new Intent(Intent.ACTION_MAIN).setFlags(276856832).addCategory("com.android.internal.category.PLATLOGO"));
            } catch (ActivityNotFoundException unused) {
                Log.e("PlatLogoActivity", "Couldn't catch a break.");
            }
            PlatLogoActivity.this.finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        Typeface typefaceCreate = Typeface.create("sans-serif", 1);
        Typeface typefaceCreate2 = Typeface.create("sans-serif-light", 0);
        FrameLayout frameLayout = new FrameLayout(this);
        this.f841a = frameLayout;
        frameLayout.setBackgroundColor(AudioSystem.DEVICE_IN_DEFAULT);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(17302694);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setVisibility(4);
        View view = new View(this);
        view.setBackgroundColor(-1237724);
        view.setAlpha(0.0f);
        TextView textView = new TextView(this);
        textView.setTypeface(typefaceCreate);
        textView.setTextSize(300.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setText(String.valueOf(Build.ID).substring(0, 1));
        int i2 = (int) (displayMetrics.density * 4.0f);
        TextView textView2 = new TextView(this);
        if (typefaceCreate2 != null) {
            textView2.setTypeface(typefaceCreate2);
        }
        textView2.setTextSize(30.0f);
        textView2.setPadding(i2, i2, i2, i2);
        textView2.setTextColor(-1);
        textView2.setGravity(17);
        textView2.setTransformationMethod(new AllCapsTransformationMethod(this));
        textView2.setText("Android " + Build.VERSION.RELEASE);
        textView2.setVisibility(4);
        this.f841a.addView(view);
        this.f841a.addView(textView, layoutParams);
        this.f841a.addView(imageView, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = 81;
        layoutParams2.bottomMargin = i2 * 10;
        this.f841a.addView(textView2, layoutParams2);
        this.f841a.setOnClickListener(new a(textView));
        this.f841a.setOnLongClickListener(new b(imageView, view, textView, textView2));
        imageView.setOnLongClickListener(new c());
        setContentView(this.f841a);
    }
}
