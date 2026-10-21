package android.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.IntProperty;
import android.util.MathUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: loaded from: classes.dex */
class FastScroller {
    private static final int DURATION_CROSS_FADE = 50;
    private static final int DURATION_FADE_IN = 150;
    private static final int DURATION_FADE_OUT = 300;
    private static final int DURATION_RESIZE = 100;
    private static final long FADE_TIMEOUT = 1500;
    private static final int MIN_PAGES = 4;
    private static final int OVERLAY_AT_THUMB = 1;
    private static final int OVERLAY_FLOATING = 0;
    private static final int OVERLAY_POSITION = 5;
    private static final int PREVIEW_BACKGROUND_LEFT = 3;
    private static final int PREVIEW_BACKGROUND_RIGHT = 4;
    private static final int PREVIEW_LEFT = 0;
    private static final int PREVIEW_RIGHT = 1;
    private static final int STATE_DRAGGING = 2;
    private static final int STATE_NONE = 0;
    private static final int STATE_VISIBLE = 1;
    private static final int TEXT_COLOR = 0;
    private static final int THUMB_DRAWABLE = 1;
    private static final int TRACK_DRAWABLE = 2;
    private boolean mAlwaysShow;
    private AnimatorSet mDecorAnimation;
    private boolean mEnabled;
    private int mFirstVisibleItem;
    private boolean mHasPendingDrag;
    private final boolean mHasTrackImage;
    private int mHeaderCount;
    private float mInitialTouchY;
    private boolean mLayoutFromRight;
    private final AbsListView mList;
    private BaseAdapter mListAdapter;
    private boolean mLongList;
    private boolean mMatchDragPosition;
    private int mOldChildCount;
    private int mOldItemCount;
    private final ViewGroupOverlay mOverlay;
    private int mOverlayPosition;
    private AnimatorSet mPreviewAnimation;
    private final ImageView mPreviewImage;
    private final int mPreviewPadding;
    private final int[] mPreviewResId;
    private final TextView mPrimaryText;
    private int mScaledTouchSlop;
    private int mScrollBarStyle;
    private boolean mScrollCompleted;
    private final TextView mSecondaryText;
    private SectionIndexer mSectionIndexer;
    private Object[] mSections;
    private boolean mShowingPreview;
    private boolean mShowingPrimary;
    private int mState;
    private final ImageView mThumbImage;
    private final ImageView mTrackImage;
    private boolean mUpdatingLayout;
    private final int mWidth;
    private static final int[] ATTRS = {R.attr.fastScrollTextColor, R.attr.fastScrollThumbDrawable, R.attr.fastScrollTrackDrawable, R.attr.fastScrollPreviewBackgroundLeft, R.attr.fastScrollPreviewBackgroundRight, R.attr.fastScrollOverlayPosition};
    private static final long TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
    private static Property<View, Integer> LEFT = new IntProperty<View>("left") { // from class: android.widget.FastScroller.4
        @Override // android.util.Property
        public Integer get(View view) {
            return Integer.valueOf(view.getLeft());
        }

        @Override // android.util.IntProperty
        public void setValue(View view, int i2) {
            view.setLeft(i2);
        }
    };
    private static Property<View, Integer> TOP = new IntProperty<View>("top") { // from class: android.widget.FastScroller.5
        @Override // android.util.Property
        public Integer get(View view) {
            return Integer.valueOf(view.getTop());
        }

        @Override // android.util.IntProperty
        public void setValue(View view, int i2) {
            view.setTop(i2);
        }
    };
    private static Property<View, Integer> RIGHT = new IntProperty<View>("right") { // from class: android.widget.FastScroller.6
        @Override // android.util.Property
        public Integer get(View view) {
            return Integer.valueOf(view.getRight());
        }

        @Override // android.util.IntProperty
        public void setValue(View view, int i2) {
            view.setRight(i2);
        }
    };
    private static Property<View, Integer> BOTTOM = new IntProperty<View>("bottom") { // from class: android.widget.FastScroller.7
        @Override // android.util.Property
        public Integer get(View view) {
            return Integer.valueOf(view.getBottom());
        }

        @Override // android.util.IntProperty
        public void setValue(View view, int i2) {
            view.setBottom(i2);
        }
    };
    private final Rect mTempBounds = new Rect();
    private final Rect mTempMargins = new Rect();
    private final Rect mContainerRect = new Rect();
    private int mCurrentSection = -1;
    private int mScrollbarPosition = -1;
    private final Runnable mDeferStartDrag = new Runnable() { // from class: android.widget.FastScroller.1
        @Override // java.lang.Runnable
        public void run() {
            if (FastScroller.this.mList.isAttachedToWindow()) {
                FastScroller.this.beginDrag();
                FastScroller fastScroller = FastScroller.this;
                FastScroller.this.scrollTo(fastScroller.getPosFromMotionEvent(fastScroller.mInitialTouchY));
            }
            FastScroller.this.mHasPendingDrag = false;
        }
    };
    private final Runnable mDeferHide = new Runnable() { // from class: android.widget.FastScroller.2
        @Override // java.lang.Runnable
        public void run() {
            FastScroller.this.setState(0);
        }
    };
    private final Animator.AnimatorListener mSwitchPrimaryListener = new AnimatorListenerAdapter() { // from class: android.widget.FastScroller.3
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FastScroller fastScroller = FastScroller.this;
            fastScroller.mShowingPrimary = !fastScroller.mShowingPrimary;
        }
    };

    public FastScroller(AbsListView absListView) {
        int iMax;
        int[] iArr = new int[2];
        this.mPreviewResId = iArr;
        this.mList = absListView;
        ViewGroupOverlay overlay = absListView.getOverlay();
        this.mOverlay = overlay;
        this.mOldItemCount = absListView.getCount();
        this.mOldChildCount = absListView.getChildCount();
        Context context = absListView.getContext();
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        Resources resources = context.getResources();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(ATTRS);
        ImageView imageView = new ImageView(context);
        this.mTrackImage = imageView;
        updateLongList(this.mOldChildCount, this.mOldItemCount);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
        if (drawable != null) {
            this.mHasTrackImage = true;
            imageView.setBackground(drawable);
            overlay.add(imageView);
            iMax = Math.max(0, drawable.getIntrinsicWidth());
        } else {
            this.mHasTrackImage = false;
            iMax = 0;
        }
        ImageView imageView2 = new ImageView(context);
        this.mThumbImage = imageView2;
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(1);
        if (drawable2 != null) {
            imageView2.setImageDrawable(drawable2);
            overlay.add(imageView2);
            iMax = Math.max(iMax, drawable2.getIntrinsicWidth());
        }
        if (drawable2.getIntrinsicWidth() <= 0 || drawable2.getIntrinsicHeight() <= 0) {
            int dimensionPixelSize = resources.getDimensionPixelSize(17104920);
            imageView2.setMinimumWidth(dimensionPixelSize);
            imageView2.setMinimumHeight(resources.getDimensionPixelSize(17104921));
            iMax = Math.max(iMax, dimensionPixelSize);
        }
        this.mWidth = iMax;
        int dimensionPixelSize2 = resources.getDimensionPixelSize(17104917);
        ImageView imageView3 = new ImageView(context);
        this.mPreviewImage = imageView3;
        imageView3.setMinimumWidth(dimensionPixelSize2);
        imageView3.setMinimumHeight(dimensionPixelSize2);
        imageView3.setAlpha(0.0f);
        overlay.add(imageView3);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(17104919);
        this.mPreviewPadding = dimensionPixelSize3;
        int iMax2 = Math.max(0, dimensionPixelSize2 - dimensionPixelSize3);
        TextView textViewCreatePreviewTextView = createPreviewTextView(context, typedArrayObtainStyledAttributes);
        this.mPrimaryText = textViewCreatePreviewTextView;
        textViewCreatePreviewTextView.setMinimumWidth(iMax2);
        textViewCreatePreviewTextView.setMinimumHeight(iMax2);
        overlay.add(textViewCreatePreviewTextView);
        TextView textViewCreatePreviewTextView2 = createPreviewTextView(context, typedArrayObtainStyledAttributes);
        this.mSecondaryText = textViewCreatePreviewTextView2;
        textViewCreatePreviewTextView2.setMinimumWidth(iMax2);
        textViewCreatePreviewTextView2.setMinimumHeight(iMax2);
        overlay.add(textViewCreatePreviewTextView2);
        iArr[0] = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        iArr[1] = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.mOverlayPosition = typedArrayObtainStyledAttributes.getInt(5, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mScrollBarStyle = absListView.getScrollBarStyle();
        this.mScrollCompleted = true;
        this.mState = 1;
        this.mMatchDragPosition = context.getApplicationInfo().targetSdkVersion >= 11;
        getSectionsFromIndexer();
        refreshDrawablePressedState();
        updateLongList(absListView.getChildCount(), absListView.getCount());
        setScrollbarPosition(absListView.getVerticalScrollbarPosition());
        postAutoHide();
    }

    private static Animator animateAlpha(View view, float f2) {
        return ObjectAnimator.ofFloat(view, View.ALPHA, f2);
    }

    private static Animator animateBounds(View view, Rect rect) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofInt(LEFT, rect.left), PropertyValuesHolder.ofInt(TOP, rect.top), PropertyValuesHolder.ofInt(RIGHT, rect.right), PropertyValuesHolder.ofInt(BOTTOM, rect.bottom));
    }

    private static Animator animateScaleX(View view, float f2) {
        return ObjectAnimator.ofFloat(view, View.SCALE_X, f2);
    }

    private void applyLayout(View view, Rect rect) {
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
        view.setPivotX(this.mLayoutFromRight ? rect.right - rect.left : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void beginDrag() {
        setState(2);
        if (this.mListAdapter == null && this.mList != null) {
            getSectionsFromIndexer();
        }
        AbsListView absListView = this.mList;
        if (absListView != null) {
            absListView.requestDisallowInterceptTouchEvent(true);
            this.mList.reportScrollStateChange(1);
        }
        cancelFling();
    }

    private void cancelFling() {
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
        this.mList.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private void cancelPendingDrag() {
        this.mList.removeCallbacks(this.mDeferStartDrag);
        this.mHasPendingDrag = false;
    }

    private TextView createPreviewTextView(Context context, TypedArray typedArray) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        Resources resources = context.getResources();
        resources.getDimensionPixelSize(17104917);
        ColorStateList colorStateList = typedArray.getColorStateList(0);
        float dimensionPixelSize = resources.getDimensionPixelSize(17104918);
        TextView textView = new TextView(context);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(colorStateList);
        textView.setTextSize(0, dimensionPixelSize);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setGravity(17);
        textView.setAlpha(0.0f);
        textView.setLayoutDirection(this.mList.getLayoutDirection());
        return textView;
    }

    private float getPosFromItemCount(int i2, int i3, int i4) {
        int positionForSection;
        Object[] objArr;
        if (this.mSectionIndexer == null || this.mListAdapter == null) {
            getSectionsFromIndexer();
        }
        if (!((this.mSectionIndexer == null || (objArr = this.mSections) == null || objArr.length <= 0) ? false : true) || !this.mMatchDragPosition) {
            return i2 / (i4 - i3);
        }
        int i5 = this.mHeaderCount;
        int i6 = i2 - i5;
        if (i6 < 0) {
            return 0.0f;
        }
        int i7 = i4 - i5;
        View childAt = this.mList.getChildAt(0);
        float paddingTop = (childAt == null || childAt.getHeight() == 0) ? 0.0f : (this.mList.getPaddingTop() - childAt.getTop()) / childAt.getHeight();
        int sectionForPosition = this.mSectionIndexer.getSectionForPosition(i6);
        int positionForSection2 = this.mSectionIndexer.getPositionForSection(sectionForPosition);
        int length = this.mSections.length;
        if (sectionForPosition < length - 1) {
            int i8 = sectionForPosition + 1;
            positionForSection = (i8 < length ? this.mSectionIndexer.getPositionForSection(i8) : i7 - 1) - positionForSection2;
        } else {
            positionForSection = i7 - positionForSection2;
        }
        float f2 = (sectionForPosition + (positionForSection != 0 ? ((i6 + paddingTop) - positionForSection2) / positionForSection : 0.0f)) / length;
        if (i6 <= 0 || i6 + i3 != i7) {
            return f2;
        }
        View childAt2 = this.mList.getChildAt(i3 - 1);
        return f2 + ((1.0f - f2) * (((this.mList.getHeight() - this.mList.getPaddingBottom()) - childAt2.getTop()) / childAt2.getHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getPosFromMotionEvent(float f2) {
        int i2 = this.mContainerRect.top;
        ImageView imageView = this.mTrackImage;
        float top = imageView.getTop();
        float bottom = imageView.getBottom() - top;
        if (bottom <= 0.0f) {
            return 0.0f;
        }
        return MathUtils.constrain((f2 - top) / bottom, 0.0f, 1.0f);
    }

    private void getSectionsFromIndexer() {
        this.mSectionIndexer = null;
        ListAdapter adapter = this.mList.getAdapter();
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            this.mHeaderCount = headerViewListAdapter.getHeadersCount();
            adapter = headerViewListAdapter.getWrappedAdapter();
        }
        if (adapter instanceof ExpandableListConnector) {
            ExpandableListAdapter adapter2 = ((ExpandableListConnector) adapter).getAdapter();
            if (adapter2 instanceof SectionIndexer) {
                SectionIndexer sectionIndexer = (SectionIndexer) adapter2;
                this.mSectionIndexer = sectionIndexer;
                this.mListAdapter = (BaseAdapter) adapter;
                this.mSections = sectionIndexer.getSections();
                return;
            }
            return;
        }
        if (!(adapter instanceof SectionIndexer)) {
            this.mListAdapter = (BaseAdapter) adapter;
            this.mSections = null;
        } else {
            this.mListAdapter = (BaseAdapter) adapter;
            SectionIndexer sectionIndexer2 = (SectionIndexer) adapter;
            this.mSectionIndexer = sectionIndexer2;
            this.mSections = sectionIndexer2.getSections();
        }
    }

    private static Animator groupAnimatorOfFloat(Property<View, Float> property, float f2, View... viewArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet.Builder builderPlay = null;
        for (int length = viewArr.length - 1; length >= 0; length--) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewArr[length], property, f2);
            if (builderPlay == null) {
                builderPlay = animatorSet.play(objectAnimatorOfFloat);
            } else {
                builderPlay.with(objectAnimatorOfFloat);
            }
        }
        return animatorSet;
    }

    private boolean isPointInside(float f2, float f3) {
        return isPointInsideX(f2) && (this.mHasTrackImage || isPointInsideY(f3));
    }

    private boolean isPointInsideX(float f2) {
        if (this.mLayoutFromRight) {
            return f2 >= ((float) this.mThumbImage.getLeft());
        }
        return f2 <= ((float) this.mThumbImage.getRight());
    }

    private boolean isPointInsideY(float f2) {
        float translationY = this.mThumbImage.getTranslationY();
        return f2 >= ((float) this.mThumbImage.getTop()) + translationY && f2 <= ((float) this.mThumbImage.getBottom()) + translationY;
    }

    private void layoutThumb() {
        Rect rect = this.mTempBounds;
        measureViewToSide(this.mThumbImage, null, null, rect);
        applyLayout(this.mThumbImage, rect);
    }

    private void layoutTrack() {
        ImageView imageView = this.mTrackImage;
        ImageView imageView2 = this.mThumbImage;
        Rect rect = this.mContainerRect;
        imageView.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = imageView.getMeasuredWidth();
        int height = imageView2 != null ? imageView2.getHeight() / 2 : 0;
        int left = imageView2.getLeft() + ((imageView2.getWidth() - measuredWidth) / 2);
        imageView.layout(left, rect.top + height, measuredWidth + left, rect.bottom - height);
    }

    private void measureFloating(View view, Rect rect, Rect rect2) {
        int i2;
        int i3;
        int i4;
        if (rect == null) {
            i4 = 0;
            i2 = 0;
            i3 = 0;
        } else {
            i2 = rect.left;
            i3 = rect.top;
            i4 = rect.right;
        }
        Rect rect3 = this.mContainerRect;
        int iWidth = rect3.width();
        view.measure(View.MeasureSpec.makeMeasureSpec((iWidth - i2) - i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        int iHeight = rect3.height();
        int measuredWidth = view.getMeasuredWidth();
        int i5 = (iHeight / 10) + i3 + rect3.top;
        int measuredHeight = view.getMeasuredHeight() + i5;
        int i6 = ((iWidth - measuredWidth) / 2) + rect3.left;
        rect2.set(i6, i5, measuredWidth + i6, measuredHeight);
    }

    private void measurePreview(View view, Rect rect) {
        Rect rect2 = this.mTempMargins;
        rect2.left = this.mPreviewImage.getPaddingLeft();
        rect2.top = this.mPreviewImage.getPaddingTop();
        rect2.right = this.mPreviewImage.getPaddingRight();
        rect2.bottom = this.mPreviewImage.getPaddingBottom();
        if (this.mOverlayPosition == 1) {
            measureViewToSide(view, this.mThumbImage, rect2, rect);
        } else {
            measureFloating(view, rect2, rect);
        }
    }

    private void measureViewToSide(View view, View view2, Rect rect, Rect rect2) {
        int i2;
        int i3;
        int i4;
        int right;
        int left;
        if (rect == null) {
            i4 = 0;
            i2 = 0;
            i3 = 0;
        } else {
            i2 = rect.left;
            i3 = rect.top;
            i4 = rect.right;
        }
        Rect rect3 = this.mContainerRect;
        int iWidth = rect3.width();
        if (view2 != null) {
            iWidth = this.mLayoutFromRight ? view2.getLeft() : iWidth - view2.getRight();
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((iWidth - i2) - i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = view.getMeasuredWidth();
        if (this.mLayoutFromRight) {
            left = (view2 == null ? rect3.right : view2.getLeft()) - i4;
            right = left - measuredWidth;
        } else {
            right = (view2 == null ? rect3.left : view2.getRight()) + i2;
            left = right + measuredWidth;
        }
        rect2.set(right, i3, left, view.getMeasuredHeight() + i3);
    }

    private void onStateDependencyChanged() {
        if (!isEnabled()) {
            stop();
        } else if (isAlwaysShowEnabled()) {
            setState(1);
        } else if (this.mState == 1) {
            postAutoHide();
        }
        this.mList.resolvePadding();
    }

    private void postAutoHide() {
        this.mList.removeCallbacks(this.mDeferHide);
        this.mList.postDelayed(this.mDeferHide, FADE_TIMEOUT);
    }

    private void refreshDrawablePressedState() {
        boolean z2 = this.mState == 2;
        this.mThumbImage.setPressed(z2);
        this.mTrackImage.setPressed(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollTo(float f2) {
        int i2;
        this.mScrollCompleted = false;
        int count = this.mList.getCount();
        Object[] objArr = this.mSections;
        int length = objArr == null ? 0 : objArr.length;
        if (objArr == null || length <= 1) {
            int iConstrain = MathUtils.constrain((int) (f2 * count), 0, count - 1);
            AbsListView absListView = this.mList;
            if (absListView instanceof ExpandableListView) {
                ExpandableListView expandableListView = (ExpandableListView) absListView;
                expandableListView.setSelectionFromTop(expandableListView.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(iConstrain + this.mHeaderCount)), 0);
            } else if (absListView instanceof ListView) {
                ((ListView) absListView).setSelectionFromTop(iConstrain + this.mHeaderCount, 0);
            } else {
                absListView.setSelection(iConstrain + this.mHeaderCount);
            }
            i2 = -1;
        } else {
            float f3 = length;
            int i3 = length - 1;
            int iConstrain2 = MathUtils.constrain((int) (f2 * f3), 0, i3);
            int positionForSection = this.mSectionIndexer.getPositionForSection(iConstrain2);
            int i4 = iConstrain2 + 1;
            int positionForSection2 = iConstrain2 < i3 ? this.mSectionIndexer.getPositionForSection(i4) : count;
            int i5 = iConstrain2;
            if (positionForSection2 == positionForSection) {
                int positionForSection3 = positionForSection;
                while (true) {
                    if (i5 <= 0) {
                        i5 = iConstrain2;
                    } else {
                        i5--;
                        positionForSection3 = this.mSectionIndexer.getPositionForSection(i5);
                        if (positionForSection3 == positionForSection) {
                            if (i5 == 0) {
                                i5 = iConstrain2;
                                positionForSection = positionForSection3;
                                i2 = 0;
                            }
                        }
                    }
                    positionForSection = positionForSection3;
                    i2 = i5;
                }
            } else {
                i2 = i5;
            }
            int i6 = i4 + 1;
            while (i6 < length && this.mSectionIndexer.getPositionForSection(i6) == positionForSection2) {
                i6++;
                i4++;
            }
            float f4 = i5 / f3;
            float f5 = i4 / f3;
            float f6 = count == 0 ? Float.MAX_VALUE : 0.125f / count;
            if (i5 != iConstrain2 || f2 - f4 >= f6) {
                positionForSection += (int) (((positionForSection2 - positionForSection) * (f2 - f4)) / (f5 - f4));
            }
            int iConstrain3 = MathUtils.constrain(positionForSection, 0, count - 1);
            AbsListView absListView2 = this.mList;
            if (absListView2 instanceof ExpandableListView) {
                ExpandableListView expandableListView2 = (ExpandableListView) absListView2;
                expandableListView2.setSelectionFromTop(expandableListView2.getFlatListPosition(ExpandableListView.getPackedPositionForGroup(iConstrain3 + this.mHeaderCount)), 0);
            } else if (absListView2 instanceof ListView) {
                ((ListView) absListView2).setSelectionFromTop(iConstrain3 + this.mHeaderCount, 0);
            } else {
                absListView2.setSelection(iConstrain3 + this.mHeaderCount);
            }
        }
        if (this.mCurrentSection != i2) {
            this.mCurrentSection = i2;
            boolean zTransitionPreviewLayout = transitionPreviewLayout(i2);
            boolean z2 = this.mShowingPreview;
            if (!z2 && zTransitionPreviewLayout) {
                transitionToDragging();
            } else {
                if (!z2 || zTransitionPreviewLayout) {
                    return;
                }
                transitionToVisible();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(int i2) {
        this.mList.removeCallbacks(this.mDeferHide);
        if (this.mAlwaysShow && i2 == 0) {
            i2 = 1;
        }
        if (i2 == this.mState) {
            return;
        }
        if (i2 == 0) {
            transitionToHidden();
        } else if (i2 == 1) {
            transitionToVisible();
        } else if (i2 == 2) {
            if (transitionPreviewLayout(this.mCurrentSection)) {
                transitionToDragging();
            } else {
                transitionToVisible();
            }
        }
        this.mState = i2;
        refreshDrawablePressedState();
    }

    private void setThumbPos(float f2) {
        Rect rect = this.mContainerRect;
        int i2 = rect.top;
        int i3 = rect.bottom;
        ImageView imageView = this.mTrackImage;
        ImageView imageView2 = this.mThumbImage;
        float top = imageView.getTop();
        float bottom = (f2 * (imageView.getBottom() - top)) + top;
        imageView2.setTranslationY(bottom - (imageView2.getHeight() / 2));
        if (this.mOverlayPosition != 1) {
            bottom = 0.0f;
        }
        ImageView imageView3 = this.mPreviewImage;
        float height = imageView3.getHeight() / 2.0f;
        float fConstrain = MathUtils.constrain(bottom, i2 + height, i3 - height) - height;
        imageView3.setTranslationY(fConstrain);
        this.mPrimaryText.setTranslationY(fConstrain);
        this.mSecondaryText.setTranslationY(fConstrain);
    }

    private void startPendingDrag() {
        this.mHasPendingDrag = true;
        this.mList.postDelayed(this.mDeferStartDrag, TAP_TIMEOUT);
    }

    private boolean transitionPreviewLayout(int i2) {
        TextView textView;
        TextView textView2;
        Object obj;
        Object[] objArr = this.mSections;
        String string = (objArr == null || i2 < 0 || i2 >= objArr.length || (obj = objArr[i2]) == null) ? null : obj.toString();
        Rect rect = this.mTempBounds;
        ImageView imageView = this.mPreviewImage;
        if (this.mShowingPrimary) {
            textView = this.mPrimaryText;
            textView2 = this.mSecondaryText;
        } else {
            textView = this.mSecondaryText;
            textView2 = this.mPrimaryText;
        }
        textView2.setText(string);
        measurePreview(textView2, rect);
        applyLayout(textView2, rect);
        AnimatorSet animatorSet = this.mPreviewAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        Animator duration = animateAlpha(textView2, 1.0f).setDuration(50L);
        Animator duration2 = animateAlpha(textView, 0.0f).setDuration(50L);
        duration2.addListener(this.mSwitchPrimaryListener);
        rect.left -= this.mPreviewImage.getPaddingLeft();
        rect.top -= this.mPreviewImage.getPaddingTop();
        rect.right += this.mPreviewImage.getPaddingRight();
        rect.bottom += this.mPreviewImage.getPaddingBottom();
        Animator animatorAnimateBounds = animateBounds(imageView, rect);
        animatorAnimateBounds.setDuration(100L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mPreviewAnimation = animatorSet2;
        AnimatorSet.Builder builderWith = animatorSet2.play(duration2).with(duration);
        builderWith.with(animatorAnimateBounds);
        int width = (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
        int width2 = textView2.getWidth();
        if (width2 > width) {
            textView2.setScaleX(width / width2);
            builderWith.with(animateScaleX(textView2, 1.0f).setDuration(100L));
        } else {
            textView2.setScaleX(1.0f);
        }
        int width3 = textView.getWidth();
        if (width3 > width2) {
            builderWith.with(animateScaleX(textView, width2 / width3).setDuration(100L));
        }
        this.mPreviewAnimation.start();
        return !TextUtils.isEmpty(string);
    }

    private void transitionToDragging() {
        AnimatorSet animatorSet = this.mDecorAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        Animator duration = groupAnimatorOfFloat(View.ALPHA, 1.0f, this.mThumbImage, this.mTrackImage, this.mPreviewImage).setDuration(150L);
        Animator duration2 = groupAnimatorOfFloat(View.TRANSLATION_X, 0.0f, this.mThumbImage, this.mTrackImage).setDuration(150L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mDecorAnimation = animatorSet2;
        animatorSet2.playTogether(duration, duration2);
        this.mDecorAnimation.start();
        this.mShowingPreview = true;
    }

    private void transitionToHidden() {
        AnimatorSet animatorSet = this.mDecorAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        Animator duration = groupAnimatorOfFloat(View.ALPHA, 0.0f, this.mThumbImage, this.mTrackImage, this.mPreviewImage, this.mPrimaryText, this.mSecondaryText).setDuration(300L);
        Animator duration2 = groupAnimatorOfFloat(View.TRANSLATION_X, this.mLayoutFromRight ? this.mThumbImage.getWidth() : -this.mThumbImage.getWidth(), this.mThumbImage, this.mTrackImage).setDuration(300L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mDecorAnimation = animatorSet2;
        animatorSet2.playTogether(duration, duration2);
        this.mDecorAnimation.start();
        this.mShowingPreview = false;
    }

    private void transitionToVisible() {
        AnimatorSet animatorSet = this.mDecorAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        Property<View, Float> property = View.ALPHA;
        Animator duration = groupAnimatorOfFloat(property, 1.0f, this.mThumbImage, this.mTrackImage).setDuration(150L);
        Animator duration2 = groupAnimatorOfFloat(property, 0.0f, this.mPreviewImage, this.mPrimaryText, this.mSecondaryText).setDuration(300L);
        Animator duration3 = groupAnimatorOfFloat(View.TRANSLATION_X, 0.0f, this.mThumbImage, this.mTrackImage).setDuration(150L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mDecorAnimation = animatorSet2;
        animatorSet2.playTogether(duration, duration2, duration3);
        this.mDecorAnimation.start();
        this.mShowingPreview = false;
    }

    private void updateContainerRect() {
        AbsListView absListView = this.mList;
        absListView.resolvePadding();
        Rect rect = this.mContainerRect;
        rect.left = 0;
        rect.top = 0;
        rect.right = absListView.getWidth();
        rect.bottom = absListView.getHeight();
        int i2 = this.mScrollBarStyle;
        if (i2 == 16777216 || i2 == 0) {
            rect.left += absListView.getPaddingLeft();
            rect.top += absListView.getPaddingTop();
            rect.right -= absListView.getPaddingRight();
            rect.bottom -= absListView.getPaddingBottom();
            if (i2 == 16777216) {
                int width = getWidth();
                if (this.mScrollbarPosition == 2) {
                    rect.right += width;
                } else {
                    rect.left -= width;
                }
            }
        }
    }

    private void updateLongList(int i2, int i3) {
        boolean z2 = i2 > 0 && i3 / i2 >= 4;
        if (this.mLongList != z2) {
            this.mLongList = z2;
            onStateDependencyChanged();
        }
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isAlwaysShowEnabled() {
        return this.mAlwaysShow;
    }

    public boolean isEnabled() {
        return this.mEnabled && (this.mLongList || this.mAlwaysShow);
    }

    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if ((actionMasked == 9 || actionMasked == 7) && this.mState == 0 && isPointInside(motionEvent.getX(), motionEvent.getY())) {
            setState(1);
            postAutoHide();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002a  */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                cancelPendingDrag();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    cancelPendingDrag();
                }
            } else if (!isPointInside(motionEvent.getX(), motionEvent.getY())) {
                cancelPendingDrag();
            }
        } else if (isPointInside(motionEvent.getX(), motionEvent.getY())) {
            if (!this.mList.isInScrollingContainer()) {
                beginDrag();
                return true;
            }
            this.mInitialTouchY = motionEvent.getY();
            startPendingDrag();
        }
        return false;
    }

    public void onItemCountChanged(int i2, int i3) {
        if (this.mOldItemCount == i3 && this.mOldChildCount == i2) {
            return;
        }
        this.mOldItemCount = i3;
        this.mOldChildCount = i2;
        if ((i3 - i2 > 0) && this.mState != 2) {
            setThumbPos(getPosFromItemCount(this.mList.getFirstVisiblePosition(), i2, i3));
        }
        updateLongList(i2, i3);
    }

    public void onScroll(int i2, int i3, int i4) {
        if (!isEnabled()) {
            setState(0);
            return;
        }
        if ((i4 - i3 > 0) && this.mState != 2) {
            setThumbPos(getPosFromItemCount(i2, i3, i4));
        }
        this.mScrollCompleted = true;
        if (this.mFirstVisibleItem != i2) {
            this.mFirstVisibleItem = i2;
            if (this.mState != 2) {
                setState(1);
                postAutoHide();
            }
        }
    }

    public void onSectionsChanged() {
        this.mListAdapter = null;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        updateLayout();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            if (this.mHasPendingDrag) {
                beginDrag();
                float posFromMotionEvent = getPosFromMotionEvent(motionEvent.getY());
                setThumbPos(posFromMotionEvent);
                scrollTo(posFromMotionEvent);
                cancelPendingDrag();
            }
            if (this.mState == 2) {
                AbsListView absListView = this.mList;
                if (absListView != null) {
                    absListView.requestDisallowInterceptTouchEvent(false);
                    this.mList.reportScrollStateChange(0);
                }
                setState(1);
                postAutoHide();
                return true;
            }
        } else if (actionMasked == 2) {
            if (this.mHasPendingDrag && Math.abs(motionEvent.getY() - this.mInitialTouchY) > this.mScaledTouchSlop) {
                setState(2);
                if (this.mListAdapter == null && this.mList != null) {
                    getSectionsFromIndexer();
                }
                AbsListView absListView2 = this.mList;
                if (absListView2 != null) {
                    absListView2.requestDisallowInterceptTouchEvent(true);
                    this.mList.reportScrollStateChange(1);
                }
                cancelFling();
                cancelPendingDrag();
            }
            if (this.mState == 2) {
                float posFromMotionEvent2 = getPosFromMotionEvent(motionEvent.getY());
                setThumbPos(posFromMotionEvent2);
                if (this.mScrollCompleted) {
                    scrollTo(posFromMotionEvent2);
                }
                return true;
            }
        } else if (actionMasked == 3) {
            cancelPendingDrag();
        }
        return false;
    }

    public void remove() {
        this.mOverlay.remove(this.mTrackImage);
        this.mOverlay.remove(this.mThumbImage);
        this.mOverlay.remove(this.mPreviewImage);
        this.mOverlay.remove(this.mPrimaryText);
        this.mOverlay.remove(this.mSecondaryText);
    }

    public void setAlwaysShow(boolean z2) {
        if (this.mAlwaysShow != z2) {
            this.mAlwaysShow = z2;
            onStateDependencyChanged();
        }
    }

    public void setEnabled(boolean z2) {
        if (this.mEnabled != z2) {
            this.mEnabled = z2;
            onStateDependencyChanged();
        }
    }

    public void setScrollBarStyle(int i2) {
        if (this.mScrollBarStyle != i2) {
            this.mScrollBarStyle = i2;
            updateLayout();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v5 */
    public void setScrollbarPosition(int i2) {
        if (i2 == 0) {
            i2 = this.mList.isLayoutRtl() ? 1 : 2;
        }
        if (this.mScrollbarPosition != i2) {
            this.mScrollbarPosition = i2;
            ?? r1 = i2 == 1 ? 0 : 1;
            this.mLayoutFromRight = r1;
            this.mPreviewImage.setBackgroundResource(this.mPreviewResId[r1]);
            Drawable background = this.mPreviewImage.getBackground();
            if (background != null) {
                Rect rect = this.mTempBounds;
                background.getPadding(rect);
                int i3 = this.mPreviewPadding;
                rect.offset(i3, i3);
                this.mPreviewImage.setPadding(rect.left, rect.top, rect.right, rect.bottom);
            }
            updateLayout();
        }
    }

    public void stop() {
        setState(0);
    }

    public void updateLayout() {
        if (this.mUpdatingLayout) {
            return;
        }
        this.mUpdatingLayout = true;
        updateContainerRect();
        layoutThumb();
        layoutTrack();
        Rect rect = this.mTempBounds;
        measurePreview(this.mPrimaryText, rect);
        applyLayout(this.mPrimaryText, rect);
        measurePreview(this.mSecondaryText, rect);
        applyLayout(this.mSecondaryText, rect);
        ImageView imageView = this.mPreviewImage;
        if (imageView != null) {
            rect.left -= imageView.getPaddingLeft();
            rect.top -= this.mPreviewImage.getPaddingTop();
            rect.right += this.mPreviewImage.getPaddingRight();
            rect.bottom += this.mPreviewImage.getPaddingBottom();
            applyLayout(this.mPreviewImage, rect);
        }
        this.mUpdatingLayout = false;
    }
}
