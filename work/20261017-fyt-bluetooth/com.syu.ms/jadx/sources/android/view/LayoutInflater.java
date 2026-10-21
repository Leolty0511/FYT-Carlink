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
import android.util.Xml;
import android.widget.FrameLayout;
import i.a;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class LayoutInflater {
    private static final String TAG_1995 = "blink";
    private static final String TAG_INCLUDE = "include";
    private static final String TAG_MERGE = "merge";
    private static final String TAG_REQUEST_FOCUS = "requestFocus";
    public static final Class<?>[] mConstructorSignature = {Context.class, AttributeSet.class};
    private static final HashMap<String, Constructor<? extends View>> sConstructorMap = new HashMap<>();
    private final boolean DEBUG;
    public final Object[] mConstructorArgs;
    public final Context mContext;
    private Factory mFactory;
    private Factory2 mFactory2;
    private boolean mFactorySet;
    private Filter mFilter;
    private HashMap<String, Boolean> mFilterMap;
    private Factory2 mPrivateFactory;

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
        this.DEBUG = false;
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
    }

    private void failNotAllowed(String str, String str2, AttributeSet attributeSet) {
        StringBuilder sb = new StringBuilder();
        sb.append(attributeSet.getPositionDescription());
        sb.append(": Class not allowed to be inflated ");
        if (str2 != null) {
            str = str2 + str;
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

    /* JADX WARN: Code duplicated, block: B:34:0x009b A[Catch: all -> 0x00e8, TryCatch #2 {all -> 0x00e8, blocks: (B:13:0x0044, B:14:0x0048, B:19:0x0055, B:21:0x0061, B:22:0x0065, B:25:0x0071, B:32:0x007e, B:34:0x009b, B:42:0x00b1, B:39:0x00a5, B:40:0x00a9, B:41:0x00ae, B:51:0x00cc, B:52:0x00cd, B:53:0x00e7, B:23:0x006b, B:29:0x0077), top: B:62:0x0044, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5 A[Catch: all -> 0x00e8, TryCatch #2 {all -> 0x00e8, blocks: (B:13:0x0044, B:14:0x0048, B:19:0x0055, B:21:0x0061, B:22:0x0065, B:25:0x0071, B:32:0x007e, B:34:0x009b, B:42:0x00b1, B:39:0x00a5, B:40:0x00a9, B:41:0x00ae, B:51:0x00cc, B:52:0x00cd, B:53:0x00e7, B:23:0x006b, B:29:0x0077), top: B:62:0x0044, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a9 A[Catch: all -> 0x00e8, TryCatch #2 {all -> 0x00e8, blocks: (B:13:0x0044, B:14:0x0048, B:19:0x0055, B:21:0x0061, B:22:0x0065, B:25:0x0071, B:32:0x007e, B:34:0x009b, B:42:0x00b1, B:39:0x00a5, B:40:0x00a9, B:41:0x00ae, B:51:0x00cc, B:52:0x00cd, B:53:0x00e7, B:23:0x006b, B:29:0x0077), top: B:62:0x0044, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ae A[Catch: all -> 0x00e8, TryCatch #2 {all -> 0x00e8, blocks: (B:13:0x0044, B:14:0x0048, B:19:0x0055, B:21:0x0061, B:22:0x0065, B:25:0x0071, B:32:0x007e, B:34:0x009b, B:42:0x00b1, B:39:0x00a5, B:40:0x00a9, B:41:0x00ae, B:51:0x00cc, B:52:0x00cd, B:53:0x00e7, B:23:0x006b, B:29:0x0077), top: B:62:0x0044, inners: #1 }] */
    private void parseInclude(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        int resourceId;
        int i2;
        int next2;
        if (!(view instanceof ViewGroup)) {
            throw new InflateException("<include /> can only be used inside of a ViewGroup");
        }
        int attributeResourceValue = attributeSet.getAttributeResourceValue(null, "layout", 0);
        if (attributeResourceValue == 0) {
            String attributeValue = attributeSet.getAttributeValue(null, "layout");
            if (attributeValue == null) {
                throw new InflateException("You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />");
            }
            throw new InflateException("You must specifiy a valid layout reference. The layout ID " + attributeValue + " is not valid.");
        }
        XmlResourceParser layout = getContext().getResources().getLayout(attributeResourceValue);
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
                rInflate(layout, view, attributeSetAsAttributeSet, false);
            } else {
                View viewCreateViewFromTag = createViewFromTag(view, name, attributeSetAsAttributeSet);
                ViewGroup viewGroup = (ViewGroup) view;
                try {
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                    if (layoutParamsGenerateLayoutParams != null) {
                        viewCreateViewFromTag.setLayoutParams(layoutParamsGenerateLayoutParams);
                    }
                } catch (RuntimeException unused) {
                    layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                    if (layoutParamsGenerateLayoutParams != null) {
                    }
                    rInflate(layout, viewCreateViewFromTag, attributeSetAsAttributeSet, true);
                    TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, a.View, 0, 0);
                    resourceId = typedArrayObtainStyledAttributes.getResourceId(8, -1);
                    i2 = typedArrayObtainStyledAttributes.getInt(20, -1);
                    typedArrayObtainStyledAttributes.recycle();
                    if (resourceId != -1) {
                        viewCreateViewFromTag.setId(resourceId);
                    }
                    if (i2 != 0) {
                        viewCreateViewFromTag.setVisibility(0);
                    } else if (i2 != 1) {
                        viewCreateViewFromTag.setVisibility(4);
                    } else if (i2 != 2) {
                        viewCreateViewFromTag.setVisibility(8);
                    }
                    viewGroup.addView(viewCreateViewFromTag);
                }
                rInflate(layout, viewCreateViewFromTag, attributeSetAsAttributeSet, true);
                TypedArray typedArrayObtainStyledAttributes2 = this.mContext.obtainStyledAttributes(attributeSet, a.View, 0, 0);
                resourceId = typedArrayObtainStyledAttributes2.getResourceId(8, -1);
                i2 = typedArrayObtainStyledAttributes2.getInt(20, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    viewCreateViewFromTag.setId(resourceId);
                }
                if (i2 != 0) {
                    viewCreateViewFromTag.setVisibility(0);
                } else if (i2 != 1) {
                    viewCreateViewFromTag.setVisibility(4);
                } else if (i2 != 2) {
                    viewCreateViewFromTag.setVisibility(8);
                }
                viewGroup.addView(viewCreateViewFromTag);
            }
            layout.close();
            int depth = xmlPullParser.getDepth();
            do {
                next2 = xmlPullParser.next();
                if (next2 == 3 && xmlPullParser.getDepth() <= depth) {
                    return;
                }
            } while (next2 != 1);
        } catch (Throwable th) {
            layout.close();
            throw th;
        }
    }

    private void parseRequestFocus(XmlPullParser xmlPullParser, View view) throws XmlPullParserException, IOException {
        int next;
        view.requestFocus();
        int depth = xmlPullParser.getDepth();
        do {
            next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        } while (next != 1);
    }

    public abstract LayoutInflater cloneInContext(Context context);

    public final View createView(String str, String str2, AttributeSet attributeSet) {
        String str3;
        String str4;
        HashMap<String, Constructor<? extends View>> map = sConstructorMap;
        Constructor<? extends View> constructor = map.get(str);
        Class clsAsSubclass = null;
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
                    objArr[1] = attributeSet;
                    View viewNewInstance = constructor.newInstance(objArr);
                    if (viewNewInstance instanceof ViewStub) {
                        ((ViewStub) viewNewInstance).setLayoutInflater(this);
                    }
                    Trace.traceEnd(8L);
                    return viewNewInstance;
                } catch (ClassNotFoundException e2) {
                    throw e2;
                } catch (Exception e3) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(attributeSet.getPositionDescription());
                    sb.append(": Error inflating class ");
                    sb.append(clsAsSubclass == null ? MediaStore.UNKNOWN_STRING : clsAsSubclass.getName());
                    InflateException inflateException = new InflateException(sb.toString());
                    inflateException.initCause(e3);
                    throw inflateException;
                }
            } catch (ClassCastException e4) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(attributeSet.getPositionDescription());
                sb2.append(": Class is not a View ");
                if (str2 != null) {
                    str = str2 + str;
                }
                sb2.append(str);
                InflateException inflateException2 = new InflateException(sb2.toString());
                inflateException2.initCause(e4);
                throw inflateException2;
            } catch (NoSuchMethodException e5) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(attributeSet.getPositionDescription());
                sb3.append(": Error inflating class ");
                if (str2 != null) {
                    str = str2 + str;
                }
                sb3.append(str);
                InflateException inflateException3 = new InflateException(sb3.toString());
                inflateException3.initCause(e5);
                throw inflateException3;
            }
        } catch (Throwable th) {
            Trace.traceEnd(8L);
            throw th;
        }
    }

    public View createViewFromTag(View view, String str, AttributeSet attributeSet) {
        View viewOnCreateView;
        Factory2 factory2;
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Factory2 factory3 = this.mFactory2;
            if (factory3 != null) {
                viewOnCreateView = factory3.onCreateView(view, str, this.mContext, attributeSet);
            } else {
                Factory factory = this.mFactory;
                viewOnCreateView = factory != null ? factory.onCreateView(str, this.mContext, attributeSet) : null;
            }
            if (viewOnCreateView == null && (factory2 = this.mPrivateFactory) != null) {
                viewOnCreateView = factory2.onCreateView(view, str, this.mContext, attributeSet);
            }
            if (viewOnCreateView == null) {
                return -1 == str.indexOf(46) ? onCreateView(view, str, attributeSet) : createView(str, null, attributeSet);
            }
            return viewOnCreateView;
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

    public void rInflate(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet, boolean z2) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (TAG_REQUEST_FOCUS.equals(name)) {
                    parseRequestFocus(xmlPullParser, view);
                } else if (TAG_INCLUDE.equals(name)) {
                    if (xmlPullParser.getDepth() == 0) {
                        throw new InflateException("<include /> cannot be the root element");
                    }
                    parseInclude(xmlPullParser, view, attributeSet);
                } else {
                    if (TAG_MERGE.equals(name)) {
                        throw new InflateException("<merge /> must be the root element");
                    }
                    if (TAG_1995.equals(name)) {
                        BlinkLayout blinkLayout = new BlinkLayout(this.mContext, attributeSet);
                        ViewGroup viewGroup = (ViewGroup) view;
                        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                        rInflate(xmlPullParser, blinkLayout, attributeSet, true);
                        viewGroup.addView(blinkLayout, layoutParamsGenerateLayoutParams);
                    } else {
                        View viewCreateViewFromTag = createViewFromTag(view, name, attributeSet);
                        ViewGroup viewGroup2 = (ViewGroup) view;
                        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams2 = viewGroup2.generateLayoutParams(attributeSet);
                        rInflate(xmlPullParser, viewCreateViewFromTag, attributeSet, true);
                        viewGroup2.addView(viewCreateViewFromTag, layoutParamsGenerateLayoutParams2);
                    }
                }
            }
        }
        if (z2) {
            view.onFinishInflate();
        }
    }

    public void setFactory(Factory factory) {
        if (this.mFactorySet) {
            throw new IllegalStateException("A factory has already been set on this LayoutInflater");
        }
        Objects.requireNonNull(factory, "Given factory can not be null");
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
        Objects.requireNonNull(factory2, "Given factory can not be null");
        this.mFactorySet = true;
        Factory factory = this.mFactory;
        if (factory != null) {
            this.mFactory = new FactoryMerger(factory2, factory2, factory, this.mFactory2);
        } else {
            this.mFactory2 = factory2;
            this.mFactory = factory2;
        }
    }

    public void setFilter(Filter filter) {
        this.mFilter = filter;
        if (filter != null) {
            this.mFilterMap = new HashMap<>();
        }
    }

    public void setPrivateFactory(Factory2 factory2) {
        this.mPrivateFactory = factory2;
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
        this.DEBUG = false;
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
        this.mFactory = layoutInflater.mFactory;
        this.mFactory2 = layoutInflater.mFactory2;
        this.mPrivateFactory = layoutInflater.mPrivateFactory;
        this.mFilter = layoutInflater.mFilter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [android.view.View] */
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z2) {
        int next;
        View viewCreateViewFromTag;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        synchronized (this.mConstructorArgs) {
            Trace.traceBegin(8L, "inflate");
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            Object[] objArr = this.mConstructorArgs;
            Context context = (Context) objArr[0];
            objArr[0] = this.mContext;
            do {
                try {
                    try {
                        next = xmlPullParser.next();
                        if (next == 2) {
                            break;
                        }
                    } catch (IOException e2) {
                        InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e2.getMessage());
                        inflateException.initCause(e2);
                        throw inflateException;
                    } catch (XmlPullParserException e3) {
                        InflateException inflateException2 = new InflateException(e3.getMessage());
                        inflateException2.initCause(e3);
                        throw inflateException2;
                    }
                } catch (Throwable th) {
                    Object[] objArr2 = this.mConstructorArgs;
                    objArr2[0] = context;
                    objArr2[1] = null;
                    throw th;
                }
            } while (next != 1);
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (!TAG_MERGE.equals(name)) {
                    if (TAG_1995.equals(name)) {
                        viewCreateViewFromTag = new BlinkLayout(this.mContext, attributeSetAsAttributeSet);
                    } else {
                        viewCreateViewFromTag = createViewFromTag(viewGroup, name, attributeSetAsAttributeSet);
                    }
                    if (viewGroup != 0) {
                        layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                        if (!z2) {
                            viewCreateViewFromTag.setLayoutParams(layoutParamsGenerateLayoutParams);
                        }
                    } else {
                        layoutParamsGenerateLayoutParams = null;
                    }
                    rInflate(xmlPullParser, viewCreateViewFromTag, attributeSetAsAttributeSet, true);
                    if (viewGroup != 0 && z2) {
                        viewGroup.addView(viewCreateViewFromTag, layoutParamsGenerateLayoutParams);
                    }
                    if (viewGroup == 0 || !z2) {
                        viewGroup = viewCreateViewFromTag;
                    }
                } else if (viewGroup != 0 && z2) {
                    rInflate(xmlPullParser, viewGroup, attributeSetAsAttributeSet, false);
                } else {
                    throw new InflateException("<merge /> can be used only with a valid ViewGroup root and attachToRoot=true");
                }
                Object[] objArr3 = this.mConstructorArgs;
                objArr3[0] = context;
                objArr3[1] = null;
                Trace.traceEnd(8L);
            } else {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
        }
        return viewGroup;
    }
}
