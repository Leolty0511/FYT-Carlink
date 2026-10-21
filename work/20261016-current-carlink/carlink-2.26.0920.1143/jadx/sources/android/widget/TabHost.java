package android.widget;

import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TabHost extends FrameLayout implements ViewTreeObserver.OnTouchModeChangeListener {
    private static final int TABWIDGET_LOCATION_BOTTOM = 3;
    private static final int TABWIDGET_LOCATION_LEFT = 0;
    private static final int TABWIDGET_LOCATION_RIGHT = 2;
    private static final int TABWIDGET_LOCATION_TOP = 1;
    protected int mCurrentTab;
    private View mCurrentView;
    protected LocalActivityManager mLocalActivityManager;
    private OnTabChangeListener mOnTabChangeListener;
    private FrameLayout mTabContent;
    private View.OnKeyListener mTabKeyListener;
    private int mTabLayoutId;
    private List<TabSpec> mTabSpecs;
    private TabWidget mTabWidget;

    public interface ContentStrategy {
        View getContentView();

        void tabClosed();
    }

    public class FactoryContentStrategy implements ContentStrategy {
        private TabContentFactory mFactory;
        private View mTabContent;
        private final CharSequence mTag;

        public FactoryContentStrategy(CharSequence charSequence, TabContentFactory tabContentFactory) {
            this.mTag = charSequence;
            this.mFactory = tabContentFactory;
        }

        @Override // android.widget.TabHost.ContentStrategy
        public View getContentView() {
            if (this.mTabContent == null) {
                this.mTabContent = this.mFactory.createTabContent(this.mTag.toString());
            }
            this.mTabContent.setVisibility(0);
            return this.mTabContent;
        }

        @Override // android.widget.TabHost.ContentStrategy
        public void tabClosed() {
            this.mTabContent.setVisibility(8);
        }
    }

    public interface IndicatorStrategy {
        View createIndicatorView();
    }

    public class IntentContentStrategy implements ContentStrategy {
        private final Intent mIntent;
        private View mLaunchedView;
        private final String mTag;

        @Override // android.widget.TabHost.ContentStrategy
        public View getContentView() {
            LocalActivityManager localActivityManager = TabHost.this.mLocalActivityManager;
            if (localActivityManager == null) {
                throw new IllegalStateException("Did you forget to call 'public void setup(LocalActivityManager activityGroup)'?");
            }
            Window windowStartActivity = localActivityManager.startActivity(this.mTag, this.mIntent);
            View decorView = windowStartActivity != null ? windowStartActivity.getDecorView() : null;
            View view = this.mLaunchedView;
            if (view != decorView && view != null && view.getParent() != null) {
                TabHost.this.mTabContent.removeView(this.mLaunchedView);
            }
            this.mLaunchedView = decorView;
            if (decorView != null) {
                decorView.setVisibility(0);
                this.mLaunchedView.setFocusableInTouchMode(true);
                ((ViewGroup) this.mLaunchedView).setDescendantFocusability(262144);
            }
            return this.mLaunchedView;
        }

        @Override // android.widget.TabHost.ContentStrategy
        public void tabClosed() {
            View view = this.mLaunchedView;
            if (view != null) {
                view.setVisibility(8);
            }
        }

        private IntentContentStrategy(String str, Intent intent) {
            this.mTag = str;
            this.mIntent = intent;
        }
    }

    public class LabelAndIconIndicatorStrategy implements IndicatorStrategy {
        private final Drawable mIcon;
        private final CharSequence mLabel;

        @Override // android.widget.TabHost.IndicatorStrategy
        public View createIndicatorView() {
            Drawable drawable;
            Context context = TabHost.this.getContext();
            View viewInflate = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(TabHost.this.mTabLayoutId, (ViewGroup) TabHost.this.mTabWidget, false);
            TextView textView = (TextView) viewInflate.findViewById(16908310);
            ImageView imageView = (ImageView) viewInflate.findViewById(16908294);
            boolean z2 = true;
            if ((imageView.getVisibility() == 8) && !TextUtils.isEmpty(this.mLabel)) {
                z2 = false;
            }
            textView.setText(this.mLabel);
            if (z2 && (drawable = this.mIcon) != null) {
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
            }
            if (context.getApplicationInfo().targetSdkVersion <= 4) {
                viewInflate.setBackgroundResource(R.drawable.tab_indicator_v4);
                textView.setTextColor(context.getColorStateList(R.color.tab_indicator_text_v4));
            }
            return viewInflate;
        }

        private LabelAndIconIndicatorStrategy(CharSequence charSequence, Drawable drawable) {
            this.mLabel = charSequence;
            this.mIcon = drawable;
        }
    }

    public class LabelIndicatorStrategy implements IndicatorStrategy {
        private final CharSequence mLabel;

        @Override // android.widget.TabHost.IndicatorStrategy
        public View createIndicatorView() {
            Context context = TabHost.this.getContext();
            View viewInflate = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(TabHost.this.mTabLayoutId, (ViewGroup) TabHost.this.mTabWidget, false);
            TextView textView = (TextView) viewInflate.findViewById(16908310);
            textView.setText(this.mLabel);
            if (context.getApplicationInfo().targetSdkVersion <= 4) {
                viewInflate.setBackgroundResource(R.drawable.tab_indicator_v4);
                textView.setTextColor(context.getColorStateList(R.color.tab_indicator_text_v4));
            }
            return viewInflate;
        }

        private LabelIndicatorStrategy(CharSequence charSequence) {
            this.mLabel = charSequence;
        }
    }

    public interface OnTabChangeListener {
        void onTabChanged(String str);
    }

    public interface TabContentFactory {
        View createTabContent(String str);
    }

    public class TabSpec {
        private ContentStrategy mContentStrategy;
        private IndicatorStrategy mIndicatorStrategy;
        private final String mTag;

        public String getTag() {
            return this.mTag;
        }

        public TabSpec setContent(int i2) {
            this.mContentStrategy = new ViewIdContentStrategy(i2);
            return this;
        }

        public TabSpec setIndicator(CharSequence charSequence) {
            this.mIndicatorStrategy = new LabelIndicatorStrategy(charSequence);
            return this;
        }

        private TabSpec(String str) {
            this.mTag = str;
        }

        public TabSpec setContent(TabContentFactory tabContentFactory) {
            this.mContentStrategy = TabHost.this.new FactoryContentStrategy(this.mTag, tabContentFactory);
            return this;
        }

        public TabSpec setIndicator(CharSequence charSequence, Drawable drawable) {
            this.mIndicatorStrategy = new LabelAndIconIndicatorStrategy(charSequence, drawable);
            return this;
        }

        public TabSpec setContent(Intent intent) {
            this.mContentStrategy = new IntentContentStrategy(this.mTag, intent);
            return this;
        }

        public TabSpec setIndicator(View view) {
            this.mIndicatorStrategy = new ViewIndicatorStrategy(view);
            return this;
        }
    }

    public class ViewIdContentStrategy implements ContentStrategy {
        private final View mView;

        @Override // android.widget.TabHost.ContentStrategy
        public View getContentView() {
            this.mView.setVisibility(0);
            return this.mView;
        }

        @Override // android.widget.TabHost.ContentStrategy
        public void tabClosed() {
            this.mView.setVisibility(8);
        }

        private ViewIdContentStrategy(int i2) {
            View viewFindViewById = TabHost.this.mTabContent.findViewById(i2);
            this.mView = viewFindViewById;
            if (viewFindViewById == null) {
                throw new RuntimeException(android.accessibilityservice.c.d("Could not create tab content because could not find view with id ", i2));
            }
            viewFindViewById.setVisibility(8);
        }
    }

    public class ViewIndicatorStrategy implements IndicatorStrategy {
        private final View mView;

        @Override // android.widget.TabHost.IndicatorStrategy
        public View createIndicatorView() {
            return this.mView;
        }

        private ViewIndicatorStrategy(View view) {
            this.mView = view;
        }
    }

    public TabHost(Context context) {
        super(context);
        this.mTabSpecs = new ArrayList(2);
        this.mCurrentTab = -1;
        this.mCurrentView = null;
        this.mLocalActivityManager = null;
        initTabHost();
    }

    private int getTabWidgetLocation() {
        if (this.mTabWidget.getOrientation() != 1) {
            return this.mTabContent.getTop() < this.mTabWidget.getTop() ? 3 : 1;
        }
        return this.mTabContent.getLeft() < this.mTabWidget.getLeft() ? 2 : 0;
    }

    private void initTabHost() {
        setFocusableInTouchMode(true);
        setDescendantFocusability(262144);
        this.mCurrentTab = -1;
        this.mCurrentView = null;
    }

    private void invokeOnTabChangeListener() {
        OnTabChangeListener onTabChangeListener = this.mOnTabChangeListener;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(getCurrentTabTag());
        }
    }

    public void addTab(TabSpec tabSpec) {
        if (tabSpec.mIndicatorStrategy == null) {
            throw new IllegalArgumentException("you must specify a way to create the tab indicator.");
        }
        if (tabSpec.mContentStrategy == null) {
            throw new IllegalArgumentException("you must specify a way to create the tab content");
        }
        View viewCreateIndicatorView = tabSpec.mIndicatorStrategy.createIndicatorView();
        viewCreateIndicatorView.setOnKeyListener(this.mTabKeyListener);
        if (tabSpec.mIndicatorStrategy instanceof ViewIndicatorStrategy) {
            this.mTabWidget.setStripEnabled(false);
        }
        this.mTabWidget.addView(viewCreateIndicatorView);
        this.mTabSpecs.add(tabSpec);
        if (this.mCurrentTab == -1) {
            setCurrentTab(0);
        }
    }

    public void clearAllTabs() {
        this.mTabWidget.removeAllViews();
        initTabHost();
        this.mTabContent.removeAllViews();
        this.mTabSpecs.clear();
        requestLayout();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View view;
        int i2;
        int i3;
        int i4;
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        if (!zDispatchKeyEvent && keyEvent.getAction() == 0 && (view = this.mCurrentView) != null && view.isRootNamespace() && this.mCurrentView.hasFocus()) {
            int tabWidgetLocation = getTabWidgetLocation();
            if (tabWidgetLocation != 0) {
                i4 = 2;
                if (tabWidgetLocation == 2) {
                    i2 = 22;
                    i4 = 3;
                    i3 = 66;
                } else if (tabWidgetLocation != 3) {
                    i2 = 19;
                    i3 = 33;
                } else {
                    i2 = 20;
                    i3 = 130;
                    i4 = 4;
                }
            } else {
                i2 = 21;
                i3 = 17;
                i4 = 1;
            }
            if (keyEvent.getKeyCode() == i2 && this.mCurrentView.findFocus().focusSearch(i3) == null) {
                this.mTabWidget.getChildTabViewAt(this.mCurrentTab).requestFocus();
                playSoundEffect(i4);
                return true;
            }
        }
        return zDispatchKeyEvent;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchWindowFocusChanged(boolean z2) {
        View view = this.mCurrentView;
        if (view != null) {
            view.dispatchWindowFocusChanged(z2);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TabHost.class.getName();
    }

    public int getCurrentTab() {
        return this.mCurrentTab;
    }

    public String getCurrentTabTag() {
        int i2 = this.mCurrentTab;
        if (i2 < 0 || i2 >= this.mTabSpecs.size()) {
            return null;
        }
        return this.mTabSpecs.get(this.mCurrentTab).getTag();
    }

    public View getCurrentTabView() {
        int i2 = this.mCurrentTab;
        if (i2 < 0 || i2 >= this.mTabSpecs.size()) {
            return null;
        }
        return this.mTabWidget.getChildTabViewAt(this.mCurrentTab);
    }

    public View getCurrentView() {
        return this.mCurrentView;
    }

    public FrameLayout getTabContentView() {
        return this.mTabContent;
    }

    public TabWidget getTabWidget() {
        return this.mTabWidget;
    }

    public TabSpec newTabSpec(String str) {
        if (str != null) {
            return new TabSpec(str);
        }
        throw new IllegalArgumentException("tag must be non-null");
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public void onTouchModeChanged(boolean z2) {
    }

    @Override // android.view.View
    public void sendAccessibilityEventInternal(int i2) {
    }

    public void setCurrentTab(int i2) {
        int i3;
        if (i2 < 0 || i2 >= this.mTabSpecs.size() || i2 == (i3 = this.mCurrentTab)) {
            return;
        }
        if (i3 != -1) {
            this.mTabSpecs.get(i3).mContentStrategy.tabClosed();
        }
        this.mCurrentTab = i2;
        TabSpec tabSpec = this.mTabSpecs.get(i2);
        this.mTabWidget.focusCurrentTab(this.mCurrentTab);
        View contentView = tabSpec.mContentStrategy.getContentView();
        this.mCurrentView = contentView;
        if (contentView.getParent() == null) {
            this.mTabContent.addView(this.mCurrentView, new ViewGroup.LayoutParams(-1, -1));
        }
        if (!this.mTabWidget.hasFocus()) {
            this.mCurrentView.requestFocus();
        }
        invokeOnTabChangeListener();
    }

    public void setCurrentTabByTag(String str) {
        int size = this.mTabSpecs.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mTabSpecs.get(i2).getTag().equals(str)) {
                setCurrentTab(i2);
                return;
            }
        }
    }

    public void setOnTabChangedListener(OnTabChangeListener onTabChangeListener) {
        this.mOnTabChangeListener = onTabChangeListener;
    }

    public void setup() {
        TabWidget tabWidget = (TabWidget) findViewById(16908307);
        this.mTabWidget = tabWidget;
        if (tabWidget == null) {
            throw new RuntimeException("Your TabHost must have a TabWidget whose id attribute is 'android.R.id.tabs'");
        }
        this.mTabKeyListener = new View.OnKeyListener() { // from class: android.widget.TabHost.1
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (!KeyEvent.isModifierKey(i2) && i2 != 61 && i2 != 62 && i2 != 66) {
                    switch (i2) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                            break;
                        default:
                            TabHost.this.mTabContent.requestFocus(2);
                            return TabHost.this.mTabContent.dispatchKeyEvent(keyEvent);
                    }
                }
                return false;
            }
        };
        this.mTabWidget.setTabSelectionListener(new TabWidget.OnTabSelectionChanged() { // from class: android.widget.TabHost.2
            @Override // android.widget.TabWidget.OnTabSelectionChanged
            public void onTabSelectionChanged(int i2, boolean z2) {
                TabHost.this.setCurrentTab(i2);
                if (z2) {
                    TabHost.this.mTabContent.requestFocus(2);
                }
            }
        });
        FrameLayout frameLayout = (FrameLayout) findViewById(16908305);
        this.mTabContent = frameLayout;
        if (frameLayout == null) {
            throw new RuntimeException("Your TabHost must have a FrameLayout whose id attribute is 'android.R.id.tabcontent'");
        }
    }

    public TabHost(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842883);
    }

    public void setup(LocalActivityManager localActivityManager) {
        setup();
        this.mLocalActivityManager = localActivityManager;
    }

    public TabHost(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public TabHost(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet);
        this.mTabSpecs = new ArrayList(2);
        this.mCurrentTab = -1;
        this.mCurrentView = null;
        this.mLocalActivityManager = null;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TabWidget, i2, i3);
        this.mTabLayoutId = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.mTabLayoutId == 0) {
            this.mTabLayoutId = R.layout.tab_indicator_holo;
        }
        initTabHost();
    }
}
