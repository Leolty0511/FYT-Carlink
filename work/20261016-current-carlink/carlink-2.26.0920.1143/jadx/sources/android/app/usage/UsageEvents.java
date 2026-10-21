package android.app.usage;

import android.accessibilityservice.c;
import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class UsageEvents implements Parcelable {
    public static final Parcelable.Creator<UsageEvents> CREATOR = new Parcelable.Creator<UsageEvents>() { // from class: android.app.usage.UsageEvents.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageEvents createFromParcel(Parcel parcel) {
            return new UsageEvents(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageEvents[] newArray(int i2) {
            return new UsageEvents[i2];
        }
    };
    public static final String INSTANT_APP_CLASS_NAME = "android.instant_class";
    public static final String INSTANT_APP_PACKAGE_NAME = "android.instant_app";
    private final int mEventCount;
    private List<Event> mEventsToWrite;
    private int mIndex;
    private Parcel mParcel;
    private String[] mStringPool;

    public static final class Event {
        public static final int CHOOSER_ACTION = 9;
        public static final int CONFIGURATION_CHANGE = 5;
        public static final int CONTINUE_PREVIOUS_DAY = 4;
        public static final int END_OF_DAY = 3;
        public static final int FLAG_IS_PACKAGE_INSTANT_APP = 1;
        public static final int MOVE_TO_BACKGROUND = 2;
        public static final int MOVE_TO_FOREGROUND = 1;
        public static final int NONE = 0;
        public static final int SHORTCUT_INVOCATION = 8;
        public static final int SYSTEM_INTERACTION = 6;
        public static final int USER_INTERACTION = 7;
        public String mAction;
        public String mClass;
        public Configuration mConfiguration;
        public String[] mContentAnnotations;
        public String mContentType;
        public int mEventType;
        public int mFlags;
        public String mPackage;
        public String mShortcutId;
        public long mTimeStamp;

        @Retention(RetentionPolicy.SOURCE)
        public @interface EventFlags {
        }

        public Event() {
        }

        public String getClassName() {
            return this.mClass;
        }

        public Configuration getConfiguration() {
            return this.mConfiguration;
        }

        public int getEventType() {
            return this.mEventType;
        }

        public Event getObfuscatedIfInstantApp() {
            if ((this.mFlags & 1) == 0) {
                return this;
            }
            Event event = new Event(this);
            event.mPackage = UsageEvents.INSTANT_APP_PACKAGE_NAME;
            event.mClass = UsageEvents.INSTANT_APP_CLASS_NAME;
            return event;
        }

        public String getPackageName() {
            return this.mPackage;
        }

        public String getShortcutId() {
            return this.mShortcutId;
        }

        public long getTimeStamp() {
            return this.mTimeStamp;
        }

        public Event(Event event) {
            this.mPackage = event.mPackage;
            this.mClass = event.mClass;
            this.mTimeStamp = event.mTimeStamp;
            this.mEventType = event.mEventType;
            this.mConfiguration = event.mConfiguration;
            this.mShortcutId = event.mShortcutId;
            this.mAction = event.mAction;
            this.mContentType = event.mContentType;
            this.mContentAnnotations = event.mContentAnnotations;
            this.mFlags = event.mFlags;
        }
    }

    public UsageEvents(Parcel parcel) {
        this.mEventsToWrite = null;
        this.mParcel = null;
        this.mIndex = 0;
        int i2 = parcel.readInt();
        this.mEventCount = i2;
        this.mIndex = parcel.readInt();
        if (i2 > 0) {
            this.mStringPool = parcel.createStringArray();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            Parcel parcelObtain = Parcel.obtain();
            this.mParcel = parcelObtain;
            parcelObtain.setDataPosition(0);
            this.mParcel.appendFrom(parcel, parcel.dataPosition(), i3);
            Parcel parcel2 = this.mParcel;
            parcel2.setDataSize(parcel2.dataPosition());
            this.mParcel.setDataPosition(i4);
        }
    }

    private int findStringIndex(String str) {
        int iBinarySearch = Arrays.binarySearch(this.mStringPool, str);
        if (iBinarySearch >= 0) {
            return iBinarySearch;
        }
        throw new IllegalStateException(c.k("String '", str, "' is not in the string pool"));
    }

    private void readEventFromParcel(Parcel parcel, Event event) {
        int i2 = parcel.readInt();
        if (i2 >= 0) {
            event.mPackage = this.mStringPool[i2];
        } else {
            event.mPackage = null;
        }
        int i3 = parcel.readInt();
        if (i3 >= 0) {
            event.mClass = this.mStringPool[i3];
        } else {
            event.mClass = null;
        }
        event.mEventType = parcel.readInt();
        event.mTimeStamp = parcel.readLong();
        event.mConfiguration = null;
        event.mShortcutId = null;
        event.mAction = null;
        event.mContentType = null;
        event.mContentAnnotations = null;
        int i4 = event.mEventType;
        if (i4 == 5) {
            event.mConfiguration = Configuration.CREATOR.createFromParcel(parcel);
            return;
        }
        if (i4 == 8) {
            event.mShortcutId = parcel.readString();
        } else {
            if (i4 != 9) {
                return;
            }
            event.mAction = parcel.readString();
            event.mContentType = parcel.readString();
            event.mContentAnnotations = parcel.createStringArray();
        }
    }

    private void writeEventToParcel(Event event, Parcel parcel, int i2) {
        String str = event.mPackage;
        int iFindStringIndex = str != null ? findStringIndex(str) : -1;
        String str2 = event.mClass;
        int iFindStringIndex2 = str2 != null ? findStringIndex(str2) : -1;
        parcel.writeInt(iFindStringIndex);
        parcel.writeInt(iFindStringIndex2);
        parcel.writeInt(event.mEventType);
        parcel.writeLong(event.mTimeStamp);
        int i3 = event.mEventType;
        if (i3 == 5) {
            event.mConfiguration.writeToParcel(parcel, i2);
            return;
        }
        if (i3 == 8) {
            parcel.writeString(event.mShortcutId);
        } else {
            if (i3 != 9) {
                return;
            }
            parcel.writeString(event.mAction);
            parcel.writeString(event.mContentType);
            parcel.writeStringArray(event.mContentAnnotations);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getNextEvent(Event event) {
        if (this.mIndex >= this.mEventCount) {
            return false;
        }
        readEventFromParcel(this.mParcel, event);
        int i2 = this.mIndex + 1;
        this.mIndex = i2;
        if (i2 >= this.mEventCount) {
            this.mParcel.recycle();
            this.mParcel = null;
        }
        return true;
    }

    public boolean hasNextEvent() {
        return this.mIndex < this.mEventCount;
    }

    public void resetToStart() {
        this.mIndex = 0;
        Parcel parcel = this.mParcel;
        if (parcel != null) {
            parcel.setDataPosition(0);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mEventCount);
        parcel.writeInt(this.mIndex);
        if (this.mEventCount > 0) {
            parcel.writeStringArray(this.mStringPool);
            if (this.mEventsToWrite == null) {
                Parcel parcel2 = this.mParcel;
                if (parcel2 == null) {
                    throw new IllegalStateException("Either mParcel or mEventsToWrite must not be null");
                }
                parcel.writeInt(parcel2.dataSize());
                parcel.writeInt(this.mParcel.dataPosition());
                Parcel parcel3 = this.mParcel;
                parcel.appendFrom(parcel3, 0, parcel3.dataSize());
                return;
            }
            Parcel parcelObtain = Parcel.obtain();
            try {
                parcelObtain.setDataPosition(0);
                for (int i3 = 0; i3 < this.mEventCount; i3++) {
                    writeEventToParcel(this.mEventsToWrite.get(i3), parcelObtain, i2);
                }
                int iDataPosition = parcelObtain.dataPosition();
                parcel.writeInt(iDataPosition);
                parcel.writeInt(0);
                parcel.appendFrom(parcelObtain, 0, iDataPosition);
            } finally {
                parcelObtain.recycle();
            }
        }
    }

    public UsageEvents() {
        this.mEventsToWrite = null;
        this.mParcel = null;
        this.mIndex = 0;
        this.mEventCount = 0;
    }

    public UsageEvents(List<Event> list, String[] strArr) {
        this.mEventsToWrite = null;
        this.mParcel = null;
        this.mIndex = 0;
        this.mStringPool = strArr;
        this.mEventCount = list.size();
        this.mEventsToWrite = list;
    }
}
