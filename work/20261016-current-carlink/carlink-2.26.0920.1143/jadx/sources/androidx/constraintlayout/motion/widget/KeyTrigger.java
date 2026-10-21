package androidx.constraintlayout.motion.widget;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.google.common.base.Ascii;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;
    private int mCurveFit = -1;
    private String mCross = null;

    public static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger keyTrigger, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                switch (mAttrMap.get(index)) {
                    case 1:
                        keyTrigger.mNegativeCross = typedArray.getString(index);
                        break;
                    case 2:
                        keyTrigger.mPositiveCross = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        StringBuilder sb = new StringBuilder("unused attribute 0x");
                        c.x(index, sb, "   ");
                        sb.append(mAttrMap.get(index));
                        Log.e(TypedValues.TriggerType.NAME, sb.toString());
                        break;
                    case 4:
                        keyTrigger.mCross = typedArray.getString(index);
                        break;
                    case 5:
                        keyTrigger.mTriggerSlack = typedArray.getFloat(index, keyTrigger.mTriggerSlack);
                        break;
                    case 6:
                        keyTrigger.mTriggerID = typedArray.getResourceId(index, keyTrigger.mTriggerID);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyTrigger.mTargetId);
                            keyTrigger.mTargetId = resourceId;
                            if (resourceId == -1) {
                                keyTrigger.mTargetString = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTrigger.mTargetString = typedArray.getString(index);
                        } else {
                            keyTrigger.mTargetId = typedArray.getResourceId(index, keyTrigger.mTargetId);
                        }
                        break;
                    case 8:
                        int integer = typedArray.getInteger(index, keyTrigger.mFramePosition);
                        keyTrigger.mFramePosition = integer;
                        keyTrigger.mFireThreshold = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        keyTrigger.mTriggerCollisionId = typedArray.getResourceId(index, keyTrigger.mTriggerCollisionId);
                        break;
                    case 10:
                        keyTrigger.mPostLayout = typedArray.getBoolean(index, keyTrigger.mPostLayout);
                        break;
                    case 11:
                        keyTrigger.mTriggerReceiver = typedArray.getResourceId(index, keyTrigger.mTriggerReceiver);
                        break;
                    case 12:
                        keyTrigger.mViewTransitionOnCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnCross);
                        break;
                    case 13:
                        keyTrigger.mViewTransitionOnNegativeCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        keyTrigger.mViewTransitionOnPositiveCross = typedArray.getResourceId(index, keyTrigger.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i2 = Key.UNSET;
        this.mTriggerReceiver = i2;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i2;
        this.mTriggerCollisionId = i2;
        this.mTriggerCollisionView = null;
        this.mTriggerSlack = 0.1f;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mViewTransitionOnNegativeCross = i2;
        this.mViewTransitionOnPositiveCross = i2;
        this.mViewTransitionOnCross = i2;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            fireCustom(str, view);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, new Class[0]);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                Log.e(TypedValues.TriggerType.NAME, "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + Debug.getName(view));
                return;
            }
        }
        try {
            method.invoke(view, new Object[0]);
        } catch (Exception unused2) {
            Log.e(TypedValues.TriggerType.NAME, "Exception in call \"" + this.mCross + "\"on class " + view.getClass().getSimpleName() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + Debug.getName(view));
        }
    }

    private void fireCustom(String str, View view) {
        boolean z2 = str.length() == 1;
        if (!z2) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z2 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rectF, View view, boolean z2) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z2) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:58:0x00dc  */
    public void conditionallyFire(float f2, View view) {
        boolean z2;
        boolean z3;
        boolean z4;
        float f3;
        float f4;
        boolean z5;
        boolean z6;
        float f5;
        float f6;
        boolean z7;
        if (this.mTriggerCollisionId != Key.UNSET) {
            if (this.mTriggerCollisionView == null) {
                this.mTriggerCollisionView = ((ViewGroup) view.getParent()).findViewById(this.mTriggerCollisionId);
            }
            setUpRect(this.mCollisionRect, this.mTriggerCollisionView, this.mPostLayout);
            setUpRect(this.mTargetRect, view, this.mPostLayout);
            if (this.mCollisionRect.intersect(this.mTargetRect)) {
                if (this.mFireCrossReset) {
                    this.mFireCrossReset = false;
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.mFirePositiveReset) {
                    this.mFirePositiveReset = false;
                    z7 = true;
                } else {
                    z7 = false;
                }
                this.mFireNegativeReset = true;
                z6 = z7;
                z4 = false;
            } else {
                if (this.mFireCrossReset) {
                    z2 = false;
                } else {
                    this.mFireCrossReset = true;
                    z2 = true;
                }
                if (this.mFireNegativeReset) {
                    this.mFireNegativeReset = false;
                    z4 = true;
                } else {
                    z4 = false;
                }
                this.mFirePositiveReset = true;
                z6 = false;
            }
        } else {
            if (this.mFireCrossReset) {
                float f7 = this.mFireThreshold;
                if ((this.mFireLastPos - f7) * (f2 - f7) < 0.0f) {
                    this.mFireCrossReset = false;
                    z2 = true;
                }
                if (this.mFireNegativeReset) {
                    f5 = this.mFireThreshold;
                    f6 = f2 - f5;
                    if ((this.mFireLastPos - f5) * f6 >= 0.0f && f6 < 0.0f) {
                        this.mFireNegativeReset = false;
                        z3 = true;
                    }
                    if (this.mFirePositiveReset) {
                        f3 = this.mFireThreshold;
                        f4 = f2 - f3;
                        if ((this.mFireLastPos - f3) * f4 < 0.0f || f4 <= 0.0f) {
                            z5 = false;
                        } else {
                            this.mFirePositiveReset = false;
                            z5 = true;
                        }
                        boolean z8 = z3;
                        z6 = z5;
                        z4 = z8;
                    } else {
                        if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                            this.mFirePositiveReset = true;
                        }
                        z4 = z3;
                        z6 = false;
                    }
                } else if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                    this.mFireNegativeReset = true;
                }
                z3 = false;
                if (this.mFirePositiveReset) {
                    f3 = this.mFireThreshold;
                    f4 = f2 - f3;
                    if ((this.mFireLastPos - f3) * f4 < 0.0f) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    boolean z9 = z3;
                    z6 = z5;
                    z4 = z9;
                } else {
                    if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z4 = z3;
                    z6 = false;
                }
            } else if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireCrossReset = true;
            }
            z2 = false;
            if (this.mFireNegativeReset) {
                f5 = this.mFireThreshold;
                f6 = f2 - f5;
                if ((this.mFireLastPos - f5) * f6 >= 0.0f) {
                }
                if (this.mFirePositiveReset) {
                    f3 = this.mFireThreshold;
                    f4 = f2 - f3;
                    if ((this.mFireLastPos - f3) * f4 < 0.0f) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    boolean z10 = z3;
                    z6 = z5;
                    z4 = z10;
                } else {
                    if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z4 = z3;
                    z6 = false;
                }
            } else if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireNegativeReset = true;
            }
            z3 = false;
            if (this.mFirePositiveReset) {
                f3 = this.mFireThreshold;
                f4 = f2 - f3;
                if ((this.mFireLastPos - f3) * f4 < 0.0f) {
                    z5 = false;
                } else {
                    z5 = false;
                }
                boolean z11 = z3;
                z6 = z5;
                z4 = z11;
            } else {
                if (Math.abs(f2 - this.mFireThreshold) > this.mTriggerSlack) {
                    this.mFirePositiveReset = true;
                }
                z4 = z3;
                z6 = false;
            }
        }
        this.mFireLastPos = f2;
        if (z4 || z2 || z6) {
            ((MotionLayout) view.getParent()).fireTrigger(this.mTriggerID, z6, f2);
        }
        View viewFindViewById = this.mTriggerReceiver == Key.UNSET ? view : ((MotionLayout) view.getParent()).findViewById(this.mTriggerReceiver);
        if (z4) {
            String str = this.mNegativeCross;
            if (str != null) {
                fire(str, viewFindViewById);
            }
            if (this.mViewTransitionOnNegativeCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnNegativeCross, viewFindViewById);
            }
        }
        if (z6) {
            String str2 = this.mPositiveCross;
            if (str2 != null) {
                fire(str2, viewFindViewById);
            }
            if (this.mViewTransitionOnPositiveCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnPositiveCross, viewFindViewById);
            }
        }
        if (z2) {
            String str3 = this.mCross;
            if (str3 != null) {
                fire(str3, viewFindViewById);
            }
            if (this.mViewTransitionOnCross != Key.UNSET) {
                ((MotionLayout) view.getParent()).viewTransition(this.mViewTransitionOnCross, viewFindViewById);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyTrigger keyTrigger = (KeyTrigger) key;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    public int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTrigger), context);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1594793529:
                if (str.equals("positiveCross")) {
                    b2 = 0;
                }
                break;
            case -966421266:
                if (str.equals("viewTransitionOnPositiveCross")) {
                    b2 = 1;
                }
                break;
            case -786670827:
                if (str.equals("triggerCollisionId")) {
                    b2 = 2;
                }
                break;
            case -648752941:
                if (str.equals("triggerID")) {
                    b2 = 3;
                }
                break;
            case -638126837:
                if (str.equals("negativeCross")) {
                    b2 = 4;
                }
                break;
            case -76025313:
                if (str.equals("triggerCollisionView")) {
                    b2 = 5;
                }
                break;
            case -9754574:
                if (str.equals("viewTransitionOnNegativeCross")) {
                    b2 = 6;
                }
                break;
            case 64397344:
                if (str.equals("CROSS")) {
                    b2 = 7;
                }
                break;
            case 364489912:
                if (str.equals("triggerSlack")) {
                    b2 = 8;
                }
                break;
            case 1301930599:
                if (str.equals("viewTransitionOnCross")) {
                    b2 = 9;
                }
                break;
            case 1401391082:
                if (str.equals("postLayout")) {
                    b2 = 10;
                }
                break;
            case 1535404999:
                if (str.equals("triggerReceiver")) {
                    b2 = Ascii.VT;
                }
                break;
        }
        switch (b2) {
            case 0:
                this.mPositiveCross = obj.toString();
                break;
            case 1:
                this.mViewTransitionOnPositiveCross = toInt(obj);
                break;
            case 2:
                this.mTriggerCollisionId = toInt(obj);
                break;
            case 3:
                this.mTriggerID = toInt(obj);
                break;
            case 4:
                this.mNegativeCross = obj.toString();
                break;
            case 5:
                this.mTriggerCollisionView = (View) obj;
                break;
            case 6:
                this.mViewTransitionOnNegativeCross = toInt(obj);
                break;
            case 7:
                this.mCross = obj.toString();
                break;
            case 8:
                this.mTriggerSlack = toFloat(obj);
                break;
            case 9:
                this.mViewTransitionOnCross = toInt(obj);
                break;
            case 10:
                this.mPostLayout = toBoolean(obj);
                break;
            case 11:
                this.mTriggerReceiver = toInt(obj);
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo44clone() {
        return new KeyTrigger().copy(this);
    }
}
