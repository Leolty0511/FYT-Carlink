package android.service.autofill;

import android.os.Bundle;
import android.os.Message;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import com.android.internal.os.HandlerCaller;
import com.android.internal.view.FloatingActionMode;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements HandlerCaller.Callback, Interpolator, InputConnectionCompat.OnCommitContentListener, MenuItem.OnMenuItemClickListener, CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f185b;

    public /* synthetic */ a(Object obj) {
        this.f185b = obj;
    }

    @Override // com.android.internal.os.HandlerCaller.Callback
    public final void executeMessage(Message message) {
        ((AutofillService) this.f185b).lambda$new$0(message);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public final float getInterpolation(float f2) {
        return Transition.lambda$getInterpolator$0((String) this.f185b, f2);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        com.syu.carlink.ui.a aVar = (com.syu.carlink.ui.a) this.f185b;
        b.h(aVar, "$window");
        l lVar = aVar.f730e;
        if (lVar != null) {
            lVar.invoke(Boolean.valueOf(z2));
        }
    }

    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
    public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i2, Bundle bundle) {
        return InputConnectionCompat.lambda$createOnCommitContentListenerUsingPerformReceiveContent$0((View) this.f185b, inputContentInfoCompat, i2, bundle);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return ((FloatingActionMode) this.f185b).lambda$setFloatingToolbar$0(menuItem);
    }
}
