package android.view.accessibility;

import android.accessibilityservice.c;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.AccessibilityClickableSpan;
import android.text.style.AccessibilityURLSpan;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.ArraySet;
import android.util.LongArray;
import android.util.Pools;
import android.view.View;
import com.android.internal.util.BitUtils;
import com.android.internal.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class AccessibilityNodeInfo implements Parcelable {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN = "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN";
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    private static final int ACTION_TYPE_MASK = -16777216;
    private static final int BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED = 1024;
    private static final int BOOLEAN_PROPERTY_CHECKABLE = 1;
    private static final int BOOLEAN_PROPERTY_CHECKED = 2;
    private static final int BOOLEAN_PROPERTY_CLICKABLE = 32;
    private static final int BOOLEAN_PROPERTY_CONTENT_INVALID = 65536;
    private static final int BOOLEAN_PROPERTY_CONTEXT_CLICKABLE = 131072;
    private static final int BOOLEAN_PROPERTY_DISMISSABLE = 16384;
    private static final int BOOLEAN_PROPERTY_EDITABLE = 4096;
    private static final int BOOLEAN_PROPERTY_ENABLED = 128;
    private static final int BOOLEAN_PROPERTY_FOCUSABLE = 4;
    private static final int BOOLEAN_PROPERTY_FOCUSED = 8;
    private static final int BOOLEAN_PROPERTY_IMPORTANCE = 262144;
    private static final int BOOLEAN_PROPERTY_IS_SHOWING_HINT = 1048576;
    private static final int BOOLEAN_PROPERTY_LONG_CLICKABLE = 64;
    private static final int BOOLEAN_PROPERTY_MULTI_LINE = 32768;
    private static final int BOOLEAN_PROPERTY_OPENS_POPUP = 8192;
    private static final int BOOLEAN_PROPERTY_PASSWORD = 256;
    private static final int BOOLEAN_PROPERTY_SCROLLABLE = 512;
    private static final int BOOLEAN_PROPERTY_SELECTED = 16;
    private static final int BOOLEAN_PROPERTY_VISIBLE_TO_USER = 2048;
    private static final boolean DEBUG = false;
    public static final String EXTRA_DATA_REQUESTED_KEY = "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX";
    public static final String EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY";
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 8;
    public static final int FLAG_PREFETCH_DESCENDANTS = 4;
    public static final int FLAG_PREFETCH_PREDECESSORS = 1;
    public static final int FLAG_PREFETCH_SIBLINGS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    public static final int LAST_LEGACY_STANDARD_ACTION = 2097152;
    private static final int MAX_POOL_SIZE = 50;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    public static final int ROOT_ITEM_ID = 2147483646;
    public static final int UNDEFINED_CONNECTION_ID = -1;
    public static final int UNDEFINED_ITEM_ID = Integer.MAX_VALUE;
    public static final int UNDEFINED_SELECTION_INDEX = -1;
    private static final long VIRTUAL_DESCENDANT_ID_MASK = -4294967296L;
    private static final int VIRTUAL_DESCENDANT_ID_SHIFT = 32;
    private static AtomicInteger sNumInstancesInUse;
    private ArrayList<AccessibilityAction> mActions;
    private int mBooleanProperties;
    private final Rect mBoundsInParent;
    private final Rect mBoundsInScreen;
    private LongArray mChildNodeIds;
    private CharSequence mClassName;
    private CollectionInfo mCollectionInfo;
    private CollectionItemInfo mCollectionItemInfo;
    private int mConnectionId;
    private CharSequence mContentDescription;
    private int mDrawingOrderInParent;
    private CharSequence mError;
    private ArrayList<String> mExtraDataKeys;
    private Bundle mExtras;
    private CharSequence mHintText;
    private int mInputType;
    private long mLabelForId;
    private long mLabeledById;
    private int mLiveRegion;
    private int mMaxTextLength;
    private int mMovementGranularities;
    private CharSequence mOriginalText;
    private CharSequence mPackageName;
    private long mParentNodeId;
    private RangeInfo mRangeInfo;
    private boolean mSealed;
    private long mSourceNodeId;
    private CharSequence mText;
    private int mTextSelectionEnd;
    private int mTextSelectionStart;
    private long mTraversalAfter;
    private long mTraversalBefore;
    private String mViewIdResourceName;
    private int mWindowId = -1;
    public static final long UNDEFINED_NODE_ID = makeNodeId(Integer.MAX_VALUE, Integer.MAX_VALUE);
    public static final long ROOT_NODE_ID = makeNodeId(2147483646, -1);
    private static final Pools.SynchronizedPool<AccessibilityNodeInfo> sPool = new Pools.SynchronizedPool<>(50);
    private static final AccessibilityNodeInfo DEFAULT = new AccessibilityNodeInfo();
    public static final Parcelable.Creator<AccessibilityNodeInfo> CREATOR = new Parcelable.Creator<AccessibilityNodeInfo>() { // from class: android.view.accessibility.AccessibilityNodeInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityNodeInfo createFromParcel(Parcel parcel) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
            accessibilityNodeInfoObtain.initFromParcel(parcel);
            return accessibilityNodeInfoObtain;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityNodeInfo[] newArray(int i2) {
            return new AccessibilityNodeInfo[i2];
        }
    };

    public static final class CollectionInfo {
        private static final int MAX_POOL_SIZE = 20;
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        private static final Pools.SynchronizedPool<CollectionInfo> sPool = new Pools.SynchronizedPool<>(20);
        private int mColumnCount;
        private boolean mHierarchical;
        private int mRowCount;
        private int mSelectionMode;

        private CollectionInfo(int i2, int i3, boolean z2, int i4) {
            this.mRowCount = i2;
            this.mColumnCount = i3;
            this.mHierarchical = z2;
            this.mSelectionMode = i4;
        }

        private void clear() {
            this.mRowCount = 0;
            this.mColumnCount = 0;
            this.mHierarchical = false;
            this.mSelectionMode = 0;
        }

        public static CollectionInfo obtain(CollectionInfo collectionInfo) {
            return obtain(collectionInfo.mRowCount, collectionInfo.mColumnCount, collectionInfo.mHierarchical, collectionInfo.mSelectionMode);
        }

        public int getColumnCount() {
            return this.mColumnCount;
        }

        public int getRowCount() {
            return this.mRowCount;
        }

        public int getSelectionMode() {
            return this.mSelectionMode;
        }

        public boolean isHierarchical() {
            return this.mHierarchical;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        public static CollectionInfo obtain(int i2, int i3, boolean z2) {
            return obtain(i2, i3, z2, 0);
        }

        public static CollectionInfo obtain(int i2, int i3, boolean z2, int i4) {
            CollectionInfo collectionInfoAcquire = sPool.acquire();
            if (collectionInfoAcquire == null) {
                return new CollectionInfo(i2, i3, z2, i4);
            }
            collectionInfoAcquire.mRowCount = i2;
            collectionInfoAcquire.mColumnCount = i3;
            collectionInfoAcquire.mHierarchical = z2;
            collectionInfoAcquire.mSelectionMode = i4;
            return collectionInfoAcquire;
        }
    }

    public static final class CollectionItemInfo {
        private static final int MAX_POOL_SIZE = 20;
        private static final Pools.SynchronizedPool<CollectionItemInfo> sPool = new Pools.SynchronizedPool<>(20);
        private int mColumnIndex;
        private int mColumnSpan;
        private boolean mHeading;
        private int mRowIndex;
        private int mRowSpan;
        private boolean mSelected;

        private CollectionItemInfo(int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
            this.mRowIndex = i2;
            this.mRowSpan = i3;
            this.mColumnIndex = i4;
            this.mColumnSpan = i5;
            this.mHeading = z2;
            this.mSelected = z3;
        }

        private void clear() {
            this.mColumnIndex = 0;
            this.mColumnSpan = 0;
            this.mRowIndex = 0;
            this.mRowSpan = 0;
            this.mHeading = false;
            this.mSelected = false;
        }

        public static CollectionItemInfo obtain(CollectionItemInfo collectionItemInfo) {
            return obtain(collectionItemInfo.mRowIndex, collectionItemInfo.mRowSpan, collectionItemInfo.mColumnIndex, collectionItemInfo.mColumnSpan, collectionItemInfo.mHeading, collectionItemInfo.mSelected);
        }

        public int getColumnIndex() {
            return this.mColumnIndex;
        }

        public int getColumnSpan() {
            return this.mColumnSpan;
        }

        public int getRowIndex() {
            return this.mRowIndex;
        }

        public int getRowSpan() {
            return this.mRowSpan;
        }

        public boolean isHeading() {
            return this.mHeading;
        }

        public boolean isSelected() {
            return this.mSelected;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        public static CollectionItemInfo obtain(int i2, int i3, int i4, int i5, boolean z2) {
            return obtain(i2, i3, i4, i5, z2, false);
        }

        public static CollectionItemInfo obtain(int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
            CollectionItemInfo collectionItemInfoAcquire = sPool.acquire();
            if (collectionItemInfoAcquire == null) {
                return new CollectionItemInfo(i2, i3, i4, i5, z2, z3);
            }
            collectionItemInfoAcquire.mRowIndex = i2;
            collectionItemInfoAcquire.mRowSpan = i3;
            collectionItemInfoAcquire.mColumnIndex = i4;
            collectionItemInfoAcquire.mColumnSpan = i5;
            collectionItemInfoAcquire.mHeading = z2;
            collectionItemInfoAcquire.mSelected = z3;
            return collectionItemInfoAcquire;
        }
    }

    public static final class RangeInfo {
        private static final int MAX_POOL_SIZE = 10;
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        private static final Pools.SynchronizedPool<RangeInfo> sPool = new Pools.SynchronizedPool<>(10);
        private float mCurrent;
        private float mMax;
        private float mMin;
        private int mType;

        private RangeInfo(int i2, float f2, float f3, float f4) {
            this.mType = i2;
            this.mMin = f2;
            this.mMax = f3;
            this.mCurrent = f4;
        }

        private void clear() {
            this.mType = 0;
            this.mMin = 0.0f;
            this.mMax = 0.0f;
            this.mCurrent = 0.0f;
        }

        public static RangeInfo obtain(RangeInfo rangeInfo) {
            return obtain(rangeInfo.mType, rangeInfo.mMin, rangeInfo.mMax, rangeInfo.mCurrent);
        }

        public float getCurrent() {
            return this.mCurrent;
        }

        public float getMax() {
            return this.mMax;
        }

        public float getMin() {
            return this.mMin;
        }

        public int getType() {
            return this.mType;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        public static RangeInfo obtain(int i2, float f2, float f3, float f4) {
            RangeInfo rangeInfoAcquire = sPool.acquire();
            if (rangeInfoAcquire == null) {
                return new RangeInfo(i2, f2, f3, f4);
            }
            rangeInfoAcquire.mType = i2;
            rangeInfoAcquire.mMin = f2;
            rangeInfoAcquire.mMax = f3;
            rangeInfoAcquire.mCurrent = f4;
            return rangeInfoAcquire;
        }
    }

    private AccessibilityNodeInfo() {
        long j2 = UNDEFINED_NODE_ID;
        this.mSourceNodeId = j2;
        this.mParentNodeId = j2;
        this.mLabelForId = j2;
        this.mLabeledById = j2;
        this.mTraversalBefore = j2;
        this.mTraversalAfter = j2;
        this.mBoundsInParent = new Rect();
        this.mBoundsInScreen = new Rect();
        this.mMaxTextLength = -1;
        this.mTextSelectionStart = -1;
        this.mTextSelectionEnd = -1;
        this.mInputType = 0;
        this.mLiveRegion = 0;
        this.mConnectionId = -1;
    }

    private void addActionUnchecked(AccessibilityAction accessibilityAction) {
        if (accessibilityAction == null) {
            return;
        }
        if (this.mActions == null) {
            this.mActions = new ArrayList<>();
        }
        this.mActions.remove(accessibilityAction);
        this.mActions.add(accessibilityAction);
    }

    private void addChildInternal(View view, int i2, boolean z2) {
        enforceNotSealed();
        if (this.mChildNodeIds == null) {
            this.mChildNodeIds = new LongArray();
        }
        long jMakeNodeId = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
        if (!z2 || this.mChildNodeIds.indexOf(jMakeNodeId) < 0) {
            this.mChildNodeIds.add(jMakeNodeId);
        }
    }

    private void addStandardActions(int i2) {
        while (i2 > 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            addAction(getActionSingletonBySerializationFlag(iNumberOfTrailingZeros));
        }
    }

    private boolean canPerformRequestOverConnection(long j2) {
        return (this.mWindowId == -1 || getAccessibilityViewId(j2) == Integer.MAX_VALUE || this.mConnectionId == -1) ? false : true;
    }

    private void clear() {
        init(DEFAULT);
    }

    private void enforceValidFocusDirection(int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
            throw new IllegalArgumentException(c.d("Unknown direction: ", i2));
        }
    }

    private void enforceValidFocusType(int i2) {
        if (i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException(c.d("Unknown focus type: ", i2));
        }
    }

    public static int getAccessibilityViewId(long j2) {
        return (int) j2;
    }

    private static AccessibilityAction getActionSingleton(int i2) {
        int size = AccessibilityAction.sStandardActions.size();
        for (int i3 = 0; i3 < size; i3++) {
            AccessibilityAction accessibilityActionValueAt = AccessibilityAction.sStandardActions.valueAt(i3);
            if (i2 == accessibilityActionValueAt.getId()) {
                return accessibilityActionValueAt;
            }
        }
        return null;
    }

    private static AccessibilityAction getActionSingletonBySerializationFlag(int i2) {
        int size = AccessibilityAction.sStandardActions.size();
        for (int i3 = 0; i3 < size; i3++) {
            AccessibilityAction accessibilityActionValueAt = AccessibilityAction.sStandardActions.valueAt(i3);
            if (i2 == accessibilityActionValueAt.mSerializationFlag) {
                return accessibilityActionValueAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getActionSymbolicName(int i2) {
        if (i2 == 1) {
            return "ACTION_FOCUS";
        }
        if (i2 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i2) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 1048576:
                return "ACTION_DISMISS";
            case 2097152:
                return "ACTION_SET_TEXT";
            default:
                switch (i2) {
                    case 16908342:
                        return "ACTION_SHOW_ON_SCREEN";
                    case 16908343:
                        return "ACTION_SCROLL_TO_POSITION";
                    case 16908344:
                        return "ACTION_SCROLL_UP";
                    case 16908345:
                        return "ACTION_SCROLL_LEFT";
                    case 16908346:
                        return "ACTION_SCROLL_DOWN";
                    case 16908347:
                        return "ACTION_SCROLL_RIGHT";
                    case 16908348:
                        return "ACTION_CONTEXT_CLICK";
                    case 16908349:
                        return "ACTION_SET_PROGRESS";
                    default:
                        return "ACTION_UNKNOWN";
                }
        }
    }

    private boolean getBooleanProperty(int i2) {
        return (i2 & this.mBooleanProperties) != 0;
    }

    private static String getMovementGranularitySymbolicName(int i2) {
        if (i2 == 1) {
            return "MOVEMENT_GRANULARITY_CHARACTER";
        }
        if (i2 == 2) {
            return "MOVEMENT_GRANULARITY_WORD";
        }
        if (i2 == 4) {
            return "MOVEMENT_GRANULARITY_LINE";
        }
        if (i2 == 8) {
            return "MOVEMENT_GRANULARITY_PARAGRAPH";
        }
        if (i2 == 16) {
            return "MOVEMENT_GRANULARITY_PAGE";
        }
        throw new IllegalArgumentException(c.d("Unknown movement granularity: ", i2));
    }

    private AccessibilityNodeInfo getNodeForAccessibilityId(long j2) {
        if (canPerformRequestOverConnection(j2)) {
            return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, j2, false, 7, null);
        }
        return null;
    }

    public static int getVirtualDescendantId(long j2) {
        return (int) ((j2 & VIRTUAL_DESCENDANT_ID_MASK) >> 32);
    }

    private void init(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.mSealed = accessibilityNodeInfo.mSealed;
        this.mSourceNodeId = accessibilityNodeInfo.mSourceNodeId;
        this.mParentNodeId = accessibilityNodeInfo.mParentNodeId;
        this.mLabelForId = accessibilityNodeInfo.mLabelForId;
        this.mLabeledById = accessibilityNodeInfo.mLabeledById;
        this.mTraversalBefore = accessibilityNodeInfo.mTraversalBefore;
        this.mTraversalAfter = accessibilityNodeInfo.mTraversalAfter;
        this.mWindowId = accessibilityNodeInfo.mWindowId;
        this.mConnectionId = accessibilityNodeInfo.mConnectionId;
        this.mBoundsInParent.set(accessibilityNodeInfo.mBoundsInParent);
        this.mBoundsInScreen.set(accessibilityNodeInfo.mBoundsInScreen);
        this.mPackageName = accessibilityNodeInfo.mPackageName;
        this.mClassName = accessibilityNodeInfo.mClassName;
        this.mText = accessibilityNodeInfo.mText;
        this.mHintText = accessibilityNodeInfo.mHintText;
        this.mError = accessibilityNodeInfo.mError;
        this.mContentDescription = accessibilityNodeInfo.mContentDescription;
        this.mViewIdResourceName = accessibilityNodeInfo.mViewIdResourceName;
        ArrayList<AccessibilityAction> arrayList = this.mActions;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList<AccessibilityAction> arrayList2 = accessibilityNodeInfo.mActions;
        if (arrayList2 != null && arrayList2.size() > 0) {
            ArrayList<AccessibilityAction> arrayList3 = this.mActions;
            if (arrayList3 == null) {
                this.mActions = new ArrayList<>(arrayList2);
            } else {
                arrayList3.addAll(accessibilityNodeInfo.mActions);
            }
        }
        this.mBooleanProperties = accessibilityNodeInfo.mBooleanProperties;
        this.mMaxTextLength = accessibilityNodeInfo.mMaxTextLength;
        this.mMovementGranularities = accessibilityNodeInfo.mMovementGranularities;
        LongArray longArray = this.mChildNodeIds;
        if (longArray != null) {
            longArray.clear();
        }
        LongArray longArray2 = accessibilityNodeInfo.mChildNodeIds;
        if (longArray2 != null && longArray2.size() > 0) {
            LongArray longArray3 = this.mChildNodeIds;
            if (longArray3 == null) {
                this.mChildNodeIds = longArray2.m29clone();
            } else {
                longArray3.addAll(longArray2);
            }
        }
        this.mTextSelectionStart = accessibilityNodeInfo.mTextSelectionStart;
        this.mTextSelectionEnd = accessibilityNodeInfo.mTextSelectionEnd;
        this.mInputType = accessibilityNodeInfo.mInputType;
        this.mLiveRegion = accessibilityNodeInfo.mLiveRegion;
        this.mDrawingOrderInParent = accessibilityNodeInfo.mDrawingOrderInParent;
        this.mExtraDataKeys = accessibilityNodeInfo.mExtraDataKeys;
        this.mExtras = accessibilityNodeInfo.mExtras != null ? new Bundle(accessibilityNodeInfo.mExtras) : null;
        RangeInfo rangeInfo = this.mRangeInfo;
        if (rangeInfo != null) {
            rangeInfo.recycle();
        }
        RangeInfo rangeInfo2 = accessibilityNodeInfo.mRangeInfo;
        this.mRangeInfo = rangeInfo2 != null ? RangeInfo.obtain(rangeInfo2) : null;
        CollectionInfo collectionInfo = this.mCollectionInfo;
        if (collectionInfo != null) {
            collectionInfo.recycle();
        }
        CollectionInfo collectionInfo2 = accessibilityNodeInfo.mCollectionInfo;
        this.mCollectionInfo = collectionInfo2 != null ? CollectionInfo.obtain(collectionInfo2) : null;
        CollectionItemInfo collectionItemInfo = this.mCollectionItemInfo;
        if (collectionItemInfo != null) {
            collectionItemInfo.recycle();
        }
        CollectionItemInfo collectionItemInfo2 = accessibilityNodeInfo.mCollectionItemInfo;
        this.mCollectionItemInfo = collectionItemInfo2 != null ? CollectionItemInfo.obtain(collectionItemInfo2) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        long j2 = parcel.readLong();
        boolean z2 = BitUtils.isBitSet(j2, 0) ? parcel.readInt() == 1 : DEFAULT.mSealed;
        if (BitUtils.isBitSet(j2, 1)) {
            this.mSourceNodeId = parcel.readLong();
        }
        if (BitUtils.isBitSet(j2, 2)) {
            this.mWindowId = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 3)) {
            this.mParentNodeId = parcel.readLong();
        }
        if (BitUtils.isBitSet(j2, 4)) {
            this.mLabelForId = parcel.readLong();
        }
        if (BitUtils.isBitSet(j2, 5)) {
            this.mLabeledById = parcel.readLong();
        }
        if (BitUtils.isBitSet(j2, 6)) {
            this.mTraversalBefore = parcel.readLong();
        }
        if (BitUtils.isBitSet(j2, 7)) {
            this.mTraversalAfter = parcel.readLong();
        }
        if (BitUtils.isBitSet(j2, 8)) {
            this.mConnectionId = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 9)) {
            int i2 = parcel.readInt();
            if (i2 <= 0) {
                this.mChildNodeIds = null;
            } else {
                this.mChildNodeIds = new LongArray(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    this.mChildNodeIds.add(parcel.readLong());
                }
            }
        }
        if (BitUtils.isBitSet(j2, 10)) {
            this.mBoundsInParent.top = parcel.readInt();
            this.mBoundsInParent.bottom = parcel.readInt();
            this.mBoundsInParent.left = parcel.readInt();
            this.mBoundsInParent.right = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 11)) {
            this.mBoundsInScreen.top = parcel.readInt();
            this.mBoundsInScreen.bottom = parcel.readInt();
            this.mBoundsInScreen.left = parcel.readInt();
            this.mBoundsInScreen.right = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 12)) {
            addStandardActions(parcel.readInt());
            int i4 = parcel.readInt();
            for (int i5 = 0; i5 < i4; i5++) {
                addActionUnchecked(new AccessibilityAction(parcel.readInt(), parcel.readCharSequence()));
            }
        }
        if (BitUtils.isBitSet(j2, 13)) {
            this.mMaxTextLength = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 14)) {
            this.mMovementGranularities = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 15)) {
            this.mBooleanProperties = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 16)) {
            this.mPackageName = parcel.readCharSequence();
        }
        if (BitUtils.isBitSet(j2, 17)) {
            this.mClassName = parcel.readCharSequence();
        }
        if (BitUtils.isBitSet(j2, 18)) {
            this.mText = parcel.readCharSequence();
        }
        if (BitUtils.isBitSet(j2, 19)) {
            this.mHintText = parcel.readCharSequence();
        }
        if (BitUtils.isBitSet(j2, 20)) {
            this.mError = parcel.readCharSequence();
        }
        if (BitUtils.isBitSet(j2, 21)) {
            this.mContentDescription = parcel.readCharSequence();
        }
        if (BitUtils.isBitSet(j2, 22)) {
            this.mViewIdResourceName = parcel.readString();
        }
        if (BitUtils.isBitSet(j2, 23)) {
            this.mTextSelectionStart = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 24)) {
            this.mTextSelectionEnd = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 25)) {
            this.mInputType = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 26)) {
            this.mLiveRegion = parcel.readInt();
        }
        if (BitUtils.isBitSet(j2, 27)) {
            this.mDrawingOrderInParent = parcel.readInt();
        }
        this.mExtraDataKeys = BitUtils.isBitSet(j2, 28) ? parcel.createStringArrayList() : null;
        this.mExtras = BitUtils.isBitSet(j2, 29) ? parcel.readBundle() : null;
        RangeInfo rangeInfo = this.mRangeInfo;
        if (rangeInfo != null) {
            rangeInfo.recycle();
        }
        this.mRangeInfo = BitUtils.isBitSet(j2, 30) ? RangeInfo.obtain(parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat()) : null;
        CollectionInfo collectionInfo = this.mCollectionInfo;
        if (collectionInfo != null) {
            collectionInfo.recycle();
        }
        this.mCollectionInfo = BitUtils.isBitSet(j2, 31) ? CollectionInfo.obtain(parcel.readInt(), parcel.readInt(), parcel.readInt() == 1, parcel.readInt()) : null;
        CollectionItemInfo collectionItemInfo = this.mCollectionItemInfo;
        if (collectionItemInfo != null) {
            collectionItemInfo.recycle();
        }
        this.mCollectionItemInfo = BitUtils.isBitSet(j2, 32) ? CollectionItemInfo.obtain(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 1, parcel.readInt() == 1) : null;
        this.mSealed = z2;
    }

    private static boolean isDefaultStandardAction(AccessibilityAction accessibilityAction) {
        return accessibilityAction.mSerializationFlag != -1 && TextUtils.isEmpty(accessibilityAction.getLabel());
    }

    public static long makeNodeId(int i2, int i3) {
        return ((long) i2) | (((long) i3) << 32);
    }

    public static AccessibilityNodeInfo obtain(View view) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = obtain();
        accessibilityNodeInfoObtain.setSource(view);
        return accessibilityNodeInfoObtain;
    }

    private void setBooleanProperty(int i2, boolean z2) {
        enforceNotSealed();
        if (z2) {
            this.mBooleanProperties = i2 | this.mBooleanProperties;
        } else {
            this.mBooleanProperties = (~i2) & this.mBooleanProperties;
        }
    }

    public static void setNumInstancesInUseCounter(AtomicInteger atomicInteger) {
        sNumInstancesInUse = atomicInteger;
    }

    public void addAction(AccessibilityAction accessibilityAction) {
        enforceNotSealed();
        addActionUnchecked(accessibilityAction);
    }

    public void addChild(View view) {
        addChildInternal(view, -1, true);
    }

    public void addChildUnchecked(View view) {
        addChildInternal(view, -1, false);
    }

    public boolean canOpenPopup() {
        return getBooleanProperty(8192);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void enforceNotSealed() {
        if (isSealed()) {
            throw new IllegalStateException("Cannot perform this action on a sealed instance.");
        }
    }

    public void enforceSealed() {
        if (!isSealed()) {
            throw new IllegalStateException("Cannot perform this action on a not sealed instance.");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) obj;
        return this.mSourceNodeId == accessibilityNodeInfo.mSourceNodeId && this.mWindowId == accessibilityNodeInfo.mWindowId;
    }

    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str) {
        enforceSealed();
        return !canPerformRequestOverConnection(this.mSourceNodeId) ? Collections.emptyList() : AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfosByText(this.mConnectionId, this.mWindowId, this.mSourceNodeId, str);
    }

    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByViewId(String str) {
        enforceSealed();
        return !canPerformRequestOverConnection(this.mSourceNodeId) ? Collections.emptyList() : AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfosByViewId(this.mConnectionId, this.mWindowId, this.mSourceNodeId, str);
    }

    public AccessibilityNodeInfo findFocus(int i2) {
        enforceSealed();
        enforceValidFocusType(i2);
        if (canPerformRequestOverConnection(this.mSourceNodeId)) {
            return AccessibilityInteractionClient.getInstance().findFocus(this.mConnectionId, this.mWindowId, this.mSourceNodeId, i2);
        }
        return null;
    }

    public AccessibilityNodeInfo focusSearch(int i2) {
        enforceSealed();
        enforceValidFocusDirection(i2);
        if (canPerformRequestOverConnection(this.mSourceNodeId)) {
            return AccessibilityInteractionClient.getInstance().focusSearch(this.mConnectionId, this.mWindowId, this.mSourceNodeId, i2);
        }
        return null;
    }

    public List<AccessibilityAction> getActionList() {
        return CollectionUtils.emptyIfNull(this.mActions);
    }

    @Deprecated
    public int getActions() {
        ArrayList<AccessibilityAction> arrayList = this.mActions;
        if (arrayList == null) {
            return 0;
        }
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            int id = this.mActions.get(i3).getId();
            if (id <= 2097152) {
                i2 |= id;
            }
        }
        return i2;
    }

    public List<String> getAvailableExtraData() {
        ArrayList<String> arrayList = this.mExtraDataKeys;
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.EMPTY_LIST;
    }

    public void getBoundsInParent(Rect rect) {
        Rect rect2 = this.mBoundsInParent;
        rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    public void getBoundsInScreen(Rect rect) {
        Rect rect2 = this.mBoundsInScreen;
        rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    public AccessibilityNodeInfo getChild(int i2) {
        enforceSealed();
        if (this.mChildNodeIds == null || !canPerformRequestOverConnection(this.mSourceNodeId)) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mChildNodeIds.get(i2), false, 4, null);
    }

    public int getChildCount() {
        LongArray longArray = this.mChildNodeIds;
        if (longArray == null) {
            return 0;
        }
        return longArray.size();
    }

    public long getChildId(int i2) {
        LongArray longArray = this.mChildNodeIds;
        if (longArray != null) {
            return longArray.get(i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public LongArray getChildNodeIds() {
        return this.mChildNodeIds;
    }

    public CharSequence getClassName() {
        return this.mClassName;
    }

    public CollectionInfo getCollectionInfo() {
        return this.mCollectionInfo;
    }

    public CollectionItemInfo getCollectionItemInfo() {
        return this.mCollectionItemInfo;
    }

    public int getConnectionId() {
        return this.mConnectionId;
    }

    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    public int getDrawingOrder() {
        return this.mDrawingOrderInParent;
    }

    public CharSequence getError() {
        return this.mError;
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public CharSequence getHintText() {
        return this.mHintText;
    }

    public int getInputType() {
        return this.mInputType;
    }

    public AccessibilityNodeInfo getLabelFor() {
        enforceSealed();
        return getNodeForAccessibilityId(this.mLabelForId);
    }

    public AccessibilityNodeInfo getLabeledBy() {
        enforceSealed();
        return getNodeForAccessibilityId(this.mLabeledById);
    }

    public int getLiveRegion() {
        return this.mLiveRegion;
    }

    public int getMaxTextLength() {
        return this.mMaxTextLength;
    }

    public int getMovementGranularities() {
        return this.mMovementGranularities;
    }

    public CharSequence getOriginalText() {
        return this.mOriginalText;
    }

    public CharSequence getPackageName() {
        return this.mPackageName;
    }

    public AccessibilityNodeInfo getParent() {
        enforceSealed();
        return getNodeForAccessibilityId(this.mParentNodeId);
    }

    public long getParentNodeId() {
        return this.mParentNodeId;
    }

    public RangeInfo getRangeInfo() {
        return this.mRangeInfo;
    }

    public long getSourceNodeId() {
        return this.mSourceNodeId;
    }

    public CharSequence getText() {
        CharSequence charSequence = this.mText;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            for (AccessibilityClickableSpan accessibilityClickableSpan : (AccessibilityClickableSpan[]) spanned.getSpans(0, charSequence.length(), AccessibilityClickableSpan.class)) {
                accessibilityClickableSpan.copyConnectionDataFrom(this);
            }
            for (AccessibilityURLSpan accessibilityURLSpan : (AccessibilityURLSpan[]) spanned.getSpans(0, this.mText.length(), AccessibilityURLSpan.class)) {
                accessibilityURLSpan.copyConnectionDataFrom(this);
            }
        }
        return this.mText;
    }

    public int getTextSelectionEnd() {
        return this.mTextSelectionEnd;
    }

    public int getTextSelectionStart() {
        return this.mTextSelectionStart;
    }

    public AccessibilityNodeInfo getTraversalAfter() {
        enforceSealed();
        return getNodeForAccessibilityId(this.mTraversalAfter);
    }

    public AccessibilityNodeInfo getTraversalBefore() {
        enforceSealed();
        return getNodeForAccessibilityId(this.mTraversalBefore);
    }

    public String getViewIdResourceName() {
        return this.mViewIdResourceName;
    }

    public AccessibilityWindowInfo getWindow() {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mSourceNodeId)) {
            return AccessibilityInteractionClient.getInstance().getWindow(this.mConnectionId, this.mWindowId);
        }
        return null;
    }

    public int getWindowId() {
        return this.mWindowId;
    }

    public boolean hasExtras() {
        return this.mExtras != null;
    }

    public int hashCode() {
        return ((getVirtualDescendantId(this.mSourceNodeId) + ((getAccessibilityViewId(this.mSourceNodeId) + 31) * 31)) * 31) + this.mWindowId;
    }

    public boolean isAccessibilityFocused() {
        return getBooleanProperty(1024);
    }

    public boolean isCheckable() {
        return getBooleanProperty(1);
    }

    public boolean isChecked() {
        return getBooleanProperty(2);
    }

    public boolean isClickable() {
        return getBooleanProperty(32);
    }

    public boolean isContentInvalid() {
        return getBooleanProperty(65536);
    }

    public boolean isContextClickable() {
        return getBooleanProperty(131072);
    }

    public boolean isDismissable() {
        return getBooleanProperty(16384);
    }

    public boolean isEditable() {
        return getBooleanProperty(4096);
    }

    public boolean isEnabled() {
        return getBooleanProperty(128);
    }

    public boolean isFocusable() {
        return getBooleanProperty(4);
    }

    public boolean isFocused() {
        return getBooleanProperty(8);
    }

    public boolean isImportantForAccessibility() {
        return getBooleanProperty(262144);
    }

    public boolean isLongClickable() {
        return getBooleanProperty(64);
    }

    public boolean isMultiLine() {
        return getBooleanProperty(32768);
    }

    public boolean isPassword() {
        return getBooleanProperty(256);
    }

    public boolean isScrollable() {
        return getBooleanProperty(512);
    }

    public boolean isSealed() {
        return this.mSealed;
    }

    public boolean isSelected() {
        return getBooleanProperty(16);
    }

    public boolean isShowingHintText() {
        return getBooleanProperty(1048576);
    }

    public boolean isVisibleToUser() {
        return getBooleanProperty(2048);
    }

    public boolean performAction(int i2) {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mSourceNodeId)) {
            return AccessibilityInteractionClient.getInstance().performAccessibilityAction(this.mConnectionId, this.mWindowId, this.mSourceNodeId, i2, null);
        }
        return false;
    }

    public void recycle() {
        clear();
        sPool.release(this);
        AtomicInteger atomicInteger = sNumInstancesInUse;
        if (atomicInteger != null) {
            atomicInteger.decrementAndGet();
        }
    }

    public boolean refresh(Bundle bundle, boolean z2) {
        AccessibilityNodeInfo accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId;
        enforceSealed();
        if (!canPerformRequestOverConnection(this.mSourceNodeId) || (accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId = AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mSourceNodeId, z2, 0, bundle)) == null) {
            return false;
        }
        init(accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId);
        accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId.recycle();
        return true;
    }

    public boolean refreshWithExtraData(String str, Bundle bundle) {
        bundle.putString(EXTRA_DATA_REQUESTED_KEY, str);
        return refresh(bundle, true);
    }

    @Deprecated
    public void removeAction(int i2) {
        enforceNotSealed();
        removeAction(getActionSingleton(i2));
    }

    public void removeAllActions() {
        ArrayList<AccessibilityAction> arrayList = this.mActions;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public boolean removeChild(View view) {
        return removeChild(view, -1);
    }

    public void setAccessibilityFocused(boolean z2) {
        setBooleanProperty(1024, z2);
    }

    public void setAvailableExtraData(List<String> list) {
        enforceNotSealed();
        this.mExtraDataKeys = new ArrayList<>(list);
    }

    public void setBoundsInParent(Rect rect) {
        enforceNotSealed();
        this.mBoundsInParent.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setBoundsInScreen(Rect rect) {
        enforceNotSealed();
        this.mBoundsInScreen.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setCanOpenPopup(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(8192, z2);
    }

    public void setCheckable(boolean z2) {
        setBooleanProperty(1, z2);
    }

    public void setChecked(boolean z2) {
        setBooleanProperty(2, z2);
    }

    public void setClassName(CharSequence charSequence) {
        enforceNotSealed();
        this.mClassName = charSequence;
    }

    public void setClickable(boolean z2) {
        setBooleanProperty(32, z2);
    }

    public void setCollectionInfo(CollectionInfo collectionInfo) {
        enforceNotSealed();
        this.mCollectionInfo = collectionInfo;
    }

    public void setCollectionItemInfo(CollectionItemInfo collectionItemInfo) {
        enforceNotSealed();
        this.mCollectionItemInfo = collectionItemInfo;
    }

    public void setConnectionId(int i2) {
        enforceNotSealed();
        this.mConnectionId = i2;
    }

    public void setContentDescription(CharSequence charSequence) {
        enforceNotSealed();
        this.mContentDescription = charSequence == null ? null : charSequence.subSequence(0, charSequence.length());
    }

    public void setContentInvalid(boolean z2) {
        setBooleanProperty(65536, z2);
    }

    public void setContextClickable(boolean z2) {
        setBooleanProperty(131072, z2);
    }

    public void setDismissable(boolean z2) {
        setBooleanProperty(16384, z2);
    }

    public void setDrawingOrder(int i2) {
        enforceNotSealed();
        this.mDrawingOrderInParent = i2;
    }

    public void setEditable(boolean z2) {
        setBooleanProperty(4096, z2);
    }

    public void setEnabled(boolean z2) {
        setBooleanProperty(128, z2);
    }

    public void setError(CharSequence charSequence) {
        enforceNotSealed();
        this.mError = charSequence == null ? null : charSequence.subSequence(0, charSequence.length());
    }

    public void setFocusable(boolean z2) {
        setBooleanProperty(4, z2);
    }

    public void setFocused(boolean z2) {
        setBooleanProperty(8, z2);
    }

    public void setHintText(CharSequence charSequence) {
        enforceNotSealed();
        this.mHintText = charSequence == null ? null : charSequence.subSequence(0, charSequence.length());
    }

    public void setImportantForAccessibility(boolean z2) {
        setBooleanProperty(262144, z2);
    }

    public void setInputType(int i2) {
        enforceNotSealed();
        this.mInputType = i2;
    }

    public void setLabelFor(View view) {
        setLabelFor(view, -1);
    }

    public void setLabeledBy(View view) {
        setLabeledBy(view, -1);
    }

    public void setLiveRegion(int i2) {
        enforceNotSealed();
        this.mLiveRegion = i2;
    }

    public void setLongClickable(boolean z2) {
        setBooleanProperty(64, z2);
    }

    public void setMaxTextLength(int i2) {
        enforceNotSealed();
        this.mMaxTextLength = i2;
    }

    public void setMovementGranularities(int i2) {
        enforceNotSealed();
        this.mMovementGranularities = i2;
    }

    public void setMultiLine(boolean z2) {
        setBooleanProperty(32768, z2);
    }

    public void setPackageName(CharSequence charSequence) {
        enforceNotSealed();
        this.mPackageName = charSequence;
    }

    public void setParent(View view) {
        setParent(view, -1);
    }

    public void setPassword(boolean z2) {
        setBooleanProperty(256, z2);
    }

    public void setRangeInfo(RangeInfo rangeInfo) {
        enforceNotSealed();
        this.mRangeInfo = rangeInfo;
    }

    public void setScrollable(boolean z2) {
        setBooleanProperty(512, z2);
    }

    public void setSealed(boolean z2) {
        this.mSealed = z2;
    }

    public void setSelected(boolean z2) {
        setBooleanProperty(16, z2);
    }

    public void setShowingHintText(boolean z2) {
        setBooleanProperty(1048576, z2);
    }

    public void setSource(View view) {
        setSource(view, -1);
    }

    public void setSourceNodeId(long j2, int i2) {
        enforceNotSealed();
        this.mSourceNodeId = j2;
        this.mWindowId = i2;
    }

    public void setText(CharSequence charSequence) {
        enforceNotSealed();
        this.mOriginalText = charSequence;
        if (charSequence instanceof Spanned) {
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
            if (clickableSpanArr.length > 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
                for (ClickableSpan clickableSpan : clickableSpanArr) {
                    if ((clickableSpan instanceof AccessibilityClickableSpan) || (clickableSpan instanceof AccessibilityURLSpan)) {
                        break;
                    }
                    int spanStart = spannableStringBuilder.getSpanStart(clickableSpan);
                    int spanEnd = spannableStringBuilder.getSpanEnd(clickableSpan);
                    int spanFlags = spannableStringBuilder.getSpanFlags(clickableSpan);
                    spannableStringBuilder.removeSpan(clickableSpan);
                    spannableStringBuilder.setSpan(clickableSpan instanceof URLSpan ? new AccessibilityURLSpan((URLSpan) clickableSpan) : new AccessibilityClickableSpan(clickableSpan.getId()), spanStart, spanEnd, spanFlags);
                }
                this.mText = spannableStringBuilder;
                return;
            }
        }
        this.mText = charSequence == null ? null : charSequence.subSequence(0, charSequence.length());
    }

    public void setTextSelection(int i2, int i3) {
        enforceNotSealed();
        this.mTextSelectionStart = i2;
        this.mTextSelectionEnd = i3;
    }

    public void setTraversalAfter(View view) {
        setTraversalAfter(view, -1);
    }

    public void setTraversalBefore(View view) {
        setTraversalBefore(view, -1);
    }

    public void setViewIdResourceName(String str) {
        enforceNotSealed();
        this.mViewIdResourceName = str;
    }

    public void setVisibleToUser(boolean z2) {
        setBooleanProperty(2048, z2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; boundsInParent: " + this.mBoundsInParent);
        sb.append("; boundsInScreen: " + this.mBoundsInScreen);
        sb.append("; packageName: ");
        sb.append(this.mPackageName);
        sb.append("; className: ");
        sb.append(this.mClassName);
        sb.append("; text: ");
        sb.append(this.mText);
        sb.append("; error: ");
        sb.append(this.mError);
        sb.append("; maxTextLength: ");
        sb.append(this.mMaxTextLength);
        sb.append("; contentDescription: ");
        sb.append(this.mContentDescription);
        sb.append("; viewIdResName: ");
        sb.append(this.mViewIdResourceName);
        sb.append("; checkable: ");
        sb.append(isCheckable());
        sb.append("; checked: ");
        sb.append(isChecked());
        sb.append("; focusable: ");
        sb.append(isFocusable());
        sb.append("; focused: ");
        sb.append(isFocused());
        sb.append("; selected: ");
        sb.append(isSelected());
        sb.append("; clickable: ");
        sb.append(isClickable());
        sb.append("; longClickable: ");
        sb.append(isLongClickable());
        sb.append("; contextClickable: ");
        sb.append(isContextClickable());
        sb.append("; enabled: ");
        sb.append(isEnabled());
        sb.append("; password: ");
        sb.append(isPassword());
        sb.append("; scrollable: ");
        sb.append(isScrollable());
        sb.append("; importantForAccessibility: ");
        sb.append(isImportantForAccessibility());
        sb.append("; actions: ");
        sb.append(this.mActions);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        boolean zIsSealed = isSealed();
        AccessibilityNodeInfo accessibilityNodeInfo = DEFAULT;
        long jBitAt = zIsSealed != accessibilityNodeInfo.isSealed() ? 0 | BitUtils.bitAt(0) : 0L;
        if (this.mSourceNodeId != accessibilityNodeInfo.mSourceNodeId) {
            jBitAt |= BitUtils.bitAt(1);
        }
        if (this.mWindowId != accessibilityNodeInfo.mWindowId) {
            jBitAt |= BitUtils.bitAt(2);
        }
        if (this.mParentNodeId != accessibilityNodeInfo.mParentNodeId) {
            jBitAt |= BitUtils.bitAt(3);
        }
        if (this.mLabelForId != accessibilityNodeInfo.mLabelForId) {
            jBitAt |= BitUtils.bitAt(4);
        }
        if (this.mLabeledById != accessibilityNodeInfo.mLabeledById) {
            jBitAt |= BitUtils.bitAt(5);
        }
        if (this.mTraversalBefore != accessibilityNodeInfo.mTraversalBefore) {
            jBitAt |= BitUtils.bitAt(6);
        }
        if (this.mTraversalAfter != accessibilityNodeInfo.mTraversalAfter) {
            jBitAt |= BitUtils.bitAt(7);
        }
        if (this.mConnectionId != accessibilityNodeInfo.mConnectionId) {
            jBitAt |= BitUtils.bitAt(8);
        }
        if (!Objects.equals(this.mChildNodeIds, accessibilityNodeInfo.mChildNodeIds)) {
            jBitAt |= BitUtils.bitAt(9);
        }
        if (!Objects.equals(this.mBoundsInParent, accessibilityNodeInfo.mBoundsInParent)) {
            jBitAt |= BitUtils.bitAt(10);
        }
        if (!Objects.equals(this.mBoundsInScreen, accessibilityNodeInfo.mBoundsInScreen)) {
            jBitAt |= BitUtils.bitAt(11);
        }
        if (!Objects.equals(this.mActions, accessibilityNodeInfo.mActions)) {
            jBitAt |= BitUtils.bitAt(12);
        }
        if (this.mMaxTextLength != accessibilityNodeInfo.mMaxTextLength) {
            jBitAt |= BitUtils.bitAt(13);
        }
        if (this.mMovementGranularities != accessibilityNodeInfo.mMovementGranularities) {
            jBitAt |= BitUtils.bitAt(14);
        }
        if (this.mBooleanProperties != accessibilityNodeInfo.mBooleanProperties) {
            jBitAt |= BitUtils.bitAt(15);
        }
        if (!Objects.equals(this.mPackageName, accessibilityNodeInfo.mPackageName)) {
            jBitAt |= BitUtils.bitAt(16);
        }
        if (!Objects.equals(this.mClassName, accessibilityNodeInfo.mClassName)) {
            jBitAt |= BitUtils.bitAt(17);
        }
        if (!Objects.equals(this.mText, accessibilityNodeInfo.mText)) {
            jBitAt |= BitUtils.bitAt(18);
        }
        if (!Objects.equals(this.mHintText, accessibilityNodeInfo.mHintText)) {
            jBitAt |= BitUtils.bitAt(19);
        }
        if (!Objects.equals(this.mError, accessibilityNodeInfo.mError)) {
            jBitAt |= BitUtils.bitAt(20);
        }
        if (!Objects.equals(this.mContentDescription, accessibilityNodeInfo.mContentDescription)) {
            jBitAt |= BitUtils.bitAt(21);
        }
        if (!Objects.equals(this.mViewIdResourceName, accessibilityNodeInfo.mViewIdResourceName)) {
            jBitAt |= BitUtils.bitAt(22);
        }
        if (this.mTextSelectionStart != accessibilityNodeInfo.mTextSelectionStart) {
            jBitAt |= BitUtils.bitAt(23);
        }
        if (this.mTextSelectionEnd != accessibilityNodeInfo.mTextSelectionEnd) {
            jBitAt |= BitUtils.bitAt(24);
        }
        if (this.mInputType != accessibilityNodeInfo.mInputType) {
            jBitAt |= BitUtils.bitAt(25);
        }
        if (this.mLiveRegion != accessibilityNodeInfo.mLiveRegion) {
            jBitAt |= BitUtils.bitAt(26);
        }
        if (this.mDrawingOrderInParent != accessibilityNodeInfo.mDrawingOrderInParent) {
            jBitAt |= BitUtils.bitAt(27);
        }
        if (!Objects.equals(this.mExtraDataKeys, accessibilityNodeInfo.mExtraDataKeys)) {
            jBitAt |= BitUtils.bitAt(28);
        }
        if (!Objects.equals(this.mExtras, accessibilityNodeInfo.mExtras)) {
            jBitAt |= BitUtils.bitAt(29);
        }
        if (!Objects.equals(this.mRangeInfo, accessibilityNodeInfo.mRangeInfo)) {
            jBitAt |= BitUtils.bitAt(30);
        }
        if (!Objects.equals(this.mCollectionInfo, accessibilityNodeInfo.mCollectionInfo)) {
            jBitAt |= BitUtils.bitAt(31);
        }
        if (!Objects.equals(this.mCollectionItemInfo, accessibilityNodeInfo.mCollectionItemInfo)) {
            jBitAt |= BitUtils.bitAt(32);
        }
        parcel.writeLong(jBitAt);
        if (BitUtils.isBitSet(jBitAt, 0)) {
            parcel.writeInt(isSealed() ? 1 : 0);
        }
        if (BitUtils.isBitSet(jBitAt, 1)) {
            parcel.writeLong(this.mSourceNodeId);
        }
        if (BitUtils.isBitSet(jBitAt, 2)) {
            parcel.writeInt(this.mWindowId);
        }
        if (BitUtils.isBitSet(jBitAt, 3)) {
            parcel.writeLong(this.mParentNodeId);
        }
        if (BitUtils.isBitSet(jBitAt, 4)) {
            parcel.writeLong(this.mLabelForId);
        }
        if (BitUtils.isBitSet(jBitAt, 5)) {
            parcel.writeLong(this.mLabeledById);
        }
        if (BitUtils.isBitSet(jBitAt, 6)) {
            parcel.writeLong(this.mTraversalBefore);
        }
        if (BitUtils.isBitSet(jBitAt, 7)) {
            parcel.writeLong(this.mTraversalAfter);
        }
        if (BitUtils.isBitSet(jBitAt, 8)) {
            parcel.writeInt(this.mConnectionId);
        }
        if (BitUtils.isBitSet(jBitAt, 9)) {
            LongArray longArray = this.mChildNodeIds;
            if (longArray == null) {
                parcel.writeInt(0);
            } else {
                int size = longArray.size();
                parcel.writeInt(size);
                for (int i3 = 0; i3 < size; i3++) {
                    parcel.writeLong(longArray.get(i3));
                }
            }
        }
        if (BitUtils.isBitSet(jBitAt, 10)) {
            parcel.writeInt(this.mBoundsInParent.top);
            parcel.writeInt(this.mBoundsInParent.bottom);
            parcel.writeInt(this.mBoundsInParent.left);
            parcel.writeInt(this.mBoundsInParent.right);
        }
        if (BitUtils.isBitSet(jBitAt, 11)) {
            parcel.writeInt(this.mBoundsInScreen.top);
            parcel.writeInt(this.mBoundsInScreen.bottom);
            parcel.writeInt(this.mBoundsInScreen.left);
            parcel.writeInt(this.mBoundsInScreen.right);
        }
        if (BitUtils.isBitSet(jBitAt, 12)) {
            ArrayList<AccessibilityAction> arrayList = this.mActions;
            if (arrayList == null || arrayList.isEmpty()) {
                parcel.writeInt(0);
                parcel.writeInt(0);
            } else {
                int size2 = this.mActions.size();
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < size2; i6++) {
                    AccessibilityAction accessibilityAction = this.mActions.get(i6);
                    if (isDefaultStandardAction(accessibilityAction)) {
                        i4 |= accessibilityAction.mSerializationFlag;
                    } else {
                        i5++;
                    }
                }
                parcel.writeInt(i4);
                parcel.writeInt(i5);
                for (int i7 = 0; i7 < size2; i7++) {
                    AccessibilityAction accessibilityAction2 = this.mActions.get(i7);
                    if (!isDefaultStandardAction(accessibilityAction2)) {
                        parcel.writeInt(accessibilityAction2.getId());
                        parcel.writeCharSequence(accessibilityAction2.getLabel());
                    }
                }
            }
        }
        if (BitUtils.isBitSet(jBitAt, 13)) {
            parcel.writeInt(this.mMaxTextLength);
        }
        if (BitUtils.isBitSet(jBitAt, 14)) {
            parcel.writeInt(this.mMovementGranularities);
        }
        if (BitUtils.isBitSet(jBitAt, 15)) {
            parcel.writeInt(this.mBooleanProperties);
        }
        if (BitUtils.isBitSet(jBitAt, 16)) {
            parcel.writeCharSequence(this.mPackageName);
        }
        if (BitUtils.isBitSet(jBitAt, 17)) {
            parcel.writeCharSequence(this.mClassName);
        }
        if (BitUtils.isBitSet(jBitAt, 18)) {
            parcel.writeCharSequence(this.mText);
        }
        if (BitUtils.isBitSet(jBitAt, 19)) {
            parcel.writeCharSequence(this.mHintText);
        }
        if (BitUtils.isBitSet(jBitAt, 20)) {
            parcel.writeCharSequence(this.mError);
        }
        if (BitUtils.isBitSet(jBitAt, 21)) {
            parcel.writeCharSequence(this.mContentDescription);
        }
        if (BitUtils.isBitSet(jBitAt, 22)) {
            parcel.writeString(this.mViewIdResourceName);
        }
        if (BitUtils.isBitSet(jBitAt, 23)) {
            parcel.writeInt(this.mTextSelectionStart);
        }
        if (BitUtils.isBitSet(jBitAt, 24)) {
            parcel.writeInt(this.mTextSelectionEnd);
        }
        if (BitUtils.isBitSet(jBitAt, 25)) {
            parcel.writeInt(this.mInputType);
        }
        if (BitUtils.isBitSet(jBitAt, 26)) {
            parcel.writeInt(this.mLiveRegion);
        }
        if (BitUtils.isBitSet(jBitAt, 27)) {
            parcel.writeInt(this.mDrawingOrderInParent);
        }
        if (BitUtils.isBitSet(jBitAt, 28)) {
            parcel.writeStringList(this.mExtraDataKeys);
        }
        if (BitUtils.isBitSet(jBitAt, 29)) {
            parcel.writeBundle(this.mExtras);
        }
        if (BitUtils.isBitSet(jBitAt, 30)) {
            parcel.writeInt(this.mRangeInfo.getType());
            parcel.writeFloat(this.mRangeInfo.getMin());
            parcel.writeFloat(this.mRangeInfo.getMax());
            parcel.writeFloat(this.mRangeInfo.getCurrent());
        }
        if (BitUtils.isBitSet(jBitAt, 31)) {
            parcel.writeInt(this.mCollectionInfo.getRowCount());
            parcel.writeInt(this.mCollectionInfo.getColumnCount());
            parcel.writeInt(this.mCollectionInfo.isHierarchical() ? 1 : 0);
            parcel.writeInt(this.mCollectionInfo.getSelectionMode());
        }
        if (BitUtils.isBitSet(jBitAt, 32)) {
            parcel.writeInt(this.mCollectionItemInfo.getRowIndex());
            parcel.writeInt(this.mCollectionItemInfo.getRowSpan());
            parcel.writeInt(this.mCollectionItemInfo.getColumnIndex());
            parcel.writeInt(this.mCollectionItemInfo.getColumnSpan());
            parcel.writeInt(this.mCollectionItemInfo.isHeading() ? 1 : 0);
            parcel.writeInt(this.mCollectionItemInfo.isSelected() ? 1 : 0);
        }
        recycle();
    }

    public void addChild(View view, int i2) {
        addChildInternal(view, i2, true);
    }

    public Rect getBoundsInScreen() {
        return this.mBoundsInScreen;
    }

    public boolean removeChild(View view, int i2) {
        enforceNotSealed();
        LongArray longArray = this.mChildNodeIds;
        if (longArray == null) {
            return false;
        }
        int iIndexOf = longArray.indexOf(makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2));
        if (iIndexOf < 0) {
            return false;
        }
        longArray.remove(iIndexOf);
        return true;
    }

    public void setLabelFor(View view, int i2) {
        enforceNotSealed();
        this.mLabelForId = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
    }

    public void setLabeledBy(View view, int i2) {
        enforceNotSealed();
        this.mLabeledById = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
    }

    public void setParent(View view, int i2) {
        enforceNotSealed();
        this.mParentNodeId = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
    }

    public void setSource(View view, int i2) {
        enforceNotSealed();
        this.mWindowId = view != null ? view.getAccessibilityWindowId() : Integer.MAX_VALUE;
        this.mSourceNodeId = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
    }

    public void setTraversalAfter(View view, int i2) {
        enforceNotSealed();
        this.mTraversalAfter = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
    }

    public void setTraversalBefore(View view, int i2) {
        enforceNotSealed();
        this.mTraversalBefore = makeNodeId(view != null ? view.getAccessibilityViewId() : Integer.MAX_VALUE, i2);
    }

    public static AccessibilityNodeInfo obtain(View view, int i2) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = obtain();
        accessibilityNodeInfoObtain.setSource(view, i2);
        return accessibilityNodeInfoObtain;
    }

    @Deprecated
    public void addAction(int i2) {
        enforceNotSealed();
        if (((-16777216) & i2) == 0) {
            addStandardActions(i2);
            return;
        }
        throw new IllegalArgumentException(c.d("Action is not a combination of the standard actions: ", i2));
    }

    public boolean removeAction(AccessibilityAction accessibilityAction) {
        enforceNotSealed();
        ArrayList<AccessibilityAction> arrayList = this.mActions;
        if (arrayList == null || accessibilityAction == null) {
            return false;
        }
        return arrayList.remove(accessibilityAction);
    }

    public static AccessibilityNodeInfo obtain() {
        AccessibilityNodeInfo accessibilityNodeInfoAcquire = sPool.acquire();
        AtomicInteger atomicInteger = sNumInstancesInUse;
        if (atomicInteger != null) {
            atomicInteger.incrementAndGet();
        }
        return accessibilityNodeInfoAcquire != null ? accessibilityNodeInfoAcquire : new AccessibilityNodeInfo();
    }

    public boolean performAction(int i2, Bundle bundle) {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mSourceNodeId)) {
            return AccessibilityInteractionClient.getInstance().performAccessibilityAction(this.mConnectionId, this.mWindowId, this.mSourceNodeId, i2, bundle);
        }
        return false;
    }

    public static final class AccessibilityAction {
        private final int mActionId;
        private final CharSequence mLabel;
        public int mSerializationFlag;
        public static final ArraySet<AccessibilityAction> sStandardActions = new ArraySet<>();
        public static final AccessibilityAction ACTION_FOCUS = new AccessibilityAction(1);
        public static final AccessibilityAction ACTION_CLEAR_FOCUS = new AccessibilityAction(2);
        public static final AccessibilityAction ACTION_SELECT = new AccessibilityAction(4);
        public static final AccessibilityAction ACTION_CLEAR_SELECTION = new AccessibilityAction(8);
        public static final AccessibilityAction ACTION_CLICK = new AccessibilityAction(16);
        public static final AccessibilityAction ACTION_LONG_CLICK = new AccessibilityAction(32);
        public static final AccessibilityAction ACTION_ACCESSIBILITY_FOCUS = new AccessibilityAction(64);
        public static final AccessibilityAction ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityAction(128);
        public static final AccessibilityAction ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityAction(256);
        public static final AccessibilityAction ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityAction(512);
        public static final AccessibilityAction ACTION_NEXT_HTML_ELEMENT = new AccessibilityAction(1024);
        public static final AccessibilityAction ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityAction(2048);
        public static final AccessibilityAction ACTION_SCROLL_FORWARD = new AccessibilityAction(4096);
        public static final AccessibilityAction ACTION_SCROLL_BACKWARD = new AccessibilityAction(8192);
        public static final AccessibilityAction ACTION_COPY = new AccessibilityAction(16384);
        public static final AccessibilityAction ACTION_PASTE = new AccessibilityAction(32768);
        public static final AccessibilityAction ACTION_CUT = new AccessibilityAction(65536);
        public static final AccessibilityAction ACTION_SET_SELECTION = new AccessibilityAction(131072);
        public static final AccessibilityAction ACTION_EXPAND = new AccessibilityAction(262144);
        public static final AccessibilityAction ACTION_COLLAPSE = new AccessibilityAction(524288);
        public static final AccessibilityAction ACTION_DISMISS = new AccessibilityAction(1048576);
        public static final AccessibilityAction ACTION_SET_TEXT = new AccessibilityAction(2097152);
        public static final AccessibilityAction ACTION_SHOW_ON_SCREEN = new AccessibilityAction(16908342);
        public static final AccessibilityAction ACTION_SCROLL_TO_POSITION = new AccessibilityAction(16908343);
        public static final AccessibilityAction ACTION_SCROLL_UP = new AccessibilityAction(16908344);
        public static final AccessibilityAction ACTION_SCROLL_LEFT = new AccessibilityAction(16908345);
        public static final AccessibilityAction ACTION_SCROLL_DOWN = new AccessibilityAction(16908346);
        public static final AccessibilityAction ACTION_SCROLL_RIGHT = new AccessibilityAction(16908347);
        public static final AccessibilityAction ACTION_CONTEXT_CLICK = new AccessibilityAction(16908348);
        public static final AccessibilityAction ACTION_SET_PROGRESS = new AccessibilityAction(16908349);
        public static final AccessibilityAction ACTION_MOVE_WINDOW = new AccessibilityAction(16908354);

        public AccessibilityAction(int i2, CharSequence charSequence) {
            this.mSerializationFlag = -1;
            if (((-16777216) & i2) == 0 && Integer.bitCount(i2) != 1) {
                throw new IllegalArgumentException("Invalid standard action id");
            }
            this.mActionId = i2;
            this.mLabel = charSequence;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            return AccessibilityAction.class == obj.getClass() && this.mActionId == ((AccessibilityAction) obj).mActionId;
        }

        public int getId() {
            return this.mActionId;
        }

        public CharSequence getLabel() {
            return this.mLabel;
        }

        public int hashCode() {
            return this.mActionId;
        }

        public String toString() {
            return "AccessibilityAction: " + AccessibilityNodeInfo.getActionSymbolicName(this.mActionId) + " - " + ((Object) this.mLabel);
        }

        private AccessibilityAction(int i2) {
            this(i2, null);
            ArraySet<AccessibilityAction> arraySet = sStandardActions;
            this.mSerializationFlag = (int) BitUtils.bitAt(arraySet.size());
            arraySet.add(this);
        }
    }

    public boolean refresh() {
        return refresh(null, true);
    }

    public static AccessibilityNodeInfo obtain(AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = obtain();
        accessibilityNodeInfoObtain.init(accessibilityNodeInfo);
        return accessibilityNodeInfoObtain;
    }
}
