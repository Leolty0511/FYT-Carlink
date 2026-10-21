package com.android.server.wifi;

import com.android.internal.annotations.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public interface BuildProperties {
    boolean isEngBuild();

    boolean isUserBuild();

    boolean isUserdebugBuild();
}
