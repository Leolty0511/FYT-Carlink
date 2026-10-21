package android.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class TwoLineListItem extends RelativeLayout {
    private TextView mText1;
    private TextView mText2;

    public TwoLineListItem(Context context) {
        this(context, null, 0);
    }

    public TextView getText1() {
        return this.mText1;
    }

    public TextView getText2() {
        return this.mText2;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mText1 = (TextView) findViewById(R.id.text1);
        this.mText2 = (TextView) findViewById(R.id.text2);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TwoLineListItem.class.getName());
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TwoLineListItem.class.getName());
    }

    public TwoLineListItem(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoLineListItem(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        context.obtainStyledAttributes(attributeSet, a.TwoLineListItem, i2, 0).recycle();
    }
}
