package j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.syu.carlink.MainActivity;
import com.syu.carlink.fragment.CarMarkFragment;
import com.syu.carlink.fragment.SettingsFragment;
import e.v;
import e.w;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f971a;
    public i.b c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f974e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f973d = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f972b = new ArrayList();

    public c(Context context) {
        this.f971a = context;
        this.f974e = new e(context);
        for (int i2 = 0; i2 < 88; i2++) {
            String str = String.format("%03d", Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1));
            t.b.g(str, "format(format, *args)");
            this.f972b.add("car_logo_".concat(str));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f972b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i2) {
        b bVar = (b) viewHolder;
        t.b.h(bVar, "holder");
        Context context = this.f971a;
        int identifier = context.getResources().getIdentifier((String) this.f972b.get(i2), "drawable", context.getPackageName());
        ImageView imageView = (ImageView) bVar.itemView.findViewById(v.item_car_logo);
        if (imageView != null) {
            imageView.setImageDrawable((Drawable) bVar.f970a.f974e.get(Integer.valueOf(identifier)));
        }
        bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: j.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c cVar = this.f969b;
                t.b.h(cVar, "this$0");
                i.b bVar2 = cVar.c;
                int i3 = i2;
                if (bVar2 != null) {
                    int i4 = cVar.f973d;
                    ArrayList arrayList = cVar.f972b;
                    final String str = i4 < 0 ? null : (String) arrayList.get(i4);
                    final String str2 = (String) arrayList.get(i3);
                    t.b.h(str2, "selected");
                    n.b.a("HDL", "onItemSelected old: " + str + "  selected: " + str2);
                    final CarMarkFragment carMarkFragment = bVar2.f960a;
                    FragmentActivity activity = carMarkFragment.getActivity();
                    if (activity != null) {
                        final c cVar2 = bVar2.f961b;
                        activity.runOnUiThread(new Runnable() { // from class: i.a
                            @Override // java.lang.Runnable
                            public final void run() throws IOException {
                                SettingsFragment settingsFragment;
                                String str3 = str2;
                                t.b.h(str3, "$selected");
                                j.c cVar3 = cVar2;
                                t.b.h(cVar3, "$this_apply");
                                CarMarkFragment carMarkFragment2 = carMarkFragment;
                                t.b.h(carMarkFragment2, "this$0");
                                if (!t.b.a(str, str3)) {
                                    if (str3.length() > 0) {
                                        Context context2 = cVar3.f971a;
                                        InputStream inputStreamOpenRawResource = context2.getResources().openRawResource(context2.getResources().getIdentifier(str3, "drawable", context2.getPackageName()));
                                        t.b.g(inputStreamOpenRawResource, "context.resources.openRawResource(resid)");
                                        t.b.l(inputStreamOpenRawResource);
                                    }
                                }
                                FragmentActivity activity2 = carMarkFragment2.getActivity();
                                MainActivity mainActivity = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
                                if (mainActivity == null || (settingsFragment = mainActivity.f623f) == null) {
                                    return;
                                }
                                mainActivity.m(settingsFragment);
                            }
                        });
                    }
                }
                cVar.f973d = i3;
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        t.b.h(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(this.f971a).inflate(w.car_logo_item, (ViewGroup) null, false);
        t.b.g(viewInflate, "from(context).inflate(R.…r_logo_item, null, false)");
        return new b(this, viewInflate);
    }
}
