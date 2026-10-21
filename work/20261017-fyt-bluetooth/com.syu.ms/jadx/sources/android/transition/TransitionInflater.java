package android.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import i.a;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class TransitionInflater {
    private Context mContext;

    private TransitionInflater(Context context) {
        this.mContext = context;
    }

    private Transition createTransitionFromXml(XmlPullParser xmlPullParser, AttributeSet attributeSet, TransitionSet transitionSet) throws XmlPullParserException, IOException {
        TransitionSet transitionSet2;
        Transition recolor;
        Transition autoTransition;
        Transition slide;
        Transition changeBounds;
        int depth = xmlPullParser.getDepth();
        Transition fade = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                break;
            }
            boolean z2 = true;
            if (next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("fade".equals(name)) {
                    fade = new Fade(this.mContext.obtainStyledAttributes(attributeSet, a.Fade).getInt(0, 3));
                } else if ("changeBounds".equals(name)) {
                    changeBounds = new ChangeBounds();
                } else if ("slide".equals(name)) {
                    slide = new Slide();
                } else if ("autoTransition".equals(name)) {
                    autoTransition = new AutoTransition();
                } else if ("recolor".equals(name)) {
                    recolor = new Recolor();
                } else if ("transitionSet".equals(name)) {
                    transitionSet2 = new TransitionSet();
                    TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, a.TransitionSet);
                    transitionSet2.setOrdering(typedArrayObtainStyledAttributes.getInt(0, 0));
                    createTransitionFromXml(xmlPullParser, attributeSet, transitionSet2);
                    typedArrayObtainStyledAttributes.recycle();
                } else {
                    if ("targets".equals(name)) {
                        if (xmlPullParser.getDepth() - 1 > depth && fade != null) {
                            getTargetIds(xmlPullParser, attributeSet, fade);
                        } else if (xmlPullParser.getDepth() - 1 == depth && transitionSet != null) {
                            getTargetIds(xmlPullParser, attributeSet, transitionSet);
                        }
                    }
                    z2 = false;
                    fade = fade;
                }
                if (fade == null) {
                    fade = transitionSet2;
                    fade = recolor;
                    fade = autoTransition;
                    fade = slide;
                    fade = changeBounds;
                    if (!"targets".equals(name)) {
                        throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
                    }
                }
                if (z2) {
                    loadTransition(fade, attributeSet);
                    if (transitionSet != null) {
                        transitionSet.addTransition(fade);
                    }
                }
            }
        }
        return fade;
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
                        throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
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
        int i2;
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                if (!xmlPullParser.getName().equals("target")) {
                    throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
                }
                int resourceId = this.mContext.obtainStyledAttributes(attributeSet, a.TransitionTarget).getResourceId(0, -1);
                if (resourceId >= 0) {
                    arrayList.add(Integer.valueOf(resourceId));
                }
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            for (i2 = 0; i2 < size; i2++) {
                transition.addTarget(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    private Transition loadTransition(Transition transition, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, a.Transition);
        long j2 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (j2 >= 0) {
            transition.setDuration(j2);
        }
        long j3 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (j3 > 0) {
            transition.setStartDelay(j3);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            transition.setInterpolator(AnimationUtils.loadInterpolator(this.mContext, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
        return transition;
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

    private void loadTransition(AttributeSet attributeSet, ViewGroup viewGroup, TransitionManager transitionManager) {
        Transition transitionInflateTransition;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, a.TransitionManager);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(2, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        Scene sceneForLayout = resourceId2 >= 0 ? Scene.getSceneForLayout(viewGroup, resourceId2, this.mContext) : null;
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        Scene sceneForLayout2 = resourceId3 >= 0 ? Scene.getSceneForLayout(viewGroup, resourceId3, this.mContext) : null;
        if (resourceId >= 0 && (transitionInflateTransition = inflateTransition(resourceId)) != null) {
            if (sceneForLayout != null) {
                if (sceneForLayout2 != null) {
                    transitionManager.setTransition(sceneForLayout, sceneForLayout2, transitionInflateTransition);
                } else {
                    throw new RuntimeException("No matching toScene for given fromScene for transition ID " + resourceId);
                }
            } else if (resourceId3 >= 0) {
                transitionManager.setTransition(sceneForLayout2, transitionInflateTransition);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
