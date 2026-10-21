package android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.os.Trace;
import android.provider.MediaStore;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.widget.FrameLayout;
import com.android.internal.R;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LayoutInflater {
    private static final String ATTR_LAYOUT = "layout";
    private static final boolean DEBUG = false;
    private static final String TAG = "LayoutInflater";
    private static final String TAG_1995 = "blink";
    private static final String TAG_INCLUDE = "include";
    private static final String TAG_MERGE = "merge";
    private static final String TAG_REQUEST_FOCUS = "requestFocus";
    private static final String TAG_TAG = "tag";
    final Object[] mConstructorArgs;
    protected final Context mContext;
    private Factory mFactory;
    private Factory2 mFactory2;
    private boolean mFactorySet;
    private Filter mFilter;
    private HashMap<String, Boolean> mFilterMap;
    private Factory2 mPrivateFactory;
    private TypedValue mTempValue;
    private static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
    static final Class<?>[] mConstructorSignature = {Context.class, AttributeSet.class};
    private static final HashMap<String, Constructor<? extends View>> sConstructorMap = new HashMap<>();
    private static final int[] ATTRS_THEME = {16842752};
    private static final ClassLoader BOOT_CLASS_LOADER = LayoutInflater.class.getClassLoader();

    public static class BlinkLayout extends FrameLayout {
        private static final int BLINK_DELAY = 500;
        private static final int MESSAGE_BLINK = 66;
        private boolean mBlink;
        private boolean mBlinkState;
        private final Handler mHandler;

        public BlinkLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mHandler = new Handler(new Handler.Callback() { // from class: android.view.LayoutInflater.BlinkLayout.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (message.what != 66) {
                        return false;
                    }
                    if (BlinkLayout.this.mBlink) {
                        BlinkLayout blinkLayout = BlinkLayout.this;
                        blinkLayout.mBlinkState = !blinkLayout.mBlinkState;
                        BlinkLayout.this.makeBlink();
                    }
                    BlinkLayout.this.invalidate();
                    return true;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void makeBlink() {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(66), 500L);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (this.mBlinkState) {
                super.dispatchDraw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.mBlink = true;
            this.mBlinkState = true;
            makeBlink();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.mBlink = false;
            this.mBlinkState = true;
            this.mHandler.removeMessages(66);
        }
    }

    public interface Factory {
        View onCreateView(String str, Context context, AttributeSet attributeSet);
    }

    public interface Factory2 extends Factory {
        View onCreateView(View view, String str, Context context, AttributeSet attributeSet);
    }

    public interface Filter {
        boolean onLoadClass(Class cls);
    }

    public LayoutInflater(Context context) {
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
    }

    public static final void consumeChildElements(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int next;
        int depth = xmlPullParser.getDepth();
        do {
            next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        } while (next != 1);
    }

    private View createViewFromTag(View view, String str, Context context, AttributeSet attributeSet) {
        return createViewFromTag(view, str, context, attributeSet, false);
    }

    private void failNotAllowed(String str, String str2, AttributeSet attributeSet) {
        StringBuilder sb = new StringBuilder();
        sb.append(attributeSet.getPositionDescription());
        sb.append(": Class not allowed to be inflated ");
        if (str2 != null) {
            str = android.accessibilityservice.c.D(str2, str);
        }
        sb.append(str);
        throw new InflateException(sb.toString());
    }

    public static LayoutInflater from(Context context) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        if (layoutInflater != null) {
            return layoutInflater;
        }
        throw new AssertionError("LayoutInflater not found.");
    }

    private void parseInclude(XmlPullParser xmlPullParser, Context context, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        Context contextThemeWrapper = context;
        if (!(view instanceof ViewGroup)) {
            throw new InflateException("<include /> can only be used inside of a ViewGroup");
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(attributeSet, ATTRS_THEME);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        boolean z2 = resourceId != 0;
        if (z2) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, resourceId);
        }
        typedArrayObtainStyledAttributes.recycle();
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = null;
        int attributeResourceValue = attributeSet.getAttributeResourceValue(null, "layout", 0);
        if (attributeResourceValue == 0) {
            String attributeValue = attributeSet.getAttributeValue(null, "layout");
            if (attributeValue == null || attributeValue.length() <= 0) {
                throw new InflateException("You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />");
            }
            attributeResourceValue = contextThemeWrapper.getResources().getIdentifier(attributeValue.substring(1), "attr", contextThemeWrapper.getPackageName());
        }
        if (this.mTempValue == null) {
            this.mTempValue = new TypedValue();
        }
        if (attributeResourceValue != 0 && contextThemeWrapper.getTheme().resolveAttribute(attributeResourceValue, this.mTempValue, true)) {
            attributeResourceValue = this.mTempValue.resourceId;
        }
        if (attributeResourceValue == 0) {
            throw new InflateException(android.accessibilityservice.c.k("You must specify a valid layout reference. The layout ID ", attributeSet.getAttributeValue(null, "layout"), " is not valid."));
        }
        XmlResourceParser layout = contextThemeWrapper.getResources().getLayout(attributeResourceValue);
        try {
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
            do {
                next = layout.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(layout.getPositionDescription() + ": No start tag found!");
            }
            String name = layout.getName();
            if (TAG_MERGE.equals(name)) {
                rInflate(layout, view, contextThemeWrapper, attributeSetAsAttributeSet, false);
            } else {
                View viewCreateViewFromTag = createViewFromTag(view, name, contextThemeWrapper, attributeSetAsAttributeSet, z2);
                ViewGroup viewGroup = (ViewGroup) view;
                TypedArray typedArrayObtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(attributeSet, R.styleable.Include);
                int resourceId2 = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                int i2 = typedArrayObtainStyledAttributes2.getInt(1, -1);
                typedArrayObtainStyledAttributes2.recycle();
                try {
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                } catch (RuntimeException unused) {
                }
                if (layoutParamsGenerateLayoutParams == null) {
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                }
                viewCreateViewFromTag.setLayoutParams(layoutParamsGenerateLayoutParams);
                rInflateChildren(layout, viewCreateViewFromTag, attributeSetAsAttributeSet, true);
                if (resourceId2 != -1) {
                    viewCreateViewFromTag.setId(resourceId2);
                }
                if (i2 == 0) {
                    viewCreateViewFromTag.setVisibility(0);
                } else if (i2 == 1) {
                    viewCreateViewFromTag.setVisibility(4);
                } else if (i2 == 2) {
                    viewCreateViewFromTag.setVisibility(8);
                }
                viewGroup.addView(viewCreateViewFromTag);
            }
            layout.close();
            consumeChildElements(xmlPullParser);
        } catch (Throwable th) {
            layout.close();
            throw th;
        }
    }

    private void parseViewTag(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.ViewTag);
        view.setTag(typedArrayObtainStyledAttributes.getResourceId(1, 0), typedArrayObtainStyledAttributes.getText(0));
        typedArrayObtainStyledAttributes.recycle();
        consumeChildElements(xmlPullParser);
    }

    private final boolean verifyClassLoader(Constructor<? extends View> constructor) {
        ClassLoader classLoader = constructor.getDeclaringClass().getClassLoader();
        if (classLoader == BOOT_CLASS_LOADER) {
            return true;
        }
        ClassLoader classLoader2 = this.mContext.getClassLoader();
        while (classLoader != classLoader2) {
            classLoader2 = classLoader2.getParent();
            if (classLoader2 == null) {
                return false;
            }
        }
        return true;
    }

    public abstract LayoutInflater cloneInContext(Context context);

    public final View createView(String str, String str2, AttributeSet attributeSet) {
        String str3;
        String str4;
        HashMap<String, Constructor<? extends View>> map = sConstructorMap;
        Constructor<? extends View> constructor = map.get(str);
        Class clsAsSubclass = null;
        if (constructor != null && !verifyClassLoader(constructor)) {
            map.remove(str);
            constructor = null;
        }
        try {
            try {
                try {
                    try {
                        try {
                            Trace.traceBegin(8L, str);
                            if (constructor == null) {
                                ClassLoader classLoader = this.mContext.getClassLoader();
                                if (str2 != null) {
                                    str4 = str2 + str;
                                } else {
                                    str4 = str;
                                }
                                clsAsSubclass = classLoader.loadClass(str4).asSubclass(View.class);
                                Filter filter = this.mFilter;
                                if (filter != null && clsAsSubclass != null && !filter.onLoadClass(clsAsSubclass)) {
                                    failNotAllowed(str, str2, attributeSet);
                                }
                                constructor = clsAsSubclass.getConstructor(mConstructorSignature);
                                constructor.setAccessible(true);
                                map.put(str, constructor);
                            } else if (this.mFilter != null) {
                                Boolean bool = this.mFilterMap.get(str);
                                if (bool == null) {
                                    ClassLoader classLoader2 = this.mContext.getClassLoader();
                                    if (str2 != null) {
                                        str3 = str2 + str;
                                    } else {
                                        str3 = str;
                                    }
                                    clsAsSubclass = classLoader2.loadClass(str3).asSubclass(View.class);
                                    boolean z2 = clsAsSubclass != null && this.mFilter.onLoadClass(clsAsSubclass);
                                    this.mFilterMap.put(str, Boolean.valueOf(z2));
                                    if (!z2) {
                                        failNotAllowed(str, str2, attributeSet);
                                    }
                                } else if (bool.equals(Boolean.FALSE)) {
                                    failNotAllowed(str, str2, attributeSet);
                                }
                            }
                            Object[] objArr = this.mConstructorArgs;
                            Object obj = objArr[0];
                            if (obj == null) {
                                objArr[0] = this.mContext;
                            }
                            objArr[1] = attributeSet;
                            View viewNewInstance = constructor.newInstance(objArr);
                            if (viewNewInstance instanceof ViewStub) {
                                ((ViewStub) viewNewInstance).setLayoutInflater(cloneInContext((Context) objArr[0]));
                            }
                            this.mConstructorArgs[0] = obj;
                            Trace.traceEnd(8L);
                            return viewNewInstance;
                        } catch (ClassNotFoundException e2) {
                            throw e2;
                        }
                    } catch (Exception e3) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(attributeSet.getPositionDescription());
                        sb.append(": Error inflating class ");
                        sb.append(clsAsSubclass == null ? MediaStore.UNKNOWN_STRING : clsAsSubclass.getName());
                        InflateException inflateException = new InflateException(sb.toString(), e3);
                        inflateException.setStackTrace(EMPTY_STACK_TRACE);
                        throw inflateException;
                    }
                } catch (NoSuchMethodException e4) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(attributeSet.getPositionDescription());
                    sb2.append(": Error inflating class ");
                    if (str2 != null) {
                        str = str2 + str;
                    }
                    sb2.append(str);
                    InflateException inflateException2 = new InflateException(sb2.toString(), e4);
                    inflateException2.setStackTrace(EMPTY_STACK_TRACE);
                    throw inflateException2;
                }
            } catch (ClassCastException e5) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(attributeSet.getPositionDescription());
                sb3.append(": Class is not a View ");
                if (str2 != null) {
                    str = str2 + str;
                }
                sb3.append(str);
                InflateException inflateException3 = new InflateException(sb3.toString(), e5);
                inflateException3.setStackTrace(EMPTY_STACK_TRACE);
                throw inflateException3;
            }
        } catch (Throwable th) {
            Trace.traceEnd(8L);
            throw th;
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public final Factory getFactory() {
        return this.mFactory;
    }

    public final Factory2 getFactory2() {
        return this.mFactory2;
    }

    public Filter getFilter() {
        return this.mFilter;
    }

    public View inflate(int i2, ViewGroup viewGroup) {
        return inflate(i2, viewGroup, viewGroup != null);
    }

    public View onCreateView(String str, AttributeSet attributeSet) {
        return createView(str, "android.view.", attributeSet);
    }

    public void rInflate(XmlPullParser xmlPullParser, View view, Context context, AttributeSet attributeSet, boolean z2) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        boolean z3 = false;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (TAG_REQUEST_FOCUS.equals(name)) {
                    consumeChildElements(xmlPullParser);
                    z3 = true;
                } else if ("tag".equals(name)) {
                    parseViewTag(xmlPullParser, view, attributeSet);
                } else if (TAG_INCLUDE.equals(name)) {
                    if (xmlPullParser.getDepth() == 0) {
                        throw new InflateException("<include /> cannot be the root element");
                    }
                    parseInclude(xmlPullParser, context, view, attributeSet);
                } else {
                    if (TAG_MERGE.equals(name)) {
                        throw new InflateException("<merge /> must be the root element");
                    }
                    View viewCreateViewFromTag = createViewFromTag(view, name, context, attributeSet);
                    ViewGroup viewGroup = (ViewGroup) view;
                    ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                    rInflateChildren(xmlPullParser, viewCreateViewFromTag, attributeSet, true);
                    viewGroup.addView(viewCreateViewFromTag, layoutParamsGenerateLayoutParams);
                }
            }
        }
        if (z3) {
            view.restoreDefaultFocus();
        }
        if (z2) {
            view.onFinishInflate();
        }
    }

    public final void rInflateChildren(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet, boolean z2) throws XmlPullParserException, IOException {
        rInflate(xmlPullParser, view, view.getContext(), attributeSet, z2);
    }

    public void setFactory(Factory factory) {
        if (this.mFactorySet) {
            throw new IllegalStateException("A factory has already been set on this LayoutInflater");
        }
        if (factory == null) {
            throw new NullPointerException("Given factory can not be null");
        }
        this.mFactorySet = true;
        Factory factory2 = this.mFactory;
        if (factory2 == null) {
            this.mFactory = factory;
        } else {
            this.mFactory = new FactoryMerger(factory, null, factory2, this.mFactory2);
        }
    }

    public void setFactory2(Factory2 factory2) {
        if (this.mFactorySet) {
            throw new IllegalStateException("A factory has already been set on this LayoutInflater");
        }
        if (factory2 == null) {
            throw new NullPointerException("Given factory can not be null");
        }
        this.mFactorySet = true;
        Factory factory = this.mFactory;
        if (factory == null) {
            this.mFactory2 = factory2;
            this.mFactory = factory2;
        } else {
            FactoryMerger factoryMerger = new FactoryMerger(factory2, factory2, factory, this.mFactory2);
            this.mFactory2 = factoryMerger;
            this.mFactory = factoryMerger;
        }
    }

    public void setFilter(Filter filter) {
        this.mFilter = filter;
        if (filter != null) {
            this.mFilterMap = new HashMap<>();
        }
    }

    public void setPrivateFactory(Factory2 factory2) {
        Factory2 factory3 = this.mPrivateFactory;
        if (factory3 == null) {
            this.mPrivateFactory = factory2;
        } else {
            this.mPrivateFactory = new FactoryMerger(factory2, factory2, factory3, factory3);
        }
    }

    public static class FactoryMerger implements Factory2 {
        private final Factory mF1;
        private final Factory2 mF12;
        private final Factory mF2;
        private final Factory2 mF22;

        public FactoryMerger(Factory factory, Factory2 factory2, Factory factory3, Factory2 factory4) {
            this.mF1 = factory;
            this.mF2 = factory3;
            this.mF12 = factory2;
            this.mF22 = factory4;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            View viewOnCreateView = this.mF1.onCreateView(str, context, attributeSet);
            return viewOnCreateView != null ? viewOnCreateView : this.mF2.onCreateView(str, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            Factory2 factory2 = this.mF12;
            View viewOnCreateView = factory2 != null ? factory2.onCreateView(view, str, context, attributeSet) : this.mF1.onCreateView(str, context, attributeSet);
            if (viewOnCreateView != null) {
                return viewOnCreateView;
            }
            Factory2 factory3 = this.mF22;
            return factory3 != null ? factory3.onCreateView(view, str, context, attributeSet) : this.mF2.onCreateView(str, context, attributeSet);
        }
    }

    public View createViewFromTag(View view, String str, Context context, AttributeSet attributeSet, boolean z2) {
        View viewOnCreateView;
        Factory2 factory2;
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        if (!z2) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS_THEME);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            if (resourceId != 0) {
                context = new ContextThemeWrapper(context, resourceId);
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (str.equals(TAG_1995)) {
            return new BlinkLayout(context, attributeSet);
        }
        try {
            Factory2 factory3 = this.mFactory2;
            if (factory3 != null) {
                viewOnCreateView = factory3.onCreateView(view, str, context, attributeSet);
            } else {
                Factory factory = this.mFactory;
                viewOnCreateView = factory != null ? factory.onCreateView(str, context, attributeSet) : null;
            }
            if (viewOnCreateView == null && (factory2 = this.mPrivateFactory) != null) {
                viewOnCreateView = factory2.onCreateView(view, str, context, attributeSet);
            }
            if (viewOnCreateView == null) {
                Object[] objArr = this.mConstructorArgs;
                Object obj = objArr[0];
                objArr[0] = context;
                try {
                    viewOnCreateView = -1 == str.indexOf(46) ? onCreateView(view, str, attributeSet) : createView(str, null, attributeSet);
                } finally {
                    this.mConstructorArgs[0] = obj;
                }
            }
            return viewOnCreateView;
        } catch (InflateException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str, e3);
            inflateException.setStackTrace(EMPTY_STACK_TRACE);
            throw inflateException;
        } catch (Exception e4) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str, e4);
            inflateException2.setStackTrace(EMPTY_STACK_TRACE);
            throw inflateException2;
        }
    }

    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup) {
        return inflate(xmlPullParser, viewGroup, viewGroup != null);
    }

    public View onCreateView(View view, String str, AttributeSet attributeSet) {
        return onCreateView(str, attributeSet);
    }

    public View inflate(int i2, ViewGroup viewGroup, boolean z2) {
        XmlResourceParser layout = getContext().getResources().getLayout(i2);
        try {
            return inflate(layout, viewGroup, z2);
        } finally {
            layout.close();
        }
    }

    public LayoutInflater(LayoutInflater layoutInflater, Context context) {
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
        this.mFactory = layoutInflater.mFactory;
        this.mFactory2 = layoutInflater.mFactory2;
        this.mPrivateFactory = layoutInflater.mPrivateFactory;
        setFilter(layoutInflater.mFilter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r15v0, types: [android.view.LayoutInflater] */
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z2) {
        int next;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        ?? r0 = viewGroup;
        synchronized (this.mConstructorArgs) {
            Trace.traceBegin(8L, "inflate");
            Context context = this.mContext;
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            Object[] objArr = this.mConstructorArgs;
            Context context2 = (Context) objArr[0];
            objArr[0] = context;
            do {
                try {
                    try {
                        try {
                            next = xmlPullParser.next();
                            if (next == 2) {
                                break;
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                    } catch (XmlPullParserException e3) {
                        InflateException inflateException = new InflateException(e3.getMessage(), e3);
                        inflateException.setStackTrace(EMPTY_STACK_TRACE);
                        throw inflateException;
                    }
                } catch (Throwable th) {
                    Object[] objArr2 = this.mConstructorArgs;
                    objArr2[0] = context2;
                    objArr2[1] = null;
                    Trace.traceEnd(8L);
                    throw th;
                }
            } while (next != 1);
            try {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (!TAG_MERGE.equals(name)) {
                        View viewCreateViewFromTag = createViewFromTag(r0, name, context, attributeSetAsAttributeSet);
                        if (r0 != 0) {
                            layoutParamsGenerateLayoutParams = r0.generateLayoutParams(attributeSetAsAttributeSet);
                            if (!z2) {
                                viewCreateViewFromTag.setLayoutParams(layoutParamsGenerateLayoutParams);
                            }
                        } else {
                            layoutParamsGenerateLayoutParams = null;
                        }
                        rInflateChildren(xmlPullParser, viewCreateViewFromTag, attributeSetAsAttributeSet, true);
                        if (r0 != 0 && z2) {
                            r0.addView(viewCreateViewFromTag, layoutParamsGenerateLayoutParams);
                        }
                        if (r0 == 0 || !z2) {
                            r0 = viewCreateViewFromTag;
                        }
                    } else if (r0 != 0 && z2) {
                        rInflate(xmlPullParser, viewGroup, context, attributeSetAsAttributeSet, false);
                    } else {
                        throw new InflateException("<merge /> can be used only with a valid ViewGroup root and attachToRoot=true");
                    }
                    Object[] objArr3 = this.mConstructorArgs;
                    objArr3[0] = context2;
                    objArr3[1] = null;
                    Trace.traceEnd(8L);
                } else {
                    throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
                }
            } catch (Exception e4) {
                e = e4;
                InflateException inflateException2 = new InflateException(xmlPullParser.getPositionDescription() + ": " + e.getMessage(), e);
                inflateException2.setStackTrace(EMPTY_STACK_TRACE);
                throw inflateException2;
            }
        }
        return r0;
    }
}
