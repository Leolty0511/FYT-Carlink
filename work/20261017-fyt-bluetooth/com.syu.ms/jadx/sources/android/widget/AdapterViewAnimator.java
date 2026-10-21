package android.widget;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import i.a;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdapterViewAnimator extends AdapterView<Adapter> implements RemoteViewsAdapter.RemoteAdapterConnectionCallback, Advanceable {
    private static final int DEFAULT_ANIMATION_DURATION = 200;
    private static final String TAG = "RemoteViewAnimator";
    public static final int TOUCH_MODE_DOWN_IN_CURRENT_VIEW = 1;
    public static final int TOUCH_MODE_HANDLED = 2;
    public static final int TOUCH_MODE_NONE = 0;
    public int mActiveOffset;
    public Adapter mAdapter;
    public boolean mAnimateFirstTime;
    public int mCurrentWindowEnd;
    public int mCurrentWindowStart;
    public int mCurrentWindowStartUnbounded;
    public AdapterView<Adapter>.AdapterDataSetObserver mDataSetObserver;
    public boolean mDeferNotifyDataSetChanged;
    public boolean mFirstTime;
    public ObjectAnimator mInAnimation;
    public boolean mLoopViews;
    public int mMaxNumActiveViews;
    public ObjectAnimator mOutAnimation;
    private Runnable mPendingCheckForTap;
    public ArrayList<Integer> mPreviousViews;
    public int mReferenceChildHeight;
    public int mReferenceChildWidth;
    public RemoteViewsAdapter mRemoteViewsAdapter;
    private int mRestoreWhichChild;
    private int mTouchMode;
    public HashMap<Integer, ViewAndMetaData> mViewsMap;
    public int mWhichChild;

    public final class CheckForTap implements Runnable {
        public CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdapterViewAnimator.this.mTouchMode == 1) {
                AdapterViewAnimator.this.showTapFeedback(AdapterViewAnimator.this.getCurrentView());
            }
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.AdapterViewAnimator.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };
        public int whichChild;

        public String toString() {
            return "AdapterViewAnimator.SavedState{ whichChild = " + this.whichChild + " }";
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.whichChild);
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.whichChild = i2;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.whichChild = parcel.readInt();
        }
    }

    public class ViewAndMetaData {
        public int adapterPosition;
        public long itemId;
        public int relativeIndex;
        public View view;

        public ViewAndMetaData(View view, int i2, int i3, long j2) {
            this.view = view;
            this.relativeIndex = i2;
            this.adapterPosition = i3;
            this.itemId = j2;
        }
    }

    public AdapterViewAnimator(Context context) {
        this(context, null);
    }

    private void addChild(View view) {
        addViewInLayout(view, -1, createOrReuseLayoutParams(view));
        if (this.mReferenceChildWidth == -1 || this.mReferenceChildHeight == -1) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            this.mReferenceChildWidth = view.getMeasuredWidth();
            this.mReferenceChildHeight = view.getMeasuredHeight();
        }
    }

    private ViewAndMetaData getMetaDataForChild(View view) {
        for (ViewAndMetaData viewAndMetaData : this.mViewsMap.values()) {
            if (viewAndMetaData.view == view) {
                return viewAndMetaData;
            }
        }
        return null;
    }

    private void initViewAnimator() {
        this.mPreviousViews = new ArrayList<>();
    }

    private void measureChildren() {
        int childCount = getChildCount();
        int measuredWidth = (getMeasuredWidth() - this.mPaddingLeft) - this.mPaddingRight;
        int measuredHeight = (getMeasuredHeight() - this.mPaddingTop) - this.mPaddingBottom;
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
    }

    @Override // android.widget.Advanceable
    public void advance() {
        showNext();
    }

    public void applyTransformForChildAtIndex(View view, int i2) {
    }

    public void cancelHandleClick() {
        View currentView = getCurrentView();
        if (currentView != null) {
            hideTapFeedback(currentView);
        }
        this.mTouchMode = 0;
    }

    public void checkForAndHandleDataChanged() {
        if (this.mDataChanged) {
            post(new Runnable() { // from class: android.widget.AdapterViewAnimator.2
                @Override // java.lang.Runnable
                public void run() {
                    AdapterViewAnimator.this.handleDataChanged();
                    AdapterViewAnimator adapterViewAnimator = AdapterViewAnimator.this;
                    if (adapterViewAnimator.mWhichChild >= adapterViewAnimator.getWindowSize()) {
                        AdapterViewAnimator adapterViewAnimator2 = AdapterViewAnimator.this;
                        adapterViewAnimator2.mWhichChild = 0;
                        adapterViewAnimator2.showOnly(0, false);
                    } else {
                        AdapterViewAnimator adapterViewAnimator3 = AdapterViewAnimator.this;
                        if (adapterViewAnimator3.mOldItemCount != adapterViewAnimator3.getCount()) {
                            AdapterViewAnimator adapterViewAnimator4 = AdapterViewAnimator.this;
                            adapterViewAnimator4.showOnly(adapterViewAnimator4.mWhichChild, false);
                        }
                    }
                    AdapterViewAnimator.this.refreshChildren();
                    AdapterViewAnimator.this.requestLayout();
                }
            });
        }
        this.mDataChanged = false;
    }

    public void configureViewAnimator(int i2, int i3) {
        this.mMaxNumActiveViews = i2;
        this.mActiveOffset = i3;
        this.mPreviousViews.clear();
        this.mViewsMap.clear();
        removeAllViewsInLayout();
        this.mCurrentWindowStart = 0;
        this.mCurrentWindowEnd = -1;
    }

    public ViewGroup.LayoutParams createOrReuseLayoutParams(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof ViewGroup.LayoutParams ? layoutParams : new ViewGroup.LayoutParams(0, 0);
    }

    @Override // android.widget.RemoteViewsAdapter.RemoteAdapterConnectionCallback
    public void deferNotifyDataSetChanged() {
        this.mDeferNotifyDataSetChanged = true;
    }

    @Override // android.widget.Advanceable
    public void fyiWillBeAdvancedByHostKThx() {
    }

    @Override // android.widget.AdapterView
    public Adapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.view.View
    public int getBaseline() {
        return getCurrentView() != null ? getCurrentView().getBaseline() : super.getBaseline();
    }

    public View getCurrentView() {
        return getViewAtRelativeIndex(this.mActiveOffset);
    }

    public ObjectAnimator getDefaultInAnimation() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(200L);
        return objectAnimatorOfFloat;
    }

    public ObjectAnimator getDefaultOutAnimation() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(200L);
        return objectAnimatorOfFloat;
    }

    public int getDisplayedChild() {
        return this.mWhichChild;
    }

    public FrameLayout getFrameForChild() {
        return new FrameLayout(this.mContext);
    }

    public ObjectAnimator getInAnimation() {
        return this.mInAnimation;
    }

    public int getNumActiveViews() {
        return this.mAdapter != null ? Math.min(getCount() + 1, this.mMaxNumActiveViews) : this.mMaxNumActiveViews;
    }

    public ObjectAnimator getOutAnimation() {
        return this.mOutAnimation;
    }

    @Override // android.widget.AdapterView
    public View getSelectedView() {
        return getViewAtRelativeIndex(this.mActiveOffset);
    }

    public View getViewAtRelativeIndex(int i2) {
        if (i2 < 0 || i2 > getNumActiveViews() - 1 || this.mAdapter == null) {
            return null;
        }
        int iModulo = modulo(this.mCurrentWindowStartUnbounded + i2, getWindowSize());
        if (this.mViewsMap.get(Integer.valueOf(iModulo)) != null) {
            return this.mViewsMap.get(Integer.valueOf(iModulo)).view;
        }
        return null;
    }

    public int getWindowSize() {
        if (this.mAdapter == null) {
            return 0;
        }
        int count = getCount();
        return (count > getNumActiveViews() || !this.mLoopViews) ? count : count * this.mMaxNumActiveViews;
    }

    public void hideTapFeedback(View view) {
        view.setPressed(false);
    }

    public int modulo(int i2, int i3) {
        if (i3 > 0) {
            return ((i2 % i3) + i3) % i3;
        }
        return 0;
    }

    @Override // android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(AdapterViewAnimator.class.getName());
    }

    @Override // android.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(AdapterViewAnimator.class.getName());
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        checkForAndHandleDataChanged();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            childAt.layout(this.mPaddingLeft, this.mPaddingTop, this.mPaddingLeft + childAt.getMeasuredWidth(), this.mPaddingTop + childAt.getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int i5 = this.mReferenceChildWidth;
        boolean z2 = (i5 == -1 || this.mReferenceChildHeight == -1) ? false : true;
        if (mode2 == 0) {
            size2 = z2 ? this.mReferenceChildHeight + this.mPaddingTop + this.mPaddingBottom : 0;
        } else if (mode2 == Integer.MIN_VALUE && z2) {
            int i6 = this.mReferenceChildHeight + this.mPaddingTop + this.mPaddingBottom;
            size2 = i6 > size2 ? size2 | 16777216 : i6;
        }
        if (mode == 0) {
            if (z2) {
                i4 = i5 + this.mPaddingLeft + this.mPaddingRight;
            } else {
                size = 0;
            }
        } else if (mode2 == Integer.MIN_VALUE && z2) {
            i4 = i5 + this.mPaddingLeft + this.mPaddingRight;
            size = i4 > size ? size | 16777216 : i4;
        }
        setMeasuredDimension(size, size2);
        measureChildren();
    }

    @Override // android.widget.RemoteViewsAdapter.RemoteAdapterConnectionCallback
    public boolean onRemoteAdapterConnected() {
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteViewsAdapter;
        if (remoteViewsAdapter == this.mAdapter) {
            if (remoteViewsAdapter == null) {
                return false;
            }
            remoteViewsAdapter.superNotifyDataSetChanged();
            return true;
        }
        setAdapter(remoteViewsAdapter);
        if (this.mDeferNotifyDataSetChanged) {
            this.mRemoteViewsAdapter.notifyDataSetChanged();
            this.mDeferNotifyDataSetChanged = false;
        }
        int i2 = this.mRestoreWhichChild;
        if (i2 > -1) {
            setDisplayedChild(i2, false);
            this.mRestoreWhichChild = -1;
        }
        return false;
    }

    @Override // android.widget.RemoteViewsAdapter.RemoteAdapterConnectionCallback
    public void onRemoteAdapterDisconnected() {
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.whichChild;
        this.mWhichChild = i2;
        if (this.mRemoteViewsAdapter == null || this.mAdapter != null) {
            setDisplayedChild(i2, false);
        } else {
            this.mRestoreWhichChild = i2;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteViewsAdapter;
        if (remoteViewsAdapter != null) {
            remoteViewsAdapter.saveRemoteViewsCache();
        }
        return new SavedState(parcelableOnSaveInstanceState, this.mWhichChild);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action == 0) {
            View currentView = getCurrentView();
            if (currentView == null || !isTransformedTouchPointInView(motionEvent.getX(), motionEvent.getY(), currentView, null)) {
                return false;
            }
            if (this.mPendingCheckForTap == null) {
                this.mPendingCheckForTap = new CheckForTap();
            }
            this.mTouchMode = 1;
            postDelayed(this.mPendingCheckForTap, ViewConfiguration.getTapTimeout());
            return false;
        }
        if (action != 1) {
            if (action != 3) {
                return false;
            }
            View currentView2 = getCurrentView();
            if (currentView2 != null) {
                hideTapFeedback(currentView2);
            }
            this.mTouchMode = 0;
            return false;
        }
        if (this.mTouchMode == 1) {
            final View currentView3 = getCurrentView();
            final ViewAndMetaData metaDataForChild = getMetaDataForChild(currentView3);
            if (currentView3 == null || !isTransformedTouchPointInView(motionEvent.getX(), motionEvent.getY(), currentView3, null)) {
                z2 = false;
            } else {
                Handler handler = getHandler();
                if (handler != null) {
                    handler.removeCallbacks(this.mPendingCheckForTap);
                }
                showTapFeedback(currentView3);
                postDelayed(new Runnable() { // from class: android.widget.AdapterViewAnimator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdapterViewAnimator.this.hideTapFeedback(currentView3);
                        AdapterViewAnimator.this.post(new Runnable() { // from class: android.widget.AdapterViewAnimator.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                ViewAndMetaData viewAndMetaData = metaDataForChild;
                                if (viewAndMetaData != null) {
                                    AdapterViewAnimator.this.performItemClick(currentView3, viewAndMetaData.adapterPosition, viewAndMetaData.itemId);
                                } else {
                                    AdapterViewAnimator.this.performItemClick(currentView3, 0, 0L);
                                }
                            }
                        });
                    }
                }, ViewConfiguration.getPressedStateDuration());
            }
        } else {
            z2 = false;
        }
        this.mTouchMode = 0;
        return z2;
    }

    public void refreshChildren() {
        if (this.mAdapter == null) {
            return;
        }
        for (int i2 = this.mCurrentWindowStart; i2 <= this.mCurrentWindowEnd; i2++) {
            int iModulo = modulo(i2, getWindowSize());
            View view = this.mAdapter.getView(modulo(i2, getCount()), null, this);
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (this.mViewsMap.containsKey(Integer.valueOf(iModulo))) {
                FrameLayout frameLayout = (FrameLayout) this.mViewsMap.get(Integer.valueOf(iModulo)).view;
                frameLayout.removeAllViewsInLayout();
                frameLayout.addView(view);
            }
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(Adapter adapter) {
        AdapterView<Adapter>.AdapterDataSetObserver adapterDataSetObserver;
        Adapter adapter2 = this.mAdapter;
        if (adapter2 != null && (adapterDataSetObserver = this.mDataSetObserver) != null) {
            adapter2.unregisterDataSetObserver(adapterDataSetObserver);
        }
        this.mAdapter = adapter;
        checkFocus();
        if (this.mAdapter != null) {
            AdapterView<Adapter>.AdapterDataSetObserver adapterDataSetObserver2 = new AdapterView.AdapterDataSetObserver();
            this.mDataSetObserver = adapterDataSetObserver2;
            this.mAdapter.registerDataSetObserver(adapterDataSetObserver2);
            this.mItemCount = this.mAdapter.getCount();
        }
        setFocusable(true);
        this.mWhichChild = 0;
        showOnly(0, false);
    }

    public void setAnimateFirstView(boolean z2) {
        this.mAnimateFirstTime = z2;
    }

    @RemotableViewMethod
    public void setDisplayedChild(int i2) {
        setDisplayedChild(i2, true);
    }

    public void setInAnimation(ObjectAnimator objectAnimator) {
        this.mInAnimation = objectAnimator;
    }

    public void setOutAnimation(ObjectAnimator objectAnimator) {
        this.mOutAnimation = objectAnimator;
    }

    @RemotableViewMethod
    public void setRemoteViewsAdapter(Intent intent) {
        if (this.mRemoteViewsAdapter == null || !new Intent.FilterComparison(intent).equals(new Intent.FilterComparison(this.mRemoteViewsAdapter.getRemoteViewsServiceIntent()))) {
            this.mDeferNotifyDataSetChanged = false;
            RemoteViewsAdapter remoteViewsAdapter = new RemoteViewsAdapter(getContext(), intent, this);
            this.mRemoteViewsAdapter = remoteViewsAdapter;
            if (remoteViewsAdapter.isDataReady()) {
                setAdapter(this.mRemoteViewsAdapter);
            }
        }
    }

    public void setRemoteViewsOnClickHandler(RemoteViews.OnClickHandler onClickHandler) {
        RemoteViewsAdapter remoteViewsAdapter = this.mRemoteViewsAdapter;
        if (remoteViewsAdapter != null) {
            remoteViewsAdapter.setRemoteViewsOnClickHandler(onClickHandler);
        }
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i2) {
        setDisplayedChild(i2);
    }

    public void showNext() {
        setDisplayedChild(this.mWhichChild + 1);
    }

    public void showOnly(int i2, boolean z2) {
        int count;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.mAdapter == null || (count = getCount()) == 0) {
            return;
        }
        boolean z3 = false;
        int i7 = 0;
        while (true) {
            i3 = -1;
            if (i7 >= this.mPreviousViews.size()) {
                break;
            }
            View view = this.mViewsMap.get(this.mPreviousViews.get(i7)).view;
            this.mViewsMap.remove(this.mPreviousViews.get(i7));
            view.clearAnimation();
            if (view instanceof ViewGroup) {
                ((ViewGroup) view).removeAllViewsInLayout();
            }
            applyTransformForChildAtIndex(view, -1);
            removeViewInLayout(view);
            i7++;
        }
        this.mPreviousViews.clear();
        int i8 = i2 - this.mActiveOffset;
        boolean z4 = true;
        int numActiveViews = (getNumActiveViews() + i8) - 1;
        int iMax = Math.max(0, i8);
        int iMin = Math.min(count - 1, numActiveViews);
        if (this.mLoopViews) {
            i5 = numActiveViews;
            i4 = i8;
        } else {
            i4 = iMax;
            i5 = iMin;
        }
        int iModulo = modulo(i4, getWindowSize());
        int iModulo2 = modulo(i5, getWindowSize());
        boolean z5 = iModulo > iModulo2;
        for (Integer num : this.mViewsMap.keySet()) {
            if (((z5 || (num.intValue() >= iModulo && num.intValue() <= iModulo2)) && (!z5 || num.intValue() <= iModulo2 || num.intValue() >= iModulo)) ? z3 : true) {
                View view2 = this.mViewsMap.get(num).view;
                int i9 = this.mViewsMap.get(num).relativeIndex;
                this.mPreviousViews.add(num);
                transformViewForTransition(i9, -1, view2, z2);
            }
            z3 = false;
        }
        if (i4 != this.mCurrentWindowStart || i5 != this.mCurrentWindowEnd || i8 != this.mCurrentWindowStartUnbounded) {
            int i10 = i4;
            while (i10 <= i5) {
                int iModulo3 = modulo(i10, getWindowSize());
                int i11 = this.mViewsMap.containsKey(Integer.valueOf(iModulo3)) ? this.mViewsMap.get(Integer.valueOf(iModulo3)).relativeIndex : i3;
                int i12 = i10 - i8;
                if ((!this.mViewsMap.containsKey(Integer.valueOf(iModulo3)) || this.mPreviousViews.contains(Integer.valueOf(iModulo3))) ? false : z4) {
                    View view3 = this.mViewsMap.get(Integer.valueOf(iModulo3)).view;
                    this.mViewsMap.get(Integer.valueOf(iModulo3)).relativeIndex = i12;
                    applyTransformForChildAtIndex(view3, i12);
                    transformViewForTransition(i11, i12, view3, z2);
                    i6 = i3;
                } else {
                    int iModulo4 = modulo(i10, count);
                    View view4 = this.mAdapter.getView(iModulo4, null, this);
                    long itemId = this.mAdapter.getItemId(iModulo4);
                    FrameLayout frameForChild = getFrameForChild();
                    if (view4 != null) {
                        frameForChild.addView(view4);
                    }
                    this.mViewsMap.put(Integer.valueOf(iModulo3), new ViewAndMetaData(frameForChild, i12, iModulo4, itemId));
                    addChild(frameForChild);
                    applyTransformForChildAtIndex(frameForChild, i12);
                    i6 = -1;
                    transformViewForTransition(-1, i12, frameForChild, z2);
                }
                this.mViewsMap.get(Integer.valueOf(iModulo3)).view.bringToFront();
                i10++;
                i3 = i6;
                count = count;
                i8 = i8;
                i5 = i5;
                z4 = true;
            }
            int i13 = count;
            this.mCurrentWindowStart = i4;
            this.mCurrentWindowEnd = i5;
            this.mCurrentWindowStartUnbounded = i8;
            if (this.mRemoteViewsAdapter != null) {
                this.mRemoteViewsAdapter.setVisibleRangeHint(modulo(i4, i13), modulo(this.mCurrentWindowEnd, i13));
            }
        }
        requestLayout();
        invalidate();
    }

    public void showPrevious() {
        setDisplayedChild(this.mWhichChild - 1);
    }

    public void showTapFeedback(View view) {
        view.setPressed(true);
    }

    public void transformViewForTransition(int i2, int i3, View view, boolean z2) {
        if (i2 == -1) {
            this.mInAnimation.setTarget(view);
            this.mInAnimation.start();
        } else if (i3 == -1) {
            this.mOutAnimation.setTarget(view);
            this.mOutAnimation.start();
        }
    }

    public AdapterViewAnimator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setDisplayedChild(int i2, boolean z2) {
        if (this.mAdapter != null) {
            this.mWhichChild = i2;
            if (i2 >= getWindowSize()) {
                this.mWhichChild = this.mLoopViews ? 0 : getWindowSize() - 1;
            } else if (i2 < 0) {
                this.mWhichChild = this.mLoopViews ? getWindowSize() - 1 : 0;
            }
            boolean z3 = getFocusedChild() != null;
            showOnly(this.mWhichChild, z2);
            if (z3) {
                requestFocus(2);
            }
        }
    }

    public void setInAnimation(Context context, int i2) {
        setInAnimation((ObjectAnimator) AnimatorInflater.loadAnimator(context, i2));
    }

    public void setOutAnimation(Context context, int i2) {
        setOutAnimation((ObjectAnimator) AnimatorInflater.loadAnimator(context, i2));
    }

    public AdapterViewAnimator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mWhichChild = 0;
        this.mRestoreWhichChild = -1;
        this.mAnimateFirstTime = true;
        this.mActiveOffset = 0;
        this.mMaxNumActiveViews = 1;
        this.mViewsMap = new HashMap<>();
        this.mCurrentWindowStart = 0;
        this.mCurrentWindowEnd = -1;
        this.mCurrentWindowStartUnbounded = 0;
        this.mDeferNotifyDataSetChanged = false;
        this.mFirstTime = true;
        this.mLoopViews = true;
        this.mReferenceChildWidth = -1;
        this.mReferenceChildHeight = -1;
        this.mTouchMode = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.AdapterViewAnimator, i2, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInAnimation(context, resourceId);
        } else {
            setInAnimation(getDefaultInAnimation());
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        if (resourceId2 > 0) {
            setOutAnimation(context, resourceId2);
        } else {
            setOutAnimation(getDefaultOutAnimation());
        }
        setAnimateFirstView(typedArrayObtainStyledAttributes.getBoolean(2, true));
        this.mLoopViews = typedArrayObtainStyledAttributes.getBoolean(3, false);
        typedArrayObtainStyledAttributes.recycle();
        initViewAnimator();
    }
}
