package android.telecom;

import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f199b;
    public final /* synthetic */ Connection c;

    public /* synthetic */ d(Connection connection, int i2) {
        this.f199b = i2;
        this.c = connection;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f199b) {
            case 0:
                this.c.lambda$sendRemoteRttRequest$3((Connection.Listener) obj);
                break;
            case 1:
                this.c.lambda$sendRttInitiationSuccess$0((Connection.Listener) obj);
                break;
            default:
                this.c.lambda$sendRttSessionRemotelyTerminated$2((Connection.Listener) obj);
                break;
        }
    }
}
