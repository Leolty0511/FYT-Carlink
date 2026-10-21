package androidx.lifecycle;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements SavedStateRegistry.SavedStateProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f347b;

    public /* synthetic */ d(Object obj, int i2) {
        this.f346a = i2;
        this.f347b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        int i2 = this.f346a;
        Object obj = this.f347b;
        switch (i2) {
            case 0:
                return SavedStateHandle.m49savedStateProvider$lambda0((SavedStateHandle) obj);
            case 1:
                return SavedStateHandle.m49savedStateProvider$lambda0((SavedStateHandle) obj);
            default:
                return ((ComponentActivity) obj).lambda$new$0();
        }
    }
}
