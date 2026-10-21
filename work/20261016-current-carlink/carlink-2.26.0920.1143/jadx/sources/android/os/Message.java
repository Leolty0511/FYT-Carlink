package android.os;

import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class Message implements Parcelable {
    static final int FLAGS_TO_CLEAR_ON_COPY_FROM = 1;
    static final int FLAG_ASYNCHRONOUS = 2;
    static final int FLAG_IN_USE = 1;
    private static final int MAX_POOL_SIZE = 50;
    private static boolean gCheckRecycle = true;
    private static Message sPool;
    private static int sPoolSize;
    public int arg1;
    public int arg2;
    Runnable callback;
    Bundle data;
    int flags;
    Message next;
    public Object obj;
    public Messenger replyTo;
    public int sendingUid = -1;
    Handler target;
    public int what;
    long when;
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
            message.flags = 0;
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
        this.sendingUid = parcel.readInt();
    }

    public static void updateCheckRecycle(int i2) {
        if (i2 < 21) {
            gCheckRecycle = false;
        }
    }

    public void copyFrom(Message message) {
        this.flags = message.flags & (-2);
        this.what = message.what;
        this.arg1 = message.arg1;
        this.arg2 = message.arg2;
        this.obj = message.obj;
        this.replyTo = message.replyTo;
        this.sendingUid = message.sendingUid;
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
        if (!isInUse()) {
            recycleUnchecked();
        } else if (gCheckRecycle) {
            throw new IllegalStateException("This message cannot be recycled because it is still in use.");
        }
    }

    public void recycleUnchecked() {
        this.flags = 1;
        this.what = 0;
        this.arg1 = 0;
        this.arg2 = 0;
        this.obj = null;
        this.replyTo = null;
        this.sendingUid = -1;
        this.when = 0L;
        this.target = null;
        this.callback = null;
        this.data = null;
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

    public String toString(long j2) {
        StringBuilder sbR = android.accessibilityservice.c.r("{ when=");
        TimeUtils.formatDuration(this.when - j2, sbR);
        if (this.target != null) {
            if (this.callback != null) {
                sbR.append(" callback=");
                sbR.append(this.callback.getClass().getName());
            } else {
                sbR.append(" what=");
                sbR.append(this.what);
            }
            if (this.arg1 != 0) {
                sbR.append(" arg1=");
                sbR.append(this.arg1);
            }
            if (this.arg2 != 0) {
                sbR.append(" arg2=");
                sbR.append(this.arg2);
            }
            if (this.obj != null) {
                sbR.append(" obj=");
                sbR.append(this.obj);
            }
            sbR.append(" target=");
            sbR.append(this.target.getClass().getName());
        } else {
            sbR.append(" barrier=");
            sbR.append(this.arg1);
        }
        sbR.append(" }");
        return sbR.toString();
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
        parcel.writeInt(this.sendingUid);
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j2) {
        long jStart = protoOutputStream.start(j2);
        protoOutputStream.write(1116691496961L, this.when);
        if (this.target != null) {
            Runnable runnable = this.callback;
            if (runnable != null) {
                protoOutputStream.write(1159641169922L, runnable.getClass().getName());
            } else {
                protoOutputStream.write(1112396529667L, this.what);
            }
            int i2 = this.arg1;
            if (i2 != 0) {
                protoOutputStream.write(1112396529668L, i2);
            }
            int i3 = this.arg2;
            if (i3 != 0) {
                protoOutputStream.write(1112396529669L, i3);
            }
            Object obj = this.obj;
            if (obj != null) {
                protoOutputStream.write(MessageProto.OBJ, obj.toString());
            }
            protoOutputStream.write(1159641169927L, this.target.getClass().getName());
        } else {
            protoOutputStream.write(1112396529672L, this.arg1);
        }
        protoOutputStream.end(jStart);
    }

    public static Message obtain(Message message) {
        Message messageObtain = obtain();
        messageObtain.what = message.what;
        messageObtain.arg1 = message.arg1;
        messageObtain.arg2 = message.arg2;
        messageObtain.obj = message.obj;
        messageObtain.replyTo = message.replyTo;
        messageObtain.sendingUid = message.sendingUid;
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

    public String toString() {
        return toString(SystemClock.uptimeMillis());
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
