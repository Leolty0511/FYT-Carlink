package u;

import android.net.ProxyProperties;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class m {
    public static final boolean HANDLED = true;
    public static final boolean NOT_HANDLED = false;
    private static final int SM_INIT_CMD = -2;
    private static final int SM_QUIT_CMD = -1;
    private String mName;
    private d mSmHandler;
    private HandlerThread mSmThread;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public m f17258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f17259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f17260c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f17261d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public g f17262e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public g f17263f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public g f17264g;

        public b(m mVar, Message message, String str, g gVar, g gVar2, g gVar3) {
            a(mVar, message, str, gVar, gVar2, gVar3);
        }

        public void a(m mVar, Message message, String str, g gVar, g gVar2, g gVar3) {
            this.f17258a = mVar;
            this.f17259b = System.currentTimeMillis();
            this.f17260c = message != null ? message.what : 0;
            this.f17261d = str;
            this.f17262e = gVar;
            this.f17263f = gVar2;
            this.f17264g = gVar3;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("time=");
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(this.f17259b);
            sb.append(String.format("%tm-%td %tH:%tM:%tS.%tL", calendar, calendar, calendar, calendar, calendar, calendar));
            sb.append(" processed=");
            g gVar = this.f17262e;
            sb.append(gVar == null ? "<null>" : gVar.getName());
            sb.append(" org=");
            g gVar2 = this.f17263f;
            sb.append(gVar2 == null ? "<null>" : gVar2.getName());
            sb.append(" dest=");
            g gVar3 = this.f17264g;
            sb.append(gVar3 != null ? gVar3.getName() : "<null>");
            sb.append(" what=");
            m mVar = this.f17258a;
            String whatToString = mVar != null ? mVar.getWhatToString(this.f17260c) : ProxyProperties.LOCAL_EXCL_LIST;
            if (TextUtils.isEmpty(whatToString)) {
                sb.append(this.f17260c);
                sb.append("(0x");
                sb.append(Integer.toHexString(this.f17260c));
                sb.append(")");
            } else {
                sb.append(whatToString);
            }
            if (!TextUtils.isEmpty(this.f17261d)) {
                sb.append(" ");
                sb.append(this.f17261d);
            }
            return sb.toString();
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Vector<b> f17265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f17267c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f17268d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f17269e;

        public synchronized void b(m mVar, Message message, String str, g gVar, g gVar2, g gVar3) {
            this.f17268d++;
            if (this.f17265a.size() < this.f17266b) {
                this.f17265a.add(new b(mVar, message, str, gVar, gVar2, gVar3));
            } else {
                b bVar = this.f17265a.get(this.f17267c);
                int i2 = this.f17267c + 1;
                this.f17267c = i2;
                if (i2 >= this.f17266b) {
                    this.f17267c = 0;
                }
                bVar.a(mVar, message, str, gVar, gVar2, gVar3);
            }
        }

        public synchronized void c() {
            this.f17265a.clear();
        }

        public synchronized int d() {
            return this.f17268d;
        }

        public synchronized b e(int i2) {
            int i3 = this.f17267c + i2;
            int i4 = this.f17266b;
            if (i3 >= i4) {
                i3 -= i4;
            }
            if (i3 >= i()) {
                return null;
            }
            return this.f17265a.get(i3);
        }

        public synchronized boolean f() {
            return this.f17269e;
        }

        public synchronized void g(boolean z2) {
            this.f17269e = z2;
        }

        public synchronized void h(int i2) {
            this.f17266b = i2;
            this.f17268d = 0;
            this.f17265a.clear();
        }

        public synchronized int i() {
            return this.f17265a.size();
        }

        public c() {
            this.f17265a = new Vector<>();
            this.f17266b = 20;
            this.f17267c = 0;
            this.f17268d = 0;
            this.f17269e = false;
        }
    }

    public static class d extends Handler {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final Object f17270q = new Object();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Message f17273c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c f17274d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f17275e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public c[] f17276f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f17277g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c[] f17278h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f17279i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public a f17280j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public b f17281k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public m f17282l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public HashMap<l, c> f17283m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public l f17284n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public l f17285o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public ArrayList<Message> f17286p;

        public class a extends l {
            public a() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                d.this.f17282l.haltedProcessMessage(message);
                return true;
            }
        }

        public class b extends l {
            public b() {
            }

            @Override // u.l
            public boolean processMessage(Message message) {
                return false;
            }
        }

        public class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public l f17289a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public c f17290b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f17291c;

            public c() {
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                sb.append("state=");
                sb.append(this.f17289a.getName());
                sb.append(",active=");
                sb.append(this.f17291c);
                sb.append(",parent=");
                c cVar = this.f17290b;
                sb.append(cVar == null ? "null" : cVar.f17289a.getName());
                return sb.toString();
            }
        }

        public final void A(c cVar) {
            while (true) {
                int i2 = this.f17277g;
                if (i2 < 0) {
                    return;
                }
                c[] cVarArr = this.f17276f;
                if (cVarArr[i2] == cVar) {
                    return;
                }
                l lVar = cVarArr[i2].f17289a;
                if (this.f17272b) {
                    this.f17282l.log("invokeExitMethods: " + lVar.getName());
                }
                lVar.exit();
                c[] cVarArr2 = this.f17276f;
                int i3 = this.f17277g;
                cVarArr2[i3].f17291c = false;
                this.f17277g = i3 - 1;
            }
        }

        public final boolean B() {
            return this.f17272b;
        }

        public final boolean C(Message message) {
            return message.what == -1 && message.obj == f17270q;
        }

        public final void D() {
            for (int size = this.f17286p.size() - 1; size >= 0; size--) {
                Message message = this.f17286p.get(size);
                if (this.f17272b) {
                    this.f17282l.log("moveDeferredMessageAtFrontOfQueue; what=" + message.what);
                }
                sendMessageAtFrontOfQueue(message);
            }
            this.f17286p.clear();
        }

        public final int E() {
            int i2 = this.f17277g + 1;
            int i3 = i2;
            for (int i4 = this.f17279i - 1; i4 >= 0; i4--) {
                if (this.f17272b) {
                    this.f17282l.log("moveTempStackToStateStack: i=" + i4 + ",j=" + i3);
                }
                this.f17276f[i3] = this.f17278h[i4];
                i3++;
            }
            this.f17277g = i3 - 1;
            if (this.f17272b) {
                this.f17282l.log("moveTempStackToStateStack: X mStateStackTop=" + this.f17277g + ",startingIndex=" + i2 + ",Top=" + this.f17276f[this.f17277g].f17289a.getName());
            }
            return i2;
        }

        public final void F(l lVar, Message message) {
            l lVar2 = this.f17276f[this.f17277g].f17289a;
            boolean z2 = this.f17282l.recordLogRec(this.f17273c) && message.obj != f17270q;
            if (this.f17274d.f()) {
                if (this.f17285o != null) {
                    c cVar = this.f17274d;
                    m mVar = this.f17282l;
                    Message message2 = this.f17273c;
                    cVar.b(mVar, message2, mVar.getLogRecString(message2), lVar, lVar2, this.f17285o);
                }
            } else if (z2) {
                c cVar2 = this.f17274d;
                m mVar2 = this.f17282l;
                Message message3 = this.f17273c;
                cVar2.b(mVar2, message3, mVar2.getLogRecString(message3), lVar, lVar2, this.f17285o);
            }
            l lVar3 = this.f17285o;
            if (lVar3 != null) {
                while (true) {
                    if (this.f17272b) {
                        this.f17282l.log("handleMessage: new destination call exit/enter");
                    }
                    A(L(lVar3));
                    z(E());
                    D();
                    l lVar4 = this.f17285o;
                    if (lVar3 == lVar4) {
                        break;
                    } else {
                        lVar3 = lVar4;
                    }
                }
                this.f17285o = null;
            }
            if (lVar3 != null) {
                if (lVar3 == this.f17281k) {
                    this.f17282l.onQuitting();
                    u();
                } else if (lVar3 == this.f17280j) {
                    this.f17282l.onHalting();
                }
            }
        }

        public final l G(Message message) {
            c cVar = this.f17276f[this.f17277g];
            if (this.f17272b) {
                this.f17282l.log("processMsg: " + cVar.f17289a.getName());
            }
            if (C(message)) {
                M(this.f17281k);
            } else {
                while (!cVar.f17289a.processMessage(message)) {
                    cVar = cVar.f17290b;
                    if (cVar == null) {
                        this.f17282l.unhandledMessage(message);
                        break;
                    }
                    if (this.f17272b) {
                        this.f17282l.log("processMsg: " + cVar.f17289a.getName());
                    }
                }
            }
            if (cVar != null) {
                return cVar.f17289a;
            }
            return null;
        }

        public final void H() {
            if (this.f17272b) {
                this.f17282l.log("quitNow:");
            }
            sendMessageAtFrontOfQueue(obtainMessage(-1, f17270q));
        }

        public final void I(boolean z2) {
            this.f17272b = z2;
        }

        public final void J(l lVar) {
            if (this.f17272b) {
                this.f17282l.log("setInitialState: initialState=" + lVar.getName());
            }
            this.f17284n = lVar;
        }

        public final void K() {
            if (this.f17272b) {
                this.f17282l.log("setupInitialStateStack: E mInitialState=" + this.f17284n.getName());
            }
            c cVar = this.f17283m.get(this.f17284n);
            this.f17279i = 0;
            while (cVar != null) {
                c[] cVarArr = this.f17278h;
                int i2 = this.f17279i;
                cVarArr[i2] = cVar;
                cVar = cVar.f17290b;
                this.f17279i = i2 + 1;
            }
            this.f17277g = -1;
            E();
        }

        public final c L(l lVar) {
            this.f17279i = 0;
            c cVar = this.f17283m.get(lVar);
            do {
                c[] cVarArr = this.f17278h;
                int i2 = this.f17279i;
                this.f17279i = i2 + 1;
                cVarArr[i2] = cVar;
                cVar = cVar.f17290b;
                if (cVar == null) {
                    break;
                }
            } while (!cVar.f17291c);
            if (this.f17272b) {
                this.f17282l.log("setupTempStateStackWithStatesToEnter: X mTempStateStackCount=" + this.f17279i + ",curStateInfo: " + cVar);
            }
            return cVar;
        }

        public final void M(g gVar) {
            this.f17285o = (l) gVar;
            if (this.f17272b) {
                this.f17282l.log("transitionTo: destState=" + this.f17285o.getName());
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            m mVar;
            if (this.f17271a) {
                return;
            }
            if (this.f17272b) {
                this.f17282l.log("handleMessage: E msg.what=" + message.what);
            }
            this.f17273c = message;
            l lVarG = null;
            boolean z2 = this.f17275e;
            if (z2) {
                lVarG = G(message);
            } else {
                if (z2 || message.what != -2 || message.obj != f17270q) {
                    throw new RuntimeException("StateMachine.handleMessage: The start method not called, received msg: " + message);
                }
                this.f17275e = true;
                z(0);
            }
            F(lVarG, message);
            if (!this.f17272b || (mVar = this.f17282l) == null) {
                return;
            }
            mVar.log("handleMessage: X");
        }

        public final void quit() {
            if (this.f17272b) {
                this.f17282l.log("quit:");
            }
            sendMessage(obtainMessage(-1, f17270q));
        }

        public final c t(l lVar, l lVar2) {
            c cVarT;
            if (this.f17272b) {
                m mVar = this.f17282l;
                StringBuilder sb = new StringBuilder();
                sb.append("addStateInternal: E state=");
                sb.append(lVar.getName());
                sb.append(",parent=");
                sb.append(lVar2 == null ? ProxyProperties.LOCAL_EXCL_LIST : lVar2.getName());
                mVar.log(sb.toString());
            }
            if (lVar2 != null) {
                cVarT = this.f17283m.get(lVar2);
                if (cVarT == null) {
                    cVarT = t(lVar2, null);
                }
            } else {
                cVarT = null;
            }
            c cVar = this.f17283m.get(lVar);
            if (cVar == null) {
                cVar = new c();
                this.f17283m.put(lVar, cVar);
            }
            c cVar2 = cVar.f17290b;
            if (cVar2 != null && cVar2 != cVarT) {
                throw new RuntimeException("state already added");
            }
            cVar.f17289a = lVar;
            cVar.f17290b = cVarT;
            cVar.f17291c = false;
            if (this.f17272b) {
                this.f17282l.log("addStateInternal: X stateInfo: " + cVar);
            }
            return cVar;
        }

        public final void u() {
            if (this.f17282l.mSmThread != null) {
                getLooper().quit();
                this.f17282l.mSmThread = null;
            }
            this.f17282l.mSmHandler = null;
            this.f17282l = null;
            this.f17273c = null;
            this.f17274d.c();
            this.f17276f = null;
            this.f17278h = null;
            this.f17283m.clear();
            this.f17284n = null;
            this.f17285o = null;
            this.f17286p.clear();
            this.f17271a = true;
        }

        public final void v() {
            if (this.f17272b) {
                this.f17282l.log("completeConstruction: E");
            }
            int i2 = 0;
            for (c cVar : this.f17283m.values()) {
                int i3 = 0;
                while (cVar != null) {
                    cVar = cVar.f17290b;
                    i3++;
                }
                if (i2 < i3) {
                    i2 = i3;
                }
            }
            if (this.f17272b) {
                this.f17282l.log("completeConstruction: maxDepth=" + i2);
            }
            this.f17276f = new c[i2];
            this.f17278h = new c[i2];
            K();
            sendMessageAtFrontOfQueue(obtainMessage(-2, f17270q));
            if (this.f17272b) {
                this.f17282l.log("completeConstruction: X");
            }
        }

        public final void w(Message message) {
            if (this.f17272b) {
                this.f17282l.log("deferMessage: msg=" + message.what);
            }
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.copyFrom(message);
            this.f17286p.add(messageObtainMessage);
        }

        public final Message x() {
            return this.f17273c;
        }

        public final g y() {
            return this.f17276f[this.f17277g].f17289a;
        }

        public final void z(int i2) {
            while (i2 <= this.f17277g) {
                if (this.f17272b) {
                    this.f17282l.log("invokeEnterMethods: " + this.f17276f[i2].f17289a.getName());
                }
                this.f17276f[i2].f17289a.enter();
                this.f17276f[i2].f17291c = true;
                i2++;
            }
        }

        public d(Looper looper, m mVar) {
            super(looper);
            this.f17271a = false;
            this.f17272b = false;
            this.f17274d = new c();
            this.f17277g = -1;
            this.f17280j = new a();
            this.f17281k = new b();
            this.f17283m = new HashMap<>();
            this.f17286p = new ArrayList<>();
            this.f17282l = mVar;
            t(this.f17280j, null);
            t(this.f17281k, null);
        }
    }

    public m(String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        this.mSmThread = handlerThread;
        handlerThread.start();
        initStateMachine(str, this.mSmThread.getLooper());
    }

    private void initStateMachine(String str, Looper looper) {
        this.mName = str;
        this.mSmHandler = new d(looper, this);
    }

    public void addLogRec(String str) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.f17274d.b(this, dVar.x(), str, dVar.y(), dVar.f17276f[dVar.f17277g].f17289a, dVar.f17285o);
    }

    public final void addState(l lVar, l lVar2) {
        this.mSmHandler.t(lVar, lVar2);
    }

    public final Collection<b> copyLogRecs() {
        Vector vector = new Vector();
        d dVar = this.mSmHandler;
        if (dVar != null) {
            Iterator it = dVar.f17274d.f17265a.iterator();
            while (it.hasNext()) {
                vector.add((b) it.next());
            }
        }
        return vector;
    }

    public final void deferMessage(Message message) {
        this.mSmHandler.w(message);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println(getName() + ":");
        printWriter.println(" total records=" + getLogRecCount());
        for (int i2 = 0; i2 < getLogRecSize(); i2++) {
            printWriter.printf(" rec[%d]: %s\n", Integer.valueOf(i2), getLogRec(i2).toString());
            printWriter.flush();
        }
        printWriter.println("curState=" + getCurrentState().getName());
    }

    public final Message getCurrentMessage() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return null;
        }
        return dVar.x();
    }

    public final g getCurrentState() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return null;
        }
        return dVar.y();
    }

    public final Handler getHandler() {
        return this.mSmHandler;
    }

    public final b getLogRec(int i2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return null;
        }
        return dVar.f17274d.e(i2);
    }

    public final int getLogRecCount() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return 0;
        }
        return dVar.f17274d.d();
    }

    public final int getLogRecSize() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return 0;
        }
        return dVar.f17274d.i();
    }

    public String getLogRecString(Message message) {
        return ProxyProperties.LOCAL_EXCL_LIST;
    }

    public final String getName() {
        return this.mName;
    }

    public String getWhatToString(int i2) {
        return null;
    }

    public void haltedProcessMessage(Message message) {
    }

    public boolean isDbg() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return false;
        }
        return dVar.B();
    }

    public final boolean isQuit(Message message) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return message.what == -1;
        }
        return dVar.C(message);
    }

    public void log(String str) {
        Log.d(this.mName, str);
    }

    public void logAndAddLogRec(String str) {
        addLogRec(str);
        log(str);
    }

    public void logd(String str) {
        Log.d(this.mName, str);
    }

    public void loge(String str) {
        Log.e(this.mName, str);
    }

    public void logi(String str) {
        Log.i(this.mName, str);
    }

    public void logv(String str) {
        Log.v(this.mName, str);
    }

    public void logw(String str) {
        Log.w(this.mName, str);
    }

    public final Message obtainMessage() {
        return Message.obtain(this.mSmHandler);
    }

    public void onHalting() {
    }

    public void onQuitting() {
    }

    public final void quit() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.quit();
    }

    public final void quitNow() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.H();
    }

    public boolean recordLogRec(Message message) {
        return true;
    }

    public final void removeMessages(int i2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.removeMessages(i2);
    }

    public final void sendMessage(int i2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessage(obtainMessage(i2));
    }

    public final void sendMessageAtFrontOfQueue(int i2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageAtFrontOfQueue(obtainMessage(i2));
    }

    public final void sendMessageDelayed(int i2, long j2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageDelayed(obtainMessage(i2), j2);
    }

    public void setDbg(boolean z2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.I(z2);
    }

    public final void setInitialState(l lVar) {
        this.mSmHandler.J(lVar);
    }

    public final void setLogOnlyTransitions(boolean z2) {
        this.mSmHandler.f17274d.g(z2);
    }

    public final void setLogRecSize(int i2) {
        this.mSmHandler.f17274d.h(i2);
    }

    public void start() {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.v();
    }

    public final void transitionTo(g gVar) {
        this.mSmHandler.M(gVar);
    }

    public final void transitionToHaltingState() {
        d dVar = this.mSmHandler;
        dVar.M(dVar.f17280j);
    }

    public void unhandledMessage(Message message) {
        if (this.mSmHandler.f17272b) {
            loge(" - unhandledMessage: msg.what=" + message.what);
        }
    }

    public final void addState(l lVar) {
        this.mSmHandler.t(lVar, null);
    }

    public void loge(String str, Throwable th) {
        Log.e(this.mName, str, th);
    }

    public final Message obtainMessage(int i2) {
        return Message.obtain(this.mSmHandler, i2);
    }

    public final Message obtainMessage(int i2, Object obj) {
        return Message.obtain(this.mSmHandler, i2, obj);
    }

    public final void sendMessage(int i2, Object obj) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessage(obtainMessage(i2, obj));
    }

    public final void sendMessageAtFrontOfQueue(int i2, Object obj) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageAtFrontOfQueue(obtainMessage(i2, obj));
    }

    public final void sendMessageDelayed(int i2, Object obj, long j2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageDelayed(obtainMessage(i2, obj), j2);
    }

    public final Message obtainMessage(int i2, int i3) {
        return Message.obtain(this.mSmHandler, i2, i3, 0);
    }

    public final Message obtainMessage(int i2, int i3, int i4) {
        return Message.obtain(this.mSmHandler, i2, i3, i4);
    }

    public final void sendMessage(int i2, int i3) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessage(obtainMessage(i2, i3));
    }

    public final void sendMessageAtFrontOfQueue(int i2, int i3) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageAtFrontOfQueue(obtainMessage(i2, i3));
    }

    public final void sendMessageDelayed(int i2, int i3, long j2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageDelayed(obtainMessage(i2, i3), j2);
    }

    public m(String str, Looper looper) {
        initStateMachine(str, looper);
    }

    public final Message obtainMessage(int i2, int i3, int i4, Object obj) {
        return Message.obtain(this.mSmHandler, i2, i3, i4, obj);
    }

    public final void sendMessage(int i2, int i3, int i4) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessage(obtainMessage(i2, i3, i4));
    }

    public final void sendMessageAtFrontOfQueue(int i2, int i3, int i4) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageAtFrontOfQueue(obtainMessage(i2, i3, i4));
    }

    public final void sendMessageDelayed(int i2, int i3, int i4, long j2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageDelayed(obtainMessage(i2, i3, i4), j2);
    }

    public m(String str, Handler handler) {
        initStateMachine(str, handler.getLooper());
    }

    public final void sendMessage(int i2, int i3, int i4, Object obj) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessage(obtainMessage(i2, i3, i4, obj));
    }

    public final void sendMessageAtFrontOfQueue(int i2, int i3, int i4, Object obj) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageAtFrontOfQueue(obtainMessage(i2, i3, i4, obj));
    }

    public final void sendMessageDelayed(int i2, int i3, int i4, Object obj, long j2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageDelayed(obtainMessage(i2, i3, i4, obj), j2);
    }

    public final void sendMessage(Message message) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessage(message);
    }

    public final void sendMessageAtFrontOfQueue(Message message) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageAtFrontOfQueue(message);
    }

    public final void sendMessageDelayed(Message message, long j2) {
        d dVar = this.mSmHandler;
        if (dVar == null) {
            return;
        }
        dVar.sendMessageDelayed(message, j2);
    }
}
