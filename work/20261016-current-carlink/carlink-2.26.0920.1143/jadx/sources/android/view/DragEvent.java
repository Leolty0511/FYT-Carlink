package android.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.view.IDragAndDropPermissions;

/* JADX INFO: loaded from: classes2.dex */
public class DragEvent implements Parcelable {
    public static final int ACTION_DRAG_ENDED = 4;
    public static final int ACTION_DRAG_ENTERED = 5;
    public static final int ACTION_DRAG_EXITED = 6;
    public static final int ACTION_DRAG_LOCATION = 2;
    public static final int ACTION_DRAG_STARTED = 1;
    public static final int ACTION_DROP = 3;
    private static final int MAX_RECYCLED = 10;
    private static final boolean TRACK_RECYCLED_LOCATION = false;
    private static DragEvent gRecyclerTop;
    private static int gRecyclerUsed;
    int mAction;
    ClipData mClipData;
    ClipDescription mClipDescription;
    IDragAndDropPermissions mDragAndDropPermissions;
    boolean mDragResult;
    boolean mEventHandlerWasCalled;
    Object mLocalState;
    private DragEvent mNext;
    private boolean mRecycled;
    private RuntimeException mRecycledLocation;
    float mX;
    float mY;
    private static final Object gRecyclerLock = new Object();
    public static final Parcelable.Creator<DragEvent> CREATOR = new Parcelable.Creator<DragEvent>() { // from class: android.view.DragEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DragEvent createFromParcel(Parcel parcel) {
            DragEvent dragEventObtain = DragEvent.obtain();
            dragEventObtain.mAction = parcel.readInt();
            dragEventObtain.mX = parcel.readFloat();
            dragEventObtain.mY = parcel.readFloat();
            dragEventObtain.mDragResult = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                dragEventObtain.mClipData = ClipData.CREATOR.createFromParcel(parcel);
            }
            if (parcel.readInt() != 0) {
                dragEventObtain.mClipDescription = ClipDescription.CREATOR.createFromParcel(parcel);
            }
            if (parcel.readInt() != 0) {
                dragEventObtain.mDragAndDropPermissions = IDragAndDropPermissions.Stub.asInterface(parcel.readStrongBinder());
            }
            return dragEventObtain;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DragEvent[] newArray(int i2) {
            return new DragEvent[i2];
        }
    };

    private DragEvent() {
    }

    private void init(int i2, float f2, float f3, ClipDescription clipDescription, ClipData clipData, IDragAndDropPermissions iDragAndDropPermissions, Object obj, boolean z2) {
        this.mAction = i2;
        this.mX = f2;
        this.mY = f3;
        this.mClipDescription = clipDescription;
        this.mClipData = clipData;
        this.mDragAndDropPermissions = iDragAndDropPermissions;
        this.mLocalState = obj;
        this.mDragResult = z2;
    }

    public static DragEvent obtain() {
        return obtain(0, 0.0f, 0.0f, null, null, null, null, false);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.mAction;
    }

    public ClipData getClipData() {
        return this.mClipData;
    }

    public ClipDescription getClipDescription() {
        return this.mClipDescription;
    }

    public IDragAndDropPermissions getDragAndDropPermissions() {
        return this.mDragAndDropPermissions;
    }

    public Object getLocalState() {
        return this.mLocalState;
    }

    public boolean getResult() {
        return this.mDragResult;
    }

    public float getX() {
        return this.mX;
    }

    public float getY() {
        return this.mY;
    }

    public final void recycle() {
        if (this.mRecycled) {
            throw new RuntimeException(toString() + " recycled twice!");
        }
        this.mRecycled = true;
        this.mClipData = null;
        this.mClipDescription = null;
        this.mLocalState = null;
        this.mEventHandlerWasCalled = false;
        synchronized (gRecyclerLock) {
            int i2 = gRecyclerUsed;
            if (i2 < 10) {
                gRecyclerUsed = i2 + 1;
                this.mNext = gRecyclerTop;
                gRecyclerTop = this;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DragEvent{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" action=");
        sb.append(this.mAction);
        sb.append(" @ (");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") desc=");
        sb.append(this.mClipDescription);
        sb.append(" data=");
        sb.append(this.mClipData);
        sb.append(" local=");
        sb.append(this.mLocalState);
        sb.append(" result=");
        return android.accessibilityservice.c.o(sb, this.mDragResult, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mAction);
        parcel.writeFloat(this.mX);
        parcel.writeFloat(this.mY);
        parcel.writeInt(this.mDragResult ? 1 : 0);
        if (this.mClipData == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mClipData.writeToParcel(parcel, i2);
        }
        if (this.mClipDescription == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mClipDescription.writeToParcel(parcel, i2);
        }
        if (this.mDragAndDropPermissions == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeStrongBinder(this.mDragAndDropPermissions.asBinder());
        }
    }

    public static DragEvent obtain(int i2, float f2, float f3, Object obj, ClipDescription clipDescription, ClipData clipData, IDragAndDropPermissions iDragAndDropPermissions, boolean z2) {
        synchronized (gRecyclerLock) {
            DragEvent dragEvent = gRecyclerTop;
            if (dragEvent == null) {
                DragEvent dragEvent2 = new DragEvent();
                dragEvent2.init(i2, f2, f3, clipDescription, clipData, iDragAndDropPermissions, obj, z2);
                return dragEvent2;
            }
            gRecyclerTop = dragEvent.mNext;
            gRecyclerUsed--;
            dragEvent.mRecycledLocation = null;
            dragEvent.mRecycled = false;
            dragEvent.mNext = null;
            dragEvent.init(i2, f2, f3, clipDescription, clipData, iDragAndDropPermissions, obj, z2);
            return dragEvent;
        }
    }

    public static DragEvent obtain(DragEvent dragEvent) {
        return obtain(dragEvent.mAction, dragEvent.mX, dragEvent.mY, dragEvent.mLocalState, dragEvent.mClipDescription, dragEvent.mClipData, dragEvent.mDragAndDropPermissions, dragEvent.mDragResult);
    }
}
