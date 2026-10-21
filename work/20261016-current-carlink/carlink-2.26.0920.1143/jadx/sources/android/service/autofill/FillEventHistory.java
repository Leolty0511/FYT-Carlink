package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FillEventHistory implements Parcelable {
    public static final Parcelable.Creator<FillEventHistory> CREATOR = new Parcelable.Creator<FillEventHistory>() { // from class: android.service.autofill.FillEventHistory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillEventHistory createFromParcel(Parcel parcel) {
            FillEventHistory fillEventHistory = new FillEventHistory(0, 0, parcel.readBundle());
            int i2 = parcel.readInt();
            for (int i3 = 0; i3 < i2; i3++) {
                fillEventHistory.addEvent(new Event(parcel.readInt(), parcel.readString()));
            }
            return fillEventHistory;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillEventHistory[] newArray(int i2) {
            return new FillEventHistory[i2];
        }
    };
    private final Bundle mClientState;
    List<Event> mEvents;
    private final int mServiceUid;
    private final int mSessionId;

    public static final class Event {
        public static final int TYPE_AUTHENTICATION_SELECTED = 2;
        public static final int TYPE_DATASET_AUTHENTICATION_SELECTED = 1;
        public static final int TYPE_DATASET_SELECTED = 0;
        public static final int TYPE_SAVE_SHOWN = 3;
        private final String mDatasetId;
        private final int mEventType;

        @Retention(RetentionPolicy.SOURCE)
        public @interface EventIds {
        }

        public Event(int i2, String str) {
            this.mEventType = Preconditions.checkArgumentInRange(i2, 0, 3, "eventType");
            this.mDatasetId = str;
        }

        public String getDatasetId() {
            return this.mDatasetId;
        }

        public int getType() {
            return this.mEventType;
        }
    }

    public FillEventHistory(int i2, int i3, Bundle bundle) {
        this.mClientState = bundle;
        this.mServiceUid = i2;
        this.mSessionId = i3;
    }

    public void addEvent(Event event) {
        if (this.mEvents == null) {
            this.mEvents = new ArrayList(1);
        }
        this.mEvents.add(event);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getClientState() {
        return this.mClientState;
    }

    public List<Event> getEvents() {
        return this.mEvents;
    }

    public int getServiceUid() {
        return this.mServiceUid;
    }

    public int getSessionId() {
        return this.mSessionId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeBundle(this.mClientState);
        List<Event> list = this.mEvents;
        if (list == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(list.size());
        int size = this.mEvents.size();
        for (int i3 = 0; i3 < size; i3++) {
            Event event = this.mEvents.get(i3);
            parcel.writeInt(event.getType());
            parcel.writeString(event.getDatasetId());
        }
    }
}
