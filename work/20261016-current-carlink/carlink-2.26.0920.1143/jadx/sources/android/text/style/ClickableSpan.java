package android.text.style;

import android.text.TextPaint;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ClickableSpan extends CharacterStyle implements UpdateAppearance {
    private static int sIdCounter;
    private int mId;

    public ClickableSpan() {
        int i2 = sIdCounter;
        sIdCounter = i2 + 1;
        this.mId = i2;
    }

    public int getId() {
        return this.mId;
    }

    public abstract void onClick(View view);

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setColor(textPaint.linkColor);
        textPaint.setUnderlineText(true);
    }
}
