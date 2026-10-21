package android.os;

import android.util.TimeUtils;

/* JADX INFO: loaded from: classes.dex */
public final class Message implements Parcelable {
    public static final int FLAGS_TO_CLEAR_ON_COPY_FROM = 1;
    public static final int FLAG_ASYNCHRONOUS = 2;
    public static final int FLAG_IN_USE = 1;
    private static final int MAX_POOL_SIZE = 50;
    private static Message sPool;
    private static int sPoolSize;
    public int arg1;
    public int arg2;
    public Runnable callback;
    public Bundle data;
    public int flags;
    public Message next;
    public Object obj;
    public Messenger replyTo;
    public Handler target;
    public int what;
    public long when;
    private static final Object sPoolSync = new Object();
    public static final Parcelable.Creator<Message> CREATOR = new Parcelable.Creator<Message>() { // from class: android.os.Message.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Message createFromParcel(Parcel parcel) {
            Message messageObtain = Message.obtain();
            messageObtain.readFromParcel(parcel);
            return messageObtain;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Message[] newArray(int i2) {
            return new Message[i2];
        }
    };

    public static Message obtain() {
        synchronized (sPoolSync) {
            Message message = sPool;
            if (message == null) {
                return new Message();
            }
            sPool = message.next;
            message.next = null;
            sPoolSize--;
            return message;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readFromParcel(Parcel parcel) {
        this.what = parcel.readInt();
        this.arg1 = parcel.readInt();
        this.arg2 = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.obj = parcel.readParcelable(Message.class.getClassLoader());
        }
        this.when = parcel.readLong();
        this.data = parcel.readBundle();
        this.replyTo = Messenger.readMessengerOrNullFromParcel(parcel);
    }

    public void clearForRecycle() {
        this.flags = 0;
        this.what = 0;
        this.arg1 = 0;
        this.arg2 = 0;
        this.obj = null;
        this.replyTo = null;
        this.when = 0L;
        this.target = null;
        this.callback = null;
        this.data = null;
    }

    public void copyFrom(Message message) {
        this.flags = message.flags & (-2);
        this.what = message.what;
        this.arg1 = message.arg1;
        this.arg2 = message.arg2;
        this.obj = message.obj;
        this.replyTo = message.replyTo;
        Bundle bundle = message.data;
        if (bundle != null) {
            this.data = (Bundle) bundle.clone();
        } else {
            this.data = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Runnable getCallback() {
        return this.callback;
    }

    public Bundle getData() {
        if (this.data == null) {
            this.data = new Bundle();
        }
        return this.data;
    }

    public Handler getTarget() {
        return this.target;
    }

    public long getWhen() {
        return this.when;
    }

    public boolean isAsynchronous() {
        return (this.flags & 2) != 0;
    }

    public boolean isInUse() {
        return (this.flags & 1) == 1;
    }

    public void markInUse() {
        this.flags |= 1;
    }

    public Bundle peekData() {
        return this.data;
    }

    public void recycle() {
        clearForRecycle();
        synchronized (sPoolSync) {
            int i2 = sPoolSize;
            if (i2 < 50) {
                this.next = sPool;
                sPool = this;
                sPoolSize = i2 + 1;
            }
        }
    }

    public void sendToTarget() {
        this.target.sendMessage(this);
    }

    public void setAsynchronous(boolean z2) {
        if (z2) {
            this.flags |= 2;
        } else {
            this.flags &= -3;
        }
    }

    public void setData(Bundle bundle) {
        this.data = bundle;
    }

    public void setTarget(Handler handler) {
        this.target = handler;
    }

    public String toString() {
        return toString(SystemClock.uptimeMillis());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.callback != null) {
            throw new RuntimeException("Can't marshal callbacks across processes.");
        }
        parcel.writeInt(this.what);
        parcel.writeInt(this.arg1);
        parcel.writeInt(this.arg2);
        Object obj = this.obj;
        if (obj != null) {
            try {
                parcel.writeInt(1);
                parcel.writeParcelable((Parcelable) obj, i2);
            } catch (ClassCastException unused) {
                throw new RuntimeException("Can't marshal non-Parcelable objects across processes.");
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.when);
        parcel.writeBundle(this.data);
        Messenger.writeMessengerOrNullToParcel(this.replyTo, parcel);
    }

    public String toString(long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append("{ when=");
        TimeUtils.formatDuration(this.when - j2, sb);
        if (this.target != null) {
            if (this.callback != null) {
                sb.append(" callback=");
                sb.append(this.callback.getClass().getName());
            } else {
                sb.append(" what=");
                sb.append(this.what);
            }
            if (this.arg1 != 0) {
                sb.append(" arg1=");
                sb.append(this.arg1);
            }
            if (this.arg2 != 0) {
                sb.append(" arg2=");
                sb.append(this.arg2);
            }
            if (this.obj != null) {
                sb.append(" obj=");
                sb.append(this.obj);
            }
            sb.append(" target=");
            sb.append(this.target.getClass().getName());
        } else {
            sb.append(" barrier=");
            sb.append(this.arg1);
        }
        sb.append(" }");
        return sb.toString();
    }

    public static Message obtain(Message message) {
        Message messageObtain = obtain();
        messageObtain.what = message.what;
        messageObtain.arg1 = message.arg1;
        messageObtain.arg2 = message.arg2;
        messageObtain.obj = message.obj;
        messageObtain.replyTo = message.replyTo;
        if (message.data != null) {
            messageObtain.data = new Bundle(message.data);
        }
        messageObtain.target = message.target;
        messageObtain.callback = message.callback;
        return messageObtain;
    }

    public static Message obtain(Handler handler) {
        Message messageObtain = obtain();
        messageObtain.target = handler;
        return messageObtain;
    }

    public static Message obtain(Handler handler, Runnable runnable) {
        Message messageObtain = obtain();
        messageObtain.target = handler;
        messageObtain.callback = runnable;
        return messageObtain;
    }

    public static Message obtain(Handler handler, int i2) {
        Message messageObtain = obtain();
        messageObtain.target = handler;
        messageObtain.what = i2;
        return messageObtain;
    }

    public static Message obtain(Handler handler, int i2, Object obj) {
        Message messageObtain = obtain();
        messageObtain.target = handler;
        messageObtain.what = i2;
        messageObtain.obj = obj;
        return messageObtain;
    }

    public static Message obtain(Handler handler, int i2, int i3, int i4) {
        Message messageObtain = obtain();
        messageObtain.target = handler;
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        return messageObtain;
    }

    public static Message obtain(Handler handler, int i2, int i3, int i4, Object obj) {
        Message messageObtain = obtain();
        messageObtain.target = handler;
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        messageObtain.obj = obj;
        return messageObtain;
    }
}
