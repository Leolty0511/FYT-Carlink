package android.view.textclassifier;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.syu.carlink.MainActivity;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f249b;
    public final /* synthetic */ Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f250d;

    public /* synthetic */ d(Context context, Object obj, int i2) {
        this.f249b = i2;
        this.c = context;
        this.f250d = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f249b;
        Context context = this.c;
        Object obj = this.f250d;
        switch (i2) {
            case 0:
                context.startActivity((Intent) obj);
                break;
            default:
                MainActivity mainActivity = (MainActivity) context;
                com.syu.carlink.ui.a aVar = (com.syu.carlink.ui.a) obj;
                t.b.h(mainActivity, "this$0");
                t.b.h(aVar, "$window");
                n.b.a("HDL", "==================>>>  setOnClickListener 22  " + mainActivity.f628k);
                aVar.a();
                break;
        }
    }
}
