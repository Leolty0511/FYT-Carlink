package u;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Slog;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String[] f17213f = {"CMD_CHANNEL_HALF_CONNECTED", "CMD_CHANNEL_FULL_CONNECTION", "CMD_CHANNEL_FULLY_CONNECTED", "CMD_CHANNEL_DISCONNECT", "CMD_CHANNEL_DISCONNECTED"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f17214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f17215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Messenger f17216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Messenger f17217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0112b f17218e;

    /* JADX INFO: renamed from: u.b$b, reason: collision with other inner class name */
    public final class C0112b implements IBinder.DeathRecipient {
        public C0112b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            b.this.g(4);
        }
    }

    public static class c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static Stack<c> f17220d = new Stack<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static int f17221e = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HandlerThread f17222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public a f17223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Messenger f17224c;

        public class a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Object f17225a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Message f17226b;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Message messageObtain = Message.obtain();
                this.f17226b = messageObtain;
                messageObtain.copyFrom(message);
                synchronized (this.f17225a) {
                    this.f17225a.notify();
                }
            }

            public a(Looper looper) {
                super(looper);
                this.f17225a = new Object();
            }
        }

        public static c b() {
            c cVarPop;
            synchronized (f17220d) {
                if (f17220d.isEmpty()) {
                    cVarPop = new c();
                    StringBuilder sb = new StringBuilder();
                    sb.append("SyncHandler-");
                    int i2 = f17221e;
                    f17221e = i2 + 1;
                    sb.append(i2);
                    HandlerThread handlerThread = new HandlerThread(sb.toString());
                    cVarPop.f17222a = handlerThread;
                    handlerThread.start();
                    cVarPop.f17223b = new a(cVarPop.f17222a.getLooper());
                    cVarPop.f17224c = new Messenger(cVarPop.f17223b);
                } else {
                    cVarPop = f17220d.pop();
                }
            }
            return cVarPop;
        }

        public static Message d(Messenger messenger, Message message) {
            c cVarB = b();
            try {
                if (messenger == null || message == null) {
                    cVarB.f17223b.f17226b = null;
                } else {
                    message.replyTo = cVarB.f17224c;
                    synchronized (cVarB.f17223b.f17225a) {
                        messenger.send(message);
                        cVarB.f17223b.f17225a.wait();
                    }
                }
            } catch (RemoteException unused) {
                cVarB.f17223b.f17226b = null;
            } catch (InterruptedException unused2) {
                cVarB.f17223b.f17226b = null;
            }
            Message message2 = cVarB.f17223b.f17226b;
            cVarB.c();
            return message2;
        }

        public final void c() {
            synchronized (f17220d) {
                f17220d.push(this);
            }
        }
    }

    public static void f(String str) {
        Slog.d("AsyncChannel", str);
    }

    public void b(Context context, Handler handler, Messenger messenger) {
        d(context, handler, messenger);
        h(0);
    }

    public int c(Context context, Handler handler, Messenger messenger) {
        d(context, handler, messenger);
        return 0;
    }

    public void d(Context context, Handler handler, Messenger messenger) {
        this.f17214a = context;
        this.f17215b = handler;
        this.f17216c = new Messenger(this.f17215b);
        this.f17217d = messenger;
    }

    public void e() {
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 69636;
            messageObtain.replyTo = this.f17216c;
            this.f17217d.send(messageObtain);
        } catch (Exception unused) {
        }
        if (this.f17215b != null) {
            g(0);
        }
        Messenger messenger = this.f17217d;
        if (messenger == null || this.f17218e == null) {
            return;
        }
        messenger.getBinder().unlinkToDeath(this.f17218e, 0);
    }

    public final void g(int i2) {
        Message messageObtainMessage = this.f17215b.obtainMessage(69636);
        messageObtainMessage.arg1 = i2;
        messageObtainMessage.obj = this;
        messageObtainMessage.replyTo = this.f17217d;
        this.f17215b.sendMessage(messageObtainMessage);
    }

    public final void h(int i2) {
        Message messageObtainMessage = this.f17215b.obtainMessage(69632);
        messageObtainMessage.arg1 = i2;
        messageObtainMessage.obj = this;
        messageObtainMessage.replyTo = this.f17217d;
        this.f17218e = new C0112b();
        try {
            this.f17217d.getBinder().linkToDeath(this.f17218e, 0);
        } catch (RemoteException unused) {
            this.f17218e = null;
            messageObtainMessage.arg1 = 1;
        }
        this.f17215b.sendMessage(messageObtainMessage);
    }

    public void i(Message message, int i2, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.obj = obj;
        j(message, messageObtain);
    }

    public void j(Message message, Message message2) {
        try {
            message2.replyTo = this.f17216c;
            message.replyTo.send(message2);
        } catch (RemoteException e2) {
            f("TODO: handle replyToMessage RemoteException" + e2);
            e2.printStackTrace();
        }
    }

    public void k(int i2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        p(messageObtain);
    }

    public void l(int i2, int i3) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        p(messageObtain);
    }

    public void m(int i2, int i3, int i4) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        p(messageObtain);
    }

    public void n(int i2, int i3, int i4, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        messageObtain.obj = obj;
        p(messageObtain);
    }

    public void o(int i2, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.obj = obj;
        p(messageObtain);
    }

    public void p(Message message) {
        message.replyTo = this.f17216c;
        try {
            this.f17217d.send(message);
        } catch (RemoteException unused) {
            g(2);
        }
    }

    public Message q(int i2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        return u(messageObtain);
    }

    public Message r(int i2, int i3) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        return u(messageObtain);
    }

    public Message s(int i2, int i3, int i4) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        return u(messageObtain);
    }

    public Message t(int i2, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.obj = obj;
        return u(messageObtain);
    }

    public Message u(Message message) {
        return c.d(this.f17217d, message);
    }
}
