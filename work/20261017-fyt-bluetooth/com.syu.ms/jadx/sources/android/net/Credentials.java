package android.net;

/* JADX INFO: loaded from: classes.dex */
public class Credentials {
    private final int gid;
    private final int pid;
    private final int uid;

    public Credentials(int i2, int i3, int i4) {
        this.pid = i2;
        this.uid = i3;
        this.gid = i4;
    }

    public int getGid() {
        return this.gid;
    }

    public int getPid() {
        return this.pid;
    }

    public int getUid() {
        return this.uid;
    }
}
