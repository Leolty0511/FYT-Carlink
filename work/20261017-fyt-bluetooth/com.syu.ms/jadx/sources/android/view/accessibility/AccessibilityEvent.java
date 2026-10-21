package android.view.accessibility;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pools;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AccessibilityEvent extends AccessibilityRecord implements Parcelable {
    public static final int CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION = 4;
    public static final int CONTENT_CHANGE_TYPE_SUBTREE = 1;
    public static final int CONTENT_CHANGE_TYPE_TEXT = 2;
    public static final int CONTENT_CHANGE_TYPE_UNDEFINED = 0;
    private static final boolean DEBUG = false;
    public static final int INVALID_POSITION = -1;
    private static final int MAX_POOL_SIZE = 10;

    @Deprecated
    public static final int MAX_TEXT_LENGTH = 500;
    public static final int TYPES_ALL_MASK = -1;
    public static final int TYPE_ANNOUNCEMENT = 16384;
    public static final int TYPE_GESTURE_DETECTION_END = 524288;
    public static final int TYPE_GESTURE_DETECTION_START = 262144;
    public static final int TYPE_NOTIFICATION_STATE_CHANGED = 64;
    public static final int TYPE_TOUCH_EXPLORATION_GESTURE_END = 1024;
    public static final int TYPE_TOUCH_EXPLORATION_GESTURE_START = 512;
    public static final int TYPE_TOUCH_INTERACTION_END = 2097152;
    public static final int TYPE_TOUCH_INTERACTION_START = 1048576;
    public static final int TYPE_VIEW_ACCESSIBILITY_FOCUSED = 32768;
    public static final int TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED = 65536;
    public static final int TYPE_VIEW_CLICKED = 1;
    public static final int TYPE_VIEW_FOCUSED = 8;
    public static final int TYPE_VIEW_HOVER_ENTER = 128;
    public static final int TYPE_VIEW_HOVER_EXIT = 256;
    public static final int TYPE_VIEW_LONG_CLICKED = 2;
    public static final int TYPE_VIEW_SCROLLED = 4096;
    public static final int TYPE_VIEW_SELECTED = 4;
    public static final int TYPE_VIEW_TEXT_CHANGED = 16;
    public static final int TYPE_VIEW_TEXT_SELECTION_CHANGED = 8192;
    public static final int TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY = 131072;
    public static final int TYPE_WINDOW_CONTENT_CHANGED = 2048;
    public static final int TYPE_WINDOW_STATE_CHANGED = 32;
    public int mAction;
    public int mContentChangeTypes;
    private long mEventTime;
    private int mEventType;
    public int mMovementGranularity;
    private CharSequence mPackageName;
    private final ArrayList<AccessibilityRecord> mRecords = new ArrayList<>();
    private static final Pools.SynchronizedPool<AccessibilityEvent> sPool = new Pools.SynchronizedPool<>(10);
    public static final Parcelable.Creator<AccessibilityEvent> CREATOR = new Parcelable.Creator<AccessibilityEvent>() { // from class: android.view.accessibility.AccessibilityEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityEvent createFromParcel(Parcel parcel) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
            accessibilityEventObtain.initFromParcel(parcel);
            return accessibilityEventObtain;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityEvent[] newArray(int i2) {
            return new AccessibilityEvent[i2];
        }
    };

    private AccessibilityEvent() {
    }

    public static String eventTypeToString(int i2) {
        if (i2 == -1) {
            return "TYPES_ALL_MASK";
        }
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (iNumberOfTrailingZeros == 1) {
                if (i3 > 0) {
                    sb.append(", ");
                }
                sb.append("TYPE_VIEW_CLICKED");
            } else if (iNumberOfTrailingZeros != 2) {
                switch (iNumberOfTrailingZeros) {
                    case 4:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_SELECTED");
                        break;
                    case 8:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_FOCUSED");
                        break;
                    case 16:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_TEXT_CHANGED");
                        break;
                    case 32:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_WINDOW_STATE_CHANGED");
                        break;
                    case 64:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_NOTIFICATION_STATE_CHANGED");
                        break;
                    case 128:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_HOVER_ENTER");
                        break;
                    case 256:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_HOVER_EXIT");
                        break;
                    case 512:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_TOUCH_EXPLORATION_GESTURE_START");
                        break;
                    case 1024:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_TOUCH_EXPLORATION_GESTURE_END");
                        break;
                    case 2048:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_WINDOW_CONTENT_CHANGED");
                        break;
                    case 4096:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_SCROLLED");
                        break;
                    case 8192:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_TEXT_SELECTION_CHANGED");
                        break;
                    case 16384:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_ANNOUNCEMENT");
                        break;
                    case 32768:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_ACCESSIBILITY_FOCUSED");
                        break;
                    case 65536:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED");
                        break;
                    case 131072:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY");
                        break;
                    case 262144:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_GESTURE_DETECTION_START");
                        break;
                    case 524288:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_GESTURE_DETECTION_END");
                        break;
                    case 1048576:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_TOUCH_INTERACTION_START");
                        break;
                    case 2097152:
                        if (i3 > 0) {
                            sb.append(", ");
                        }
                        sb.append("TYPE_TOUCH_INTERACTION_END");
                        break;
                    default:
                        continue;
                }
            } else {
                if (i3 > 0) {
                    sb.append(", ");
                }
                sb.append("TYPE_VIEW_LONG_CLICKED");
            }
            i3++;
        }
        if (i3 > 1) {
            sb.insert(0, '[');
            sb.append(']');
        }
        return sb.toString();
    }

    public static AccessibilityEvent obtain(int i2) {
        AccessibilityEvent accessibilityEventObtain = obtain();
        accessibilityEventObtain.setEventType(i2);
        return accessibilityEventObtain;
    }

    private void readAccessibilityRecordFromParcel(AccessibilityRecord accessibilityRecord, Parcel parcel) {
        accessibilityRecord.mBooleanProperties = parcel.readInt();
        accessibilityRecord.mCurrentItemIndex = parcel.readInt();
        accessibilityRecord.mItemCount = parcel.readInt();
        accessibilityRecord.mFromIndex = parcel.readInt();
        accessibilityRecord.mToIndex = parcel.readInt();
        accessibilityRecord.mScrollX = parcel.readInt();
        accessibilityRecord.mScrollY = parcel.readInt();
        accessibilityRecord.mMaxScrollX = parcel.readInt();
        accessibilityRecord.mMaxScrollY = parcel.readInt();
        accessibilityRecord.mAddedCount = parcel.readInt();
        accessibilityRecord.mRemovedCount = parcel.readInt();
        Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        accessibilityRecord.mClassName = creator.createFromParcel(parcel);
        accessibilityRecord.mContentDescription = creator.createFromParcel(parcel);
        accessibilityRecord.mBeforeText = creator.createFromParcel(parcel);
        accessibilityRecord.mParcelableData = parcel.readParcelable(null);
        parcel.readList(accessibilityRecord.mText, null);
        accessibilityRecord.mSourceWindowId = parcel.readInt();
        accessibilityRecord.mSourceNodeId = parcel.readLong();
        accessibilityRecord.mSealed = parcel.readInt() == 1;
    }

    private void writeAccessibilityRecordToParcel(AccessibilityRecord accessibilityRecord, Parcel parcel, int i2) {
        parcel.writeInt(accessibilityRecord.mBooleanProperties);
        parcel.writeInt(accessibilityRecord.mCurrentItemIndex);
        parcel.writeInt(accessibilityRecord.mItemCount);
        parcel.writeInt(accessibilityRecord.mFromIndex);
        parcel.writeInt(accessibilityRecord.mToIndex);
        parcel.writeInt(accessibilityRecord.mScrollX);
        parcel.writeInt(accessibilityRecord.mScrollY);
        parcel.writeInt(accessibilityRecord.mMaxScrollX);
        parcel.writeInt(accessibilityRecord.mMaxScrollY);
        parcel.writeInt(accessibilityRecord.mAddedCount);
        parcel.writeInt(accessibilityRecord.mRemovedCount);
        TextUtils.writeToParcel(accessibilityRecord.mClassName, parcel, i2);
        TextUtils.writeToParcel(accessibilityRecord.mContentDescription, parcel, i2);
        TextUtils.writeToParcel(accessibilityRecord.mBeforeText, parcel, i2);
        parcel.writeParcelable(accessibilityRecord.mParcelableData, i2);
        parcel.writeList(accessibilityRecord.mText);
        parcel.writeInt(accessibilityRecord.mSourceWindowId);
        parcel.writeLong(accessibilityRecord.mSourceNodeId);
        parcel.writeInt(accessibilityRecord.mSealed ? 1 : 0);
    }

    public void appendRecord(AccessibilityRecord accessibilityRecord) {
        enforceNotSealed();
        this.mRecords.add(accessibilityRecord);
    }

    @Override // android.view.accessibility.AccessibilityRecord
    public void clear() {
        super.clear();
        this.mEventType = 0;
        this.mMovementGranularity = 0;
        this.mAction = 0;
        this.mContentChangeTypes = 0;
        this.mPackageName = null;
        this.mEventTime = 0L;
        while (!this.mRecords.isEmpty()) {
            this.mRecords.remove(0).recycle();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.mAction;
    }

    public int getContentChangeTypes() {
        return this.mContentChangeTypes;
    }

    public long getEventTime() {
        return this.mEventTime;
    }

    public int getEventType() {
        return this.mEventType;
    }

    public int getMovementGranularity() {
        return this.mMovementGranularity;
    }

    public CharSequence getPackageName() {
        return this.mPackageName;
    }

    public AccessibilityRecord getRecord(int i2) {
        return this.mRecords.get(i2);
    }

    public int getRecordCount() {
        return this.mRecords.size();
    }

    public void init(AccessibilityEvent accessibilityEvent) {
        super.init((AccessibilityRecord) accessibilityEvent);
        this.mEventType = accessibilityEvent.mEventType;
        this.mMovementGranularity = accessibilityEvent.mMovementGranularity;
        this.mAction = accessibilityEvent.mAction;
        this.mContentChangeTypes = accessibilityEvent.mContentChangeTypes;
        this.mEventTime = accessibilityEvent.mEventTime;
        this.mPackageName = accessibilityEvent.mPackageName;
    }

    public void initFromParcel(Parcel parcel) {
        this.mSealed = parcel.readInt() == 1;
        this.mEventType = parcel.readInt();
        this.mMovementGranularity = parcel.readInt();
        this.mAction = parcel.readInt();
        this.mContentChangeTypes = parcel.readInt();
        this.mPackageName = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mEventTime = parcel.readLong();
        this.mConnectionId = parcel.readInt();
        readAccessibilityRecordFromParcel(this, parcel);
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            AccessibilityRecord accessibilityRecordObtain = AccessibilityRecord.obtain();
            readAccessibilityRecordFromParcel(accessibilityRecordObtain, parcel);
            accessibilityRecordObtain.mConnectionId = this.mConnectionId;
            this.mRecords.add(accessibilityRecordObtain);
        }
    }

    @Override // android.view.accessibility.AccessibilityRecord
    public void recycle() {
        clear();
        sPool.release(this);
    }

    public void setAction(int i2) {
        enforceNotSealed();
        this.mAction = i2;
    }

    public void setContentChangeTypes(int i2) {
        enforceNotSealed();
        this.mContentChangeTypes = i2;
    }

    public void setEventTime(long j2) {
        enforceNotSealed();
        this.mEventTime = j2;
    }

    public void setEventType(int i2) {
        enforceNotSealed();
        this.mEventType = i2;
    }

    public void setMovementGranularity(int i2) {
        enforceNotSealed();
        this.mMovementGranularity = i2;
    }

    public void setPackageName(CharSequence charSequence) {
        enforceNotSealed();
        this.mPackageName = charSequence;
    }

    @Override // android.view.accessibility.AccessibilityRecord
    public void setSealed(boolean z2) {
        super.setSealed(z2);
        ArrayList<AccessibilityRecord> arrayList = this.mRecords;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).setSealed(z2);
        }
    }

    @Override // android.view.accessibility.AccessibilityRecord
    public String toString() {
        return "EventType: " + eventTypeToString(this.mEventType) + "; EventTime: " + this.mEventTime + "; PackageName: " + this.mPackageName + "; MovementGranularity: " + this.mMovementGranularity + "; Action: " + this.mAction + super.toString() + "; recordCount: " + getRecordCount();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(isSealed() ? 1 : 0);
        parcel.writeInt(this.mEventType);
        parcel.writeInt(this.mMovementGranularity);
        parcel.writeInt(this.mAction);
        parcel.writeInt(this.mContentChangeTypes);
        TextUtils.writeToParcel(this.mPackageName, parcel, 0);
        parcel.writeLong(this.mEventTime);
        parcel.writeInt(this.mConnectionId);
        writeAccessibilityRecordToParcel(this, parcel, i2);
        int recordCount = getRecordCount();
        parcel.writeInt(recordCount);
        for (int i3 = 0; i3 < recordCount; i3++) {
            writeAccessibilityRecordToParcel(this.mRecords.get(i3), parcel, i2);
        }
    }

    public static AccessibilityEvent obtain(AccessibilityEvent accessibilityEvent) {
        AccessibilityEvent accessibilityEventObtain = obtain();
        accessibilityEventObtain.init(accessibilityEvent);
        int size = accessibilityEvent.mRecords.size();
        for (int i2 = 0; i2 < size; i2++) {
            accessibilityEventObtain.mRecords.add(AccessibilityRecord.obtain(accessibilityEvent.mRecords.get(i2)));
        }
        return accessibilityEventObtain;
    }

    public static AccessibilityEvent obtain() {
        AccessibilityEvent accessibilityEventAcquire = sPool.acquire();
        return accessibilityEventAcquire != null ? accessibilityEventAcquire : new AccessibilityEvent();
    }
}
