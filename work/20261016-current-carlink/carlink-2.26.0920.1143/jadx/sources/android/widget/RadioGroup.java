package android.widget;

import android.app.m;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class RadioGroup extends LinearLayout {
    private static final String LOG_TAG = "RadioGroup";
    private int mCheckedId;
    private CompoundButton.OnCheckedChangeListener mChildOnCheckedChangeListener;
    private int mInitialCheckedId;
    private OnCheckedChangeListener mOnCheckedChangeListener;
    private PassThroughHierarchyChangeListener mPassThroughListener;
    private boolean mProtectFromCheckedChange;

    public class CheckedStateTracker implements CompoundButton.OnCheckedChangeListener {
        private CheckedStateTracker() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
            if (RadioGroup.this.mProtectFromCheckedChange) {
                return;
            }
            RadioGroup.this.mProtectFromCheckedChange = true;
            if (RadioGroup.this.mCheckedId != -1) {
                RadioGroup radioGroup = RadioGroup.this;
                radioGroup.setCheckedStateForView(radioGroup.mCheckedId, false);
            }
            RadioGroup.this.mProtectFromCheckedChange = false;
            RadioGroup.this.setCheckedId(compoundButton.getId());
        }
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            if (typedArray.hasValue(i2)) {
                this.width = typedArray.getLayoutDimension(i2, "layout_width");
            } else {
                this.width = -2;
            }
            if (typedArray.hasValue(i3)) {
                this.height = typedArray.getLayoutDimension(i3, "layout_height");
            } else {
                this.height = -2;
            }
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(int i2, int i3, float f2) {
            super(i2, i3, f2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public interface OnCheckedChangeListener {
        void onCheckedChanged(RadioGroup radioGroup, int i2);
    }

    public class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;

        private PassThroughHierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == RadioGroup.this && (view2 instanceof RadioButton)) {
                if (view2.getId() == -1) {
                    view2.setId(View.generateViewId());
                }
                ((RadioButton) view2).setOnCheckedChangeWidgetListener(RadioGroup.this.mChildOnCheckedChangeListener);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == RadioGroup.this && (view2 instanceof RadioButton)) {
                ((RadioButton) view2).setOnCheckedChangeWidgetListener(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.mOnHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public RadioGroup(Context context) {
        super(context);
        this.mCheckedId = -1;
        this.mProtectFromCheckedChange = false;
        this.mInitialCheckedId = -1;
        setOrientation(1);
        init();
    }

    private void init() {
        this.mChildOnCheckedChangeListener = new CheckedStateTracker();
        PassThroughHierarchyChangeListener passThroughHierarchyChangeListener = new PassThroughHierarchyChangeListener();
        this.mPassThroughListener = passThroughHierarchyChangeListener;
        super.setOnHierarchyChangeListener(passThroughHierarchyChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i2) {
        this.mCheckedId = i2;
        OnCheckedChangeListener onCheckedChangeListener = this.mOnCheckedChangeListener;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(this, i2);
        }
        AutofillManager autofillManager = (AutofillManager) this.mContext.getSystemService(AutofillManager.class);
        if (autofillManager != null) {
            autofillManager.notifyValueChanged(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedStateForView(int i2, boolean z2) {
        View viewFindViewById = findViewById(i2);
        if (viewFindViewById == null || !(viewFindViewById instanceof RadioButton)) {
            return;
        }
        ((RadioButton) viewFindViewById).setChecked(z2);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof RadioButton) {
            RadioButton radioButton = (RadioButton) view;
            if (radioButton.isChecked()) {
                this.mProtectFromCheckedChange = true;
                int i3 = this.mCheckedId;
                if (i3 != -1) {
                    setCheckedStateForView(i3, false);
                }
                this.mProtectFromCheckedChange = false;
                setCheckedId(radioButton.getId());
            }
        }
        super.addView(view, i2, layoutParams);
    }

    @Override // android.view.View
    public void autofill(AutofillValue autofillValue) {
        if (isEnabled()) {
            if (autofillValue.isList()) {
                int listValue = autofillValue.getListValue();
                View childAt = getChildAt(listValue);
                if (childAt == null) {
                    m.A("RadioGroup.autoFill(): no child with index ", listValue, "View");
                    return;
                } else {
                    check(childAt.getId());
                    return;
                }
            }
            Log.w(LOG_TAG, autofillValue + " could not be autofilled into " + this);
        }
    }

    public void check(int i2) {
        if (i2 == -1 || i2 != this.mCheckedId) {
            int i3 = this.mCheckedId;
            if (i3 != -1) {
                setCheckedStateForView(i3, false);
            }
            if (i2 != -1) {
                setCheckedStateForView(i2, true);
            }
            setCheckedId(i2);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearCheck() {
        check(-1);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return RadioGroup.class.getName();
    }

    @Override // android.view.View
    public int getAutofillType() {
        return isEnabled() ? 3 : 0;
    }

    @Override // android.view.View
    public AutofillValue getAutofillValue() {
        if (!isEnabled()) {
            return null;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2).getId() == this.mCheckedId) {
                return AutofillValue.forList(i2);
            }
        }
        return null;
    }

    public int getCheckedRadioButtonId() {
        return this.mCheckedId;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.mCheckedId;
        if (i2 != -1) {
            this.mProtectFromCheckedChange = true;
            setCheckedStateForView(i2, true);
            this.mProtectFromCheckedChange = false;
            setCheckedId(this.mCheckedId);
        }
    }

    @Override // android.view.View
    public void onProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        super.onProvideAutofillStructure(viewStructure, i2);
        viewStructure.setDataIsSensitive(this.mCheckedId != this.mInitialCheckedId);
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mPassThroughListener.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public RadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCheckedId = -1;
        this.mProtectFromCheckedChange = false;
        this.mInitialCheckedId = -1;
        if (getImportantForAutofill() == 0) {
            setImportantForAutofill(1);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadioGroup, 16842878, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        if (resourceId != -1) {
            this.mCheckedId = resourceId;
            this.mInitialCheckedId = resourceId;
        }
        setOrientation(typedArrayObtainStyledAttributes.getInt(0, 1));
        typedArrayObtainStyledAttributes.recycle();
        init();
    }
}
