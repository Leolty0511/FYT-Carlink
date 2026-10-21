package android.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.R;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FragmentBreadCrumbs extends ViewGroup implements FragmentManager.OnBackStackChangedListener {
    private static final int DEFAULT_GRAVITY = 8388627;
    Activity mActivity;
    LinearLayout mContainer;
    private int mGravity;
    LayoutInflater mInflater;
    private int mLayoutResId;
    int mMaxVisible;
    private OnBreadCrumbClickListener mOnBreadCrumbClickListener;
    private View.OnClickListener mOnClickListener;
    private View.OnClickListener mParentClickListener;
    BackStackRecord mParentEntry;
    private int mTextColor;
    BackStackRecord mTopEntry;

    public interface OnBreadCrumbClickListener {
        boolean onBreadCrumbClick(FragmentManager.BackStackEntry backStackEntry, int i2);
    }

    public FragmentBreadCrumbs(Context context) {
        this(context, null);
    }

    private BackStackRecord createBackStackEntry(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null) {
            return null;
        }
        BackStackRecord backStackRecord = new BackStackRecord((FragmentManagerImpl) this.mActivity.getFragmentManager());
        backStackRecord.setBreadCrumbTitle(charSequence);
        backStackRecord.setBreadCrumbShortTitle(charSequence2);
        return backStackRecord;
    }

    private FragmentManager.BackStackEntry getPreEntry(int i2) {
        BackStackRecord backStackRecord = this.mParentEntry;
        if (backStackRecord != null) {
            return i2 == 0 ? backStackRecord : this.mTopEntry;
        }
        return this.mTopEntry;
    }

    private int getPreEntryCount() {
        return (this.mTopEntry != null ? 1 : 0) + (this.mParentEntry == null ? 0 : 1);
    }

    @Override // android.app.FragmentManager.OnBackStackChangedListener
    public void onBackStackChanged() {
        updateCrumbs();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0059  */
    /* JADX WARN: Code duplicated, block: B:18:0x0065  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth;
        int measuredWidth2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (getChildCount() == 0) {
            return;
        }
        View childAt = getChildAt(0);
        int i11 = this.mPaddingTop;
        int measuredHeight = (childAt.getMeasuredHeight() + i11) - this.mPaddingBottom;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity & 8388615, getLayoutDirection());
        if (absoluteGravity != 1) {
            if (absoluteGravity != 5) {
                measuredWidth = this.mPaddingLeft;
                measuredWidth2 = childAt.getMeasuredWidth();
            } else {
                i6 = (this.mRight - this.mLeft) - this.mPaddingRight;
                measuredWidth = i6 - childAt.getMeasuredWidth();
            }
            i7 = this.mPaddingLeft;
            if (measuredWidth < i7) {
                measuredWidth = i7;
            }
            i8 = this.mRight;
            i9 = this.mLeft;
            i10 = this.mPaddingRight;
            if (i6 > (i8 - i9) - i10) {
                i6 = (i8 - i9) - i10;
            }
            childAt.layout(measuredWidth, i11, i6, measuredHeight);
        }
        measuredWidth = this.mPaddingLeft + (((this.mRight - this.mLeft) - childAt.getMeasuredWidth()) / 2);
        measuredWidth2 = childAt.getMeasuredWidth();
        i6 = measuredWidth2 + measuredWidth;
        i7 = this.mPaddingLeft;
        if (measuredWidth < i7) {
            measuredWidth = i7;
        }
        i8 = this.mRight;
        i9 = this.mLeft;
        i10 = this.mPaddingRight;
        if (i6 > (i8 - i9) - i10) {
            i6 = (i8 - i9) - i10;
        }
        childAt.layout(measuredWidth, i11, i6, measuredHeight);
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        int iCombineMeasuredStates = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i3);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
                iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(this.mPaddingLeft + this.mPaddingRight + iMax, getSuggestedMinimumWidth()), i2, iCombineMeasuredStates), View.resolveSizeAndState(Math.max(this.mPaddingTop + this.mPaddingBottom + iMax2, getSuggestedMinimumHeight()), i3, iCombineMeasuredStates << 16));
    }

    public void setActivity(Activity activity) {
        this.mActivity = activity;
        LayoutInflater layoutInflater = (LayoutInflater) activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        this.mInflater = layoutInflater;
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(R.layout.fragment_bread_crumbs, (ViewGroup) this, false);
        this.mContainer = linearLayout;
        addView(linearLayout);
        activity.getFragmentManager().addOnBackStackChangedListener(this);
        updateCrumbs();
        setLayoutTransition(new LayoutTransition());
    }

    public void setMaxVisible(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("visibleCrumbs must be greater than zero");
        }
        this.mMaxVisible = i2;
    }

    public void setOnBreadCrumbClickListener(OnBreadCrumbClickListener onBreadCrumbClickListener) {
        this.mOnBreadCrumbClickListener = onBreadCrumbClickListener;
    }

    public void setParentTitle(CharSequence charSequence, CharSequence charSequence2, View.OnClickListener onClickListener) {
        this.mParentEntry = createBackStackEntry(charSequence, charSequence2);
        this.mParentClickListener = onClickListener;
        updateCrumbs();
    }

    public void setTitle(CharSequence charSequence, CharSequence charSequence2) {
        this.mTopEntry = createBackStackEntry(charSequence, charSequence2);
        updateCrumbs();
    }

    public void updateCrumbs() {
        int i2;
        FragmentManager fragmentManager = this.mActivity.getFragmentManager();
        int backStackEntryCount = fragmentManager.getBackStackEntryCount();
        int preEntryCount = getPreEntryCount();
        int childCount = this.mContainer.getChildCount();
        int i3 = 0;
        while (true) {
            i2 = backStackEntryCount + preEntryCount;
            if (i3 >= i2) {
                break;
            }
            FragmentManager.BackStackEntry preEntry = i3 < preEntryCount ? getPreEntry(i3) : fragmentManager.getBackStackEntryAt(i3 - preEntryCount);
            if (i3 < childCount && this.mContainer.getChildAt(i3).getTag() != preEntry) {
                for (int i4 = i3; i4 < childCount; i4++) {
                    this.mContainer.removeViewAt(i3);
                }
                childCount = i3;
            }
            if (i3 >= childCount) {
                View viewInflate = this.mInflater.inflate(this.mLayoutResId, (ViewGroup) this, false);
                TextView textView = (TextView) viewInflate.findViewById(16908310);
                textView.setText(preEntry.getBreadCrumbTitle());
                textView.setTag(preEntry);
                textView.setTextColor(this.mTextColor);
                if (i3 == 0) {
                    viewInflate.findViewById(R.id.left_icon).setVisibility(8);
                }
                this.mContainer.addView(viewInflate);
                textView.setOnClickListener(this.mOnClickListener);
            }
            i3++;
        }
        int childCount2 = this.mContainer.getChildCount();
        while (childCount2 > i2) {
            this.mContainer.removeViewAt(childCount2 - 1);
            childCount2--;
        }
        int i5 = 0;
        while (i5 < childCount2) {
            View childAt = this.mContainer.getChildAt(i5);
            childAt.findViewById(16908310).setEnabled(i5 < childCount2 + (-1));
            int i6 = this.mMaxVisible;
            if (i6 > 0) {
                childAt.setVisibility(i5 < childCount2 - i6 ? 8 : 0);
                childAt.findViewById(R.id.left_icon).setVisibility((i5 <= childCount2 - this.mMaxVisible || i5 == 0) ? 8 : 0);
            }
            i5++;
        }
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.fragmentBreadCrumbsStyle);
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public FragmentBreadCrumbs(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mMaxVisible = -1;
        this.mOnClickListener = new View.OnClickListener() { // from class: android.app.FragmentBreadCrumbs.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getTag() instanceof FragmentManager.BackStackEntry) {
                    FragmentManager.BackStackEntry backStackEntry = (FragmentManager.BackStackEntry) view.getTag();
                    FragmentBreadCrumbs fragmentBreadCrumbs = FragmentBreadCrumbs.this;
                    if (backStackEntry == fragmentBreadCrumbs.mParentEntry) {
                        if (fragmentBreadCrumbs.mParentClickListener != null) {
                            FragmentBreadCrumbs.this.mParentClickListener.onClick(view);
                            return;
                        }
                        return;
                    }
                    if (fragmentBreadCrumbs.mOnBreadCrumbClickListener != null) {
                        if (FragmentBreadCrumbs.this.mOnBreadCrumbClickListener.onBreadCrumbClick(backStackEntry == FragmentBreadCrumbs.this.mTopEntry ? null : backStackEntry, 0)) {
                            return;
                        }
                    }
                    FragmentBreadCrumbs fragmentBreadCrumbs2 = FragmentBreadCrumbs.this;
                    if (backStackEntry == fragmentBreadCrumbs2.mTopEntry) {
                        fragmentBreadCrumbs2.mActivity.getFragmentManager().popBackStack();
                    } else {
                        fragmentBreadCrumbs2.mActivity.getFragmentManager().popBackStack(backStackEntry.getId(), 0);
                    }
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentBreadCrumbs, i2, i3);
        this.mGravity = typedArrayObtainStyledAttributes.getInt(0, DEFAULT_GRAVITY);
        this.mLayoutResId = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.fragment_bread_crumb_item);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
