package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.R;
import com.google.android.material.timepicker.TimeModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
public class NumberPicker extends LinearLayout {
    private static final int DEFAULT_LAYOUT_RESOURCE_ID = 17367199;
    private static final long DEFAULT_LONG_PRESS_UPDATE_INTERVAL = 300;
    private static final int SELECTOR_ADJUSTMENT_DURATION_MILLIS = 800;
    private static final int SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT = 8;
    private static final int SELECTOR_MIDDLE_ITEM_INDEX = 1;
    private static final int SELECTOR_WHEEL_ITEM_COUNT = 3;
    private static final int SIZE_UNSPECIFIED = -1;
    private static final int SNAP_SCROLL_DURATION = 300;
    private static final float TOP_AND_BOTTOM_FADING_EDGE_STRENGTH = 0.9f;
    private static final int UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE = 48;
    private static final int UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT = 2;
    private AccessibilityNodeProviderImpl mAccessibilityNodeProvider;
    private final Scroller mAdjustScroller;
    private BeginSoftInputOnLongPressCommand mBeginSoftInputOnLongPressCommand;
    private int mBottomSelectionDividerBottom;
    private ChangeCurrentByOneFromLongPressCommand mChangeCurrentByOneFromLongPressCommand;
    private final boolean mComputeMaxWidth;
    private int mCurrentScrollOffset;
    private final ImageButton mDecrementButton;
    private boolean mDecrementVirtualButtonPressed;
    private String[] mDisplayedValues;
    private final Scroller mFlingScroller;
    private Formatter mFormatter;
    private final boolean mHasSelectorWheel;
    private boolean mHideWheelUntilFocused;
    private boolean mIgnoreMoveEvents;
    private final ImageButton mIncrementButton;
    private boolean mIncrementVirtualButtonPressed;
    private int mInitialScrollOffset;
    private final EditText mInputText;
    private long mLastDownEventTime;
    private float mLastDownEventY;
    private float mLastDownOrMoveEventY;
    private int mLastHandledDownDpadKeyCode;
    private int mLastHoveredChildVirtualViewId;
    private long mLongPressUpdateInterval;
    private final int mMaxHeight;
    private int mMaxValue;
    private int mMaxWidth;
    private int mMaximumFlingVelocity;
    private final int mMinHeight;
    private int mMinValue;
    private final int mMinWidth;
    private int mMinimumFlingVelocity;
    private OnScrollListener mOnScrollListener;
    private OnValueChangeListener mOnValueChangeListener;
    private boolean mPerformClickOnTap;
    private final PressedStateHelper mPressedStateHelper;
    private int mPreviousScrollerY;
    private int mScrollState;
    private final Drawable mSelectionDivider;
    private final int mSelectionDividerHeight;
    private final int mSelectionDividersDistance;
    private int mSelectorElementHeight;
    private final SparseArray<String> mSelectorIndexToStringCache;
    private final int[] mSelectorIndices;
    private int mSelectorTextGapHeight;
    private final Paint mSelectorWheelPaint;
    private SetSelectionCommand mSetSelectionCommand;
    private final int mSolidColor;
    private final int mTextSize;
    private int mTopSelectionDividerTop;
    private int mTouchSlop;
    private int mValue;
    private VelocityTracker mVelocityTracker;
    private final Drawable mVirtualButtonPressedDrawable;
    private boolean mWrapSelectorWheel;
    private boolean mWrapSelectorWheelPreferred;
    private static final TwoDigitFormatter sTwoDigitFormatter = new TwoDigitFormatter();
    private static final char[] DIGIT_CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3311};

    public class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider {
        private static final int UNDEFINED = Integer.MIN_VALUE;
        private static final int VIRTUAL_VIEW_ID_DECREMENT = 3;
        private static final int VIRTUAL_VIEW_ID_INCREMENT = 1;
        private static final int VIRTUAL_VIEW_ID_INPUT = 2;
        private final Rect mTempRect = new Rect();
        private final int[] mTempArray = new int[2];
        private int mAccessibilityFocusedView = Integer.MIN_VALUE;

        public AccessibilityNodeProviderImpl() {
        }

        private AccessibilityNodeInfo createAccessibilityNodeInfoForNumberPicker(int i2, int i3, int i4, int i5) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
            accessibilityNodeInfoObtain.setClassName(NumberPicker.class.getName());
            accessibilityNodeInfoObtain.setPackageName(((View) NumberPicker.this).mContext.getPackageName());
            accessibilityNodeInfoObtain.setSource(NumberPicker.this);
            if (hasVirtualDecrementButton()) {
                accessibilityNodeInfoObtain.addChild(NumberPicker.this, 3);
            }
            accessibilityNodeInfoObtain.addChild(NumberPicker.this, 2);
            if (hasVirtualIncrementButton()) {
                accessibilityNodeInfoObtain.addChild(NumberPicker.this, 1);
            }
            accessibilityNodeInfoObtain.setParent((View) NumberPicker.this.getParentForAccessibility());
            accessibilityNodeInfoObtain.setEnabled(NumberPicker.this.isEnabled());
            accessibilityNodeInfoObtain.setScrollable(true);
            float f2 = NumberPicker.this.getContext().getResources().getCompatibilityInfo().applicationScale;
            Rect rect = this.mTempRect;
            rect.set(i2, i3, i4, i5);
            rect.scale(f2);
            accessibilityNodeInfoObtain.setBoundsInParent(rect);
            accessibilityNodeInfoObtain.setVisibleToUser(NumberPicker.this.isVisibleToUser());
            int[] iArr = this.mTempArray;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            rect.scale(f2);
            accessibilityNodeInfoObtain.setBoundsInScreen(rect);
            if (this.mAccessibilityFocusedView != -1) {
                accessibilityNodeInfoObtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == -1) {
                accessibilityNodeInfoObtain.addAction(128);
            }
            if (NumberPicker.this.isEnabled()) {
                if (NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() < NumberPicker.this.getMaxValue()) {
                    accessibilityNodeInfoObtain.addAction(4096);
                }
                if (NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() > NumberPicker.this.getMinValue()) {
                    accessibilityNodeInfoObtain.addAction(8192);
                }
            }
            return accessibilityNodeInfoObtain;
        }

        private AccessibilityNodeInfo createAccessibilityNodeInfoForVirtualButton(int i2, String str, int i3, int i4, int i5, int i6) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
            accessibilityNodeInfoObtain.setClassName(Button.class.getName());
            accessibilityNodeInfoObtain.setPackageName(((View) NumberPicker.this).mContext.getPackageName());
            accessibilityNodeInfoObtain.setSource(NumberPicker.this, i2);
            accessibilityNodeInfoObtain.setParent(NumberPicker.this);
            accessibilityNodeInfoObtain.setText(str);
            accessibilityNodeInfoObtain.setClickable(true);
            accessibilityNodeInfoObtain.setLongClickable(true);
            accessibilityNodeInfoObtain.setEnabled(NumberPicker.this.isEnabled());
            Rect rect = this.mTempRect;
            rect.set(i3, i4, i5, i6);
            accessibilityNodeInfoObtain.setVisibleToUser(NumberPicker.this.isVisibleToUser(rect));
            accessibilityNodeInfoObtain.setBoundsInParent(rect);
            int[] iArr = this.mTempArray;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoObtain.setBoundsInScreen(rect);
            if (this.mAccessibilityFocusedView != i2) {
                accessibilityNodeInfoObtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == i2) {
                accessibilityNodeInfoObtain.addAction(128);
            }
            if (NumberPicker.this.isEnabled()) {
                accessibilityNodeInfoObtain.addAction(16);
            }
            return accessibilityNodeInfoObtain;
        }

        private AccessibilityNodeInfo createAccessibiltyNodeInfoForInputText(int i2, int i3, int i4, int i5) {
            AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = NumberPicker.this.mInputText.createAccessibilityNodeInfo();
            accessibilityNodeInfoCreateAccessibilityNodeInfo.setSource(NumberPicker.this, 2);
            if (this.mAccessibilityFocusedView != 2) {
                accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(64);
            }
            if (this.mAccessibilityFocusedView == 2) {
                accessibilityNodeInfoCreateAccessibilityNodeInfo.addAction(128);
            }
            Rect rect = this.mTempRect;
            rect.set(i2, i3, i4, i5);
            accessibilityNodeInfoCreateAccessibilityNodeInfo.setVisibleToUser(NumberPicker.this.isVisibleToUser(rect));
            accessibilityNodeInfoCreateAccessibilityNodeInfo.setBoundsInParent(rect);
            int[] iArr = this.mTempArray;
            NumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoCreateAccessibilityNodeInfo.setBoundsInScreen(rect);
            return accessibilityNodeInfoCreateAccessibilityNodeInfo;
        }

        private void findAccessibilityNodeInfosByTextInChild(String str, int i2, List<AccessibilityNodeInfo> list) {
            if (i2 == 1) {
                String virtualIncrementButtonText = getVirtualIncrementButtonText();
                if (TextUtils.isEmpty(virtualIncrementButtonText) || !virtualIncrementButtonText.toString().toLowerCase().contains(str)) {
                    return;
                }
                list.add(createAccessibilityNodeInfo(1));
                return;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                String virtualDecrementButtonText = getVirtualDecrementButtonText();
                if (TextUtils.isEmpty(virtualDecrementButtonText) || !virtualDecrementButtonText.toString().toLowerCase().contains(str)) {
                    return;
                }
                list.add(createAccessibilityNodeInfo(3));
                return;
            }
            Editable text = NumberPicker.this.mInputText.getText();
            if (!TextUtils.isEmpty(text) && text.toString().toLowerCase().contains(str)) {
                list.add(createAccessibilityNodeInfo(2));
                return;
            }
            Editable text2 = NumberPicker.this.mInputText.getText();
            if (TextUtils.isEmpty(text2) || !text2.toString().toLowerCase().contains(str)) {
                return;
            }
            list.add(createAccessibilityNodeInfo(2));
        }

        private String getVirtualDecrementButtonText() {
            int wrappedSelectorIndex = NumberPicker.this.mValue - 1;
            if (NumberPicker.this.mWrapSelectorWheel) {
                wrappedSelectorIndex = NumberPicker.this.getWrappedSelectorIndex(wrappedSelectorIndex);
            }
            if (wrappedSelectorIndex >= NumberPicker.this.mMinValue) {
                return NumberPicker.this.mDisplayedValues == null ? NumberPicker.this.formatNumber(wrappedSelectorIndex) : NumberPicker.this.mDisplayedValues[wrappedSelectorIndex - NumberPicker.this.mMinValue];
            }
            return null;
        }

        private String getVirtualIncrementButtonText() {
            int wrappedSelectorIndex = NumberPicker.this.mValue + 1;
            if (NumberPicker.this.mWrapSelectorWheel) {
                wrappedSelectorIndex = NumberPicker.this.getWrappedSelectorIndex(wrappedSelectorIndex);
            }
            if (wrappedSelectorIndex <= NumberPicker.this.mMaxValue) {
                return NumberPicker.this.mDisplayedValues == null ? NumberPicker.this.formatNumber(wrappedSelectorIndex) : NumberPicker.this.mDisplayedValues[wrappedSelectorIndex - NumberPicker.this.mMinValue];
            }
            return null;
        }

        private boolean hasVirtualDecrementButton() {
            return NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() > NumberPicker.this.getMinValue();
        }

        private boolean hasVirtualIncrementButton() {
            return NumberPicker.this.getWrapSelectorWheel() || NumberPicker.this.getValue() < NumberPicker.this.getMaxValue();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void sendAccessibilityEventForVirtualButton(int i2, int i3, String str) {
            if (AccessibilityManager.getInstance(((View) NumberPicker.this).mContext).isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i3);
                accessibilityEventObtain.setClassName(Button.class.getName());
                accessibilityEventObtain.setPackageName(((View) NumberPicker.this).mContext.getPackageName());
                accessibilityEventObtain.getText().add(str);
                accessibilityEventObtain.setEnabled(NumberPicker.this.isEnabled());
                accessibilityEventObtain.setSource(NumberPicker.this, i2);
                NumberPicker numberPicker = NumberPicker.this;
                numberPicker.requestSendAccessibilityEvent(numberPicker, accessibilityEventObtain);
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void sendAccessibilityEventForVirtualText(int i2) {
            if (AccessibilityManager.getInstance(((View) NumberPicker.this).mContext).isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
                NumberPicker.this.mInputText.onInitializeAccessibilityEvent(accessibilityEventObtain);
                NumberPicker.this.mInputText.onPopulateAccessibilityEvent(accessibilityEventObtain);
                accessibilityEventObtain.setSource(NumberPicker.this, 2);
                NumberPicker numberPicker = NumberPicker.this;
                numberPicker.requestSendAccessibilityEvent(numberPicker, accessibilityEventObtain);
            }
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
            if (i2 == -1) {
                return createAccessibilityNodeInfoForNumberPicker(((View) NumberPicker.this).mScrollX, ((View) NumberPicker.this).mScrollY, (((View) NumberPicker.this).mRight - ((View) NumberPicker.this).mLeft) + ((View) NumberPicker.this).mScrollX, (((View) NumberPicker.this).mBottom - ((View) NumberPicker.this).mTop) + ((View) NumberPicker.this).mScrollY);
            }
            if (i2 == 1) {
                return createAccessibilityNodeInfoForVirtualButton(1, getVirtualIncrementButtonText(), ((View) NumberPicker.this).mScrollX, NumberPicker.this.mBottomSelectionDividerBottom - NumberPicker.this.mSelectionDividerHeight, (((View) NumberPicker.this).mRight - ((View) NumberPicker.this).mLeft) + ((View) NumberPicker.this).mScrollX, (((View) NumberPicker.this).mBottom - ((View) NumberPicker.this).mTop) + ((View) NumberPicker.this).mScrollY);
            }
            if (i2 == 2) {
                return createAccessibiltyNodeInfoForInputText(((View) NumberPicker.this).mScrollX, NumberPicker.this.mSelectionDividerHeight + NumberPicker.this.mTopSelectionDividerTop, (((View) NumberPicker.this).mRight - ((View) NumberPicker.this).mLeft) + ((View) NumberPicker.this).mScrollX, NumberPicker.this.mBottomSelectionDividerBottom - NumberPicker.this.mSelectionDividerHeight);
            }
            if (i2 != 3) {
                return super.createAccessibilityNodeInfo(i2);
            }
            return createAccessibilityNodeInfoForVirtualButton(3, getVirtualDecrementButtonText(), ((View) NumberPicker.this).mScrollX, ((View) NumberPicker.this).mScrollY, (((View) NumberPicker.this).mRight - ((View) NumberPicker.this).mLeft) + ((View) NumberPicker.this).mScrollX, NumberPicker.this.mSelectionDividerHeight + NumberPicker.this.mTopSelectionDividerTop);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i2) {
            if (TextUtils.isEmpty(str)) {
                return Collections.emptyList();
            }
            String lowerCase = str.toLowerCase();
            ArrayList arrayList = new ArrayList();
            if (i2 == -1) {
                findAccessibilityNodeInfosByTextInChild(lowerCase, 3, arrayList);
                findAccessibilityNodeInfosByTextInChild(lowerCase, 2, arrayList);
                findAccessibilityNodeInfosByTextInChild(lowerCase, 1, arrayList);
                return arrayList;
            }
            if (i2 != 1 && i2 != 2 && i2 != 3) {
                return super.findAccessibilityNodeInfosByText(str, i2);
            }
            findAccessibilityNodeInfosByTextInChild(lowerCase, i2, arrayList);
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i2, int i3, Bundle bundle) {
            if (i2 != -1) {
                if (i2 == 1) {
                    if (i3 == 16) {
                        if (!NumberPicker.this.isEnabled()) {
                            return false;
                        }
                        NumberPicker.this.changeValueByOne(true);
                        sendAccessibilityEventForVirtualView(i2, 1);
                        return true;
                    }
                    if (i3 == 64) {
                        if (this.mAccessibilityFocusedView == i2) {
                            return false;
                        }
                        this.mAccessibilityFocusedView = i2;
                        sendAccessibilityEventForVirtualView(i2, 32768);
                        NumberPicker numberPicker = NumberPicker.this;
                        numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, ((View) NumberPicker.this).mRight, ((View) NumberPicker.this).mBottom);
                        return true;
                    }
                    if (i3 != 128 || this.mAccessibilityFocusedView != i2) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    sendAccessibilityEventForVirtualView(i2, 65536);
                    NumberPicker numberPicker2 = NumberPicker.this;
                    numberPicker2.invalidate(0, numberPicker2.mBottomSelectionDividerBottom, ((View) NumberPicker.this).mRight, ((View) NumberPicker.this).mBottom);
                    return true;
                }
                if (i2 == 2) {
                    if (i3 == 1) {
                        if (!NumberPicker.this.isEnabled() || NumberPicker.this.mInputText.isFocused()) {
                            return false;
                        }
                        return NumberPicker.this.mInputText.requestFocus();
                    }
                    if (i3 == 2) {
                        if (!NumberPicker.this.isEnabled() || !NumberPicker.this.mInputText.isFocused()) {
                            return false;
                        }
                        NumberPicker.this.mInputText.clearFocus();
                        return true;
                    }
                    if (i3 == 16) {
                        if (!NumberPicker.this.isEnabled()) {
                            return false;
                        }
                        NumberPicker.this.performClick();
                        return true;
                    }
                    if (i3 == 32) {
                        if (!NumberPicker.this.isEnabled()) {
                            return false;
                        }
                        NumberPicker.this.performLongClick();
                        return true;
                    }
                    if (i3 == 64) {
                        if (this.mAccessibilityFocusedView == i2) {
                            return false;
                        }
                        this.mAccessibilityFocusedView = i2;
                        sendAccessibilityEventForVirtualView(i2, 32768);
                        NumberPicker.this.mInputText.invalidate();
                        return true;
                    }
                    if (i3 != 128) {
                        return NumberPicker.this.mInputText.performAccessibilityAction(i3, bundle);
                    }
                    if (this.mAccessibilityFocusedView != i2) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    sendAccessibilityEventForVirtualView(i2, 65536);
                    NumberPicker.this.mInputText.invalidate();
                    return true;
                }
                if (i2 == 3) {
                    if (i3 == 16) {
                        if (!NumberPicker.this.isEnabled()) {
                            return false;
                        }
                        NumberPicker.this.changeValueByOne(i2 == 1);
                        sendAccessibilityEventForVirtualView(i2, 1);
                        return true;
                    }
                    if (i3 == 64) {
                        if (this.mAccessibilityFocusedView == i2) {
                            return false;
                        }
                        this.mAccessibilityFocusedView = i2;
                        sendAccessibilityEventForVirtualView(i2, 32768);
                        NumberPicker numberPicker3 = NumberPicker.this;
                        numberPicker3.invalidate(0, 0, ((View) numberPicker3).mRight, NumberPicker.this.mTopSelectionDividerTop);
                        return true;
                    }
                    if (i3 != 128 || this.mAccessibilityFocusedView != i2) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    sendAccessibilityEventForVirtualView(i2, 65536);
                    NumberPicker numberPicker4 = NumberPicker.this;
                    numberPicker4.invalidate(0, 0, ((View) numberPicker4).mRight, NumberPicker.this.mTopSelectionDividerTop);
                    return true;
                }
            } else {
                if (i3 == 64) {
                    if (this.mAccessibilityFocusedView == i2) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = i2;
                    NumberPicker.this.requestAccessibilityFocus();
                    return true;
                }
                if (i3 == 128) {
                    if (this.mAccessibilityFocusedView != i2) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    NumberPicker.this.clearAccessibilityFocus();
                    return true;
                }
                if (i3 == 4096) {
                    if (!NumberPicker.this.isEnabled() || (!NumberPicker.this.getWrapSelectorWheel() && NumberPicker.this.getValue() >= NumberPicker.this.getMaxValue())) {
                        return false;
                    }
                    NumberPicker.this.changeValueByOne(true);
                    return true;
                }
                if (i3 == 8192) {
                    if (!NumberPicker.this.isEnabled() || (!NumberPicker.this.getWrapSelectorWheel() && NumberPicker.this.getValue() <= NumberPicker.this.getMinValue())) {
                        return false;
                    }
                    NumberPicker.this.changeValueByOne(false);
                    return true;
                }
            }
            return super.performAction(i2, i3, bundle);
        }

        public void sendAccessibilityEventForVirtualView(int i2, int i3) {
            if (i2 == 1) {
                if (hasVirtualIncrementButton()) {
                    sendAccessibilityEventForVirtualButton(i2, i3, getVirtualIncrementButtonText());
                }
            } else if (i2 == 2) {
                sendAccessibilityEventForVirtualText(i3);
            } else if (i2 == 3 && hasVirtualDecrementButton()) {
                sendAccessibilityEventForVirtualButton(i2, i3, getVirtualDecrementButtonText());
            }
        }
    }

    public class BeginSoftInputOnLongPressCommand implements Runnable {
        public BeginSoftInputOnLongPressCommand() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NumberPicker.this.performLongClick();
        }
    }

    public class ChangeCurrentByOneFromLongPressCommand implements Runnable {
        private boolean mIncrement;

        public ChangeCurrentByOneFromLongPressCommand() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStep(boolean z2) {
            this.mIncrement = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            NumberPicker.this.changeValueByOne(this.mIncrement);
            NumberPicker numberPicker = NumberPicker.this;
            numberPicker.postDelayed(this, numberPicker.mLongPressUpdateInterval);
        }
    }

    public static class CustomEditText extends EditText {
        public CustomEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.TextView
        public void onEditorAction(int i2) {
            super.onEditorAction(i2);
            if (i2 == 6) {
                clearFocus();
            }
        }
    }

    public interface Formatter {
        String format(int i2);
    }

    public class InputTextFilter extends NumberKeyListener {
        public InputTextFilter() {
        }

        @Override // android.text.method.NumberKeyListener, android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            if (NumberPicker.this.mSetSelectionCommand != null) {
                NumberPicker.this.mSetSelectionCommand.cancel();
            }
            if (NumberPicker.this.mDisplayedValues == null) {
                CharSequence charSequenceFilter = super.filter(charSequence, i2, i3, spanned, i4, i5);
                if (charSequenceFilter == null) {
                    charSequenceFilter = charSequence.subSequence(i2, i3);
                }
                String str = String.valueOf(spanned.subSequence(0, i4)) + ((Object) charSequenceFilter) + ((Object) spanned.subSequence(i5, spanned.length()));
                if ("".equals(str)) {
                    return str;
                }
                return (NumberPicker.this.getSelectedPos(str) > NumberPicker.this.mMaxValue || str.length() > String.valueOf(NumberPicker.this.mMaxValue).length()) ? "" : charSequenceFilter;
            }
            String strValueOf = String.valueOf(charSequence.subSequence(i2, i3));
            if (TextUtils.isEmpty(strValueOf)) {
                return "";
            }
            String str2 = String.valueOf(spanned.subSequence(0, i4)) + ((Object) strValueOf) + ((Object) spanned.subSequence(i5, spanned.length()));
            String lowerCase = String.valueOf(str2).toLowerCase();
            for (String str3 : NumberPicker.this.mDisplayedValues) {
                if (str3.toLowerCase().startsWith(lowerCase)) {
                    NumberPicker.this.postSetSelectionCommand(str2.length(), str3.length());
                    return str3.subSequence(i4, str3.length());
                }
            }
            return "";
        }

        @Override // android.text.method.NumberKeyListener
        public char[] getAcceptedChars() {
            return NumberPicker.DIGIT_CHARACTERS;
        }

        @Override // android.text.method.KeyListener
        public int getInputType() {
            return 1;
        }
    }

    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ScrollState {
        }

        void onScrollStateChange(NumberPicker numberPicker, int i2);
    }

    public interface OnValueChangeListener {
        void onValueChange(NumberPicker numberPicker, int i2, int i3);
    }

    public class PressedStateHelper implements Runnable {
        public static final int BUTTON_DECREMENT = 2;
        public static final int BUTTON_INCREMENT = 1;
        private final int MODE_PRESS = 1;
        private final int MODE_TAPPED = 2;
        private int mManagedButton;
        private int mMode;

        public PressedStateHelper() {
        }

        public void buttonPressDelayed(int i2) {
            cancel();
            this.mMode = 1;
            this.mManagedButton = i2;
            NumberPicker.this.postDelayed(this, ViewConfiguration.getTapTimeout());
        }

        public void buttonTapped(int i2) {
            cancel();
            this.mMode = 2;
            this.mManagedButton = i2;
            NumberPicker.this.post(this);
        }

        public void cancel() {
            this.mMode = 0;
            this.mManagedButton = 0;
            NumberPicker.this.removeCallbacks(this);
            if (NumberPicker.this.mIncrementVirtualButtonPressed) {
                NumberPicker.this.mIncrementVirtualButtonPressed = false;
                NumberPicker numberPicker = NumberPicker.this;
                numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, ((View) NumberPicker.this).mRight, ((View) NumberPicker.this).mBottom);
            }
            NumberPicker.this.mDecrementVirtualButtonPressed = false;
            if (NumberPicker.this.mDecrementVirtualButtonPressed) {
                NumberPicker numberPicker2 = NumberPicker.this;
                numberPicker2.invalidate(0, 0, ((View) numberPicker2).mRight, NumberPicker.this.mTopSelectionDividerTop);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.mMode;
            if (i2 == 1) {
                int i3 = this.mManagedButton;
                if (i3 == 1) {
                    NumberPicker.this.mIncrementVirtualButtonPressed = true;
                    NumberPicker numberPicker = NumberPicker.this;
                    numberPicker.invalidate(0, numberPicker.mBottomSelectionDividerBottom, ((View) NumberPicker.this).mRight, ((View) NumberPicker.this).mBottom);
                    return;
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    NumberPicker.this.mDecrementVirtualButtonPressed = true;
                    NumberPicker numberPicker2 = NumberPicker.this;
                    numberPicker2.invalidate(0, 0, ((View) numberPicker2).mRight, NumberPicker.this.mTopSelectionDividerTop);
                    return;
                }
            }
            if (i2 != 2) {
                return;
            }
            int i4 = this.mManagedButton;
            if (i4 == 1) {
                if (!NumberPicker.this.mIncrementVirtualButtonPressed) {
                    NumberPicker.this.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                }
                NumberPicker numberPicker3 = NumberPicker.this;
                numberPicker3.mIncrementVirtualButtonPressed = !numberPicker3.mIncrementVirtualButtonPressed;
                NumberPicker numberPicker4 = NumberPicker.this;
                numberPicker4.invalidate(0, numberPicker4.mBottomSelectionDividerBottom, ((View) NumberPicker.this).mRight, ((View) NumberPicker.this).mBottom);
                return;
            }
            if (i4 != 2) {
                return;
            }
            if (!NumberPicker.this.mDecrementVirtualButtonPressed) {
                NumberPicker.this.postDelayed(this, ViewConfiguration.getPressedStateDuration());
            }
            NumberPicker numberPicker5 = NumberPicker.this;
            numberPicker5.mDecrementVirtualButtonPressed = !numberPicker5.mDecrementVirtualButtonPressed;
            NumberPicker numberPicker6 = NumberPicker.this;
            numberPicker6.invalidate(0, 0, ((View) numberPicker6).mRight, NumberPicker.this.mTopSelectionDividerTop);
        }
    }

    public static class SetSelectionCommand implements Runnable {
        private final EditText mInputText;
        private boolean mPosted;
        private int mSelectionEnd;
        private int mSelectionStart;

        public SetSelectionCommand(EditText editText) {
            this.mInputText = editText;
        }

        public void cancel() {
            if (this.mPosted) {
                this.mInputText.removeCallbacks(this);
                this.mPosted = false;
            }
        }

        public void post(int i2, int i3) {
            this.mSelectionStart = i2;
            this.mSelectionEnd = i3;
            if (this.mPosted) {
                return;
            }
            this.mInputText.post(this);
            this.mPosted = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mPosted = false;
            this.mInputText.setSelection(this.mSelectionStart, this.mSelectionEnd);
        }
    }

    public static class TwoDigitFormatter implements Formatter {
        java.util.Formatter mFmt;
        char mZeroDigit;
        final StringBuilder mBuilder = new StringBuilder();
        final Object[] mArgs = new Object[1];

        public TwoDigitFormatter() {
            init(Locale.getDefault());
        }

        private java.util.Formatter createFormatter(Locale locale) {
            return new java.util.Formatter(this.mBuilder, locale);
        }

        private static char getZeroDigit(Locale locale) {
            return LocaleData.get(locale).zeroDigit;
        }

        private void init(Locale locale) {
            this.mFmt = createFormatter(locale);
            this.mZeroDigit = getZeroDigit(locale);
        }

        @Override // android.widget.NumberPicker.Formatter
        public String format(int i2) {
            Locale locale = Locale.getDefault();
            if (this.mZeroDigit != getZeroDigit(locale)) {
                init(locale);
            }
            this.mArgs[0] = Integer.valueOf(i2);
            StringBuilder sb = this.mBuilder;
            sb.delete(0, sb.length());
            this.mFmt.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, this.mArgs);
            return this.mFmt.toString();
        }
    }

    public NumberPicker(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeValueByOne(boolean z2) {
        if (!this.mHasSelectorWheel) {
            if (z2) {
                setValueInternal(this.mValue + 1, true);
                return;
            } else {
                setValueInternal(this.mValue - 1, true);
                return;
            }
        }
        hideSoftInput();
        if (!moveToFinalScrollerPosition(this.mFlingScroller)) {
            moveToFinalScrollerPosition(this.mAdjustScroller);
        }
        this.mPreviousScrollerY = 0;
        if (z2) {
            this.mFlingScroller.startScroll(0, 0, 0, -this.mSelectorElementHeight, 300);
        } else {
            this.mFlingScroller.startScroll(0, 0, 0, this.mSelectorElementHeight, 300);
        }
        invalidate();
    }

    private void decrementSelectorIndices(int[] iArr) {
        for (int length = iArr.length - 1; length > 0; length--) {
            iArr[length] = iArr[length - 1];
        }
        int i2 = iArr[1] - 1;
        if (this.mWrapSelectorWheel && i2 < this.mMinValue) {
            i2 = this.mMaxValue;
        }
        iArr[0] = i2;
        ensureCachedScrollSelectorValue(i2);
    }

    private void ensureCachedScrollSelectorValue(int i2) {
        String number;
        SparseArray<String> sparseArray = this.mSelectorIndexToStringCache;
        if (sparseArray.get(i2) != null) {
            return;
        }
        int i3 = this.mMinValue;
        if (i2 < i3 || i2 > this.mMaxValue) {
            number = "";
        } else {
            String[] strArr = this.mDisplayedValues;
            number = strArr != null ? strArr[i2 - i3] : formatNumber(i2);
        }
        sparseArray.put(i2, number);
    }

    private boolean ensureScrollWheelAdjusted() {
        int i2 = this.mInitialScrollOffset - this.mCurrentScrollOffset;
        if (i2 == 0) {
            return false;
        }
        this.mPreviousScrollerY = 0;
        int iAbs = Math.abs(i2);
        int i3 = this.mSelectorElementHeight;
        if (iAbs > i3 / 2) {
            if (i2 > 0) {
                i3 = -i3;
            }
            i2 += i3;
        }
        this.mAdjustScroller.startScroll(0, 0, 0, i2, 800);
        invalidate();
        return true;
    }

    private void fling(int i2) {
        this.mPreviousScrollerY = 0;
        if (i2 > 0) {
            this.mFlingScroller.fling(0, 0, 0, i2, 0, 0, 0, Integer.MAX_VALUE);
        } else {
            this.mFlingScroller.fling(0, Integer.MAX_VALUE, 0, i2, 0, 0, 0, Integer.MAX_VALUE);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatNumber(int i2) {
        Formatter formatter = this.mFormatter;
        return formatter != null ? formatter.format(i2) : formatNumberWithLocale(i2);
    }

    private static String formatNumberWithLocale(int i2) {
        return String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSelectedPos(String str) {
        try {
            if (this.mDisplayedValues == null) {
                return Integer.parseInt(str);
            }
            for (int i2 = 0; i2 < this.mDisplayedValues.length; i2++) {
                str = str.toLowerCase();
                if (this.mDisplayedValues[i2].toLowerCase().startsWith(str)) {
                    return this.mMinValue + i2;
                }
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return this.mMinValue;
        }
    }

    public static final Formatter getTwoDigitFormatter() {
        return sTwoDigitFormatter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWrappedSelectorIndex(int i2) {
        int i3 = this.mMaxValue;
        if (i2 > i3) {
            int i4 = this.mMinValue;
            return (((i2 - i3) % (i3 - i4)) + i4) - 1;
        }
        int i5 = this.mMinValue;
        return i2 < i5 ? (i3 - ((i5 - i2) % (i3 - i5))) + 1 : i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSoftInput() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null && inputMethodManagerPeekInstance.isActive(this.mInputText)) {
            inputMethodManagerPeekInstance.hideSoftInputFromWindow(getWindowToken(), 0);
        }
        if (this.mHasSelectorWheel) {
            this.mInputText.setVisibility(4);
        }
    }

    private void incrementSelectorIndices(int[] iArr) {
        int i2 = 0;
        while (i2 < iArr.length - 1) {
            int i3 = i2 + 1;
            iArr[i2] = iArr[i3];
            i2 = i3;
        }
        int i4 = iArr[iArr.length - 2] + 1;
        if (this.mWrapSelectorWheel && i4 > this.mMaxValue) {
            i4 = this.mMinValue;
        }
        iArr[iArr.length - 1] = i4;
        ensureCachedScrollSelectorValue(i4);
    }

    private void initializeFadingEdges() {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(((this.mBottom - this.mTop) - this.mTextSize) / 2);
    }

    private void initializeSelectorWheel() {
        initializeSelectorWheelIndices();
        int[] iArr = this.mSelectorIndices;
        int length = iArr.length;
        int i2 = this.mTextSize;
        int length2 = (int) ((((this.mBottom - this.mTop) - (length * i2)) / iArr.length) + 0.5f);
        this.mSelectorTextGapHeight = length2;
        this.mSelectorElementHeight = i2 + length2;
        int top = (this.mInputText.getTop() + this.mInputText.getBaseline()) - (this.mSelectorElementHeight * 1);
        this.mInitialScrollOffset = top;
        this.mCurrentScrollOffset = top;
        updateInputTextView();
    }

    private void initializeSelectorWheelIndices() {
        this.mSelectorIndexToStringCache.clear();
        int[] iArr = this.mSelectorIndices;
        int value = getValue();
        for (int i2 = 0; i2 < this.mSelectorIndices.length; i2++) {
            int wrappedSelectorIndex = (i2 - 1) + value;
            if (this.mWrapSelectorWheel) {
                wrappedSelectorIndex = getWrappedSelectorIndex(wrappedSelectorIndex);
            }
            iArr[i2] = wrappedSelectorIndex;
            ensureCachedScrollSelectorValue(wrappedSelectorIndex);
        }
    }

    private int makeMeasureSpec(int i2, int i3) {
        if (i3 == -1) {
            return i2;
        }
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (mode == 0) {
            return View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        if (mode == 1073741824) {
            return i2;
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown measure mode: ", mode));
    }

    private boolean moveToFinalScrollerPosition(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i2 = this.mInitialScrollOffset - ((this.mCurrentScrollOffset + finalY) % this.mSelectorElementHeight);
        if (i2 == 0) {
            return false;
        }
        int iAbs = Math.abs(i2);
        int i3 = this.mSelectorElementHeight;
        if (iAbs > i3 / 2) {
            i2 = i2 > 0 ? i2 - i3 : i2 + i3;
        }
        scrollBy(0, finalY + i2);
        return true;
    }

    private void notifyChange(int i2, int i3) {
        OnValueChangeListener onValueChangeListener = this.mOnValueChangeListener;
        if (onValueChangeListener != null) {
            onValueChangeListener.onValueChange(this, i2, this.mValue);
        }
    }

    private void onScrollStateChange(int i2) {
        if (this.mScrollState == i2) {
            return;
        }
        this.mScrollState = i2;
        OnScrollListener onScrollListener = this.mOnScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChange(this, i2);
        }
    }

    private void onScrollerFinished(Scroller scroller) {
        if (scroller == this.mFlingScroller) {
            ensureScrollWheelAdjusted();
            updateInputTextView();
            onScrollStateChange(0);
        } else if (this.mScrollState != 1) {
            updateInputTextView();
        }
    }

    private void postBeginSoftInputOnLongPressCommand() {
        BeginSoftInputOnLongPressCommand beginSoftInputOnLongPressCommand = this.mBeginSoftInputOnLongPressCommand;
        if (beginSoftInputOnLongPressCommand == null) {
            this.mBeginSoftInputOnLongPressCommand = new BeginSoftInputOnLongPressCommand();
        } else {
            removeCallbacks(beginSoftInputOnLongPressCommand);
        }
        postDelayed(this.mBeginSoftInputOnLongPressCommand, ViewConfiguration.getLongPressTimeout());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postChangeCurrentByOneFromLongPress(boolean z2, long j2) {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand == null) {
            this.mChangeCurrentByOneFromLongPressCommand = new ChangeCurrentByOneFromLongPressCommand();
        } else {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
        this.mChangeCurrentByOneFromLongPressCommand.setStep(z2);
        postDelayed(this.mChangeCurrentByOneFromLongPressCommand, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postSetSelectionCommand(int i2, int i3) {
        if (this.mSetSelectionCommand == null) {
            this.mSetSelectionCommand = new SetSelectionCommand(this.mInputText);
        }
        this.mSetSelectionCommand.post(i2, i3);
    }

    private void removeAllCallbacks() {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
        SetSelectionCommand setSelectionCommand = this.mSetSelectionCommand;
        if (setSelectionCommand != null) {
            setSelectionCommand.cancel();
        }
        BeginSoftInputOnLongPressCommand beginSoftInputOnLongPressCommand = this.mBeginSoftInputOnLongPressCommand;
        if (beginSoftInputOnLongPressCommand != null) {
            removeCallbacks(beginSoftInputOnLongPressCommand);
        }
        this.mPressedStateHelper.cancel();
    }

    private void removeBeginSoftInputCommand() {
        BeginSoftInputOnLongPressCommand beginSoftInputOnLongPressCommand = this.mBeginSoftInputOnLongPressCommand;
        if (beginSoftInputOnLongPressCommand != null) {
            removeCallbacks(beginSoftInputOnLongPressCommand);
        }
    }

    private void removeChangeCurrentByOneFromLongPress() {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
    }

    private int resolveSizeAndStateRespectingMinSize(int i2, int i3, int i4) {
        return i2 != -1 ? View.resolveSizeAndState(Math.max(i2, i3), i4, 0) : i3;
    }

    private void setValueInternal(int i2, boolean z2) {
        if (this.mValue == i2) {
            return;
        }
        int wrappedSelectorIndex = this.mWrapSelectorWheel ? getWrappedSelectorIndex(i2) : Math.min(Math.max(i2, this.mMinValue), this.mMaxValue);
        int i3 = this.mValue;
        this.mValue = wrappedSelectorIndex;
        if (this.mScrollState != 2) {
            updateInputTextView();
        }
        if (z2) {
            notifyChange(i3, wrappedSelectorIndex);
        }
        initializeSelectorWheelIndices();
        invalidate();
    }

    private void showSoftInput() {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            if (this.mHasSelectorWheel) {
                this.mInputText.setVisibility(0);
            }
            this.mInputText.requestFocus();
            inputMethodManagerPeekInstance.showSoftInput(this.mInputText, 0);
        }
    }

    private void tryComputeMaxWidth() {
        int i2;
        if (this.mComputeMaxWidth) {
            String[] strArr = this.mDisplayedValues;
            int i3 = 0;
            if (strArr == null) {
                float f2 = 0.0f;
                for (int i4 = 0; i4 <= 9; i4++) {
                    float fMeasureText = this.mSelectorWheelPaint.measureText(formatNumberWithLocale(i4));
                    if (fMeasureText > f2) {
                        f2 = fMeasureText;
                    }
                }
                for (int i5 = this.mMaxValue; i5 > 0; i5 /= 10) {
                    i3++;
                }
                i2 = (int) (i3 * f2);
            } else {
                int length = strArr.length;
                int i6 = 0;
                while (i3 < length) {
                    float fMeasureText2 = this.mSelectorWheelPaint.measureText(this.mDisplayedValues[i3]);
                    if (fMeasureText2 > i6) {
                        i6 = (int) fMeasureText2;
                    }
                    i3++;
                }
                i2 = i6;
            }
            int paddingRight = this.mInputText.getPaddingRight() + this.mInputText.getPaddingLeft() + i2;
            if (this.mMaxWidth != paddingRight) {
                int i7 = this.mMinWidth;
                if (paddingRight > i7) {
                    this.mMaxWidth = paddingRight;
                } else {
                    this.mMaxWidth = i7;
                }
                invalidate();
            }
        }
    }

    private boolean updateInputTextView() {
        String[] strArr = this.mDisplayedValues;
        String number = strArr == null ? formatNumber(this.mValue) : strArr[this.mValue - this.mMinValue];
        if (!TextUtils.isEmpty(number)) {
            Editable text = this.mInputText.getText();
            if (!number.equals(text.toString())) {
                this.mInputText.setText(number);
                if (!AccessibilityManager.getInstance(this.mContext).isEnabled()) {
                    return true;
                }
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16);
                this.mInputText.onInitializeAccessibilityEvent(accessibilityEventObtain);
                this.mInputText.onPopulateAccessibilityEvent(accessibilityEventObtain);
                accessibilityEventObtain.setFromIndex(0);
                accessibilityEventObtain.setRemovedCount(text.length());
                accessibilityEventObtain.setAddedCount(number.length());
                accessibilityEventObtain.setBeforeText(text);
                accessibilityEventObtain.setSource(this, 2);
                requestSendAccessibilityEvent(this, accessibilityEventObtain);
                return true;
            }
        }
        return false;
    }

    private void updateWrapSelectorWheel() {
        this.mWrapSelectorWheel = (this.mMaxValue - this.mMinValue >= this.mSelectorIndices.length) && this.mWrapSelectorWheelPreferred;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validateInputTextView(View view) {
        String strValueOf = String.valueOf(((TextView) view).getText());
        if (TextUtils.isEmpty(strValueOf)) {
            updateInputTextView();
        } else {
            setValueInternal(getSelectedPos(strValueOf), true);
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        Scroller scroller = this.mFlingScroller;
        if (scroller.isFinished()) {
            scroller = this.mAdjustScroller;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (this.mPreviousScrollerY == 0) {
            this.mPreviousScrollerY = scroller.getStartY();
        }
        scrollBy(0, currY - this.mPreviousScrollerY);
        this.mPreviousScrollerY = currY;
        if (scroller.isFinished()) {
            onScrollerFinished(scroller);
        } else {
            invalidate();
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return getHeight();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return this.mCurrentScrollOffset;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        return ((this.mMaxValue - this.mMinValue) + 1) * this.mSelectorElementHeight;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i2;
        if (!this.mHasSelectorWheel) {
            return super.dispatchHoverEvent(motionEvent);
        }
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            return false;
        }
        int y2 = (int) motionEvent.getY();
        if (y2 < this.mTopSelectionDividerTop) {
            i2 = 3;
        } else {
            i2 = y2 > this.mBottomSelectionDividerBottom ? 1 : 2;
        }
        int actionMasked = motionEvent.getActionMasked();
        AccessibilityNodeProviderImpl accessibilityNodeProviderImpl = (AccessibilityNodeProviderImpl) getAccessibilityNodeProvider();
        if (actionMasked == 7) {
            int i3 = this.mLastHoveredChildVirtualViewId;
            if (i3 == i2 || i3 == -1) {
                return false;
            }
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i3, 256);
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i2, 128);
            this.mLastHoveredChildVirtualViewId = i2;
            accessibilityNodeProviderImpl.performAction(i2, 64, null);
            return false;
        }
        if (actionMasked == 9) {
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i2, 128);
            this.mLastHoveredChildVirtualViewId = i2;
            accessibilityNodeProviderImpl.performAction(i2, 64, null);
            return false;
        }
        if (actionMasked != 10) {
            return false;
        }
        accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i2, 256);
        this.mLastHoveredChildVirtualViewId = -1;
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19 || keyCode == 20) {
            if (this.mHasSelectorWheel) {
                int action = keyEvent.getAction();
                if (action == 0) {
                    if (!this.mWrapSelectorWheel) {
                        if (keyCode == 20) {
                        }
                    }
                    requestFocus();
                    this.mLastHandledDownDpadKeyCode = keyCode;
                    removeAllCallbacks();
                    if (this.mFlingScroller.isFinished()) {
                        changeValueByOne(keyCode == 20);
                    }
                    return true;
                }
                if (action == 1 && this.mLastHandledDownDpadKeyCode == keyCode) {
                    this.mLastHandledDownDpadKeyCode = -1;
                    return true;
                }
            }
        } else if (keyCode == 23 || keyCode == 66) {
            removeAllCallbacks();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            removeAllCallbacks();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            removeAllCallbacks();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mSelectionDivider;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (!this.mHasSelectorWheel) {
            return super.getAccessibilityNodeProvider();
        }
        if (this.mAccessibilityNodeProvider == null) {
            this.mAccessibilityNodeProvider = new AccessibilityNodeProviderImpl();
        }
        return this.mAccessibilityNodeProvider;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        return TOP_AND_BOTTOM_FADING_EDGE_STRENGTH;
    }

    public CharSequence getDisplayedValueForCurrentSelection() {
        return this.mSelectorIndexToStringCache.get(getValue());
    }

    public String[] getDisplayedValues() {
        return this.mDisplayedValues;
    }

    public int getMaxValue() {
        return this.mMaxValue;
    }

    public int getMinValue() {
        return this.mMinValue;
    }

    @Override // android.view.View
    public int getSolidColor() {
        return this.mSolidColor;
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        return TOP_AND_BOTTOM_FADING_EDGE_STRENGTH;
    }

    public int getValue() {
        return this.mValue;
    }

    public boolean getWrapSelectorWheel() {
        return this.mWrapSelectorWheel;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mSelectionDivider;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeAllCallbacks();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable;
        Drawable drawable2;
        if (!this.mHasSelectorWheel) {
            super.onDraw(canvas);
            return;
        }
        boolean zHasFocus = this.mHideWheelUntilFocused ? hasFocus() : true;
        float f2 = (this.mRight - this.mLeft) / 2;
        float f3 = this.mCurrentScrollOffset;
        if (zHasFocus && (drawable2 = this.mVirtualButtonPressedDrawable) != null && this.mScrollState == 0) {
            if (this.mDecrementVirtualButtonPressed) {
                drawable2.setState(View.PRESSED_STATE_SET);
                this.mVirtualButtonPressedDrawable.setBounds(0, 0, this.mRight, this.mTopSelectionDividerTop);
                this.mVirtualButtonPressedDrawable.draw(canvas);
            }
            if (this.mIncrementVirtualButtonPressed) {
                this.mVirtualButtonPressedDrawable.setState(View.PRESSED_STATE_SET);
                this.mVirtualButtonPressedDrawable.setBounds(0, this.mBottomSelectionDividerBottom, this.mRight, this.mBottom);
                this.mVirtualButtonPressedDrawable.draw(canvas);
            }
        }
        int[] iArr = this.mSelectorIndices;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            String str = this.mSelectorIndexToStringCache.get(iArr[i2]);
            if ((zHasFocus && i2 != 1) || (i2 == 1 && this.mInputText.getVisibility() != 0)) {
                canvas.drawText(str, f2, f3, this.mSelectorWheelPaint);
            }
            f3 += this.mSelectorElementHeight;
        }
        if (!zHasFocus || (drawable = this.mSelectionDivider) == null) {
            return;
        }
        int i3 = this.mTopSelectionDividerTop;
        drawable.setBounds(0, i3, this.mRight, this.mSelectionDividerHeight + i3);
        this.mSelectionDivider.draw(canvas);
        int i4 = this.mBottomSelectionDividerBottom;
        this.mSelectionDivider.setBounds(0, i4 - this.mSelectionDividerHeight, this.mRight, i4);
        this.mSelectionDivider.draw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setClassName(NumberPicker.class.getName());
        accessibilityEvent.setScrollable(true);
        accessibilityEvent.setScrollY((this.mMinValue + this.mValue) * this.mSelectorElementHeight);
        accessibilityEvent.setMaxScrollY((this.mMaxValue - this.mMinValue) * this.mSelectorElementHeight);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.mHasSelectorWheel || !isEnabled() || motionEvent.getActionMasked() != 0) {
            return false;
        }
        removeAllCallbacks();
        hideSoftInput();
        float y2 = motionEvent.getY();
        this.mLastDownEventY = y2;
        this.mLastDownOrMoveEventY = y2;
        this.mLastDownEventTime = motionEvent.getEventTime();
        this.mIgnoreMoveEvents = false;
        this.mPerformClickOnTap = false;
        float f2 = this.mLastDownEventY;
        if (f2 < this.mTopSelectionDividerTop) {
            if (this.mScrollState == 0) {
                this.mPressedStateHelper.buttonPressDelayed(2);
            }
        } else if (f2 > this.mBottomSelectionDividerBottom && this.mScrollState == 0) {
            this.mPressedStateHelper.buttonPressDelayed(1);
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!this.mFlingScroller.isFinished()) {
            this.mFlingScroller.forceFinished(true);
            this.mAdjustScroller.forceFinished(true);
            onScrollStateChange(0);
        } else if (this.mAdjustScroller.isFinished()) {
            float f3 = this.mLastDownEventY;
            if (f3 < this.mTopSelectionDividerTop) {
                postChangeCurrentByOneFromLongPress(false, ViewConfiguration.getLongPressTimeout());
            } else if (f3 > this.mBottomSelectionDividerBottom) {
                postChangeCurrentByOneFromLongPress(true, ViewConfiguration.getLongPressTimeout());
            } else {
                this.mPerformClickOnTap = true;
                postBeginSoftInputOnLongPressCommand();
            }
        } else {
            this.mFlingScroller.forceFinished(true);
            this.mAdjustScroller.forceFinished(true);
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        if (!this.mHasSelectorWheel) {
            super.onLayout(z2, i2, i3, i4, i5);
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int measuredWidth2 = this.mInputText.getMeasuredWidth();
        int measuredHeight2 = this.mInputText.getMeasuredHeight();
        int i6 = (measuredWidth - measuredWidth2) / 2;
        int i7 = (measuredHeight - measuredHeight2) / 2;
        this.mInputText.layout(i6, i7, measuredWidth2 + i6, measuredHeight2 + i7);
        if (z2) {
            initializeSelectorWheel();
            initializeFadingEdges();
            int height = getHeight();
            int i8 = this.mSelectionDividersDistance;
            int i9 = this.mSelectionDividerHeight;
            int i10 = ((height - i8) / 2) - i9;
            this.mTopSelectionDividerTop = i10;
            this.mBottomSelectionDividerBottom = (i9 * 2) + i10 + i8;
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        if (!this.mHasSelectorWheel) {
            super.onMeasure(i2, i3);
        } else {
            super.onMeasure(makeMeasureSpec(i2, this.mMaxWidth), makeMeasureSpec(i3, this.mMaxHeight));
            setMeasuredDimension(resolveSizeAndStateRespectingMinSize(this.mMinWidth, getMeasuredWidth(), i2), resolveSizeAndStateRespectingMinSize(this.mMinHeight, getMeasuredHeight(), i3));
        }
    }

    @Override // android.view.View
    public void onResolveDrawables(int i2) {
        super.onResolveDrawables(i2);
        Drawable drawable = this.mSelectionDivider;
        if (drawable != null) {
            drawable.setLayoutDirection(i2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !this.mHasSelectorWheel) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            removeBeginSoftInputCommand();
            removeChangeCurrentByOneFromLongPress();
            this.mPressedStateHelper.cancel();
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
            int yVelocity = (int) velocityTracker.getYVelocity();
            if (Math.abs(yVelocity) > this.mMinimumFlingVelocity) {
                fling(yVelocity);
                onScrollStateChange(2);
            } else {
                int y2 = (int) motionEvent.getY();
                int iAbs = (int) Math.abs(y2 - this.mLastDownEventY);
                long eventTime = motionEvent.getEventTime() - this.mLastDownEventTime;
                if (iAbs > this.mTouchSlop || eventTime >= ViewConfiguration.getTapTimeout()) {
                    ensureScrollWheelAdjusted();
                } else if (this.mPerformClickOnTap) {
                    this.mPerformClickOnTap = false;
                    performClick();
                } else {
                    int i2 = (y2 / this.mSelectorElementHeight) - 1;
                    if (i2 > 0) {
                        changeValueByOne(true);
                        this.mPressedStateHelper.buttonTapped(1);
                    } else if (i2 < 0) {
                        changeValueByOne(false);
                        this.mPressedStateHelper.buttonTapped(2);
                    }
                }
                onScrollStateChange(0);
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        } else if (actionMasked == 2 && !this.mIgnoreMoveEvents) {
            float y3 = motionEvent.getY();
            if (this.mScrollState == 1) {
                scrollBy(0, (int) (y3 - this.mLastDownOrMoveEventY));
                invalidate();
            } else if (((int) Math.abs(y3 - this.mLastDownEventY)) > this.mTouchSlop) {
                removeAllCallbacks();
                onScrollStateChange(1);
            }
            this.mLastDownOrMoveEventY = y3;
        }
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (!this.mHasSelectorWheel) {
            return super.performClick();
        }
        if (super.performClick()) {
            return true;
        }
        showSoftInput();
        return true;
    }

    @Override // android.view.View
    public boolean performLongClick() {
        if (!this.mHasSelectorWheel) {
            return super.performLongClick();
        }
        if (!super.performLongClick()) {
            showSoftInput();
            this.mIgnoreMoveEvents = true;
        }
        return true;
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        int i4;
        int[] iArr = this.mSelectorIndices;
        int i5 = this.mCurrentScrollOffset;
        boolean z2 = this.mWrapSelectorWheel;
        if (!z2 && i3 > 0 && iArr[1] <= this.mMinValue) {
            this.mCurrentScrollOffset = this.mInitialScrollOffset;
            return;
        }
        if (!z2 && i3 < 0 && iArr[1] >= this.mMaxValue) {
            this.mCurrentScrollOffset = this.mInitialScrollOffset;
            return;
        }
        this.mCurrentScrollOffset = i3 + i5;
        while (true) {
            int i6 = this.mCurrentScrollOffset;
            if (i6 - this.mInitialScrollOffset <= this.mSelectorTextGapHeight) {
                break;
            }
            this.mCurrentScrollOffset = i6 - this.mSelectorElementHeight;
            decrementSelectorIndices(iArr);
            setValueInternal(iArr[1], true);
            if (!this.mWrapSelectorWheel && iArr[1] <= this.mMinValue) {
                this.mCurrentScrollOffset = this.mInitialScrollOffset;
            }
        }
        while (true) {
            i4 = this.mCurrentScrollOffset;
            if (i4 - this.mInitialScrollOffset >= (-this.mSelectorTextGapHeight)) {
                break;
            }
            this.mCurrentScrollOffset = i4 + this.mSelectorElementHeight;
            incrementSelectorIndices(iArr);
            setValueInternal(iArr[1], true);
            if (!this.mWrapSelectorWheel && iArr[1] >= this.mMaxValue) {
                this.mCurrentScrollOffset = this.mInitialScrollOffset;
            }
        }
        if (i5 != i4) {
            onScrollChanged(0, i4, 0, i5);
        }
    }

    public void setDisplayedValues(String[] strArr) {
        if (this.mDisplayedValues == strArr) {
            return;
        }
        this.mDisplayedValues = strArr;
        if (strArr != null) {
            this.mInputText.setRawInputType(ConnectivityManager.CALLBACK_PRECHECK);
        } else {
            this.mInputText.setRawInputType(2);
        }
        updateInputTextView();
        initializeSelectorWheelIndices();
        tryComputeMaxWidth();
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        if (!this.mHasSelectorWheel) {
            this.mIncrementButton.setEnabled(z2);
        }
        if (!this.mHasSelectorWheel) {
            this.mDecrementButton.setEnabled(z2);
        }
        this.mInputText.setEnabled(z2);
    }

    public void setFormatter(Formatter formatter) {
        if (formatter == this.mFormatter) {
            return;
        }
        this.mFormatter = formatter;
        initializeSelectorWheelIndices();
        updateInputTextView();
    }

    public void setMaxValue(int i2) {
        if (this.mMaxValue == i2) {
            return;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
        this.mMaxValue = i2;
        if (i2 < this.mValue) {
            this.mValue = i2;
        }
        updateWrapSelectorWheel();
        initializeSelectorWheelIndices();
        updateInputTextView();
        tryComputeMaxWidth();
        invalidate();
    }

    public void setMinValue(int i2) {
        if (this.mMinValue == i2) {
            return;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("minValue must be >= 0");
        }
        this.mMinValue = i2;
        if (i2 > this.mValue) {
            this.mValue = i2;
        }
        updateWrapSelectorWheel();
        initializeSelectorWheelIndices();
        updateInputTextView();
        tryComputeMaxWidth();
        invalidate();
    }

    public void setOnLongPressUpdateInterval(long j2) {
        this.mLongPressUpdateInterval = j2;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mOnScrollListener = onScrollListener;
    }

    public void setOnValueChangedListener(OnValueChangeListener onValueChangeListener) {
        this.mOnValueChangeListener = onValueChangeListener;
    }

    public void setValue(int i2) {
        setValueInternal(i2, false);
    }

    public void setWrapSelectorWheel(boolean z2) {
        this.mWrapSelectorWheelPreferred = z2;
        updateWrapSelectorWheel();
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.widget.NumberPicker.SavedState.1
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
        private final int mValue;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mValue = parcel.readInt();
        }

        public int getValue() {
            return this.mValue;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.mValue);
        }

        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.mValue = i2;
        }
    }

    public NumberPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16844068);
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mWrapSelectorWheelPreferred = true;
        this.mLongPressUpdateInterval = DEFAULT_LONG_PRESS_UPDATE_INTERVAL;
        this.mSelectorIndexToStringCache = new SparseArray<>();
        this.mSelectorIndices = new int[3];
        this.mInitialScrollOffset = Integer.MIN_VALUE;
        this.mScrollState = 0;
        this.mLastHandledDownDpadKeyCode = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NumberPicker, i2, i3);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(2, 17367199);
        boolean z2 = resourceId != 17367199;
        this.mHasSelectorWheel = z2;
        this.mHideWheelUntilFocused = typedArrayObtainStyledAttributes.getBoolean(1, false);
        this.mSolidColor = typedArrayObtainStyledAttributes.getColor(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(7);
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
        }
        this.mSelectionDivider = drawable;
        this.mSelectionDividerHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics()));
        this.mSelectionDividersDistance = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, (int) TypedValue.applyDimension(1, 48.0f, getResources().getDisplayMetrics()));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, -1);
        this.mMinHeight = dimensionPixelSize;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1);
        this.mMaxHeight = dimensionPixelSize2;
        if (dimensionPixelSize != -1 && dimensionPixelSize2 != -1 && dimensionPixelSize > dimensionPixelSize2) {
            throw new IllegalArgumentException("minHeight > maxHeight");
        }
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, -1);
        this.mMinWidth = dimensionPixelSize3;
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, -1);
        this.mMaxWidth = dimensionPixelSize4;
        if (dimensionPixelSize3 != -1 && dimensionPixelSize4 != -1 && dimensionPixelSize3 > dimensionPixelSize4) {
            throw new IllegalArgumentException("minWidth > maxWidth");
        }
        this.mComputeMaxWidth = dimensionPixelSize4 == -1;
        this.mVirtualButtonPressedDrawable = typedArrayObtainStyledAttributes.getDrawable(10);
        typedArrayObtainStyledAttributes.recycle();
        this.mPressedStateHelper = new PressedStateHelper();
        setWillNotDraw(!z2);
        ((LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE)).inflate(resourceId, (ViewGroup) this, true);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: android.widget.NumberPicker.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NumberPicker.this.hideSoftInput();
                NumberPicker.this.mInputText.clearFocus();
                if (view.getId() == 16908962) {
                    NumberPicker.this.changeValueByOne(true);
                } else {
                    NumberPicker.this.changeValueByOne(false);
                }
            }
        };
        View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: android.widget.NumberPicker.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                NumberPicker.this.hideSoftInput();
                NumberPicker.this.mInputText.clearFocus();
                if (view.getId() == 16908962) {
                    NumberPicker.this.postChangeCurrentByOneFromLongPress(true, 0L);
                } else {
                    NumberPicker.this.postChangeCurrentByOneFromLongPress(false, 0L);
                }
                return true;
            }
        };
        if (!z2) {
            ImageButton imageButton = (ImageButton) findViewById(R.id.increment);
            this.mIncrementButton = imageButton;
            imageButton.setOnClickListener(onClickListener);
            imageButton.setOnLongClickListener(onLongClickListener);
        } else {
            this.mIncrementButton = null;
        }
        if (!z2) {
            ImageButton imageButton2 = (ImageButton) findViewById(R.id.decrement);
            this.mDecrementButton = imageButton2;
            imageButton2.setOnClickListener(onClickListener);
            imageButton2.setOnLongClickListener(onLongClickListener);
        } else {
            this.mDecrementButton = null;
        }
        EditText editText = (EditText) findViewById(R.id.numberpicker_input);
        this.mInputText = editText;
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: android.widget.NumberPicker.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z3) {
                if (z3) {
                    NumberPicker.this.mInputText.selectAll();
                } else {
                    NumberPicker.this.mInputText.setSelection(0, 0);
                    NumberPicker.this.validateInputTextView(view);
                }
            }
        });
        editText.setFilters(new InputFilter[]{new InputTextFilter()});
        editText.setAccessibilityLiveRegion(1);
        editText.setRawInputType(2);
        editText.setImeOptions(6);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity() / 8;
        int textSize = (int) editText.getTextSize();
        this.mTextSize = textSize;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTextSize(textSize);
        paint.setTypeface(editText.getTypeface());
        paint.setColor(editText.getTextColors().getColorForState(View.ENABLED_STATE_SET, -1));
        this.mSelectorWheelPaint = paint;
        this.mFlingScroller = new Scroller(getContext(), null, true);
        this.mAdjustScroller = new Scroller(getContext(), new DecelerateInterpolator(2.5f));
        updateInputTextView();
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        if (getFocusable() == 16) {
            setFocusable(1);
            setFocusableInTouchMode(true);
        }
    }
}
