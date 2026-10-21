package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.Resources;
import android.os.BatteryManager;
import android.util.AttributeSet;
import android.view.InflateException;
import com.google.common.base.Ascii;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public final class DrawableInflater {
    private static final HashMap<String, Constructor<? extends Drawable>> CONSTRUCTOR_MAP = new HashMap<>();
    private final ClassLoader mClassLoader;
    private final Resources mRes;

    public DrawableInflater(Resources resources, ClassLoader classLoader) {
        this.mRes = resources;
        this.mClassLoader = classLoader;
    }

    private Drawable inflateFromClass(String str) {
        Constructor<? extends Drawable> constructor;
        try {
            HashMap<String, Constructor<? extends Drawable>> map = CONSTRUCTOR_MAP;
            synchronized (map) {
                constructor = map.get(str);
                if (constructor == null) {
                    constructor = this.mClassLoader.loadClass(str).asSubclass(Drawable.class).getConstructor(new Class[0]);
                    map.put(str, constructor);
                }
            }
            return constructor.newInstance(new Object[0]);
        } catch (ClassCastException e2) {
            InflateException inflateException = new InflateException(c.j("Class is not a Drawable ", str));
            inflateException.initCause(e2);
            throw inflateException;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException2 = new InflateException(c.j("Class not found ", str));
            inflateException2.initCause(e3);
            throw inflateException2;
        } catch (NoSuchMethodException e4) {
            InflateException inflateException3 = new InflateException(c.j("Error inflating class ", str));
            inflateException3.initCause(e4);
            throw inflateException3;
        } catch (Exception e5) {
            InflateException inflateException4 = new InflateException(c.j("Error inflating class ", str));
            inflateException4.initCause(e5);
            throw inflateException4;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private Drawable inflateFromTag(String str) {
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -2024464016:
                if (str.equals("adaptive-icon")) {
                    b2 = 0;
                }
                break;
            case -1724158635:
                if (str.equals("transition")) {
                    b2 = 1;
                }
                break;
            case -1671889043:
                if (str.equals("nine-patch")) {
                    b2 = 2;
                }
                break;
            case -1493546681:
                if (str.equals("animation-list")) {
                    b2 = 3;
                }
                break;
            case -1388777169:
                if (str.equals("bitmap")) {
                    b2 = 4;
                }
                break;
            case -930826704:
                if (str.equals("ripple")) {
                    b2 = 5;
                }
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    b2 = 6;
                }
                break;
            case -820387517:
                if (str.equals("vector")) {
                    b2 = 7;
                }
                break;
            case -510364471:
                if (str.equals("animated-selector")) {
                    b2 = 8;
                }
                break;
            case -94197862:
                if (str.equals("layer-list")) {
                    b2 = 9;
                }
                break;
            case 3056464:
                if (str.equals("clip")) {
                    b2 = 10;
                }
                break;
            case 94842723:
                if (str.equals("color")) {
                    b2 = Ascii.VT;
                }
                break;
            case 100360477:
                if (str.equals("inset")) {
                    b2 = Ascii.FF;
                }
                break;
            case 109250890:
                if (str.equals(BatteryManager.EXTRA_SCALE)) {
                    b2 = Ascii.CR;
                }
                break;
            case 109399969:
                if (str.equals("shape")) {
                    b2 = 14;
                }
                break;
            case 160680263:
                if (str.equals("level-list")) {
                    b2 = 15;
                }
                break;
            case 1191572447:
                if (str.equals("selector")) {
                    b2 = 16;
                }
                break;
            case 2013827269:
                if (str.equals("animated-rotate")) {
                    b2 = 17;
                }
                break;
            case 2118620333:
                if (str.equals("animated-vector")) {
                    b2 = Ascii.DC2;
                }
                break;
        }
        switch (b2) {
            case 0:
                return new AdaptiveIconDrawable();
            case 1:
                return new TransitionDrawable();
            case 2:
                return new NinePatchDrawable();
            case 3:
                return new AnimationDrawable();
            case 4:
                return new BitmapDrawable();
            case 5:
                return new RippleDrawable();
            case 6:
                return new RotateDrawable();
            case 7:
                return new VectorDrawable();
            case 8:
                return new AnimatedStateListDrawable();
            case 9:
                return new LayerDrawable();
            case 10:
                return new ClipDrawable();
            case 11:
                return new ColorDrawable();
            case 12:
                return new InsetDrawable();
            case 13:
                return new ScaleDrawable();
            case 14:
                return new GradientDrawable();
            case 15:
                return new LevelListDrawable();
            case 16:
                return new StateListDrawable();
            case 17:
                return new AnimatedRotateDrawable();
            case 18:
                return new AnimatedVectorDrawable();
            default:
                return null;
        }
    }

    public static Drawable loadDrawable(Context context, int i2) {
        return loadDrawable(context.getResources(), context.getTheme(), i2);
    }

    public Drawable inflateFromXml(String str, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        return inflateFromXmlForDensity(str, xmlPullParser, attributeSet, 0, theme);
    }

    public Drawable inflateFromXmlForDensity(String str, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i2, Resources.Theme theme) {
        if (str.equals("drawable") && (str = attributeSet.getAttributeValue(null, "class")) == null) {
            throw new InflateException("<drawable> tag must specify class attribute");
        }
        Drawable drawableInflateFromTag = inflateFromTag(str);
        if (drawableInflateFromTag == null) {
            drawableInflateFromTag = inflateFromClass(str);
        }
        drawableInflateFromTag.setSrcDensityOverride(i2);
        drawableInflateFromTag.inflate(this.mRes, xmlPullParser, attributeSet, theme);
        return drawableInflateFromTag;
    }

    public static Drawable loadDrawable(Resources resources, Resources.Theme theme, int i2) {
        return resources.getDrawable(i2, theme);
    }
}
