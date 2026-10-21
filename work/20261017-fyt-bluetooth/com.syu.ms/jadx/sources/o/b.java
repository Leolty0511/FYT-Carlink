package o;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f16688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Looper f16689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f16690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f16691d;

    public interface a {
        void executeMessage(Message message);
    }

    /* JADX INFO: renamed from: o.b$b, reason: collision with other inner class name */
    public class HandlerC0086b extends Handler {
        public HandlerC0086b(Looper looper, boolean z2) {
            super(looper, null, z2);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b.this.f16691d.executeMessage(message);
        }
    }

    public b(Context context, Looper looper, a aVar, boolean z2) {
        this.f16688a = context;
        looper = looper == null ? context.getMainLooper() : looper;
        this.f16689b = looper;
        this.f16690c = new HandlerC0086b(looper, z2);
        this.f16691d = aVar;
    }

    public void a(Message message) {
        if (Looper.myLooper() != this.f16689b) {
            this.f16690c.sendMessage(message);
        } else {
            this.f16691d.executeMessage(message);
            message.recycle();
        }
    }

    public Message b(int i2) {
        return this.f16690c.obtainMessage(i2);
    }

    public Message c(int i2, int i3) {
        return this.f16690c.obtainMessage(i2, i3, 0);
    }

    public Message d(int i2, int i3, int i4) {
        return this.f16690c.obtainMessage(i2, i3, i4);
    }

    public Message e(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        f fVarB = f.b();
        fVarB.f16714h = i3;
        fVarB.f16715i = i4;
        fVarB.f16716j = i5;
        fVarB.f16717k = i6;
        fVarB.f16718l = i7;
        fVarB.f16719m = i8;
        return this.f16690c.obtainMessage(i2, 0, 0, fVarB);
    }

    public Message f(int i2, int i3, Object obj) {
        return this.f16690c.obtainMessage(i2, i3, 0, obj);
    }

    public Message g(int i2, Object obj) {
        return this.f16690c.obtainMessage(i2, 0, 0, obj);
    }

    public Message h(int i2, Object obj, Object obj2) {
        f fVarB = f.b();
        fVarB.f16709c = obj;
        fVarB.f16710d = obj2;
        return this.f16690c.obtainMessage(i2, 0, 0, fVarB);
    }

    public Message i(int i2, Object obj, Object obj2, Object obj3, Object obj4) {
        f fVarB = f.b();
        fVarB.f16709c = obj;
        fVarB.f16710d = obj2;
        fVarB.f16711e = obj3;
        fVarB.f16712f = obj4;
        return this.f16690c.obtainMessage(i2, 0, 0, fVarB);
    }

    public void j(Message message) {
        this.f16690c.sendMessage(message);
    }
}
