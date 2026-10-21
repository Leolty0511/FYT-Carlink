package android.view.accessibility;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.LongArray;
import android.util.Pools;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityWindowInfo implements Parcelable {
    public static final int ACTIVE_WINDOW_ID = Integer.MAX_VALUE;
    public static final int ANY_WINDOW_ID = -2;
    private static final int BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED = 4;
    private static final int BOOLEAN_PROPERTY_ACTIVE = 1;
    private static final int BOOLEAN_PROPERTY_FOCUSED = 2;
    private static final boolean DEBUG = false;
    private static final int MAX_POOL_SIZE = 10;
    public static final int PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID = -3;
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    public static final int UNDEFINED_WINDOW_ID = -1;
    private static AtomicInteger sNumInstancesInUse;
    private int mBooleanProperties;
    private LongArray mChildIds;
    private boolean mInPictureInPicture;
    private CharSequence mTitle;
    private static final Pools.SynchronizedPool<AccessibilityWindowInfo> sPool = new Pools.SynchronizedPool<>(10);
    public static final Parcelable.Creator<AccessibilityWindowInfo> CREATOR = new Parcelable.Creator<AccessibilityWindowInfo>() { // from class: android.view.accessibility.AccessibilityWindowInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityWindowInfo createFromParcel(Parcel parcel) {
            AccessibilityWindowInfo accessibilityWindowInfoObtain = AccessibilityWindowInfo.obtain();
            accessibilityWindowInfoObtain.initFromParcel(parcel);
            return accessibilityWindowInfoObtain;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityWindowInfo[] newArray(int i2) {
            return new AccessibilityWindowInfo[i2];
        }
    };
    private int mType = -1;
    private int mLayer = -1;
    private int mId = -1;
    private int mParentId = -1;
    private final Rect mBoundsInScreen = new Rect();
    private int mAnchorId = -1;
    private int mConnectionId = -1;

    private AccessibilityWindowInfo() {
    }

    private void clear() {
        this.mType = -1;
        this.mLayer = -1;
        this.mBooleanProperties = 0;
        this.mId = -1;
        this.mParentId = -1;
        this.mBoundsInScreen.setEmpty();
        LongArray longArray = this.mChildIds;
        if (longArray != null) {
            longArray.clear();
        }
        this.mConnectionId = -1;
        this.mAnchorId = -1;
        this.mInPictureInPicture = false;
        this.mTitle = null;
    }

    private boolean getBooleanProperty(int i2) {
        return (i2 & this.mBooleanProperties) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mLayer = parcel.readInt();
        this.mBooleanProperties = parcel.readInt();
        this.mId = parcel.readInt();
        this.mParentId = parcel.readInt();
        this.mBoundsInScreen.readFromParcel(parcel);
        this.mTitle = parcel.readCharSequence();
        this.mAnchorId = parcel.readInt();
        this.mInPictureInPicture = parcel.readInt() == 1;
        int i2 = parcel.readInt();
        if (i2 > 0) {
            if (this.mChildIds == null) {
                this.mChildIds = new LongArray(i2);
            }
            for (int i3 = 0; i3 < i2; i3++) {
                this.mChildIds.add(parcel.readInt());
            }
        }
        this.mConnectionId = parcel.readInt();
    }

    public static AccessibilityWindowInfo obtain() {
        AccessibilityWindowInfo accessibilityWindowInfoAcquire = sPool.acquire();
        if (accessibilityWindowInfoAcquire == null) {
            accessibilityWindowInfoAcquire = new AccessibilityWindowInfo();
        }
        AtomicInteger atomicInteger = sNumInstancesInUse;
        if (atomicInteger != null) {
            atomicInteger.incrementAndGet();
        }
        return accessibilityWindowInfoAcquire;
    }

    private void setBooleanProperty(int i2, boolean z2) {
        if (z2) {
            this.mBooleanProperties = i2 | this.mBooleanProperties;
        } else {
            this.mBooleanProperties = (~i2) & this.mBooleanProperties;
        }
    }

    public static void setNumInstancesInUseCounter(AtomicInteger atomicInteger) {
        if (sNumInstancesInUse != null) {
            sNumInstancesInUse = atomicInteger;
        }
    }

    private static String typeToString(int i2) {
        if (i2 == 1) {
            return "TYPE_APPLICATION";
        }
        if (i2 == 2) {
            return "TYPE_INPUT_METHOD";
        }
        if (i2 == 3) {
            return "TYPE_SYSTEM";
        }
        if (i2 != 4) {
            return i2 != 5 ? "<UNKNOWN>" : "TYPE_SPLIT_SCREEN_DIVIDER";
        }
        return "TYPE_ACCESSIBILITY_OVERLAY";
    }

    public void addChild(int i2) {
        if (this.mChildIds == null) {
            this.mChildIds = new LongArray();
        }
        this.mChildIds.add(i2);
    }

    public boolean changed(AccessibilityWindowInfo accessibilityWindowInfo) {
        if (accessibilityWindowInfo.mId != this.mId) {
            throw new IllegalArgumentException("Not same window.");
        }
        if (accessibilityWindowInfo.mType != this.mType) {
            throw new IllegalArgumentException("Not same type.");
        }
        if (!this.mBoundsInScreen.equals(accessibilityWindowInfo.mBoundsInScreen) || this.mLayer != accessibilityWindowInfo.mLayer || this.mBooleanProperties != accessibilityWindowInfo.mBooleanProperties || this.mParentId != accessibilityWindowInfo.mParentId) {
            return true;
        }
        LongArray longArray = this.mChildIds;
        if (longArray == null) {
            return accessibilityWindowInfo.mChildIds != null;
        }
        return !longArray.equals(accessibilityWindowInfo.mChildIds);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && AccessibilityWindowInfo.class == obj.getClass() && this.mId == ((AccessibilityWindowInfo) obj).mId;
    }

    public AccessibilityNodeInfo getAnchor() {
        if (this.mConnectionId == -1 || this.mAnchorId == -1 || this.mParentId == -1) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mParentId, this.mAnchorId, true, 0, null);
    }

    public void getBoundsInScreen(Rect rect) {
        rect.set(this.mBoundsInScreen);
    }

    public AccessibilityWindowInfo getChild(int i2) {
        LongArray longArray = this.mChildIds;
        if (longArray == null) {
            throw new IndexOutOfBoundsException();
        }
        if (this.mConnectionId == -1) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().getWindow(this.mConnectionId, (int) longArray.get(i2));
    }

    public int getChildCount() {
        LongArray longArray = this.mChildIds;
        if (longArray != null) {
            return longArray.size();
        }
        return 0;
    }

    public int getId() {
        return this.mId;
    }

    public int getLayer() {
        return this.mLayer;
    }

    public AccessibilityWindowInfo getParent() {
        if (this.mConnectionId == -1 || this.mParentId == -1) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().getWindow(this.mConnectionId, this.mParentId);
    }

    public AccessibilityNodeInfo getRoot() {
        if (this.mConnectionId == -1) {
            return null;
        }
        return AccessibilityInteractionClient.getInstance().findAccessibilityNodeInfoByAccessibilityId(this.mConnectionId, this.mId, AccessibilityNodeInfo.ROOT_NODE_ID, true, 4, null);
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public int getType() {
        return this.mType;
    }

    public int hashCode() {
        return this.mId;
    }

    public boolean inPictureInPicture() {
        return isInPictureInPictureMode();
    }

    public boolean isAccessibilityFocused() {
        return getBooleanProperty(4);
    }

    public boolean isActive() {
        return getBooleanProperty(1);
    }

    public boolean isFocused() {
        return getBooleanProperty(2);
    }

    public boolean isInPictureInPictureMode() {
        return this.mInPictureInPicture;
    }

    public void recycle() {
        clear();
        sPool.release(this);
        AtomicInteger atomicInteger = sNumInstancesInUse;
        if (atomicInteger != null) {
            atomicInteger.decrementAndGet();
        }
    }

    public void setAccessibilityFocused(boolean z2) {
        setBooleanProperty(4, z2);
    }

    public void setActive(boolean z2) {
        setBooleanProperty(1, z2);
    }

    public void setAnchorId(int i2) {
        this.mAnchorId = i2;
    }

    public void setBoundsInScreen(Rect rect) {
        this.mBoundsInScreen.set(rect);
    }

    public void setConnectionId(int i2) {
        this.mConnectionId = i2;
    }

    public void setFocused(boolean z2) {
        setBooleanProperty(2, z2);
    }

    public void setId(int i2) {
        this.mId = i2;
    }

    public void setLayer(int i2) {
        this.mLayer = i2;
    }

    public void setParentId(int i2) {
        this.mParentId = i2;
    }

    public void setPictureInPicture(boolean z2) {
        this.mInPictureInPicture = z2;
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
    }

    public void setType(int i2) {
        this.mType = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityWindowInfo[title=");
        sb.append(this.mTitle);
        sb.append("id=");
        sb.append(this.mId);
        sb.append(", type=");
        sb.append(typeToString(this.mType));
        sb.append(", layer=");
        sb.append(this.mLayer);
        sb.append(", bounds=");
        sb.append(this.mBoundsInScreen);
        sb.append(", focused=");
        sb.append(isFocused());
        sb.append(", active=");
        sb.append(isActive());
        sb.append(", pictureInPicture=");
        sb.append(inPictureInPicture());
        sb.append(", hasParent=");
        sb.append(this.mParentId != -1);
        sb.append(", isAnchored=");
        sb.append(this.mAnchorId != -1);
        sb.append(", hasChildren=");
        LongArray longArray = this.mChildIds;
        sb.append(longArray != null && longArray.size() > 0);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mLayer);
        parcel.writeInt(this.mBooleanProperties);
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mParentId);
        this.mBoundsInScreen.writeToParcel(parcel, i2);
        parcel.writeCharSequence(this.mTitle);
        parcel.writeInt(this.mAnchorId);
        parcel.writeInt(this.mInPictureInPicture ? 1 : 0);
        LongArray longArray = this.mChildIds;
        if (longArray == null) {
            parcel.writeInt(0);
        } else {
            int size = longArray.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                parcel.writeInt((int) longArray.get(i3));
            }
        }
        parcel.writeInt(this.mConnectionId);
    }

    public static AccessibilityWindowInfo obtain(AccessibilityWindowInfo accessibilityWindowInfo) {
        AccessibilityWindowInfo accessibilityWindowInfoObtain = obtain();
        accessibilityWindowInfoObtain.mType = accessibilityWindowInfo.mType;
        accessibilityWindowInfoObtain.mLayer = accessibilityWindowInfo.mLayer;
        accessibilityWindowInfoObtain.mBooleanProperties = accessibilityWindowInfo.mBooleanProperties;
        accessibilityWindowInfoObtain.mId = accessibilityWindowInfo.mId;
        accessibilityWindowInfoObtain.mParentId = accessibilityWindowInfo.mParentId;
        accessibilityWindowInfoObtain.mBoundsInScreen.set(accessibilityWindowInfo.mBoundsInScreen);
        accessibilityWindowInfoObtain.mTitle = accessibilityWindowInfo.mTitle;
        accessibilityWindowInfoObtain.mAnchorId = accessibilityWindowInfo.mAnchorId;
        accessibilityWindowInfoObtain.mInPictureInPicture = accessibilityWindowInfo.mInPictureInPicture;
        LongArray longArray = accessibilityWindowInfo.mChildIds;
        if (longArray != null && longArray.size() > 0) {
            LongArray longArray2 = accessibilityWindowInfoObtain.mChildIds;
            if (longArray2 == null) {
                accessibilityWindowInfoObtain.mChildIds = accessibilityWindowInfo.mChildIds.m29clone();
            } else {
                longArray2.addAll(accessibilityWindowInfo.mChildIds);
            }
        }
        accessibilityWindowInfoObtain.mConnectionId = accessibilityWindowInfo.mConnectionId;
        return accessibilityWindowInfoObtain;
    }
}
