package android.preference;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.preference.GenericInflater.Parent;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
abstract class GenericInflater<T, P extends Parent> {
    private static final Class[] mConstructorSignature = {Context.class, AttributeSet.class};
    private static final HashMap sConstructorMap = new HashMap();
    private final boolean DEBUG;
    private final Object[] mConstructorArgs;
    protected final Context mContext;
    private String mDefaultPackage;
    private Factory<T> mFactory;
    private boolean mFactorySet;

    public interface Factory<T> {
        T onCreateItem(String str, Context context, AttributeSet attributeSet);
    }

    public static class FactoryMerger<T> implements Factory<T> {
        private final Factory<T> mF1;
        private final Factory<T> mF2;

        public FactoryMerger(Factory<T> factory, Factory<T> factory2) {
            this.mF1 = factory;
            this.mF2 = factory2;
        }

        @Override // android.preference.GenericInflater.Factory
        public T onCreateItem(String str, Context context, AttributeSet attributeSet) {
            T tOnCreateItem = this.mF1.onCreateItem(str, context, attributeSet);
            return tOnCreateItem != null ? tOnCreateItem : this.mF2.onCreateItem(str, context, attributeSet);
        }
    }

    public interface Parent<T> {
        void addItemFromInflater(T t2);
    }

    public GenericInflater(Context context) {
        this.DEBUG = false;
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
    }

    private final T createItemFromTag(XmlPullParser xmlPullParser, String str, AttributeSet attributeSet) {
        try {
            Factory<T> factory = this.mFactory;
            T tOnCreateItem = factory == null ? null : factory.onCreateItem(str, this.mContext, attributeSet);
            if (tOnCreateItem == null) {
                return -1 == str.indexOf(46) ? onCreateItem(str, attributeSet) : createItem(str, null, attributeSet);
            }
            return tOnCreateItem;
        } catch (InflateException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException.initCause(e3);
            throw inflateException;
        } catch (Exception e4) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e4);
            throw inflateException2;
        }
    }

    private void rInflate(XmlPullParser xmlPullParser, T t2, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2 && !onCreateCustomFromTag(xmlPullParser, t2, attributeSet)) {
                T tCreateItemFromTag = createItemFromTag(xmlPullParser, xmlPullParser.getName(), attributeSet);
                ((Parent) t2).addItemFromInflater(tCreateItemFromTag);
                rInflate(xmlPullParser, tCreateItemFromTag, attributeSet);
            }
        }
    }

    public abstract GenericInflater cloneInContext(Context context);

    public final T createItem(String str, String str2, AttributeSet attributeSet) throws ClassNotFoundException {
        String str3;
        HashMap map = sConstructorMap;
        Constructor<?> constructor = (Constructor) map.get(str);
        if (constructor == null) {
            try {
                ClassLoader classLoader = this.mContext.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                constructor = classLoader.loadClass(str3).getConstructor(mConstructorSignature);
                constructor.setAccessible(true);
                map.put(str, constructor);
            } catch (ClassNotFoundException e2) {
                throw e2;
            } catch (NoSuchMethodException e3) {
                StringBuilder sb = new StringBuilder();
                sb.append(attributeSet.getPositionDescription());
                sb.append(": Error inflating class ");
                if (str2 != null) {
                    str = c.D(str2, str);
                }
                sb.append(str);
                InflateException inflateException = new InflateException(sb.toString());
                inflateException.initCause(e3);
                throw inflateException;
            } catch (Exception e4) {
                InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + constructor.getClass().getName());
                inflateException2.initCause(e4);
                throw inflateException2;
            }
        }
        Object[] objArr = this.mConstructorArgs;
        objArr[1] = attributeSet;
        return (T) constructor.newInstance(objArr);
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getDefaultPackage() {
        return this.mDefaultPackage;
    }

    public final Factory<T> getFactory() {
        return this.mFactory;
    }

    public T inflate(int i2, P p2) {
        return inflate(i2, p2, p2 != null);
    }

    public boolean onCreateCustomFromTag(XmlPullParser xmlPullParser, T t2, AttributeSet attributeSet) {
        return false;
    }

    public T onCreateItem(String str, AttributeSet attributeSet) {
        return createItem(str, this.mDefaultPackage, attributeSet);
    }

    public P onMergeRoots(P p2, boolean z2, P p3) {
        return p3;
    }

    public void setDefaultPackage(String str) {
        this.mDefaultPackage = str;
    }

    public void setFactory(Factory<T> factory) {
        if (this.mFactorySet) {
            throw new IllegalStateException("A factory has already been set on this inflater");
        }
        if (factory == null) {
            throw new NullPointerException("Given factory can not be null");
        }
        this.mFactorySet = true;
        Factory<T> factory2 = this.mFactory;
        if (factory2 == null) {
            this.mFactory = factory;
        } else {
            this.mFactory = new FactoryMerger(factory, factory2);
        }
    }

    public T inflate(XmlPullParser xmlPullParser, P p2) {
        return inflate(xmlPullParser, p2, p2 != null);
    }

    public T inflate(int i2, P p2, boolean z2) {
        XmlResourceParser xml = getContext().getResources().getXml(i2);
        try {
            return inflate(xml, p2, z2);
        } finally {
            xml.close();
        }
    }

    public GenericInflater(GenericInflater<T, P> genericInflater, Context context) {
        this.DEBUG = false;
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
        this.mFactory = genericInflater.mFactory;
    }

    public T inflate(XmlPullParser xmlPullParser, P p2, boolean z2) {
        int next;
        T t2;
        synchronized (this.mConstructorArgs) {
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.mConstructorArgs[0] = this.mContext;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (InflateException e2) {
                    throw e2;
                } catch (IOException e3) {
                    InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e3.getMessage());
                    inflateException.initCause(e3);
                    throw inflateException;
                } catch (XmlPullParserException e4) {
                    InflateException inflateException2 = new InflateException(e4.getMessage());
                    inflateException2.initCause(e4);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next == 2) {
                t2 = (T) onMergeRoots(p2, z2, (Parent) createItemFromTag(xmlPullParser, xmlPullParser.getName(), attributeSetAsAttributeSet));
                rInflate(xmlPullParser, t2, attributeSetAsAttributeSet);
            } else {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
        }
        return t2;
    }
}
