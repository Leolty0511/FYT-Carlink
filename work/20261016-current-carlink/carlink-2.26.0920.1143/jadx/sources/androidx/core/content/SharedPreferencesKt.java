package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.hardware.Camera;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedPreferencesKt {
    @SuppressLint({"ApplySharedPref"})
    public static final void edit(SharedPreferences sharedPreferences, boolean z2, l lVar) {
        t.b.h(sharedPreferences, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        t.b.g(editorEdit, "editor");
        lVar.invoke(editorEdit);
        if (z2) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    public static /* synthetic */ void edit$default(SharedPreferences sharedPreferences, boolean z2, l lVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z2 = false;
        }
        t.b.h(sharedPreferences, "<this>");
        t.b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        t.b.g(editorEdit, "editor");
        lVar.invoke(editorEdit);
        if (z2) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }
}
