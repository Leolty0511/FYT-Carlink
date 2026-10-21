package com.android.internal.view.menu;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public interface f {

    public interface a {
        void onCloseMenu(c cVar, boolean z2);

        boolean onOpenSubMenu(c cVar);
    }

    boolean a(c cVar, d dVar);

    void b(boolean z2);

    boolean c();

    boolean d(h hVar);

    void e(Context context, c cVar);

    boolean f(c cVar, d dVar);

    void onCloseMenu(c cVar, boolean z2);
}
