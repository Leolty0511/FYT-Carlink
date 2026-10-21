package androidx.core.widget;

import android.hardware.Camera;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import s.c;
import t.b;
import z.l;
import z.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TextViewKt {
    public static final TextWatcher addTextChangedListener(TextView textView, r rVar, r rVar2, l lVar) {
        b.h(textView, "<this>");
        b.h(rVar, "beforeTextChanged");
        b.h(rVar2, "onTextChanged");
        b.h(lVar, "afterTextChanged");
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(lVar, rVar, rVar2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static /* synthetic */ TextWatcher addTextChangedListener$default(TextView textView, r rVar, r rVar2, l lVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            rVar = new r() { // from class: androidx.core.widget.TextViewKt.addTextChangedListener.1
                public final void invoke(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // z.r
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke((CharSequence) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue(), ((Number) obj5).intValue());
                    return c.f1105a;
                }
            };
        }
        if ((i2 & 2) != 0) {
            rVar2 = new r() { // from class: androidx.core.widget.TextViewKt.addTextChangedListener.2
                public final void invoke(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // z.r
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke((CharSequence) obj2, ((Number) obj3).intValue(), ((Number) obj4).intValue(), ((Number) obj5).intValue());
                    return c.f1105a;
                }
            };
        }
        if ((i2 & 4) != 0) {
            lVar = new l() { // from class: androidx.core.widget.TextViewKt.addTextChangedListener.3
                public final void invoke(Editable editable) {
                }

                @Override // z.l
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((Editable) obj2);
                    return c.f1105a;
                }
            };
        }
        b.h(textView, "<this>");
        b.h(rVar, "beforeTextChanged");
        b.h(rVar2, "onTextChanged");
        b.h(lVar, "afterTextChanged");
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(lVar, rVar, rVar2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static final TextWatcher doAfterTextChanged(TextView textView, final l lVar) {
        b.h(textView, "<this>");
        b.h(lVar, Camera.Parameters.SCENE_MODE_ACTION);
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                lVar.invoke(editable);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doBeforeTextChanged(TextView textView, final r rVar) {
        b.h(textView, "<this>");
        b.h(rVar, Camera.Parameters.SCENE_MODE_ACTION);
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doBeforeTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                rVar.invoke(charSequence, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    public static final TextWatcher doOnTextChanged(TextView textView, final r rVar) {
        b.h(textView, "<this>");
        b.h(rVar, Camera.Parameters.SCENE_MODE_ACTION);
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                rVar.invoke(charSequence, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }
}
