package com.android.internal.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class AlertController {
    public TextView A;
    public View B;
    public boolean C;
    public ListAdapter D;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public Handler K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DialogInterface f753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ListView f757f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f758g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f759h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f760i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f761j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f762k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Button f764m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f765n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Message f766o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Button f767p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f768q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Message f769r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Button f770s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public CharSequence f771t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Message f772u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ScrollView f773v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f775x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ImageView f776y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public TextView f777z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f763l = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f774w = -1;
    public int E = -1;
    public View.OnClickListener L = new a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f778a;

        @Override // android.widget.ListView
        public boolean recycleOnMeasure() {
            return this.f778a;
        }
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            if (view == AlertController.this.f764m && AlertController.this.f766o != null) {
                messageObtain = Message.obtain(AlertController.this.f766o);
            } else if (view != AlertController.this.f767p || AlertController.this.f769r == null) {
                messageObtain = (view != AlertController.this.f770s || AlertController.this.f772u == null) ? null : Message.obtain(AlertController.this.f772u);
            } else {
                messageObtain = Message.obtain(AlertController.this.f769r);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController.this.K.obtainMessage(1, AlertController.this.f753b).sendToTarget();
        }
    }

    public static class b {
        public boolean[] B;
        public boolean C;
        public boolean D;
        public DialogInterface.OnMultiChoiceClickListener F;
        public Cursor G;
        public String H;
        public String I;
        public boolean J;
        public AdapterView.OnItemSelectedListener K;
        public e L;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f781b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f783d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f785f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f786g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f787h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public CharSequence f788i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public DialogInterface.OnClickListener f789j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public CharSequence f790k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public DialogInterface.OnClickListener f791l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public CharSequence f792m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public DialogInterface.OnClickListener f793n;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public DialogInterface.OnCancelListener f795p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public DialogInterface.OnDismissListener f796q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public DialogInterface.OnKeyListener f797r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public CharSequence[] f798s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public ListAdapter f799t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public DialogInterface.OnClickListener f800u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public View f801v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f802w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f803x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f804y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f805z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f782c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f784e = 0;
        public boolean A = false;
        public int E = -1;
        public boolean M = true;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f794o = true;

        public class a extends ArrayAdapter<CharSequence> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ RecycleListView f806a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context, int i2, int i3, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i2, i3, charSequenceArr);
                this.f806a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i2, view, viewGroup);
                boolean[] zArr = b.this.B;
                if (zArr != null && zArr[i2]) {
                    this.f806a.setItemChecked(i2, true);
                }
                return view2;
            }
        }

        /* JADX INFO: renamed from: com.android.internal.app.AlertController$b$b, reason: collision with other inner class name */
        public class C0019b extends CursorAdapter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f808a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f809b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RecycleListView f810c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ AlertController f811d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0019b(Context context, Cursor cursor, boolean z2, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z2);
                this.f810c = recycleListView;
                this.f811d = alertController;
                Cursor cursor2 = getCursor();
                this.f808a = cursor2.getColumnIndexOrThrow(b.this.H);
                this.f809b = cursor2.getColumnIndexOrThrow(b.this.I);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f808a));
                this.f810c.setItemChecked(cursor.getPosition(), cursor.getInt(this.f809b) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return b.this.f781b.inflate(this.f811d.H, viewGroup, false);
            }
        }

        public class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ AlertController f813a;

            public c(AlertController alertController) {
                this.f813a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
                b.this.f800u.onClick(this.f813a.f753b, i2);
                if (b.this.D) {
                    return;
                }
                this.f813a.f753b.dismiss();
            }
        }

        public class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ RecycleListView f815a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AlertController f816b;

            public d(RecycleListView recycleListView, AlertController alertController) {
                this.f815a = recycleListView;
                this.f816b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
                boolean[] zArr = b.this.B;
                if (zArr != null) {
                    zArr[i2] = this.f815a.isItemChecked(i2);
                }
                b.this.F.onClick(this.f816b.f753b, i2, this.f815a.isItemChecked(i2));
            }
        }

        public interface e {
            void a(ListView listView);
        }

        public b(Context context) {
            this.f780a = context;
            this.f781b = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }

        public void a(AlertController alertController) {
            View view = this.f786g;
            if (view != null) {
                alertController.z(view);
            } else {
                CharSequence charSequence = this.f785f;
                if (charSequence != null) {
                    alertController.E(charSequence);
                }
                Drawable drawable = this.f783d;
                if (drawable != null) {
                    alertController.B(drawable);
                }
                int i2 = this.f782c;
                if (i2 >= 0) {
                    alertController.A(i2);
                }
                int i3 = this.f784e;
                if (i3 > 0) {
                    alertController.A(alertController.s(i3));
                }
            }
            CharSequence charSequence2 = this.f787h;
            if (charSequence2 != null) {
                alertController.D(charSequence2);
            }
            CharSequence charSequence3 = this.f788i;
            if (charSequence3 != null) {
                alertController.y(-1, charSequence3, this.f789j, null);
            }
            CharSequence charSequence4 = this.f790k;
            if (charSequence4 != null) {
                alertController.y(-2, charSequence4, this.f791l, null);
            }
            CharSequence charSequence5 = this.f792m;
            if (charSequence5 != null) {
                alertController.y(-3, charSequence5, this.f793n, null);
            }
            if (this.J) {
                alertController.C(true);
            }
            if (this.f798s != null || this.G != null || this.f799t != null) {
                b(alertController);
            }
            View view2 = this.f801v;
            if (view2 != null) {
                if (this.A) {
                    alertController.G(view2, this.f802w, this.f803x, this.f804y, this.f805z);
                } else {
                    alertController.F(view2);
                }
            }
        }

        public final void b(AlertController alertController) {
            ListAdapter simpleCursorAdapter;
            RecycleListView recycleListView = (RecycleListView) this.f781b.inflate(alertController.G, (ViewGroup) null);
            if (this.C) {
                Cursor cursor = this.G;
                simpleCursorAdapter = cursor == null ? new a(this.f780a, alertController.H, R.id.text1, this.f798s, recycleListView) : new C0019b(this.f780a, cursor, false, recycleListView, alertController);
            } else {
                int i2 = this.D ? alertController.I : alertController.J;
                Cursor cursor2 = this.G;
                if (cursor2 == null) {
                    ListAdapter arrayAdapter = this.f799t;
                    if (arrayAdapter == null) {
                        arrayAdapter = new ArrayAdapter(this.f780a, i2, R.id.text1, this.f798s);
                    }
                    simpleCursorAdapter = arrayAdapter;
                } else {
                    simpleCursorAdapter = new SimpleCursorAdapter(this.f780a, i2, cursor2, new String[]{this.H}, new int[]{R.id.text1});
                }
            }
            e eVar = this.L;
            if (eVar != null) {
                eVar.a(recycleListView);
            }
            alertController.D = simpleCursorAdapter;
            alertController.E = this.E;
            if (this.f800u != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.F != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.K;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.D) {
                recycleListView.setChoiceMode(1);
            } else if (this.C) {
                recycleListView.setChoiceMode(2);
            }
            recycleListView.f778a = this.M;
            alertController.f757f = recycleListView;
        }
    }

    public static final class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<DialogInterface> f818a;

        public c(DialogInterface dialogInterface) {
            this.f818a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == -3 || i2 == -2 || i2 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f818a.get(), message.what);
            } else {
                if (i2 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    public AlertController(Context context, DialogInterface dialogInterface, Window window) {
        this.f752a = context;
        this.f753b = dialogInterface;
        this.f754c = window;
        this.K = new c(dialogInterface);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, i.a.AlertDialog, R.attr.alertDialogStyle, 0);
        this.F = typedArrayObtainStyledAttributes.getResourceId(10, 17367076);
        this.G = typedArrayObtainStyledAttributes.getResourceId(11, 17367193);
        this.H = typedArrayObtainStyledAttributes.getResourceId(12, R.layout.select_dialog_multichoice);
        this.I = typedArrayObtainStyledAttributes.getResourceId(13, R.layout.select_dialog_singlechoice);
        this.J = typedArrayObtainStyledAttributes.getResourceId(14, R.layout.select_dialog_item);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static boolean L(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843772, typedValue, true);
        return typedValue.data != 0;
    }

    public static boolean p(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (p(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void A(int i2) {
        this.f774w = i2;
        ImageView imageView = this.f776y;
        if (imageView != null) {
            if (i2 > 0) {
                imageView.setImageResource(i2);
            } else if (i2 == 0) {
                imageView.setVisibility(8);
            }
        }
    }

    public void B(Drawable drawable) {
        this.f775x = drawable;
        ImageView imageView = this.f776y;
        if (imageView == null || drawable == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    public void C(boolean z2) {
        this.C = z2;
    }

    public void D(CharSequence charSequence) {
        this.f756e = charSequence;
        TextView textView = this.A;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void E(CharSequence charSequence) {
        this.f755d = charSequence;
        TextView textView = this.f777z;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void F(View view) {
        this.f758g = view;
        this.f763l = false;
    }

    public void G(View view, int i2, int i3, int i4, int i5) {
        this.f758g = view;
        this.f763l = true;
        this.f759h = i2;
        this.f760i = i3;
        this.f761j = i4;
        this.f762k = i5;
    }

    public final boolean H() {
        int i2;
        Button button = (Button) this.f754c.findViewById(R.id.button1);
        this.f764m = button;
        button.setOnClickListener(this.L);
        if (TextUtils.isEmpty(this.f765n)) {
            this.f764m.setVisibility(8);
            i2 = 0;
        } else {
            this.f764m.setText(this.f765n);
            this.f764m.setVisibility(0);
            i2 = 1;
        }
        Button button2 = (Button) this.f754c.findViewById(R.id.button2);
        this.f767p = button2;
        button2.setOnClickListener(this.L);
        if (TextUtils.isEmpty(this.f768q)) {
            this.f767p.setVisibility(8);
        } else {
            this.f767p.setText(this.f768q);
            this.f767p.setVisibility(0);
            i2 |= 2;
        }
        Button button3 = (Button) this.f754c.findViewById(R.id.button3);
        this.f770s = button3;
        button3.setOnClickListener(this.L);
        if (TextUtils.isEmpty(this.f771t)) {
            this.f770s.setVisibility(8);
        } else {
            this.f770s.setText(this.f771t);
            this.f770s.setVisibility(0);
            i2 |= 4;
        }
        if (L(this.f752a)) {
            if (i2 == 1) {
                q(this.f764m);
            } else if (i2 == 2) {
                q(this.f767p);
            } else if (i2 == 4) {
                q(this.f770s);
            }
        }
        return i2 != 0;
    }

    public final void I(LinearLayout linearLayout) {
        ScrollView scrollView = (ScrollView) this.f754c.findViewById(16908934);
        this.f773v = scrollView;
        scrollView.setFocusable(false);
        TextView textView = (TextView) this.f754c.findViewById(R.id.message);
        this.A = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f756e;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f773v.removeView(this.A);
        if (this.f757f == null) {
            linearLayout.setVisibility(8);
            return;
        }
        linearLayout.removeView(this.f754c.findViewById(16908934));
        linearLayout.addView(this.f757f, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
    }

    public final boolean J(LinearLayout linearLayout) throws Throwable {
        if (this.B != null) {
            linearLayout.addView(this.B, 0, new LinearLayout.LayoutParams(-1, -2));
            this.f754c.findViewById(16908927).setVisibility(8);
        } else {
            boolean z2 = !TextUtils.isEmpty(this.f755d);
            this.f776y = (ImageView) this.f754c.findViewById(R.id.icon);
            if (!z2) {
                this.f754c.findViewById(16908927).setVisibility(8);
                this.f776y.setVisibility(8);
                linearLayout.setVisibility(8);
                return false;
            }
            TextView textView = (TextView) this.f754c.findViewById(16908928);
            this.f777z = textView;
            textView.setText(this.f755d);
            int i2 = this.f774w;
            if (i2 > 0) {
                this.f776y.setImageResource(i2);
            } else {
                Drawable drawable = this.f775x;
                if (drawable != null) {
                    this.f776y.setImageDrawable(drawable);
                } else if (i2 == 0) {
                    this.f777z.setPadding(this.f776y.getPaddingLeft(), this.f776y.getPaddingTop(), this.f776y.getPaddingRight(), this.f776y.getPaddingBottom());
                    this.f776y.setVisibility(8);
                }
            }
        }
        return true;
    }

    public final void K() throws Throwable {
        LinearLayout linearLayout = (LinearLayout) this.f754c.findViewById(16908933);
        I(linearLayout);
        boolean zH = H();
        LinearLayout linearLayout2 = (LinearLayout) this.f754c.findViewById(16908926);
        FrameLayout frameLayout = null;
        TypedArray typedArrayObtainStyledAttributes = this.f752a.obtainStyledAttributes(null, i.a.AlertDialog, R.attr.alertDialogStyle, 0);
        boolean zJ = J(linearLayout2);
        View viewFindViewById = this.f754c.findViewById(16908930);
        if (!zH) {
            viewFindViewById.setVisibility(8);
            this.f754c.setCloseOnTouchOutsideIfNotSet(true);
        }
        if (this.f758g != null) {
            FrameLayout frameLayout2 = (FrameLayout) this.f754c.findViewById(16908935);
            FrameLayout frameLayout3 = (FrameLayout) this.f754c.findViewById(R.id.custom);
            frameLayout3.addView(this.f758g, new ViewGroup.LayoutParams(-1, -1));
            if (this.f763l) {
                frameLayout3.setPadding(this.f759h, this.f760i, this.f761j, this.f762k);
            }
            if (this.f757f != null) {
                ((LinearLayout.LayoutParams) frameLayout2.getLayoutParams()).weight = 0.0f;
            }
            frameLayout = frameLayout2;
        } else {
            this.f754c.findViewById(16908935).setVisibility(8);
        }
        if (zJ) {
            View viewFindViewById2 = (this.f756e == null && this.f758g == null && this.f757f == null) ? this.f754c.findViewById(16908936) : this.f754c.findViewById(16908929);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
            }
        }
        x(linearLayout2, linearLayout, frameLayout, zH, typedArrayObtainStyledAttributes, zJ, viewFindViewById);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void q(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
        View viewFindViewById = this.f754c.findViewById(16908931);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
        View viewFindViewById2 = this.f754c.findViewById(16908932);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(0);
        }
    }

    public Button r(int i2) {
        if (i2 == -3) {
            return this.f770s;
        }
        if (i2 == -2) {
            return this.f767p;
        }
        if (i2 != -1) {
            return null;
        }
        return this.f764m;
    }

    public int s(int i2) {
        TypedValue typedValue = new TypedValue();
        this.f752a.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView t() {
        return this.f757f;
    }

    public void u() {
        this.f754c.requestFeature(1);
        View view = this.f758g;
        if (view == null || !p(view)) {
            this.f754c.setFlags(131072, 131072);
        }
        this.f754c.setContentView(this.F);
        K();
    }

    public boolean v(int i2, KeyEvent keyEvent) {
        ScrollView scrollView = this.f773v;
        return scrollView != null && scrollView.executeKeyEvent(keyEvent);
    }

    public boolean w(int i2, KeyEvent keyEvent) {
        ScrollView scrollView = this.f773v;
        return scrollView != null && scrollView.executeKeyEvent(keyEvent);
    }

    public final void x(LinearLayout linearLayout, LinearLayout linearLayout2, View view, boolean z2, TypedArray typedArray, boolean z3, View view2) {
        int i2;
        ListAdapter listAdapter;
        int resourceId = typedArray.getResourceId(0, 17302710);
        int resourceId2 = typedArray.getResourceId(1, 17302724);
        int resourceId3 = typedArray.getResourceId(2, 17302707);
        int resourceId4 = typedArray.getResourceId(3, 17302704);
        int resourceId5 = typedArray.getResourceId(4, 17302709);
        int resourceId6 = typedArray.getResourceId(5, 17302723);
        int resourceId7 = typedArray.getResourceId(6, 17302706);
        int resourceId8 = typedArray.getResourceId(7, 17302703);
        int resourceId9 = typedArray.getResourceId(8, 17302705);
        View[] viewArr = new View[4];
        boolean[] zArr = new boolean[4];
        if (z3) {
            viewArr[0] = linearLayout;
            zArr[0] = false;
            i2 = 1;
        } else {
            i2 = 0;
        }
        viewArr[i2] = linearLayout2.getVisibility() == 8 ? null : linearLayout2;
        zArr[i2] = this.f757f != null;
        int i3 = i2 + 1;
        if (view != null) {
            viewArr[i3] = view;
            zArr[i3] = this.C;
            i3++;
        }
        if (z2) {
            viewArr[i3] = view2;
            zArr[i3] = true;
        }
        View view3 = null;
        boolean z4 = false;
        boolean z5 = false;
        for (int i4 = 0; i4 < 4; i4++) {
            View view4 = viewArr[i4];
            if (view4 != null) {
                if (view3 != null) {
                    if (z5) {
                        view3.setBackgroundResource(z4 ? resourceId7 : resourceId3);
                    } else {
                        view3.setBackgroundResource(z4 ? resourceId6 : resourceId2);
                    }
                    z5 = true;
                }
                z4 = zArr[i4];
                view3 = view4;
            }
        }
        if (view3 != null) {
            if (z5) {
                if (z4) {
                    resourceId4 = z2 ? resourceId9 : resourceId8;
                }
                view3.setBackgroundResource(resourceId4);
            } else {
                if (z4) {
                    resourceId = resourceId5;
                }
                view3.setBackgroundResource(resourceId);
            }
        }
        ListView listView = this.f757f;
        if (listView == null || (listAdapter = this.D) == null) {
            return;
        }
        listView.setAdapter(listAdapter);
        int i5 = this.E;
        if (i5 > -1) {
            this.f757f.setItemChecked(i5, true);
            this.f757f.setSelection(this.E);
        }
    }

    public void y(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.K.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.f771t = charSequence;
            this.f772u = message;
        } else if (i2 == -2) {
            this.f768q = charSequence;
            this.f769r = message;
        } else {
            if (i2 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f765n = charSequence;
            this.f766o = message;
        }
    }

    public void z(View view) {
        this.B = view;
    }
}
