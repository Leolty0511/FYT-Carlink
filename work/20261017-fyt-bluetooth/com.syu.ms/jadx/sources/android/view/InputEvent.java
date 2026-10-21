package android.view;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class InputEvent implements Parcelable {
    public static final int PARCEL_TOKEN_KEY_EVENT = 2;
    public static final int PARCEL_TOKEN_MOTION_EVENT = 1;
    private static final boolean TRACK_RECYCLED_LOCATION = false;
    public boolean mRecycled;
    private RuntimeException mRecycledLocation;
    public int mSeq = mNextSeq.getAndIncrement();
    private static final AtomicInteger mNextSeq = new AtomicInteger();
    public static final Parcelable.Creator<InputEvent> CREATOR = new Parcelable.Creator<InputEvent>() { // from class: android.view.InputEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputEvent createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            if (i2 == 2) {
                return KeyEvent.createFromParcelBody(parcel);
            }
            if (i2 == 1) {
                return MotionEvent.createFromParcelBody(parcel);
            }
            throw new IllegalStateException("Unexpected input event type token in parcel.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputEvent[] newArray(int i2) {
            return new InputEvent[i2];
        }
    };

    public abstract InputEvent copy();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final InputDevice getDevice() {
        return InputDevice.getDevice(getDeviceId());
    }

    public abstract int getDeviceId();

    public abstract long getEventTime();

    public abstract long getEventTimeNano();

    public int getSequenceNumber() {
        return this.mSeq;
    }

    public abstract int getSource();

    public boolean isFromSource(int i2) {
        return (getSource() & i2) == i2;
    }

    public abstract boolean isTainted();

    public void prepareForReuse() {
        this.mRecycled = false;
        this.mRecycledLocation = null;
        this.mSeq = mNextSeq.getAndIncrement();
    }

    public void recycle() {
        if (!this.mRecycled) {
            this.mRecycled = true;
            return;
        }
        throw new RuntimeException(toString() + " recycled twice!");
    }

    public void recycleIfNeededAfterDispatch() {
        recycle();
    }

    public abstract void setSource(int i2);

    public abstract void setTainted(boolean z2);
}
