package e;

import android.content.Context;
import android.view.View;
import android.widget.Button;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements k.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f785a;

    @Override // k.b
    public void a(int i2, View view) {
        switch (this.f785a) {
            case 0:
                t.b.h(view, "view");
                break;
            case 1:
                t.b.h(view, "view");
                break;
            default:
                t.b.h(view, "view");
                break;
        }
    }

    @Override // k.b
    public void b(final com.syu.carlink.ui.a aVar, View view) {
        switch (this.f785a) {
            case 0:
                t.b.h(aVar, Context.WINDOW_SERVICE);
                t.b.h(view, "view");
                final int i2 = 0;
                ((Button) view.findViewById(v.timer_dialog_sure)).setOnClickListener(new View.OnClickListener() { // from class: e.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i3 = i2;
                        com.syu.carlink.ui.a aVar2 = aVar;
                        switch (i3) {
                            case 0:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                            case 1:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                            default:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                        }
                    }
                });
                break;
            case 1:
                t.b.h(aVar, Context.WINDOW_SERVICE);
                t.b.h(view, "view");
                final int i3 = 1;
                ((Button) view.findViewById(v.timer_dialog_sure)).setOnClickListener(new View.OnClickListener() { // from class: e.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i4 = i3;
                        com.syu.carlink.ui.a aVar2 = aVar;
                        switch (i4) {
                            case 0:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                            case 1:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                            default:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                        }
                    }
                });
                break;
            default:
                t.b.h(aVar, Context.WINDOW_SERVICE);
                t.b.h(view, "view");
                final int i4 = 2;
                ((Button) view.findViewById(v.timer_dialog_sure)).setOnClickListener(new View.OnClickListener() { // from class: e.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i5 = i4;
                        com.syu.carlink.ui.a aVar2 = aVar;
                        switch (i5) {
                            case 0:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                            case 1:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                            default:
                                t.b.h(aVar2, "$window");
                                aVar2.a();
                                break;
                        }
                    }
                });
                break;
        }
    }
}
