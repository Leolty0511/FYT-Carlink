package com.google.android.projection.transport;

import java.net.ServerSocket;

/* JADX INFO: loaded from: classes3.dex */
public interface ServerSocketProvider {
    ServerSocket getServerSocket();

    void invalidateSocket();
}
