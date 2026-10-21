package com.android.server;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface WidgetBackupProvider {
    List<String> getWidgetParticipants(int i2);

    byte[] getWidgetState(String str, int i2);

    void restoreFinished(int i2);

    void restoreStarting(int i2);

    void restoreWidgetState(String str, byte[] bArr, int i2);
}
