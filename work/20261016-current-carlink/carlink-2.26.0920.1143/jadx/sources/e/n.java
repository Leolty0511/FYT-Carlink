package e;

import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemProperties;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.Observer;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;
import com.syu.carlink.fragment.LogoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f781b;

    public /* synthetic */ n(Object obj, int i2) {
        this.f780a = i2;
        this.f781b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0206  */
    /* JADX WARN: Code duplicated, block: B:101:0x0209  */
    /* JADX WARN: Code duplicated, block: B:103:0x0216  */
    /* JADX WARN: Code duplicated, block: B:104:0x0219  */
    /* JADX WARN: Code duplicated, block: B:106:0x0227  */
    /* JADX WARN: Code duplicated, block: B:107:0x022a  */
    /* JADX WARN: Code duplicated, block: B:51:0x012e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    /* JADX WARN: Code duplicated, block: B:55:0x013a  */
    /* JADX WARN: Code duplicated, block: B:56:0x013d  */
    /* JADX WARN: Code duplicated, block: B:58:0x0140  */
    /* JADX WARN: Code duplicated, block: B:60:0x015b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0160  */
    /* JADX WARN: Code duplicated, block: B:63:0x0163  */
    /* JADX WARN: Code duplicated, block: B:64:0x0166  */
    /* JADX WARN: Code duplicated, block: B:66:0x0174  */
    /* JADX WARN: Code duplicated, block: B:67:0x0177  */
    /* JADX WARN: Code duplicated, block: B:69:0x0184  */
    /* JADX WARN: Code duplicated, block: B:70:0x0187  */
    /* JADX WARN: Code duplicated, block: B:72:0x0195  */
    /* JADX WARN: Code duplicated, block: B:73:0x0198  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:82:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:84:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:86:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:94:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:95:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f8  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) throws Throwable {
        ImageView imageView;
        Drawable drawable;
        AnimationDrawable animationDrawable;
        Boolean bool;
        boolean zBooleanValue;
        int i2;
        ImageView imageView2;
        Drawable drawable2;
        AnimationDrawable animationDrawable2;
        Boolean bool2;
        boolean zBooleanValue2;
        int i3;
        Drawable drawable3;
        CarLinkService carLinkServiceF;
        h.c cVar;
        CarLinkService carLinkServiceF2;
        int i4 = this.f780a;
        Object obj2 = this.f781b;
        int i5 = 5;
        switch (i4) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj2;
                Integer num = (Integer) obj;
                t.b.h(mainActivity, "this$0");
                t.b.g(num, "linkstate");
                int iIntValue = num.intValue();
                n.b.a("HDL", "MainActivity handlePhoneState ============>>> linkType:" + b.b().C() + "  state : " + iIntValue);
                int iC = b.b().C();
                switch (iIntValue) {
                    case 2:
                        if (iC == 1) {
                            mainActivity.finish();
                            break;
                        } else if (iC == 2) {
                            mainActivity.i().postDelayed(new com.syu.carlink.e(mainActivity, i5), 500L);
                            break;
                        }
                        break;
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                        if (iIntValue == 3 && b.b().f564d && (carLinkServiceF = MainActivity.f()) != null) {
                            carLinkServiceF.f(true);
                        }
                        mainActivity.k();
                        break;
                    case 5:
                        if (b.b().f564d && (carLinkServiceF2 = MainActivity.f()) != null) {
                            carLinkServiceF2.f(false);
                        }
                        if (iC == 1) {
                            n.b.a("HDL", "handlePhoneState ============>>> linkType:" + b.b().C() + "  state : " + iIntValue + "  show carplayFragment");
                            mainActivity.m(mainActivity.g());
                            CarLinkService carLinkServiceF3 = MainActivity.f();
                            if (carLinkServiceF3 != null && (cVar = carLinkServiceF3.A) != null) {
                                cVar.n(223, null, new int[]{b.b().u() ? 1 : 0});
                                break;
                            }
                        } else if (iC == 2) {
                            mainActivity.m(mainActivity.e());
                            break;
                        }
                        break;
                    case 8:
                        if (iC == 1) {
                            mainActivity.k();
                            break;
                        } else if (iC == 2) {
                            mainActivity.finish();
                            break;
                        }
                        break;
                }
                break;
            default:
                LogoFragment logoFragment = (LogoFragment) obj2;
                Integer num2 = (Integer) obj;
                int i6 = LogoFragment.f717g;
                t.b.h(logoFragment, "this$0");
                t.b.g(num2, "it");
                int iIntValue2 = num2.intValue();
                if (iIntValue2 == 3) {
                    imageView = logoFragment.f719d;
                    if (imageView != null) {
                        drawable = imageView.getDrawable();
                        if (drawable instanceof AnimationDrawable) {
                            animationDrawable = (AnimationDrawable) drawable;
                        } else {
                            animationDrawable = null;
                        }
                        if (animationDrawable != null && animationDrawable.isRunning()) {
                            animationDrawable.stop();
                        }
                        Class cls = Boolean.TYPE;
                        t.b.e(cls);
                        bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls}, "sys.carlink.universal_skin", Boolean.FALSE);
                        if (bool != null) {
                            zBooleanValue = bool.booleanValue();
                        } else {
                            zBooleanValue = false;
                        }
                        if (zBooleanValue) {
                            i2 = u.connectting_07;
                        } else if (t.c.H(new int[]{131}, logoFragment.f720e)) {
                            i2 = u.connectting_dd_00;
                        } else if (t.c.H(new int[]{112, 140}, logoFragment.f720e)) {
                            i2 = u.wait_connect_yf;
                        } else if (t.c.H(new int[]{95}, logoFragment.f720e)) {
                            i2 = u.connectting_tzy_00142;
                        } else {
                            i2 = u.connectting_07;
                        }
                        imageView.setImageResource(i2);
                    }
                } else if (iIntValue2 == 4) {
                    imageView2 = logoFragment.f719d;
                    if (imageView2 != null) {
                        drawable2 = imageView2.getDrawable();
                        if (drawable2 instanceof AnimationDrawable) {
                            animationDrawable2 = (AnimationDrawable) drawable2;
                        } else {
                            animationDrawable2 = null;
                        }
                        if (animationDrawable2 == null) {
                            Class cls2 = Boolean.TYPE;
                            t.b.e(cls2);
                            bool2 = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls2}, "sys.carlink.universal_skin", Boolean.FALSE);
                            if (bool2 != null) {
                                zBooleanValue2 = bool2.booleanValue();
                            } else {
                                zBooleanValue2 = false;
                            }
                            if (zBooleanValue2) {
                                i3 = u.connectting_anim;
                            } else if (t.c.H(new int[]{131}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_dd;
                            } else if (t.c.H(new int[]{112, 140}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_yuf;
                            } else if (t.c.H(new int[]{95}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_tzy2;
                            } else {
                                i3 = u.connectting_anim;
                            }
                            imageView2.setImageResource(i3);
                            drawable3 = imageView2.getDrawable();
                            if (drawable3 instanceof AnimationDrawable) {
                                animationDrawable2 = (AnimationDrawable) drawable3;
                            } else {
                                animationDrawable2 = null;
                            }
                        }
                        if (animationDrawable2 != null && !animationDrawable2.isRunning()) {
                            animationDrawable2.start();
                        }
                    }
                } else if (iIntValue2 == 5) {
                    imageView = logoFragment.f719d;
                    if (imageView != null) {
                        drawable = imageView.getDrawable();
                        if (drawable instanceof AnimationDrawable) {
                            animationDrawable = (AnimationDrawable) drawable;
                        } else {
                            animationDrawable = null;
                        }
                        if (animationDrawable != null) {
                            animationDrawable.stop();
                        }
                        Class cls3 = Boolean.TYPE;
                        t.b.e(cls3);
                        bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls3}, "sys.carlink.universal_skin", Boolean.FALSE);
                        if (bool != null) {
                            zBooleanValue = bool.booleanValue();
                        } else {
                            zBooleanValue = false;
                        }
                        if (zBooleanValue) {
                            i2 = u.connectting_07;
                        } else if (t.c.H(new int[]{131}, logoFragment.f720e)) {
                            i2 = u.connectting_dd_00;
                        } else if (t.c.H(new int[]{112, 140}, logoFragment.f720e)) {
                            i2 = u.wait_connect_yf;
                        } else if (t.c.H(new int[]{95}, logoFragment.f720e)) {
                            i2 = u.connectting_tzy_00142;
                        } else {
                            i2 = u.connectting_07;
                        }
                        imageView.setImageResource(i2);
                    }
                } else if (iIntValue2 == 6 || iIntValue2 == 7) {
                    imageView2 = logoFragment.f719d;
                    if (imageView2 != null) {
                        drawable2 = imageView2.getDrawable();
                        if (drawable2 instanceof AnimationDrawable) {
                            animationDrawable2 = (AnimationDrawable) drawable2;
                        } else {
                            animationDrawable2 = null;
                        }
                        if (animationDrawable2 == null) {
                            Class cls4 = Boolean.TYPE;
                            t.b.e(cls4);
                            bool2 = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls4}, "sys.carlink.universal_skin", Boolean.FALSE);
                            if (bool2 != null) {
                                zBooleanValue2 = bool2.booleanValue();
                            } else {
                                zBooleanValue2 = false;
                            }
                            if (zBooleanValue2) {
                                i3 = u.connectting_anim;
                            } else if (t.c.H(new int[]{131}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_dd;
                            } else if (t.c.H(new int[]{112, 140}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_yuf;
                            } else if (t.c.H(new int[]{95}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_tzy2;
                            } else {
                                i3 = u.connectting_anim;
                            }
                            imageView2.setImageResource(i3);
                            drawable3 = imageView2.getDrawable();
                            if (drawable3 instanceof AnimationDrawable) {
                                animationDrawable2 = (AnimationDrawable) drawable3;
                            } else {
                                animationDrawable2 = null;
                            }
                        }
                        if (animationDrawable2 != null) {
                            animationDrawable2.start();
                        }
                    }
                } else if (iIntValue2 == 9) {
                    imageView = logoFragment.f719d;
                    if (imageView != null) {
                        drawable = imageView.getDrawable();
                        if (drawable instanceof AnimationDrawable) {
                            animationDrawable = (AnimationDrawable) drawable;
                        } else {
                            animationDrawable = null;
                        }
                        if (animationDrawable != null) {
                            animationDrawable.stop();
                        }
                        Class cls5 = Boolean.TYPE;
                        t.b.e(cls5);
                        bool = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls5}, "sys.carlink.universal_skin", Boolean.FALSE);
                        if (bool != null) {
                            zBooleanValue = bool.booleanValue();
                        } else {
                            zBooleanValue = false;
                        }
                        if (zBooleanValue) {
                            i2 = u.connectting_07;
                        } else if (t.c.H(new int[]{131}, logoFragment.f720e)) {
                            i2 = u.connectting_dd_00;
                        } else if (t.c.H(new int[]{112, 140}, logoFragment.f720e)) {
                            i2 = u.wait_connect_yf;
                        } else if (t.c.H(new int[]{95}, logoFragment.f720e)) {
                            i2 = u.connectting_tzy_00142;
                        } else {
                            i2 = u.connectting_07;
                        }
                        imageView.setImageResource(i2);
                    }
                } else if (iIntValue2 == 254) {
                    imageView2 = logoFragment.f719d;
                    if (imageView2 != null) {
                        drawable2 = imageView2.getDrawable();
                        if (drawable2 instanceof AnimationDrawable) {
                            animationDrawable2 = (AnimationDrawable) drawable2;
                        } else {
                            animationDrawable2 = null;
                        }
                        if (animationDrawable2 == null) {
                            Class cls6 = Boolean.TYPE;
                            t.b.e(cls6);
                            bool2 = (Boolean) p.a.d("android.os.SystemProperties", null, "getBoolean", new Class[]{String.class, cls6}, "sys.carlink.universal_skin", Boolean.FALSE);
                            if (bool2 != null) {
                                zBooleanValue2 = bool2.booleanValue();
                            } else {
                                zBooleanValue2 = false;
                            }
                            if (zBooleanValue2) {
                                i3 = u.connectting_anim;
                            } else if (t.c.H(new int[]{131}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_dd;
                            } else if (t.c.H(new int[]{112, 140}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_yuf;
                            } else if (t.c.H(new int[]{95}, logoFragment.f720e)) {
                                i3 = u.connectting_anim_tzy2;
                            } else {
                                i3 = u.connectting_anim;
                            }
                            imageView2.setImageResource(i3);
                            drawable3 = imageView2.getDrawable();
                            if (drawable3 instanceof AnimationDrawable) {
                                animationDrawable2 = (AnimationDrawable) drawable3;
                            } else {
                                animationDrawable2 = null;
                            }
                        }
                        if (animationDrawable2 != null) {
                            animationDrawable2.start();
                        }
                    }
                }
                if (iIntValue2 == 3) {
                    String strValueOf = String.valueOf(0);
                    t.b.h(strValueOf, "value");
                    SystemProperties.set("sys.carlink.type", strValueOf);
                    logoFragment.a().setText(logoFragment.getString(x.link_waitting));
                } else if (iIntValue2 == 4) {
                    View view = logoFragment.f718b;
                    if (view != null && view.getVisibility() == 0) {
                        view.setVisibility(8);
                    }
                    String string = logoFragment.getString(x.link_loading);
                    t.b.g(string, "getString(R.string.link_loading)");
                    logoFragment.a().setText(string);
                } else if (iIntValue2 == 5) {
                    logoFragment.a().setText(logoFragment.getString(x.link_connected));
                } else if (iIntValue2 == 6) {
                    logoFragment.a().setText(logoFragment.getString(x.link_authenticated));
                } else if (iIntValue2 == 9) {
                    View view2 = logoFragment.getView();
                    View viewFindViewById = view2 != null ? view2.findViewById(v.no_support_carplay_tv) : null;
                    if (!(viewFindViewById != null && viewFindViewById.getVisibility() == 0) && viewFindViewById != null) {
                        viewFindViewById.setVisibility(0);
                    }
                }
                StringBuilder sbS = android.accessibilityservice.c.s("=============>>>>LogoFragment handleLinkState  state: ", iIntValue2, " getString: ");
                sbS.append(logoFragment.getString(x.link_loading));
                n.b.a("HDL", sbS.toString());
                break;
        }
    }
}
