package com.android.internal.app;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageManager;
import android.content.pm.LabeledIntent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PatternMatcher;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.internal.content.PackageMonitor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ResolverActivity extends AlertActivity implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e f924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PackageManager f925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ListView f928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f929i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Button f930j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f931k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f932l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f933m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f935o;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f934n = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final PackageMonitor f936p = new a();

    public class a extends PackageMonitor {
        public a() {
        }

        @Override // com.android.internal.content.PackageMonitor
        public void onSomePackagesChanged() {
            ResolverActivity.this.f924d.c();
        }
    }

    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ResolveInfo f938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CharSequence f939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Drawable f940c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public CharSequence f941d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Intent f942e;

        public b(ResolveInfo resolveInfo, CharSequence charSequence, CharSequence charSequence2, Intent intent) {
            this.f938a = resolveInfo;
            this.f939b = charSequence;
            this.f941d = charSequence2;
            this.f942e = intent;
        }
    }

    public class c implements AdapterView.OnItemLongClickListener {
        public c() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ResolverActivity.this.m(ResolverActivity.this.f924d.f(i2));
            return true;
        }
    }

    public class d extends AsyncTask<b, Void, b> {
        public d() {
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b doInBackground(b... bVarArr) {
            b bVar = bVarArr[0];
            if (bVar.f940c == null) {
                bVar.f940c = ResolverActivity.this.i(bVar.f938a);
            }
            return bVar;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(b bVar) {
            ResolverActivity.this.f924d.notifyDataSetChanged();
        }
    }

    public final class e extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent[] f946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<ResolveInfo> f947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ResolveInfo f948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Intent f949d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LayoutInflater f951f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List<ResolveInfo> f953h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f954i = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public List<b> f952g = new ArrayList();

        public e(Context context, Intent intent, Intent[] intentArr, List<ResolveInfo> list, int i2) {
            this.f949d = new Intent(intent);
            this.f946a = intentArr;
            this.f947b = list;
            this.f950e = i2;
            this.f951f = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            e();
        }

        public final void a(View view, b bVar) {
            f fVar = (f) view.getTag();
            fVar.f956a.setText(bVar.f939b);
            if (ResolverActivity.this.f927g) {
                fVar.f957b.setVisibility(0);
                fVar.f957b.setText(bVar.f941d);
            } else {
                fVar.f957b.setVisibility(8);
            }
            if (bVar.f940c == null) {
                ResolverActivity.this.new d().execute(bVar);
            }
            fVar.f958c.setImageDrawable(bVar.f940c);
        }

        public int b() {
            return this.f954i;
        }

        public void c() {
            getCount();
            e();
            notifyDataSetChanged();
            if (getCount() == 0) {
                ResolverActivity.this.finish();
            }
        }

        public final void d(List<ResolveInfo> list, int i2, int i3, ResolveInfo resolveInfo, CharSequence charSequence) {
            boolean z2 = true;
            if ((i3 - i2) + 1 == 1) {
                ResolveInfo resolveInfo2 = this.f948c;
                if (resolveInfo2 != null && resolveInfo2.activityInfo.packageName.equals(resolveInfo.activityInfo.packageName) && this.f948c.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                    this.f954i = this.f952g.size();
                }
                this.f952g.add(ResolverActivity.this.new b(resolveInfo, charSequence, null, null));
                return;
            }
            ResolverActivity.this.f927g = true;
            CharSequence charSequenceLoadLabel = resolveInfo.activityInfo.applicationInfo.loadLabel(ResolverActivity.this.f925e);
            boolean z3 = charSequenceLoadLabel == null;
            if (!z3) {
                HashSet hashSet = new HashSet();
                hashSet.add(charSequenceLoadLabel);
                int i4 = i2 + 1;
                while (true) {
                    if (i4 > i3) {
                        z2 = z3;
                        break;
                    }
                    CharSequence charSequenceLoadLabel2 = list.get(i4).activityInfo.applicationInfo.loadLabel(ResolverActivity.this.f925e);
                    if (charSequenceLoadLabel2 == null || hashSet.contains(charSequenceLoadLabel2)) {
                        break;
                    }
                    hashSet.add(charSequenceLoadLabel2);
                    i4++;
                }
                hashSet.clear();
                z3 = z2;
            }
            while (i2 <= i3) {
                ResolveInfo resolveInfo3 = list.get(i2);
                ResolveInfo resolveInfo4 = this.f948c;
                if (resolveInfo4 != null && resolveInfo4.activityInfo.packageName.equals(resolveInfo3.activityInfo.packageName) && this.f948c.activityInfo.name.equals(resolveInfo3.activityInfo.name)) {
                    this.f954i = this.f952g.size();
                }
                if (z3) {
                    this.f952g.add(ResolverActivity.this.new b(resolveInfo3, charSequence, resolveInfo3.activityInfo.packageName, null));
                } else {
                    List<b> list2 = this.f952g;
                    ResolverActivity resolverActivity = ResolverActivity.this;
                    list2.add(resolverActivity.new b(resolveInfo3, charSequence, resolveInfo3.activityInfo.applicationInfo.loadLabel(resolverActivity.f925e), null));
                }
                i2++;
            }
        }

        public final void e() {
            int size;
            try {
                IPackageManager packageManager = AppGlobals.getPackageManager();
                Intent intent = this.f949d;
                this.f948c = packageManager.getLastChosenActivity(intent, intent.resolveTypeIfNeeded(ResolverActivity.this.getContentResolver()), 65536);
            } catch (RemoteException e2) {
                Log.d("ResolverActivity", "Error calling setLastChosenActivity\n" + e2);
            }
            this.f952g.clear();
            List<ResolveInfo> listQueryIntentActivities = this.f947b;
            if (listQueryIntentActivities != null) {
                this.f953h = null;
            } else {
                listQueryIntentActivities = ResolverActivity.this.f925e.queryIntentActivities(this.f949d, 65536 | (ResolverActivity.this.f926f ? 64 : 0));
                this.f953h = listQueryIntentActivities;
                if (listQueryIntentActivities != null) {
                    for (int size2 = listQueryIntentActivities.size() - 1; size2 >= 0; size2--) {
                        ActivityInfo activityInfo = listQueryIntentActivities.get(size2).activityInfo;
                        if (ActivityManager.checkComponentPermission(activityInfo.permission, this.f950e, activityInfo.applicationInfo.uid, activityInfo.exported) != 0) {
                            if (this.f953h == listQueryIntentActivities) {
                                this.f953h = new ArrayList(this.f953h);
                            }
                            listQueryIntentActivities.remove(size2);
                        }
                    }
                }
            }
            if (listQueryIntentActivities == null || (size = listQueryIntentActivities.size()) <= 0) {
                return;
            }
            ResolveInfo resolveInfo = listQueryIntentActivities.get(0);
            for (int i2 = 1; i2 < size; i2++) {
                ResolveInfo resolveInfo2 = listQueryIntentActivities.get(i2);
                if (resolveInfo.priority != resolveInfo2.priority || resolveInfo.isDefault != resolveInfo2.isDefault) {
                    while (i2 < size) {
                        if (this.f953h == listQueryIntentActivities) {
                            this.f953h = new ArrayList(this.f953h);
                        }
                        listQueryIntentActivities.remove(i2);
                        size--;
                    }
                }
            }
            if (size > 1) {
                Collections.sort(listQueryIntentActivities, new ResolveInfo.DisplayNameComparator(ResolverActivity.this.f925e));
            }
            if (this.f946a != null) {
                int i3 = 0;
                while (true) {
                    Intent[] intentArr = this.f946a;
                    if (i3 >= intentArr.length) {
                        break;
                    }
                    Intent intent2 = intentArr[i3];
                    if (intent2 != null) {
                        ActivityInfo activityInfoResolveActivityInfo = intent2.resolveActivityInfo(ResolverActivity.this.getPackageManager(), 0);
                        if (activityInfoResolveActivityInfo == null) {
                            Log.w("ResolverActivity", "No activity found for " + intent2);
                        } else {
                            ResolveInfo resolveInfo3 = new ResolveInfo();
                            resolveInfo3.activityInfo = activityInfoResolveActivityInfo;
                            if (intent2 instanceof LabeledIntent) {
                                LabeledIntent labeledIntent = (LabeledIntent) intent2;
                                resolveInfo3.resolvePackageName = labeledIntent.getSourcePackage();
                                resolveInfo3.labelRes = labeledIntent.getLabelResource();
                                resolveInfo3.nonLocalizedLabel = labeledIntent.getNonLocalizedLabel();
                                resolveInfo3.icon = labeledIntent.getIconResource();
                            }
                            List<b> list = this.f952g;
                            ResolverActivity resolverActivity = ResolverActivity.this;
                            list.add(resolverActivity.new b(resolveInfo3, resolveInfo3.loadLabel(resolverActivity.getPackageManager()), null, intent2));
                        }
                    }
                    i3++;
                }
            }
            ResolveInfo resolveInfo4 = listQueryIntentActivities.get(0);
            CharSequence charSequenceLoadLabel = resolveInfo4.loadLabel(ResolverActivity.this.f925e);
            ResolverActivity.this.f927g = false;
            ResolveInfo resolveInfo5 = resolveInfo4;
            int i4 = 0;
            CharSequence charSequence = charSequenceLoadLabel;
            for (int i5 = 1; i5 < size; i5++) {
                if (charSequence == null) {
                    charSequence = resolveInfo5.activityInfo.packageName;
                }
                ResolveInfo resolveInfo6 = listQueryIntentActivities.get(i5);
                CharSequence charSequenceLoadLabel2 = resolveInfo6.loadLabel(ResolverActivity.this.f925e);
                if (charSequenceLoadLabel2 == null) {
                    charSequenceLoadLabel2 = resolveInfo6.activityInfo.packageName;
                }
                CharSequence charSequence2 = charSequenceLoadLabel2;
                if (!charSequence2.equals(charSequence)) {
                    d(listQueryIntentActivities, i4, i5 - 1, resolveInfo5, charSequence);
                    i4 = i5;
                    resolveInfo5 = resolveInfo6;
                    charSequence = charSequence2;
                }
            }
            d(listQueryIntentActivities, i4, size - 1, resolveInfo5, charSequence);
        }

        public ResolveInfo f(int i2) {
            return this.f952g.get(i2).f938a;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f952g.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return this.f952g.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.f951f.inflate(17367175, viewGroup, false);
                f fVar = new f(view);
                view.setTag(fVar);
                ViewGroup.LayoutParams layoutParams = fVar.f958c.getLayoutParams();
                int i3 = ResolverActivity.this.f932l;
                layoutParams.height = i3;
                layoutParams.width = i3;
            }
            a(view, this.f952g.get(i2));
            return view;
        }

        public Intent intentForPosition(int i2) {
            b bVar = this.f952g.get(i2);
            Intent intent = bVar.f942e;
            if (intent == null) {
                intent = this.f949d;
            }
            Intent intent2 = new Intent(intent);
            intent2.addFlags(50331648);
            ActivityInfo activityInfo = bVar.f938a.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            return intent2;
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f958c;

        public f(View view) {
            this.f956a = (TextView) view.findViewById(R.id.text1);
            this.f957b = (TextView) view.findViewById(R.id.text2);
            this.f958c = (ImageView) view.findViewById(R.id.icon);
        }
    }

    public Drawable h(Resources resources, int i2) {
        try {
            return resources.getDrawableForDensity(i2, this.f931k);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public Drawable i(ResolveInfo resolveInfo) {
        Drawable drawableH;
        Drawable drawableH2;
        try {
            String str = resolveInfo.resolvePackageName;
            if (str != null && resolveInfo.icon != 0 && (drawableH2 = h(this.f925e.getResourcesForApplication(str), resolveInfo.icon)) != null) {
                return drawableH2;
            }
            int iconResource = resolveInfo.getIconResource();
            if (iconResource != 0 && (drawableH = h(this.f925e.getResourcesForApplication(resolveInfo.activityInfo.packageName), iconResource)) != null) {
                return drawableH;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("ResolverActivity", "Couldn't find resources for package", e2);
        }
        return resolveInfo.loadIcon(this.f925e);
    }

    public final Intent j() {
        Intent intent = new Intent(getIntent());
        intent.setComponent(null);
        intent.setFlags(intent.getFlags() & (-8388609));
        return intent;
    }

    public void k(Bundle bundle, Intent intent, CharSequence charSequence, Intent[] intentArr, List<ResolveInfo> list, boolean z2) {
        setTheme(16974621);
        super.onCreate(bundle);
        try {
            this.f923c = ActivityManagerNative.getDefault().getLaunchedFromUid(getActivityToken());
        } catch (RemoteException unused) {
            this.f923c = -1;
        }
        this.f925e = getPackageManager();
        this.f926f = z2;
        this.f933m = getResources().getInteger(17694786);
        AlertController.b bVar = this.f751b;
        bVar.f785f = charSequence;
        this.f936p.register(this, getMainLooper(), false);
        this.f935o = true;
        ActivityManager activityManager = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
        this.f931k = activityManager.getLauncherLargeIconDensity();
        this.f932l = activityManager.getLauncherLargeIconSize();
        e eVar = new e(this, intent, intentArr, list, this.f923c);
        this.f924d = eVar;
        int count = eVar.getCount();
        int i2 = this.f923c;
        if (i2 < 0 || UserHandle.isIsolated(i2)) {
            finish();
            return;
        }
        if (count > 1) {
            View viewInflate = getLayoutInflater().inflate(17367176, (ViewGroup) null);
            bVar.f801v = viewInflate;
            ListView listView = (ListView) viewInflate.findViewById(16909076);
            this.f928h = listView;
            listView.setAdapter((ListAdapter) this.f924d);
            this.f928h.setOnItemClickListener(this);
            this.f928h.setOnItemLongClickListener(new c());
            if (z2) {
                this.f928h.setChoiceMode(1);
            }
        } else {
            if (count == 1) {
                startActivity(this.f924d.intentForPosition(0));
                this.f936p.unregister();
                this.f935o = false;
                finish();
                return;
            }
            bVar.f787h = getResources().getText(17040383);
        }
        a();
        if (z2) {
            ViewGroup viewGroup = (ViewGroup) findViewById(16908945);
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
                this.f929i = (Button) viewGroup.findViewById(16909077);
                this.f930j = (Button) viewGroup.findViewById(16909078);
            } else {
                this.f926f = false;
            }
            int iB = this.f924d.b();
            if (iB >= 0) {
                this.f928h.setItemChecked(iB, true);
                onItemClick(null, null, iB, 0L);
            }
        }
    }

    public void l(ResolveInfo resolveInfo, Intent intent, boolean z2) {
        String strResolveType;
        if (this.f926f && this.f924d.f953h != null) {
            IntentFilter intentFilter = new IntentFilter();
            if (intent.getAction() != null) {
                intentFilter.addAction(intent.getAction());
            }
            Set<String> categories = intent.getCategories();
            if (categories != null) {
                Iterator<String> it = categories.iterator();
                while (it.hasNext()) {
                    intentFilter.addCategory(it.next());
                }
            }
            intentFilter.addCategory(Intent.CATEGORY_DEFAULT);
            int i2 = resolveInfo.match & IntentFilter.MATCH_CATEGORY_MASK;
            Uri data = intent.getData();
            if (i2 == 6291456 && (strResolveType = intent.resolveType(this)) != null) {
                try {
                    intentFilter.addDataType(strResolveType);
                } catch (IntentFilter.MalformedMimeTypeException e2) {
                    Log.w("ResolverActivity", e2);
                    intentFilter = null;
                }
            }
            if (data != null && data.getScheme() != null && (i2 != 6291456 || (!ContentResolver.SCHEME_FILE.equals(data.getScheme()) && !"content".equals(data.getScheme())))) {
                intentFilter.addDataScheme(data.getScheme());
                Iterator<PatternMatcher> itSchemeSpecificPartsIterator = resolveInfo.filter.schemeSpecificPartsIterator();
                if (itSchemeSpecificPartsIterator != null) {
                    String schemeSpecificPart = data.getSchemeSpecificPart();
                    while (schemeSpecificPart != null && itSchemeSpecificPartsIterator.hasNext()) {
                        PatternMatcher next = itSchemeSpecificPartsIterator.next();
                        if (next.match(schemeSpecificPart)) {
                            intentFilter.addDataSchemeSpecificPart(next.getPath(), next.getType());
                            break;
                        }
                    }
                }
                Iterator<IntentFilter.AuthorityEntry> itAuthoritiesIterator = resolveInfo.filter.authoritiesIterator();
                if (itAuthoritiesIterator != null) {
                    while (itAuthoritiesIterator.hasNext()) {
                        IntentFilter.AuthorityEntry next2 = itAuthoritiesIterator.next();
                        if (next2.match(data) >= 0) {
                            int port = next2.getPort();
                            intentFilter.addDataAuthority(next2.getHost(), port >= 0 ? Integer.toString(port) : null);
                            break;
                        }
                    }
                }
                Iterator<PatternMatcher> itPathsIterator = resolveInfo.filter.pathsIterator();
                if (itPathsIterator != null) {
                    String path = data.getPath();
                    while (path != null && itPathsIterator.hasNext()) {
                        PatternMatcher next3 = itPathsIterator.next();
                        if (next3.match(path)) {
                            intentFilter.addDataPath(next3.getPath(), next3.getType());
                            break;
                        }
                    }
                }
            }
            if (intentFilter != null) {
                int size = this.f924d.f953h.size();
                ComponentName[] componentNameArr = new ComponentName[size];
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    ResolveInfo resolveInfo2 = this.f924d.f953h.get(i4);
                    ActivityInfo activityInfo = resolveInfo2.activityInfo;
                    componentNameArr[i4] = new ComponentName(activityInfo.packageName, activityInfo.name);
                    int i5 = resolveInfo2.match;
                    if (i5 > i3) {
                        i3 = i5;
                    }
                }
                if (z2) {
                    getPackageManager().addPreferredActivity(intentFilter, i3, componentNameArr, intent.getComponent());
                } else {
                    try {
                        AppGlobals.getPackageManager().setLastChosenActivity(intent, intent.resolveTypeIfNeeded(getContentResolver()), 65536, intentFilter, i3, intent.getComponent());
                    } catch (RemoteException e3) {
                        Log.d("ResolverActivity", "Error calling setLastChosenActivity\n" + e3);
                    }
                }
            }
        }
        if (intent != null) {
            startActivity(intent);
        }
    }

    public void m(ResolveInfo resolveInfo) {
        startActivity(new Intent().setAction(Settings.ACTION_APPLICATION_DETAILS_SETTINGS).setData(Uri.fromParts("package", resolveInfo.activityInfo.packageName, null)).addFlags(524288));
    }

    public void n(int i2, boolean z2) {
        if (isFinishing()) {
            return;
        }
        l(this.f924d.f(i2), this.f924d.intentForPosition(i2), z2);
        finish();
    }

    public void onButtonClick(View view) {
        n(this.f928h.getCheckedItemPosition(), view.getId() == 16909077);
        dismiss();
    }

    @Override // com.android.internal.app.AlertActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intentJ = j();
        Set<String> categories = intentJ.getCategories();
        k(bundle, intentJ, getResources().getText((Intent.ACTION_MAIN.equals(intentJ.getAction()) && categories != null && categories.size() == 1 && categories.contains(Intent.CATEGORY_HOME)) ? 17040378 : 17040377), null, null, true);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        int checkedItemPosition = this.f928h.getCheckedItemPosition();
        boolean z2 = checkedItemPosition != -1;
        if (!this.f926f || (z2 && this.f934n == checkedItemPosition)) {
            n(i2, false);
            return;
        }
        this.f929i.setEnabled(z2);
        this.f930j.setEnabled(z2);
        if (z2) {
            this.f928h.smoothScrollToPosition(checkedItemPosition);
        }
        this.f934n = checkedItemPosition;
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (!this.f935o) {
            this.f936p.register(this, getMainLooper(), false);
            this.f935o = true;
        }
        this.f924d.c();
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.f926f) {
            int checkedItemPosition = this.f928h.getCheckedItemPosition();
            boolean z2 = checkedItemPosition != -1;
            this.f934n = checkedItemPosition;
            this.f929i.setEnabled(z2);
            this.f930j.setEnabled(z2);
            if (z2) {
                this.f928h.setSelection(checkedItemPosition);
            }
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.f935o) {
            this.f936p.unregister();
            this.f935o = false;
        }
        if ((getIntent().getFlags() & 268435456) == 0 || isChangingConfigurations()) {
            return;
        }
        finish();
    }
}
