package base.event;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.LinkedHashMap;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class ReceiverManager extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinkedHashMap<String, LinkedList<a>> f339a = new LinkedHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LinkedHashMap<String, a> f340b = new LinkedHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinkedHashMap<String, a> f341c = new LinkedHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f342d = false;

    public interface a {
        boolean a(Context context, Intent intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a aVar;
        String action = intent.getAction();
        a aVar2 = this.f341c.get(action);
        if ((aVar2 == null || !aVar2.a(context, intent)) && (aVar = this.f340b.get(action)) != null) {
            aVar.a(context, intent);
        }
    }
}
