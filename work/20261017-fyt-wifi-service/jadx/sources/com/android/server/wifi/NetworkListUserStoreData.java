package com.android.server.wifi;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class NetworkListUserStoreData extends NetworkListStoreData {
    public NetworkListUserStoreData(Context context) {
        super(context);
    }

    @Override // com.android.server.wifi.WifiConfigStore.StoreData
    public int getStoreFileId() {
        return 1;
    }
}
