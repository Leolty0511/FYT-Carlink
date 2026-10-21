package android.telecom;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f200b;
    public final /* synthetic */ RemoteConnection.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ RemoteConnection f201d;

    public /* synthetic */ e(RemoteConnection.Callback callback, RemoteConnection remoteConnection, int i2) {
        this.f200b = i2;
        this.c = callback;
        this.f201d = remoteConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f200b;
        RemoteConnection remoteConnection = this.f201d;
        RemoteConnection.Callback callback = this.c;
        switch (i2) {
            case 0:
                callback.onRttSessionRemotelyTerminated(remoteConnection);
                break;
            case 1:
                callback.onRttInitiationSuccess(remoteConnection);
                break;
            default:
                callback.onRemoteRttRequest(remoteConnection);
                break;
        }
    }
}
