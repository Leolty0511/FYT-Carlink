package com.android.internal.policy;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneLayoutInflater extends LayoutInflater {
    private static final String[] sClassPrefixList = {"android.widget.", "android.webkit.", "android.app."};

    public PhoneLayoutInflater(Context context) {
        super(context);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new PhoneLayoutInflater(this, context);
    }

    @Override // android.view.LayoutInflater
    public View onCreateView(String str, AttributeSet attributeSet) {
        for (String str2 : sClassPrefixList) {
            try {
                View viewCreateView = createView(str, str2, attributeSet);
                if (viewCreateView != null) {
                    return viewCreateView;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.onCreateView(str, attributeSet);
    }

    public PhoneLayoutInflater(LayoutInflater layoutInflater, Context context) {
        super(layoutInflater, context);
    }
}
