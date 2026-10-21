package v;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f17724a;

    public a(Context context) {
        this.f17724a = context;
    }

    public static a b(Context context) {
        return new a(context);
    }

    public boolean a() {
        return this.f17724a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int c() {
        return this.f17724a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int d() {
        return this.f17724a.getResources().getInteger(17694794);
    }

    public int e() {
        return this.f17724a.getResources().getDimensionPixelSize(17104982);
    }

    public int f() {
        TypedArray typedArrayObtainStyledAttributes = this.f17724a.obtainStyledAttributes(null, i.a.ActionBar, R.attr.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(4, 0);
        Resources resources = this.f17724a.getResources();
        if (!g()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(17104981));
        }
        typedArrayObtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean g() {
        return this.f17724a.getApplicationInfo().targetSdkVersion >= 16 ? this.f17724a.getResources().getBoolean(17891332) : this.f17724a.getResources().getBoolean(17891333);
    }

    public boolean h() {
        return true;
    }
}
