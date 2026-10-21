package android.transition;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.internal.R;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class TransitionInflater {
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final ArrayMap<String, Constructor> sConstructors = new ArrayMap<>();
    private Context mContext;

    private TransitionInflater(Context context) {
        this.mContext = context;
    }

    private Object createCustom(AttributeSet attributeSet, Class cls, String str) {
        Object objNewInstance;
        Class<? extends U> clsAsSubclass;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        if (attributeValue == null) {
            throw new InflateException(c.D(str, " tag must have a 'class' attribute"));
        }
        try {
            ArrayMap<String, Constructor> arrayMap = sConstructors;
            synchronized (arrayMap) {
                Constructor constructor = arrayMap.get(attributeValue);
                if (constructor == null && (clsAsSubclass = this.mContext.getClassLoader().loadClass(attributeValue).asSubclass(cls)) != 0) {
                    constructor = clsAsSubclass.getConstructor(sConstructorSignature);
                    constructor.setAccessible(true);
                    arrayMap.put(attributeValue, constructor);
                }
                objNewInstance = constructor.newInstance(this.mContext, attributeSet);
            }
            return objNewInstance;
        } catch (ClassNotFoundException e2) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e2);
        } catch (IllegalAccessException e3) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e3);
        } catch (InstantiationException e4) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e4);
        } catch (NoSuchMethodException e5) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e5);
        } catch (InvocationTargetException e6) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e6);
        }
    }

    private Transition createTransitionFromXml(XmlPullParser xmlPullParser, AttributeSet attributeSet, Transition transition) throws XmlPullParserException, IOException {
        Transition transitionSet;
        int depth = xmlPullParser.getDepth();
        TransitionSet transitionSet2 = transition instanceof TransitionSet ? (TransitionSet) transition : null;
        loop0: while (true) {
            transitionSet = null;
            while (true) {
                int next = xmlPullParser.next();
                if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                    break loop0;
                }
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if ("fade".equals(name)) {
                        transitionSet = new Fade(this.mContext, attributeSet);
                    } else if ("changeBounds".equals(name)) {
                        transitionSet = new ChangeBounds(this.mContext, attributeSet);
                    } else if ("slide".equals(name)) {
                        transitionSet = new Slide(this.mContext, attributeSet);
                    } else if ("explode".equals(name)) {
                        transitionSet = new Explode(this.mContext, attributeSet);
                    } else if ("changeImageTransform".equals(name)) {
                        transitionSet = new ChangeImageTransform(this.mContext, attributeSet);
                    } else if ("changeTransform".equals(name)) {
                        transitionSet = new ChangeTransform(this.mContext, attributeSet);
                    } else if ("changeClipBounds".equals(name)) {
                        transitionSet = new ChangeClipBounds(this.mContext, attributeSet);
                    } else if (TypedValues.TransitionType.S_AUTO_TRANSITION.equals(name)) {
                        transitionSet = new AutoTransition(this.mContext, attributeSet);
                    } else if ("recolor".equals(name)) {
                        transitionSet = new Recolor(this.mContext, attributeSet);
                    } else if ("changeScroll".equals(name)) {
                        transitionSet = new ChangeScroll(this.mContext, attributeSet);
                    } else if ("transitionSet".equals(name)) {
                        transitionSet = new TransitionSet(this.mContext, attributeSet);
                    } else if ("transition".equals(name)) {
                        transitionSet = (Transition) createCustom(attributeSet, Transition.class, "transition");
                    } else if ("targets".equals(name)) {
                        getTargetIds(xmlPullParser, attributeSet, transition);
                    } else if ("arcMotion".equals(name)) {
                        transition.setPathMotion(new ArcMotion(this.mContext, attributeSet));
                    } else if ("pathMotion".equals(name)) {
                        transition.setPathMotion((PathMotion) createCustom(attributeSet, PathMotion.class, "pathMotion"));
                    } else {
                        if (!"patternPathMotion".equals(name)) {
                            throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown scene name: ")));
                        }
                        transition.setPathMotion(new PatternPathMotion(this.mContext, attributeSet));
                    }
                    if (transitionSet == null) {
                        continue;
                    } else {
                        if (!xmlPullParser.isEmptyElementTag()) {
                            createTransitionFromXml(xmlPullParser, attributeSet, transitionSet);
                        }
                        if (transitionSet2 != null) {
                            break;
                        }
                        if (transition != null) {
                            throw new InflateException("Could not add transition to another transition.");
                        }
                    }
                }
            }
            transitionSet2.addTransition(transitionSet);
        }
        return transitionSet;
    }

    private TransitionManager createTransitionManagerFromXml(XmlPullParser xmlPullParser, AttributeSet attributeSet, ViewGroup viewGroup) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        TransitionManager transitionManager = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("transitionManager")) {
                    transitionManager = new TransitionManager();
                } else {
                    if (!name.equals("transition") || transitionManager == null) {
                        throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown scene name: ")));
                    }
                    loadTransition(attributeSet, viewGroup, transitionManager);
                }
            }
        }
        return transitionManager;
    }

    public static TransitionInflater from(Context context) {
        return new TransitionInflater(context);
    }

    private void getTargetIds(XmlPullParser xmlPullParser, AttributeSet attributeSet, Transition transition) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                if (!xmlPullParser.getName().equals(TypedValues.AttributesType.S_TARGET)) {
                    throw new RuntimeException(c.p(xmlPullParser, new StringBuilder("Unknown scene name: ")));
                }
                TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.TransitionTarget);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                if (resourceId != 0) {
                    transition.addTarget(resourceId);
                } else {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(2, 0);
                    if (resourceId2 != 0) {
                        transition.excludeTarget(resourceId2, true);
                    } else {
                        String string = typedArrayObtainStyledAttributes.getString(4);
                        if (string != null) {
                            transition.addTarget(string);
                        } else {
                            String string2 = typedArrayObtainStyledAttributes.getString(5);
                            if (string2 != null) {
                                transition.excludeTarget(string2, true);
                            } else {
                                String string3 = typedArrayObtainStyledAttributes.getString(3);
                                if (string3 != null) {
                                    try {
                                        transition.excludeTarget((Class) Class.forName(string3), true);
                                    } catch (ClassNotFoundException e2) {
                                        typedArrayObtainStyledAttributes.recycle();
                                        throw new RuntimeException(c.j("Could not create ", string3), e2);
                                    }
                                } else {
                                    String string4 = typedArrayObtainStyledAttributes.getString(0);
                                    if (string4 != null) {
                                        transition.addTarget(Class.forName(string4));
                                    }
                                }
                            }
                        }
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private void loadTransition(AttributeSet attributeSet, ViewGroup viewGroup, TransitionManager transitionManager) {
        Transition transitionInflateTransition;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R.styleable.TransitionManager);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(2, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        Scene sceneForLayout = resourceId2 < 0 ? null : Scene.getSceneForLayout(viewGroup, resourceId2, this.mContext);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        Scene sceneForLayout2 = resourceId3 >= 0 ? Scene.getSceneForLayout(viewGroup, resourceId3, this.mContext) : null;
        if (resourceId >= 0 && (transitionInflateTransition = inflateTransition(resourceId)) != null) {
            if (sceneForLayout2 == null) {
                throw new RuntimeException(c.d("No toScene for transition ID ", resourceId));
            }
            if (sceneForLayout == null) {
                transitionManager.setTransition(sceneForLayout2, transitionInflateTransition);
            } else {
                transitionManager.setTransition(sceneForLayout, sceneForLayout2, transitionInflateTransition);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public Transition inflateTransition(int i2) {
        XmlResourceParser xml = this.mContext.getResources().getXml(i2);
        try {
            try {
                Transition transitionCreateTransitionFromXml = createTransitionFromXml(xml, Xml.asAttributeSet(xml), null);
                xml.close();
                return transitionCreateTransitionFromXml;
            } catch (IOException e2) {
                InflateException inflateException = new InflateException(xml.getPositionDescription() + ": " + e2.getMessage());
                inflateException.initCause(e2);
                throw inflateException;
            } catch (XmlPullParserException e3) {
                InflateException inflateException2 = new InflateException(e3.getMessage());
                inflateException2.initCause(e3);
                throw inflateException2;
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public TransitionManager inflateTransitionManager(int i2, ViewGroup viewGroup) {
        XmlResourceParser xml = this.mContext.getResources().getXml(i2);
        try {
            try {
                TransitionManager transitionManagerCreateTransitionManagerFromXml = createTransitionManagerFromXml(xml, Xml.asAttributeSet(xml), viewGroup);
                xml.close();
                return transitionManagerCreateTransitionManagerFromXml;
            } catch (IOException e2) {
                InflateException inflateException = new InflateException(xml.getPositionDescription() + ": " + e2.getMessage());
                inflateException.initCause(e2);
                throw inflateException;
            } catch (XmlPullParserException e3) {
                InflateException inflateException2 = new InflateException(e3.getMessage());
                inflateException2.initCause(e3);
                throw inflateException2;
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }
}
