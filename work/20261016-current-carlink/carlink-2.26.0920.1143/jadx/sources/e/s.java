package e;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import com.syu.carlink.MainActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class s implements k.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f786a;

    public s(MainActivity mainActivity) {
        this.f786a = mainActivity;
    }

    @Override // k.b
    public final void a(int i2, View view) {
        t.b.h(view, "view");
        ((Button) view.findViewById(v.timer_dialog_sure)).setText(this.f786a.getWindow().getContext().getString(x.dialog_ok) + '(' + i2 + ')');
    }

    @Override // k.b
    public final void b(com.syu.carlink.ui.a aVar, View view) {
        t.b.h(aVar, Context.WINDOW_SERVICE);
        t.b.h(view, "view");
        ((Button) view.findViewById(v.timer_dialog_sure)).setOnClickListener(new android.view.textclassifier.d(this.f786a, aVar, 1));
        ((CheckBox) view.findViewById(v.timer_dialog_checkbox)).setOnCheckedChangeListener(new android.service.autofill.a(aVar));
    }
}
