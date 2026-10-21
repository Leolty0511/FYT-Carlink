package android.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.android.internal.R;
import com.android.internal.widget.CachingIconView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
@RemoteViews.RemoteView
public class NotificationHeaderView extends ViewGroup {
    public static final int NO_COLOR = 1;
    private boolean mAcceptAllTouches;
    private View mAppName;
    private Drawable mBackground;
    private final int mChildMinWidth;
    private final int mContentEndMargin;
    private boolean mEntireHeaderClickable;
    private ImageView mExpandButton;
    private View.OnClickListener mExpandClickListener;
    private boolean mExpandOnlyOnButton;
    private boolean mExpanded;
    private int mHeaderBackgroundHeight;
    private View mHeaderText;
    private CachingIconView mIcon;
    private int mIconColor;
    private View mInfo;
    private int mOriginalNotificationColor;
    private View mProfileBadge;
    ViewOutlineProvider mProvider;
    private boolean mShowExpandButtonAtEnd;
    private boolean mShowWorkBadgeAtEnd;
    private HeaderTouchListener mTouchListener;

    public class HeaderTouchListener implements View.OnTouchListener {
        private float mDownX;
        private float mDownY;
        private Rect mExpandButtonRect;
        private final ArrayList<Rect> mTouchRects = new ArrayList<>();
        private int mTouchSlop;
        private boolean mTrackGesture;

        public HeaderTouchListener() {
        }

        private Rect addRectAroundView(View view) {
            Rect rectAroundView = getRectAroundView(view);
            this.mTouchRects.add(rectAroundView);
            return rectAroundView;
        }

        private void addWidthRect() {
            Rect rect = new Rect();
            rect.top = 0;
            rect.bottom = (int) (NotificationHeaderView.this.getResources().getDisplayMetrics().density * 32.0f);
            rect.left = 0;
            rect.right = NotificationHeaderView.this.getWidth();
            this.mTouchRects.add(rect);
        }

        private Rect getRectAroundView(View view) {
            float f2 = NotificationHeaderView.this.getResources().getDisplayMetrics().density * 48.0f;
            Rect rect = new Rect();
            if (view.getVisibility() == 8) {
                view = NotificationHeaderView.this.getFirstChildNotGone();
                rect.left = (int) (view.getLeft() - (f2 / 2.0f));
            } else {
                rect.left = (int) (((view.getRight() + view.getLeft()) / 2.0f) - (f2 / 2.0f));
            }
            int bottom = (int) (((view.getBottom() + view.getTop()) / 2.0f) - (f2 / 2.0f));
            rect.top = bottom;
            rect.bottom = (int) (bottom + f2);
            rect.right = (int) (rect.left + f2);
            return rect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isInside(float f2, float f3) {
            if (NotificationHeaderView.this.mAcceptAllTouches) {
                return true;
            }
            if (NotificationHeaderView.this.mExpandOnlyOnButton) {
                return this.mExpandButtonRect.contains((int) f2, (int) f3);
            }
            for (int i2 = 0; i2 < this.mTouchRects.size(); i2++) {
                if (this.mTouchRects.get(i2).contains((int) f2, (int) f3)) {
                    return true;
                }
            }
            return false;
        }

        public void bindTouchRects() {
            this.mTouchRects.clear();
            addRectAroundView(NotificationHeaderView.this.mIcon);
            this.mExpandButtonRect = addRectAroundView(NotificationHeaderView.this.mExpandButton);
            addWidthRect();
            this.mTouchSlop = ViewConfiguration.get(NotificationHeaderView.this.getContext()).getScaledTouchSlop();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int actionMasked = motionEvent.getActionMasked() & 255;
            if (actionMasked == 0) {
                this.mTrackGesture = false;
                if (isInside(x2, y2)) {
                    this.mDownX = x2;
                    this.mDownY = y2;
                    this.mTrackGesture = true;
                    return true;
                }
            } else if (actionMasked != 1) {
                if (actionMasked == 2 && this.mTrackGesture && (Math.abs(this.mDownX - x2) > this.mTouchSlop || Math.abs(this.mDownY - y2) > this.mTouchSlop)) {
                    this.mTrackGesture = false;
                }
            } else if (this.mTrackGesture) {
                NotificationHeaderView.this.mExpandButton.performClick();
            }
            return this.mTrackGesture;
        }
    }

    public NotificationHeaderView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getFirstChildNotGone() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                return childAt;
            }
        }
        return this;
    }

    private void updateExpandButton() {
        int i2;
        int i3;
        if (this.mExpanded) {
            i2 = R.drawable.ic_collapse_notification;
            i3 = R.string.expand_button_content_description_expanded;
        } else {
            i2 = R.drawable.ic_expand_notification;
            i3 = R.string.expand_button_content_description_collapsed;
        }
        this.mExpandButton.setImageDrawable(getContext().getDrawable(i2));
        this.mExpandButton.setColorFilter(this.mOriginalNotificationColor);
        this.mExpandButton.setContentDescription(this.mContext.getText(i3));
    }

    private void updateTouchListener() {
        if (this.mExpandClickListener != null) {
            this.mTouchListener.bindTouchRects();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        Drawable drawable = this.mBackground;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.mBackground.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public ImageView getExpandButton() {
        return this.mExpandButton;
    }

    public CachingIconView getIcon() {
        return this.mIcon;
    }

    public int getOriginalIconColor() {
        return this.mIconColor;
    }

    public int getOriginalNotificationColor() {
        return this.mOriginalNotificationColor;
    }

    public View getWorkProfileIcon() {
        return this.mProfileBadge;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean isInTouchRect(float f2, float f3) {
        if (this.mExpandClickListener == null) {
            return false;
        }
        return this.mTouchListener.isInside(f2, f3);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), this.mHeaderBackgroundHeight);
            this.mBackground.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mAppName = findViewById(R.id.app_name_text);
        this.mHeaderText = findViewById(R.id.header_text);
        this.mExpandButton = (ImageView) findViewById(R.id.expand_button);
        this.mIcon = (CachingIconView) findViewById(16908294);
        this.mProfileBadge = findViewById(R.id.profile_badge);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int measuredWidth;
        int width;
        int paddingStart = getPaddingStart();
        int measuredWidth2 = getMeasuredWidth();
        int childCount = getChildCount();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredHeight2 = childAt.getMeasuredHeight();
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int marginStart = marginLayoutParams.getMarginStart() + paddingStart;
                int measuredWidth3 = childAt.getMeasuredWidth() + marginStart;
                int paddingTop = (int) (((measuredHeight - measuredHeight2) / 2.0f) + getPaddingTop());
                int i8 = measuredHeight2 + paddingTop;
                if (childAt == this.mExpandButton && this.mShowExpandButtonAtEnd) {
                    width = measuredWidth2 - this.mContentEndMargin;
                    measuredWidth = width - childAt.getMeasuredWidth();
                    i6 = measuredWidth;
                } else {
                    i6 = marginStart;
                    measuredWidth = measuredWidth2;
                    width = measuredWidth3;
                }
                if (childAt == this.mProfileBadge) {
                    int paddingEnd = getPaddingEnd();
                    if (this.mShowWorkBadgeAtEnd) {
                        paddingEnd = this.mContentEndMargin;
                    }
                    width = measuredWidth - paddingEnd;
                    measuredWidth = width - childAt.getMeasuredWidth();
                    i6 = measuredWidth;
                }
                if (getLayoutDirection() == 1) {
                    int width2 = getWidth() - width;
                    width = getWidth() - i6;
                    i6 = width2;
                }
                childAt.layout(i6, paddingTop, width, i8);
                paddingStart = marginLayoutParams.getMarginEnd() + measuredWidth3;
                measuredWidth2 = measuredWidth;
            }
        }
        updateTouchListener();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
        int paddingEnd = getPaddingEnd() + getPaddingStart();
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                childAt.measure(ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(iMakeMeasureSpec2, marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
                paddingEnd = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + paddingEnd;
            }
        }
        if (paddingEnd > size) {
            int i6 = paddingEnd - size;
            int measuredWidth = this.mAppName.getMeasuredWidth();
            if (i6 > 0 && this.mAppName.getVisibility() != 8 && measuredWidth > (i4 = this.mChildMinWidth)) {
                int iMin = measuredWidth - Math.min(measuredWidth - i4, i6);
                this.mAppName.measure(View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE), iMakeMeasureSpec2);
                i6 -= measuredWidth - iMin;
            }
            if (i6 > 0 && this.mHeaderText.getVisibility() != 8) {
                this.mHeaderText.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, this.mHeaderText.getMeasuredWidth() - i6), Integer.MIN_VALUE), iMakeMeasureSpec2);
            }
        }
        setMeasuredDimension(size, size2);
    }

    @RemotableViewMethod
    public void setAcceptAllTouches(boolean z2) {
        this.mAcceptAllTouches = this.mEntireHeaderClickable || z2;
    }

    @RemotableViewMethod
    public void setExpandOnlyOnButton(boolean z2) {
        this.mExpandOnlyOnButton = z2;
    }

    @RemotableViewMethod
    public void setExpanded(boolean z2) {
        this.mExpanded = z2;
        updateExpandButton();
    }

    public void setHeaderBackgroundDrawable(Drawable drawable) {
        if (drawable != null) {
            setWillNotDraw(false);
            this.mBackground = drawable;
            drawable.setCallback(this);
            setOutlineProvider(this.mProvider);
        } else {
            setWillNotDraw(true);
            this.mBackground = null;
            setOutlineProvider(null);
        }
        invalidate();
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mExpandClickListener = onClickListener;
        setOnTouchListener(onClickListener != null ? this.mTouchListener : null);
        this.mExpandButton.setOnClickListener(this.mExpandClickListener);
        updateTouchListener();
    }

    @RemotableViewMethod
    public void setOriginalIconColor(int i2) {
        this.mIconColor = i2;
    }

    @RemotableViewMethod
    public void setOriginalNotificationColor(int i2) {
        this.mOriginalNotificationColor = i2;
    }

    public void setShowExpandButtonAtEnd(boolean z2) {
        if (z2 != this.mShowExpandButtonAtEnd) {
            setClipToPadding(!z2);
            this.mShowExpandButtonAtEnd = z2;
        }
    }

    public void setShowWorkBadgeAtEnd(boolean z2) {
        if (z2 != this.mShowWorkBadgeAtEnd) {
            setClipToPadding(!z2);
            this.mShowWorkBadgeAtEnd = z2;
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mBackground;
    }

    public NotificationHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotificationHeaderView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public NotificationHeaderView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mTouchListener = new HeaderTouchListener();
        this.mProvider = new ViewOutlineProvider() { // from class: android.view.NotificationHeaderView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (NotificationHeaderView.this.mBackground != null) {
                    outline.setRect(0, 0, NotificationHeaderView.this.getWidth(), NotificationHeaderView.this.mHeaderBackgroundHeight);
                    outline.setAlpha(1.0f);
                }
            }
        };
        Resources resources = getResources();
        this.mChildMinWidth = resources.getDimensionPixelSize(R.dimen.notification_header_shrink_min_width);
        this.mContentEndMargin = resources.getDimensionPixelSize(R.dimen.notification_content_margin_end);
        this.mHeaderBackgroundHeight = resources.getDimensionPixelSize(R.dimen.notification_header_background_height);
        this.mEntireHeaderClickable = resources.getBoolean(R.bool.config_notificationHeaderClickableForExpand);
    }
}
