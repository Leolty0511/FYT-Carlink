package android.view.accessibility;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pools;
import android.util.SparseLongArray;
import android.view.View;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityNodeInfo implements Parcelable {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
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
    public static final int ACTIVE_WINDOW_ID = -1;
    private static final int BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED = 1024;
    private static final int BOOLEAN_PROPERTY_CHECKABLE = 1;
    private static final int BOOLEAN_PROPERTY_CHECKED = 2;
    private static final int BOOLEAN_PROPERTY_CLICKABLE = 32;
    private static final int BOOLEAN_PROPERTY_CONTENT_INVALID = 65536;
    private static final int BOOLEAN_PROPERTY_DISMISSABLE = 16384;
    private static final int BOOLEAN_PROPERTY_EDITABLE = 4096;
    private static final int BOOLEAN_PROPERTY_ENABLED = 128;
    private static final int BOOLEAN_PROPERTY_FOCUSABLE = 4;
    private static final int BOOLEAN_PROPERTY_FOCUSED = 8;
    private static final int BOOLEAN_PROPERTY_LONG_CLICKABLE = 64;
    private static final int BOOLEAN_PROPERTY_MULTI_LINE = 32768;
    private static final int BOOLEAN_PROPERTY_OPENS_POPUP = 8192;
    private static final int BOOLEAN_PROPERTY_PASSWORD = 256;
    private static final int BOOLEAN_PROPERTY_SCROLLABLE = 512;
    private static final int BOOLEAN_PROPERTY_SELECTED = 16;
    private static final int BOOLEAN_PROPERTY_VISIBLE_TO_USER = 2048;
    private static final boolean DEBUG = false;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 8;
    public static final int FLAG_PREFETCH_DESCENDANTS = 4;
    public static final int FLAG_PREFETCH_PREDECESSORS = 1;
    public static final int FLAG_PREFETCH_SIBLINGS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    private static final int MAX_POOL_SIZE = 50;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    public static final int UNDEFINED = -1;
    private static final long VIRTUAL_DESCENDANT_ID_MASK = -4294967296L;
    private static final int VIRTUAL_DESCENDANT_ID_SHIFT = 32;
    private int mActions;
    private int mBooleanProperties;
    private final Rect mBoundsInParent;
    private final Rect mBoundsInScreen;
    private final SparseLongArray mChildNodeIds;
    private CharSequence mClassName;
    private CollectionInfo mCollectionInfo;
    private CollectionItemInfo mCollectionItemInfo;
    private int mConnectionId;
    private CharSequence mContentDescription;
    private Bundle mExtras;
    private int mInputType;
    private long mLabelForId;
    private long mLabeledById;
    private int mLiveRegion;
    private int mMovementGranularities;
    private CharSequence mPackageName;
    private long mParentNodeId;
    private RangeInfo mRangeInfo;
    private boolean mSealed;
    private long mSourceNodeId;
    private CharSequence mText;
    private int mTextSelectionEnd;
    private int mTextSelectionStart;
    private String mViewIdResourceName;
    private int mWindowId = -1;
    public static final long ROOT_NODE_ID = makeNodeId(-1, -1);
    private static final Pools.SynchronizedPool<AccessibilityNodeInfo> sPool = new Pools.SynchronizedPool<>(50);
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
        private static final Pools.SynchronizedPool<CollectionInfo> sPool = new Pools.SynchronizedPool<>(20);
        private int mColumnCount;
        private boolean mHierarchical;
        private int mRowCount;

        private CollectionInfo(int i2, int i3, boolean z2) {
            this.mRowCount = i2;
            this.mColumnCount = i3;
            this.mHierarchical = z2;
        }

        private void clear() {
            this.mRowCount = 0;
            this.mColumnCount = 0;
            this.mHierarchical = false;
        }

        public static CollectionInfo obtain(CollectionInfo collectionInfo) {
            return obtain(collectionInfo.mRowCount, collectionInfo.mColumnCount, collectionInfo.mHierarchical);
        }

        public int getColumnCount() {
            return this.mColumnCount;
        }

        public int getRowCount() {
            return this.mRowCount;
        }

        public boolean isHierarchical() {
            return this.mHierarchical;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        public static CollectionInfo obtain(int i2, int i3, boolean z2) {
            CollectionInfo collectionInfoAcquire = sPool.acquire();
            return collectionInfoAcquire != null ? collectionInfoAcquire : new CollectionInfo(i2, i3, z2);
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

        private CollectionItemInfo(int i2, int i3, int i4, int i5, boolean z2) {
            this.mRowIndex = i2;
            this.mRowSpan = i3;
            this.mColumnIndex = i4;
            this.mColumnSpan = i5;
            this.mHeading = z2;
        }

        private void clear() {
            this.mColumnIndex = 0;
            this.mColumnSpan = 0;
            this.mRowIndex = 0;
            this.mRowSpan = 0;
            this.mHeading = false;
        }

        public static CollectionItemInfo obtain(CollectionItemInfo collectionItemInfo) {
            return obtain(collectionItemInfo.mRowIndex, collectionItemInfo.mRowSpan, collectionItemInfo.mColumnIndex, collectionItemInfo.mColumnSpan, collectionItemInfo.mHeading);
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

        public void recycle() {
            clear();
            sPool.release(this);
        }

        public static CollectionItemInfo obtain(int i2, int i3, int i4, int i5, boolean z2) {
            CollectionItemInfo collectionItemInfoAcquire = sPool.acquire();
            return collectionItemInfoAcquire != null ? collectionItemInfoAcquire : new CollectionItemInfo(i2, i3, i4, i5, z2);
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
            return rangeInfoAcquire != null ? rangeInfoAcquire : new RangeInfo(i2, f2, f3, f4);
        }
    }

    private AccessibilityNodeInfo() {
        long j2 = ROOT_NODE_ID;
        this.mSourceNodeId = j2;
        this.mParentNodeId = j2;
        this.mLabelForId = j2;
        this.mLabeledById = j2;
        this.mBoundsInParent = new Rect();
        this.mBoundsInScreen = new Rect();
        this.mChildNodeIds = new SparseLongArray();
        this.mTextSelectionStart = -1;
        this.mTextSelectionEnd = -1;
        this.mInputType = 0;
        this.mLiveRegion = 0;
        this.mConnectionId = -1;
    }

    private boolean canPerformRequestOverConnection(long j2) {
        return (this.mWindowId == -1 || getAccessibilityViewId(j2) == -1 || this.mConnectionId == -1) ? false : true;
    }

    private void clear() {
        this.mSealed = false;
        long j2 = ROOT_NODE_ID;
        this.mSourceNodeId = j2;
        this.mParentNodeId = j2;
        this.mLabelForId = j2;
        this.mLabeledById = j2;
        this.mWindowId = -1;
        this.mConnectionId = -1;
        this.mMovementGranularities = 0;
        this.mChildNodeIds.clear();
        this.mBoundsInParent.set(0, 0, 0, 0);
        this.mBoundsInScreen.set(0, 0, 0, 0);
        this.mBooleanProperties = 0;
        this.mPackageName = null;
        this.mClassName = null;
        this.mText = null;
        this.mContentDescription = null;
        this.mViewIdResourceName = null;
        this.mActions = 0;
        this.mTextSelectionStart = -1;
        this.mTextSelectionEnd = -1;
        this.mInputType = 0;
        this.mLiveRegion = 0;
        Bundle bundle = this.mExtras;
        if (bundle != null) {
            bundle.clear();
        }
        RangeInfo rangeInfo = this.mRangeInfo;
        if (rangeInfo != null) {
            rangeInfo.recycle();
            this.mRangeInfo = null;
        }
        CollectionInfo collectionInfo = this.mCollectionInfo;
        if (collectionInfo != null) {
            collectionInfo.recycle();
            this.mCollectionInfo = null;
        }
        CollectionItemInfo collectionItemInfo = this.mCollectionItemInfo;
        if (collectionItemInfo != null) {
            collectionItemInfo.recycle();
            this.mCollectionItemInfo = null;
        }
    }

    private void enforceValidFocusDirection(int i2) {
        if (i2 == 1 || i2 == 2 || i2 == 17 || i2 == 33 || i2 == 66 || i2 == 130) {
            return;
        }
        throw new IllegalArgumentException("Unknown direction: " + i2);
    }

    private void enforceValidFocusType(int i2) {
        if (i2 == 1 || i2 == 2) {
            return;
        }
        throw new IllegalArgumentException("Unknown focus type: " + i2);
    }

    public static int getAccessibilityViewId(long j2) {
        return (int) j2;
    }

    private static String getActionSymbolicName(int i2) {
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
            default:
                return "ACTION_UNKNOWN";
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
        throw new IllegalArgumentException("Unknown movement granularity: " + i2);
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
        this.mWindowId = accessibilityNodeInfo.mWindowId;
        this.mConnectionId = accessibilityNodeInfo.mConnectionId;
        this.mBoundsInParent.set(accessibilityNodeInfo.mBoundsInParent);
        this.mBoundsInScreen.set(accessibilityNodeInfo.mBoundsInScreen);
        this.mPackageName = accessibilityNodeInfo.mPackageName;
        this.mClassName = accessibilityNodeInfo.mClassName;
        this.mText = accessibilityNodeInfo.mText;
        this.mContentDescription = accessibilityNodeInfo.mContentDescription;
        this.mViewIdResourceName = accessibilityNodeInfo.mViewIdResourceName;
        this.mActions = accessibilityNodeInfo.mActions;
        this.mBooleanProperties = accessibilityNodeInfo.mBooleanProperties;
        this.mMovementGranularities = accessibilityNodeInfo.mMovementGranularities;
        int size = accessibilityNodeInfo.mChildNodeIds.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mChildNodeIds.put(i2, accessibilityNodeInfo.mChildNodeIds.valueAt(i2));
        }
        this.mTextSelectionStart = accessibilityNodeInfo.mTextSelectionStart;
        this.mTextSelectionEnd = accessibilityNodeInfo.mTextSelectionEnd;
        this.mInputType = accessibilityNodeInfo.mInputType;
        this.mLiveRegion = accessibilityNodeInfo.mLiveRegion;
        Bundle bundle = accessibilityNodeInfo.mExtras;
        if (bundle != null && !bundle.isEmpty()) {
            getExtras().putAll(accessibilityNodeInfo.mExtras);
        }
        RangeInfo rangeInfo = accessibilityNodeInfo.mRangeInfo;
        this.mRangeInfo = rangeInfo != null ? RangeInfo.obtain(rangeInfo) : null;
        CollectionInfo collectionInfo = accessibilityNodeInfo.mCollectionInfo;
        this.mCollectionInfo = collectionInfo != null ? CollectionInfo.obtain(collectionInfo) : null;
        CollectionItemInfo collectionItemInfo = accessibilityNodeInfo.mCollectionItemInfo;
        this.mCollectionItemInfo = collectionItemInfo != null ? CollectionItemInfo.obtain(collectionItemInfo) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        this.mSealed = parcel.readInt() == 1;
        this.mSourceNodeId = parcel.readLong();
        this.mWindowId = parcel.readInt();
        this.mParentNodeId = parcel.readLong();
        this.mLabelForId = parcel.readLong();
        this.mLabeledById = parcel.readLong();
        this.mConnectionId = parcel.readInt();
        SparseLongArray sparseLongArray = this.mChildNodeIds;
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseLongArray.put(i3, parcel.readLong());
        }
        this.mBoundsInParent.top = parcel.readInt();
        this.mBoundsInParent.bottom = parcel.readInt();
        this.mBoundsInParent.left = parcel.readInt();
        this.mBoundsInParent.right = parcel.readInt();
        this.mBoundsInScreen.top = parcel.readInt();
        this.mBoundsInScreen.bottom = parcel.readInt();
        this.mBoundsInScreen.left = parcel.readInt();
        this.mBoundsInScreen.right = parcel.readInt();
        this.mActions = parcel.readInt();
        this.mMovementGranularities = parcel.readInt();
        this.mBooleanProperties = parcel.readInt();
        this.mPackageName = parcel.readCharSequence();
        this.mClassName = parcel.readCharSequence();
        this.mText = parcel.readCharSequence();
        this.mContentDescription = parcel.readCharSequence();
        this.mViewIdResourceName = parcel.readString();
        this.mTextSelectionStart = parcel.readInt();
        this.mTextSelectionEnd = parcel.readInt();
        this.mInputType = parcel.readInt();
        this.mLiveRegion = parcel.readInt();
        if (parcel.readInt() == 1) {
            getExtras().putAll(parcel.readBundle());
        }
        if (parcel.readInt() == 1) {
            this.mRangeInfo = RangeInfo.obtain(parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
        }
        if (parcel.readInt() == 1) {
            this.mCollectionInfo = CollectionInfo.obtain(parcel.readInt(), parcel.readInt(), parcel.readInt() == 1);
        }
        if (parcel.readInt() == 1) {
            this.mCollectionItemInfo = CollectionItemInfo.obtain(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 1);
        }
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

    public void addAction(int i2) {
        enforceNotSealed();
        this.mActions = i2 | this.mActions;
    }

    public void addChild(View view) {
        addChild(view, -1);
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

    public int getActions() {
        return this.mActions;
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
        if (!canPerformRequestOverConnection(this.mSourceNodeId)) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mChildNodeIds.get(i2), false, 4);
    }

    public int getChildCount() {
        return this.mChildNodeIds.size();
    }

    public SparseLongArray getChildNodeIds() {
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

    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public int getInputType() {
        return this.mInputType;
    }

    public AccessibilityNodeInfo getLabelFor() {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mLabelForId)) {
            return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mLabelForId, false, 6);
        }
        return null;
    }

    public AccessibilityNodeInfo getLabeledBy() {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mLabeledById)) {
            return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mLabeledById, false, 6);
        }
        return null;
    }

    public int getLiveRegion() {
        return this.mLiveRegion;
    }

    public int getMovementGranularities() {
        return this.mMovementGranularities;
    }

    public CharSequence getPackageName() {
        return this.mPackageName;
    }

    public AccessibilityNodeInfo getParent() {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mParentNodeId)) {
            return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mParentNodeId, false, 6);
        }
        return null;
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
        return this.mText;
    }

    public int getTextSelectionEnd() {
        return this.mTextSelectionEnd;
    }

    public int getTextSelectionStart() {
        return this.mTextSelectionStart;
    }

    public String getViewIdResourceName() {
        return this.mViewIdResourceName;
    }

    public int getWindowId() {
        return this.mWindowId;
    }

    public int hashCode() {
        return ((((getAccessibilityViewId(this.mSourceNodeId) + 31) * 31) + getVirtualDescendantId(this.mSourceNodeId)) * 31) + this.mWindowId;
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
    }

    public boolean refresh(boolean z2) {
        AccessibilityNodeInfo accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId;
        enforceSealed();
        if (!canPerformRequestOverConnection(this.mSourceNodeId) || (accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId = AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mWindowId, this.mSourceNodeId, z2, 0)) == null) {
            return false;
        }
        init(accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId);
        accessibilityNodeInfoFindAccessibilityNodeInfoByAccessibilityId.recycle();
        return true;
    }

    public void setAccessibilityFocused(boolean z2) {
        setBooleanProperty(1024, z2);
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
        this.mContentDescription = charSequence;
    }

    public void setContentInvalid(boolean z2) {
        setBooleanProperty(65536, z2);
    }

    public void setDismissable(boolean z2) {
        setBooleanProperty(16384, z2);
    }

    public void setEditable(boolean z2) {
        setBooleanProperty(4096, z2);
    }

    public void setEnabled(boolean z2) {
        setBooleanProperty(128, z2);
    }

    public void setFocusable(boolean z2) {
        setBooleanProperty(4, z2);
    }

    public void setFocused(boolean z2) {
        setBooleanProperty(8, z2);
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

    public void setSource(View view) {
        setSource(view, -1);
    }

    public void setText(CharSequence charSequence) {
        enforceNotSealed();
        this.mText = charSequence;
    }

    public void setTextSelection(int i2, int i3) {
        enforceNotSealed();
        this.mTextSelectionStart = i2;
        this.mTextSelectionEnd = i3;
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
        sb.append("; enabled: ");
        sb.append(isEnabled());
        sb.append("; password: ");
        sb.append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; [");
        int i2 = this.mActions;
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            sb.append(getActionSymbolicName(iNumberOfTrailingZeros));
            if (i2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(isSealed() ? 1 : 0);
        parcel.writeLong(this.mSourceNodeId);
        parcel.writeInt(this.mWindowId);
        parcel.writeLong(this.mParentNodeId);
        parcel.writeLong(this.mLabelForId);
        parcel.writeLong(this.mLabeledById);
        parcel.writeInt(this.mConnectionId);
        SparseLongArray sparseLongArray = this.mChildNodeIds;
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeLong(sparseLongArray.valueAt(i3));
        }
        parcel.writeInt(this.mBoundsInParent.top);
        parcel.writeInt(this.mBoundsInParent.bottom);
        parcel.writeInt(this.mBoundsInParent.left);
        parcel.writeInt(this.mBoundsInParent.right);
        parcel.writeInt(this.mBoundsInScreen.top);
        parcel.writeInt(this.mBoundsInScreen.bottom);
        parcel.writeInt(this.mBoundsInScreen.left);
        parcel.writeInt(this.mBoundsInScreen.right);
        parcel.writeInt(this.mActions);
        parcel.writeInt(this.mMovementGranularities);
        parcel.writeInt(this.mBooleanProperties);
        parcel.writeCharSequence(this.mPackageName);
        parcel.writeCharSequence(this.mClassName);
        parcel.writeCharSequence(this.mText);
        parcel.writeCharSequence(this.mContentDescription);
        parcel.writeString(this.mViewIdResourceName);
        parcel.writeInt(this.mTextSelectionStart);
        parcel.writeInt(this.mTextSelectionEnd);
        parcel.writeInt(this.mInputType);
        parcel.writeInt(this.mLiveRegion);
        if (this.mExtras != null) {
            parcel.writeInt(1);
            parcel.writeBundle(this.mExtras);
        } else {
            parcel.writeInt(0);
        }
        if (this.mRangeInfo != null) {
            parcel.writeInt(1);
            parcel.writeInt(this.mRangeInfo.getType());
            parcel.writeFloat(this.mRangeInfo.getMin());
            parcel.writeFloat(this.mRangeInfo.getMax());
            parcel.writeFloat(this.mRangeInfo.getCurrent());
        } else {
            parcel.writeInt(0);
        }
        if (this.mCollectionInfo != null) {
            parcel.writeInt(1);
            parcel.writeInt(this.mCollectionInfo.getRowCount());
            parcel.writeInt(this.mCollectionInfo.getColumnCount());
            parcel.writeInt(this.mCollectionInfo.isHierarchical() ? 1 : 0);
        } else {
            parcel.writeInt(0);
        }
        if (this.mCollectionItemInfo != null) {
            parcel.writeInt(1);
            parcel.writeInt(this.mCollectionItemInfo.getColumnIndex());
            parcel.writeInt(this.mCollectionItemInfo.getColumnSpan());
            parcel.writeInt(this.mCollectionItemInfo.getRowIndex());
            parcel.writeInt(this.mCollectionItemInfo.getRowSpan());
            parcel.writeInt(this.mCollectionItemInfo.isHeading() ? 1 : 0);
        } else {
            parcel.writeInt(0);
        }
        recycle();
    }

    public void addChild(View view, int i2) {
        enforceNotSealed();
        this.mChildNodeIds.put(this.mChildNodeIds.size(), makeNodeId(view != null ? view.getAccessibilityViewId() : -1, i2));
    }

    public void setLabelFor(View view, int i2) {
        enforceNotSealed();
        this.mLabelForId = makeNodeId(view != null ? view.getAccessibilityViewId() : -1, i2);
    }

    public void setLabeledBy(View view, int i2) {
        enforceNotSealed();
        this.mLabeledById = makeNodeId(view != null ? view.getAccessibilityViewId() : -1, i2);
    }

    public void setParent(View view, int i2) {
        enforceNotSealed();
        this.mParentNodeId = makeNodeId(view != null ? view.getAccessibilityViewId() : -1, i2);
    }

    public void setSource(View view, int i2) {
        enforceNotSealed();
        this.mWindowId = view != null ? view.getAccessibilityWindowId() : -1;
        this.mSourceNodeId = makeNodeId(view != null ? view.getAccessibilityViewId() : -1, i2);
    }

    public static AccessibilityNodeInfo obtain(View view, int i2) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = obtain();
        accessibilityNodeInfoObtain.setSource(view, i2);
        return accessibilityNodeInfoObtain;
    }

    public static AccessibilityNodeInfo obtain() {
        AccessibilityNodeInfo accessibilityNodeInfoAcquire = sPool.acquire();
        return accessibilityNodeInfoAcquire != null ? accessibilityNodeInfoAcquire : new AccessibilityNodeInfo();
    }

    public boolean performAction(int i2, Bundle bundle) {
        enforceSealed();
        if (canPerformRequestOverConnection(this.mSourceNodeId)) {
            return AccessibilityInteractionClient.getInstance().performAccessibilityAction(this.mConnectionId, this.mWindowId, this.mSourceNodeId, i2, bundle);
        }
        return false;
    }

    public static AccessibilityNodeInfo obtain(AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = obtain();
        accessibilityNodeInfoObtain.init(accessibilityNodeInfo);
        return accessibilityNodeInfoObtain;
    }

    public boolean refresh() {
        return refresh(false);
    }
}
