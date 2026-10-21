package u;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class l implements g {
    public void enter() {
    }

    public void exit() {
    }

    @Override // u.g
    public String getName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(36) + 1);
    }

    public boolean processMessage(Message message) {
        return false;
    }
}
