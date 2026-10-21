package android.os;

import android.telecom.Log;
import android.telecom.Logging.SessionManager;
import android.view.FocusFinder;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import com.android.internal.widget.FloatingToolbar;
import com.google.android.projection.sink.settings.Settings;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.fragment.SettingsFragment;
import e.v;
import f.k;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements BatteryStats.IntToString, SessionManager.ISessionIdQueryHandler, SessionManager.ICurrentThreadId, FocusFinder.UserSpecifiedFocusComparator.NextFocusGetter, Interpolator, MenuItem.OnMenuItemClickListener, RadioGroup.OnCheckedChangeListener, CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f109b;

    public /* synthetic */ a(int i2) {
        this.f109b = i2;
    }

    @Override // android.os.BatteryStats.IntToString
    public final String applyAsString(int i2) {
        switch (this.f109b) {
            case 0:
                return UserHandle.formatUid(i2);
            default:
                return Integer.toString(i2);
        }
    }

    @Override // android.telecom.Logging.SessionManager.ICurrentThreadId
    public final int get() {
        return Process.myTid();
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public final float getInterpolation(float f2) {
        switch (this.f109b) {
            case 6:
                return Transition.lambda$getInterpolator$1(f2);
            case 7:
                return Transition.lambda$getInterpolator$2(f2);
            case 8:
                return Transition.lambda$getInterpolator$3(f2);
            case 9:
                return Transition.lambda$getInterpolator$4(f2);
            case 10:
                return Transition.lambda$getInterpolator$5(f2);
            case 11:
                return Transition.lambda$getInterpolator$6(f2);
            default:
                return Transition.lambda$getInterpolator$7(f2);
        }
    }

    @Override // android.telecom.Logging.SessionManager.ISessionIdQueryHandler
    public final String getSessionId() {
        return Log.getSessionId();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        int i2 = SettingsFragment.f722e;
        CarLink carLink = CarLink.f562i;
        if (carLink == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF = carLink.f();
        if (carLinkServiceF != null) {
            e.b(carLinkServiceF.l(), 0, 166, new int[]{z2 ? 1 : 0}, null, 24);
        }
        Integer[] numArr = {112, 140};
        CarLink carLink2 = CarLink.f562i;
        if (carLink2 == null) {
            t.b.B("me");
            throw null;
        }
        if (t.c.I(numArr, Integer.valueOf(carLink2.h()))) {
            return;
        }
        n.b.a("HDL", "=============>>  FinalMain.Options.CARLINK_WIRED_AUTO_CONN TO ON 2222");
        CarLink carLink3 = CarLink.f562i;
        if (carLink3 == null) {
            t.b.B("me");
            throw null;
        }
        CarLinkService carLinkServiceF2 = carLink3.f();
        if (carLinkServiceF2 != null) {
            e.b(carLinkServiceF2.l(), 0, 167, new int[]{z2 ? 1 : 0}, null, 24);
        }
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return FloatingToolbar.lambda$static$0(menuItem);
    }

    @Override // android.view.FocusFinder.UserSpecifiedFocusComparator.NextFocusGetter
    public final View get(View view, View view2) {
        switch (this.f109b) {
            case 4:
                return FocusFinder.lambda$new$0(view, view2);
            default:
                return FocusFinder.lambda$new$1(view, view2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
        int i3 = 1;
        switch (this.f109b) {
            case 14:
                int i4 = SettingsFragment.f722e;
                n.b.a("HDL", "  group : " + radioGroup + "    checkedId: " + i2);
                if (i2 == v.noise_null) {
                    i3 = 0;
                } else if (i2 == v.noise_left) {
                    i3 = 2;
                } else if (i2 != v.noise_right) {
                    i3 = 0;
                }
                String strValueOf = String.valueOf(i3);
                t.b.h(strValueOf, "value");
                SystemProperties.set("persist.lsec.cp.micLR", strValueOf);
                break;
            default:
                int i5 = SettingsFragment.f722e;
                n.b.a("HDL", "  group : " + radioGroup + "    checkedId: " + i2);
                int i6 = (i2 == v.apband_2_4g || i2 != v.apband_5g) ? 1 : 0;
                String strValueOf2 = String.valueOf(i6);
                t.b.h(strValueOf2, "value");
                SystemProperties.set("persist.lsec.carlink.apband", strValueOf2);
                boolean z2 = i6 ^ 1;
                k.f825y.f829f.writeKeyValue(Settings.WIFI_SUPPORT_BAND_5G, Boolean.valueOf(z2));
                k.f825y.f829f.writeKeyValue(Settings.WIFI_SUPPORT_BAND_5G, Boolean.valueOf(z2));
                break;
        }
    }
}
