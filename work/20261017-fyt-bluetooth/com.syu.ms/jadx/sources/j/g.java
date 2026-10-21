package j;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.media.MediaRouter;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class g extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaRouter f2929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f2930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View.OnClickListener f2932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f2933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ListView f2934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f2935g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2936h;

    public final class b extends MediaRouter.SimpleCallback {
        public b() {
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            g.this.c();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            g.this.c();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            g.this.c();
        }

        @Override // android.media.MediaRouter.SimpleCallback, android.media.MediaRouter.Callback
        public void onRouteSelected(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
            g.this.dismiss();
        }
    }

    public final class c extends ArrayAdapter<MediaRouter.RouteInfo> implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LayoutInflater f2938a;

        public c(Context context) {
            super(context, 0);
            this.f2938a = LayoutInflater.from(context);
        }

        public void a() {
            clear();
            int routeCount = g.this.f2929a.getRouteCount();
            for (int i2 = 0; i2 < routeCount; i2++) {
                MediaRouter.RouteInfo routeAt = g.this.f2929a.getRouteAt(i2);
                if (g.this.b(routeAt)) {
                    add(routeAt);
                }
            }
            sort(d.f2940a);
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.f2938a.inflate(17367134, viewGroup, false);
            }
            MediaRouter.RouteInfo item = getItem(i2);
            TextView textView = (TextView) view.findViewById(R.id.text1);
            TextView textView2 = (TextView) view.findViewById(R.id.text2);
            textView.setText(item.getName());
            CharSequence description = item.getDescription();
            if (TextUtils.isEmpty(description)) {
                textView2.setVisibility(8);
                textView2.setText(ProxyProperties.LOCAL_EXCL_LIST);
            } else {
                textView2.setVisibility(0);
                textView2.setText(description);
            }
            view.setEnabled(item.isEnabled());
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            return getItem(i2).isEnabled();
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            MediaRouter.RouteInfo item = getItem(i2);
            if (item.isEnabled()) {
                item.select();
                g.this.dismiss();
            }
        }
    }

    public static final class d implements Comparator<MediaRouter.RouteInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f2940a = new d();

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            return routeInfo.getName().toString().compareTo(routeInfo2.getName().toString());
        }
    }

    public g(Context context, int i2) {
        super(context, i2);
        this.f2929a = (MediaRouter) context.getSystemService(Context.MEDIA_ROUTER_SERVICE);
        this.f2930b = new b();
    }

    public boolean b(MediaRouter.RouteInfo routeInfo) {
        return !routeInfo.isDefault() && routeInfo.isEnabled() && routeInfo.matchesTypes(this.f2931c);
    }

    public void c() {
        if (this.f2936h) {
            this.f2933e.a();
        }
    }

    public void d(View.OnClickListener onClickListener) {
        if (onClickListener != this.f2932d) {
            this.f2932d = onClickListener;
            f();
        }
    }

    public void e(int i2) {
        if (this.f2931c != i2) {
            this.f2931c = i2;
            if (this.f2936h) {
                this.f2929a.removeCallback(this.f2930b);
                this.f2929a.addCallback(i2, this.f2930b, 1);
            }
            c();
        }
    }

    public final void f() {
        Button button = this.f2935g;
        if (button != null) {
            button.setOnClickListener(this.f2932d);
            this.f2935g.setVisibility(this.f2932d != null ? 0 : 8);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2936h = true;
        this.f2929a.addCallback(this.f2931c, this.f2930b, 1);
        c();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().requestFeature(3);
        setContentView(17367132);
        setTitle(this.f2931c == 4 ? 17040716 : 17040715);
        getWindow().setFeatureDrawableResource(3, 17302309);
        this.f2933e = new c(getContext());
        ListView listView = (ListView) findViewById(16909018);
        this.f2934f = listView;
        listView.setAdapter((ListAdapter) this.f2933e);
        this.f2934f.setOnItemClickListener(this.f2933e);
        this.f2934f.setEmptyView(findViewById(R.id.empty));
        this.f2935g = (Button) findViewById(16909019);
        f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f2936h = false;
        this.f2929a.removeCallback(this.f2930b);
        super.onDetachedFromWindow();
    }
}
