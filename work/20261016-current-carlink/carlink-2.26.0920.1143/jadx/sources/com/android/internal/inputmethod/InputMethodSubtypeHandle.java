package com.android.internal.inputmethod;

import android.accessibilityservice.c;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class InputMethodSubtypeHandle {
    private final String mInputMethodId;
    private final int mSubtypeId;

    public InputMethodSubtypeHandle(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
        this.mInputMethodId = inputMethodInfo.getId();
        if (inputMethodSubtype != null) {
            this.mSubtypeId = inputMethodSubtype.hashCode();
        } else {
            this.mSubtypeId = -1;
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof InputMethodSubtypeHandle)) {
            return false;
        }
        InputMethodSubtypeHandle inputMethodSubtypeHandle = (InputMethodSubtypeHandle) obj;
        return TextUtils.equals(this.mInputMethodId, inputMethodSubtypeHandle.getInputMethodId()) && this.mSubtypeId == inputMethodSubtypeHandle.getSubtypeId();
    }

    public String getInputMethodId() {
        return this.mInputMethodId;
    }

    public int getSubtypeId() {
        return this.mSubtypeId;
    }

    public int hashCode() {
        return (Objects.hashCode(this.mInputMethodId) * 31) + this.mSubtypeId;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InputMethodSubtypeHandle{mInputMethodId=");
        sb.append(this.mInputMethodId);
        sb.append(", mSubtypeId=");
        return c.m(sb, this.mSubtypeId, "}");
    }

    public InputMethodSubtypeHandle(String str, int i2) {
        this.mInputMethodId = str;
        this.mSubtypeId = i2;
    }
}
