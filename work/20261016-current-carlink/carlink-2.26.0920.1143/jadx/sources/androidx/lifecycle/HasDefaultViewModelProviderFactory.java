package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.viewmodel.CreationExtras;

/* JADX INFO: loaded from: classes2.dex */
public interface HasDefaultViewModelProviderFactory {
    @NonNull
    CreationExtras getDefaultViewModelCreationExtras();

    @NonNull
    ViewModelProvider.Factory getDefaultViewModelProviderFactory();
}
