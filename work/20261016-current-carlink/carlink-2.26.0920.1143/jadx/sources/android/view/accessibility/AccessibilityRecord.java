package android.view.accessibility;

import android.app.m;
import android.os.Parcelable;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AccessibilityRecord {
    private static final int GET_SOURCE_PREFETCH_FLAGS = 7;
    private static final int MAX_POOL_SIZE = 10;
    private static final int PROPERTY_CHECKED = 1;
    private static final int PROPERTY_ENABLED = 2;
    private static final int PROPERTY_FULL_SCREEN = 128;
    private static final int PROPERTY_IMPORTANT_FOR_ACCESSIBILITY = 512;
    private static final int PROPERTY_PASSWORD = 4;
    private static final int PROPERTY_SCROLLABLE = 256;
    private static final int UNDEFINED = -1;
    private static AccessibilityRecord sPool;
    private static final Object sPoolLock = new Object();
    private static int sPoolSize;
    CharSequence mBeforeText;
    CharSequence mClassName;
    CharSequence mContentDescription;
    private boolean mIsInPool;
    private AccessibilityRecord mNext;
    Parcelable mParcelableData;
    boolean mSealed;
    int mBooleanProperties = 0;
    int mCurrentItemIndex = -1;
    int mItemCount = -1;
    int mFromIndex = -1;
    int mToIndex = -1;
    int mScrollX = -1;
    int mScrollY = -1;
    int mMaxScrollX = -1;
    int mMaxScrollY = -1;
    int mAddedCount = -1;
    int mRemovedCount = -1;
    long mSourceNodeId = AccessibilityNodeInfo.UNDEFINED_NODE_ID;
    int mSourceWindowId = -1;
    final List<CharSequence> mText = new ArrayList();
    int mConnectionId = -1;

    private boolean getBooleanProperty(int i2) {
        return (this.mBooleanProperties & i2) == i2;
    }

    public static AccessibilityRecord obtain(AccessibilityRecord accessibilityRecord) {
        AccessibilityRecord accessibilityRecordObtain = obtain();
        accessibilityRecordObtain.init(accessibilityRecord);
        return accessibilityRecordObtain;
    }

    private void setBooleanProperty(int i2, boolean z2) {
        if (z2) {
            this.mBooleanProperties = i2 | this.mBooleanProperties;
        } else {
            this.mBooleanProperties = (~i2) & this.mBooleanProperties;
        }
    }

    void clear() {
        this.mSealed = false;
        this.mBooleanProperties = 0;
        this.mCurrentItemIndex = -1;
        this.mItemCount = -1;
        this.mFromIndex = -1;
        this.mToIndex = -1;
        this.mScrollX = -1;
        this.mScrollY = -1;
        this.mMaxScrollX = -1;
        this.mMaxScrollY = -1;
        this.mAddedCount = -1;
        this.mRemovedCount = -1;
        this.mClassName = null;
        this.mContentDescription = null;
        this.mBeforeText = null;
        this.mParcelableData = null;
        this.mText.clear();
        this.mSourceNodeId = 2147483647L;
        this.mSourceWindowId = -1;
        this.mConnectionId = -1;
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

    public int getAddedCount() {
        return this.mAddedCount;
    }

    public CharSequence getBeforeText() {
        return this.mBeforeText;
    }

    public CharSequence getClassName() {
        return this.mClassName;
    }

    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    public int getCurrentItemIndex() {
        return this.mCurrentItemIndex;
    }

    public int getFromIndex() {
        return this.mFromIndex;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    public int getMaxScrollX() {
        return this.mMaxScrollX;
    }

    public int getMaxScrollY() {
        return this.mMaxScrollY;
    }

    public Parcelable getParcelableData() {
        return this.mParcelableData;
    }

    public int getRemovedCount() {
        return this.mRemovedCount;
    }

    public int getScrollX() {
        return this.mScrollX;
    }

    public int getScrollY() {
        return this.mScrollY;
    }

    public AccessibilityNodeInfo getSource() {
        enforceSealed();
        if (this.mConnectionId == -1 || this.mSourceWindowId == -1 || AccessibilityNodeInfo.getAccessibilityViewId(this.mSourceNodeId) == Integer.MAX_VALUE) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mSourceWindowId, this.mSourceNodeId, false, 7, null);
    }

    public long getSourceNodeId() {
        return this.mSourceNodeId;
    }

    public List<CharSequence> getText() {
        return this.mText;
    }

    public int getToIndex() {
        return this.mToIndex;
    }

    public int getWindowId() {
        return this.mSourceWindowId;
    }

    public void init(AccessibilityRecord accessibilityRecord) {
        this.mSealed = accessibilityRecord.mSealed;
        this.mBooleanProperties = accessibilityRecord.mBooleanProperties;
        this.mCurrentItemIndex = accessibilityRecord.mCurrentItemIndex;
        this.mItemCount = accessibilityRecord.mItemCount;
        this.mFromIndex = accessibilityRecord.mFromIndex;
        this.mToIndex = accessibilityRecord.mToIndex;
        this.mScrollX = accessibilityRecord.mScrollX;
        this.mScrollY = accessibilityRecord.mScrollY;
        this.mMaxScrollX = accessibilityRecord.mMaxScrollX;
        this.mMaxScrollY = accessibilityRecord.mMaxScrollY;
        this.mAddedCount = accessibilityRecord.mAddedCount;
        this.mRemovedCount = accessibilityRecord.mRemovedCount;
        this.mClassName = accessibilityRecord.mClassName;
        this.mContentDescription = accessibilityRecord.mContentDescription;
        this.mBeforeText = accessibilityRecord.mBeforeText;
        this.mParcelableData = accessibilityRecord.mParcelableData;
        this.mText.addAll(accessibilityRecord.mText);
        this.mSourceWindowId = accessibilityRecord.mSourceWindowId;
        this.mSourceNodeId = accessibilityRecord.mSourceNodeId;
        this.mConnectionId = accessibilityRecord.mConnectionId;
    }

    public boolean isChecked() {
        return getBooleanProperty(1);
    }

    public boolean isEnabled() {
        return getBooleanProperty(2);
    }

    public boolean isFullScreen() {
        return getBooleanProperty(128);
    }

    public boolean isImportantForAccessibility() {
        return getBooleanProperty(512);
    }

    public boolean isPassword() {
        return getBooleanProperty(4);
    }

    public boolean isScrollable() {
        return getBooleanProperty(256);
    }

    boolean isSealed() {
        return this.mSealed;
    }

    public void recycle() {
        if (this.mIsInPool) {
            throw new IllegalStateException("Record already recycled!");
        }
        clear();
        synchronized (sPoolLock) {
            int i2 = sPoolSize;
            if (i2 <= 10) {
                this.mNext = sPool;
                sPool = this;
                this.mIsInPool = true;
                sPoolSize = i2 + 1;
            }
        }
    }

    public void setAddedCount(int i2) {
        enforceNotSealed();
        this.mAddedCount = i2;
    }

    public void setBeforeText(CharSequence charSequence) {
        enforceNotSealed();
        this.mBeforeText = charSequence == null ? null : charSequence.subSequence(0, charSequence.length());
    }

    public void setChecked(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(1, z2);
    }

    public void setClassName(CharSequence charSequence) {
        enforceNotSealed();
        this.mClassName = charSequence;
    }

    public void setConnectionId(int i2) {
        enforceNotSealed();
        this.mConnectionId = i2;
    }

    public void setContentDescription(CharSequence charSequence) {
        enforceNotSealed();
        this.mContentDescription = charSequence == null ? null : charSequence.subSequence(0, charSequence.length());
    }

    public void setCurrentItemIndex(int i2) {
        enforceNotSealed();
        this.mCurrentItemIndex = i2;
    }

    public void setEnabled(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(2, z2);
    }

    public void setFromIndex(int i2) {
        enforceNotSealed();
        this.mFromIndex = i2;
    }

    public void setFullScreen(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(128, z2);
    }

    public void setImportantForAccessibility(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(512, z2);
    }

    public void setItemCount(int i2) {
        enforceNotSealed();
        this.mItemCount = i2;
    }

    public void setMaxScrollX(int i2) {
        enforceNotSealed();
        this.mMaxScrollX = i2;
    }

    public void setMaxScrollY(int i2) {
        enforceNotSealed();
        this.mMaxScrollY = i2;
    }

    public void setParcelableData(Parcelable parcelable) {
        enforceNotSealed();
        this.mParcelableData = parcelable;
    }

    public void setPassword(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(4, z2);
    }

    public void setRemovedCount(int i2) {
        enforceNotSealed();
        this.mRemovedCount = i2;
    }

    public void setScrollX(int i2) {
        enforceNotSealed();
        this.mScrollX = i2;
    }

    public void setScrollY(int i2) {
        enforceNotSealed();
        this.mScrollY = i2;
    }

    public void setScrollable(boolean z2) {
        enforceNotSealed();
        setBooleanProperty(256, z2);
    }

    public void setSealed(boolean z2) {
        this.mSealed = z2;
    }

    public void setSource(View view) {
        setSource(view, -1);
    }

    public void setSourceNodeId(long j2) {
        this.mSourceNodeId = j2;
    }

    public void setToIndex(int i2) {
        enforceNotSealed();
        this.mToIndex = i2;
    }

    public void setWindowId(int i2) {
        this.mSourceWindowId = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" [ ClassName: " + ((Object) this.mClassName));
        sb.append("; Text: " + this.mText);
        sb.append("; ContentDescription: " + ((Object) this.mContentDescription));
        StringBuilder sbM = m.m(m.m(new StringBuilder("; ItemCount: "), this.mItemCount, sb, "; CurrentItemIndex: "), this.mCurrentItemIndex, sb, "; IsEnabled: ");
        sbM.append(getBooleanProperty(2));
        sb.append(sbM.toString());
        sb.append("; IsPassword: " + getBooleanProperty(4));
        sb.append("; IsChecked: " + getBooleanProperty(1));
        sb.append("; IsFullScreen: " + getBooleanProperty(128));
        sb.append("; Scrollable: " + getBooleanProperty(256));
        sb.append("; BeforeText: " + ((Object) this.mBeforeText));
        StringBuilder sbM2 = m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(new StringBuilder("; FromIndex: "), this.mFromIndex, sb, "; ToIndex: "), this.mToIndex, sb, "; ScrollX: "), this.mScrollX, sb, "; ScrollY: "), this.mScrollY, sb, "; MaxScrollX: "), this.mMaxScrollX, sb, "; MaxScrollY: "), this.mMaxScrollY, sb, "; AddedCount: "), this.mAddedCount, sb, "; RemovedCount: "), this.mRemovedCount, sb, "; ParcelableData: ");
        sbM2.append(this.mParcelableData);
        sb.append(sbM2.toString());
        sb.append(" ]");
        return sb.toString();
    }

    public void setSource(View view, int i2) {
        boolean zIsImportantForAccessibility;
        int accessibilityViewId;
        enforceNotSealed();
        this.mSourceWindowId = -1;
        if (view != null) {
            zIsImportantForAccessibility = view.isImportantForAccessibility();
            accessibilityViewId = view.getAccessibilityViewId();
            this.mSourceWindowId = view.getAccessibilityWindowId();
        } else {
            zIsImportantForAccessibility = true;
            accessibilityViewId = Integer.MAX_VALUE;
        }
        setBooleanProperty(512, zIsImportantForAccessibility);
        this.mSourceNodeId = AccessibilityNodeInfo.makeNodeId(accessibilityViewId, i2);
    }

    public static AccessibilityRecord obtain() {
        synchronized (sPoolLock) {
            AccessibilityRecord accessibilityRecord = sPool;
            if (accessibilityRecord != null) {
                sPool = accessibilityRecord.mNext;
                sPoolSize--;
                accessibilityRecord.mNext = null;
                accessibilityRecord.mIsInPool = false;
                return accessibilityRecord;
            }
            return new AccessibilityRecord();
        }
    }
}
