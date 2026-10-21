package i;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.syu.carlink.MainActivity;
import com.syu.carlink.fragment.CarMarkFragment;
import com.syu.carlink.fragment.LogoFragment;
import com.syu.carlink.fragment.SettingsFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f964b;
    public final /* synthetic */ Fragment c;

    public /* synthetic */ d(Fragment fragment, int i2) {
        this.f964b = i2;
        this.c = fragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MainActivity mainActivity;
        SettingsFragment settingsFragment;
        SettingsFragment settingsFragment2;
        int i2 = this.f964b;
        Fragment fragment = this.c;
        switch (i2) {
            case 0:
                LogoFragment logoFragment = (LogoFragment) fragment;
                int i3 = LogoFragment.f717g;
                t.b.h(logoFragment, "this$0");
                View view2 = logoFragment.f718b;
                if (view2 != null && view2.getVisibility() == 0) {
                    view2.setVisibility(8);
                }
                FragmentActivity activity = logoFragment.getActivity();
                mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                if (mainActivity != null && (settingsFragment2 = mainActivity.f623f) != null) {
                    mainActivity.m(settingsFragment2);
                    break;
                }
                break;
            case 1:
                LogoFragment logoFragment2 = (LogoFragment) fragment;
                int i4 = LogoFragment.f717g;
                t.b.h(logoFragment2, "this$0");
                FragmentActivity activity2 = logoFragment2.getActivity();
                if (activity2 != null) {
                    activity2.finish();
                }
                break;
            default:
                CarMarkFragment carMarkFragment = (CarMarkFragment) fragment;
                int i5 = CarMarkFragment.f705b;
                t.b.h(carMarkFragment, "this$0");
                FragmentActivity activity3 = carMarkFragment.getActivity();
                mainActivity = activity3 instanceof MainActivity ? (MainActivity) activity3 : null;
                if (mainActivity != null && (settingsFragment = mainActivity.f623f) != null) {
                    mainActivity.m(settingsFragment);
                    break;
                }
                break;
        }
    }
}
