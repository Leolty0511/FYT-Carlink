package android.inputmethodservice;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
public class CompactExtractEditLayout extends LinearLayout {
    private View mInputExtractAccessories;
    private View mInputExtractAction;
    private View mInputExtractEditText;
    private boolean mPerformLayoutChanges;

    public CompactExtractEditLayout(Context context) {
        super(context);
    }

    private int applyFractionInt(int i2, int i3) {
        return Math.round(getResources().getFraction(i2, i3, i3));
    }

    private void applyProportionalLayout(int i2, int i3) {
        if (getResources().getConfiguration().isScreenRound()) {
            setGravity(80);
        }
        setLayoutHeight(this, applyFractionInt(R.fraction.input_extract_layout_height, i3));
        setPadding(applyFractionInt(R.fraction.input_extract_layout_padding_left, i2), 0, applyFractionInt(R.fraction.input_extract_layout_padding_right, i2), 0);
        setLayoutMarginBottom(this.mInputExtractEditText, applyFractionInt(R.fraction.input_extract_text_margin_bottom, i3));
        setLayoutMarginBottom(this.mInputExtractAccessories, applyFractionInt(R.fraction.input_extract_action_margin_bottom, i3));
    }

    private static void setLayoutHeight(View view, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    private static void setLayoutMarginBottom(View view, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.bottomMargin = i2;
        view.setLayoutParams(marginLayoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mPerformLayoutChanges) {
            Resources resources = getResources();
            Configuration configuration = resources.getConfiguration();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            if (configuration.isScreenRound() && i3 < i2) {
                i3 = i2;
            }
            applyProportionalLayout(i2, i3);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mInputExtractEditText = findViewById(16908325);
        this.mInputExtractAccessories = findViewById(R.id.inputExtractAccessories);
        View viewFindViewById = findViewById(R.id.inputExtractAction);
        this.mInputExtractAction = viewFindViewById;
        if (this.mInputExtractEditText == null || this.mInputExtractAccessories == null || viewFindViewById == null) {
            return;
        }
        this.mPerformLayoutChanges = true;
    }

    public CompactExtractEditLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CompactExtractEditLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
