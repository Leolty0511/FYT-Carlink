package androidx.lifecycle;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public interface LifecycleEventObserver extends LifecycleObserver {
    void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event);
}
