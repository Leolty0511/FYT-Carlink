package com.syu.carlink;

import android.content.Intent;
import android.os.SystemProperties;
import android.util.Size;
import com.syu.carlink.auto.AutoFragment;
import com.syu.carlink.fragment.CarplayFragment;
import e.p;
import e.r;
import e.s;
import e.w;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f704b;
    public final /* synthetic */ MainActivity c;

    public /* synthetic */ e(MainActivity mainActivity, int i2) {
        this.f704b = i2;
        this.c = mainActivity;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f704b;
        int i3 = 1;
        int i4 = 0;
        MainActivity mainActivity = this.c;
        switch (i2) {
            case 0:
                t.b.h(mainActivity, "this$0");
                mainActivity.m = true;
                Intent intent = new Intent(CarLinkService.class.getName());
                intent.setPackage(mainActivity.getPackageName());
                mainActivity.bindService(intent, mainActivity, 1);
                return;
            case 1:
                t.b.h(mainActivity, "this$0");
                mainActivity.j().getViewTreeObserver().addOnGlobalLayoutListener(new p(mainActivity, i3));
                return;
            case 2:
                t.b.h(mainActivity, "this$0");
                com.syu.carlink.ui.a aVar = new com.syu.carlink.ui.a(mainActivity, w.timer_dialog_layout, new s(mainActivity), 20);
                aVar.f730e = new l() { // from class: com.syu.carlink.MainActivity$replace$2$2$1
                    @Override // z.l
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke(((Boolean) obj).booleanValue());
                        return s.c.f1105a;
                    }

                    public final void invoke(boolean z2) {
                        String strValueOf = String.valueOf(z2 ? 1 : 0);
                        t.b.h(strValueOf, "value");
                        SystemProperties.set("persist.lsec.carlink.ionger", strValueOf);
                    }
                };
                mainActivity.f628k = aVar;
                aVar.c(mainActivity.j());
                return;
            case 3:
                t.b.h(mainActivity, "this$0");
                mainActivity.d();
                return;
            case 4:
                t.b.h(mainActivity, "this$0");
                n.b.a("HDL", "MainActivity ============>>> 22 reLink:  " + mainActivity.j().getWidth() + "  " + mainActivity.j().getHeight());
                CarLinkService carLinkServiceF = MainActivity.f();
                if (carLinkServiceF != null) {
                    CarLink carLink = CarLink.f562i;
                    if (carLink == null) {
                        t.b.B("me");
                        throw null;
                    }
                    if (carLink.B() != 3) {
                        carLinkServiceF.k(new Size(mainActivity.j().getWidth(), mainActivity.j().getHeight()));
                    } else {
                        mainActivity.d();
                    }
                }
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink2.l()) {
                    AutoFragment autoFragmentE = mainActivity.e();
                    int width = mainActivity.j().getWidth();
                    int height = mainActivity.j().getHeight();
                    if (autoFragmentE.f647e != null) {
                        autoFragmentE.f658q.postDelayed(new f.s(autoFragmentE, width, height, i3), 350L);
                    }
                }
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink3.p()) {
                    CarplayFragment carplayFragmentG = mainActivity.g();
                    int width2 = mainActivity.j().getWidth();
                    int height2 = mainActivity.j().getHeight();
                    int i5 = CarplayFragment.m;
                    carplayFragmentG.b(width2, height2, true);
                    return;
                }
                return;
            case 5:
                t.b.h(mainActivity, "this$0");
                mainActivity.finish();
                return;
            case 6:
                t.b.h(mainActivity, "this$0");
                mainActivity.j().getViewTreeObserver().addOnGlobalLayoutListener(new p(mainActivity, i4));
                return;
            case 7:
                t.b.h(mainActivity, "this$0");
                mainActivity.e().onDisconnected();
                return;
            case 8:
                t.b.h(mainActivity, "this$0");
                com.syu.carlink.ui.a aVar2 = new com.syu.carlink.ui.a(mainActivity, w.iphone_signal_low_layout, new r(0), 4);
                mainActivity.f629l = aVar2;
                aVar2.c(mainActivity.j());
                return;
            case 9:
                t.b.h(mainActivity, "this$0");
                com.syu.carlink.ui.a aVar3 = new com.syu.carlink.ui.a(mainActivity, w.iphone_carplay_too_low_layout, new r(1), 4);
                mainActivity.f629l = aVar3;
                aVar3.c(mainActivity.j());
                return;
            default:
                t.b.h(mainActivity, "this$0");
                com.syu.carlink.ui.a aVar4 = new com.syu.carlink.ui.a(mainActivity, w.phone_carplay_disable_layout, new r(2), 4);
                mainActivity.f629l = aVar4;
                aVar4.c(mainActivity.j());
                return;
        }
    }
}
