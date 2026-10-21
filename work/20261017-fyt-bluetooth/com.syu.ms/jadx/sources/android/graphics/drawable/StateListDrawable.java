package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.StateSet;
import i.a;
import java.io.IOException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class StateListDrawable extends DrawableContainer {
    private static final boolean DEBUG = false;
    private static final boolean DEFAULT_DITHER = true;
    private static final String TAG = "StateListDrawable";
    private boolean mMutated;
    private final StateListState mStateListState;

    public static final class StateListState extends DrawableContainer.DrawableContainerState {
        public int[][] mStateSets;

        public StateListState(StateListState stateListState, StateListDrawable stateListDrawable, Resources resources) {
            super(stateListState, stateListDrawable, resources);
            if (stateListState == null) {
                this.mStateSets = new int[getCapacity()][];
            } else {
                int[][] iArr = stateListState.mStateSets;
                this.mStateSets = (int[][]) Arrays.copyOf(iArr, iArr.length);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int indexOfStateSet(int[] iArr) {
            int[][] iArr2 = this.mStateSets;
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        public int addStateSet(int[] iArr, Drawable drawable) {
            int iAddChild = addChild(drawable);
            this.mStateSets[iAddChild] = iArr;
            return iAddChild;
        }

        @Override // android.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int i2, int i3) {
            super.growArray(i2, i3);
            int[][] iArr = new int[i3][];
            System.arraycopy(this.mStateSets, 0, iArr, 0, i2);
            this.mStateSets = iArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new StateListDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new StateListDrawable(this, resources);
        }
    }

    public void addState(int[] iArr, Drawable drawable) {
        if (drawable != null) {
            this.mStateListState.addStateSet(iArr, drawable);
            onStateChange(getState());
        }
    }

    public int getStateCount() {
        return this.mStateListState.getChildCount();
    }

    public Drawable getStateDrawable(int i2) {
        return this.mStateListState.getChild(i2);
    }

    public int getStateDrawableIndex(int[] iArr) {
        return this.mStateListState.indexOfStateSet(iArr);
    }

    public StateListState getStateListState() {
        return this.mStateListState;
    }

    public int[] getStateSet(int i2) {
        return this.mStateListState.mStateSets[i2];
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth;
        int next;
        Drawable drawableCreateFromXmlInner;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.StateListDrawable);
        int i2 = 1;
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 1);
        this.mStateListState.setVariablePadding(typedArrayObtainAttributes.getBoolean(2, false));
        this.mStateListState.setConstantSize(typedArrayObtainAttributes.getBoolean(3, false));
        this.mStateListState.setEnterFadeDuration(typedArrayObtainAttributes.getInt(4, 0));
        this.mStateListState.setExitFadeDuration(typedArrayObtainAttributes.getInt(5, 0));
        setDither(typedArrayObtainAttributes.getBoolean(0, true));
        setAutoMirrored(typedArrayObtainAttributes.getBoolean(6, false));
        typedArrayObtainAttributes.recycle();
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == i2 || ((depth = xmlPullParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr = new int[attributeCount];
                int attributeResourceValue = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < attributeCount; i4++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i4);
                    if (attributeNameResource == 0) {
                        break;
                    }
                    if (attributeNameResource == 16843161) {
                        attributeResourceValue = attributeSet.getAttributeResourceValue(i4, 0);
                    } else {
                        int i5 = i3 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i4, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr[i3] = attributeNameResource;
                        i3 = i5;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr, i3);
                if (attributeResourceValue != 0) {
                    drawableCreateFromXmlInner = resources.getDrawable(attributeResourceValue);
                } else {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
                this.mStateListState.addStateSet(iArrTrimStateSet, drawableCreateFromXmlInner);
                i2 = 1;
            }
        }
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            StateListState stateListState = this.mStateListState;
            int[][] iArr = stateListState.mStateSets;
            int length = iArr.length;
            stateListState.mStateSets = new int[length][];
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr2 = iArr[i2];
                if (iArr2 != null) {
                    this.mStateListState.mStateSets[i2] = (int[]) iArr2.clone();
                }
            }
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int iIndexOfStateSet = this.mStateListState.indexOfStateSet(iArr);
        if (iIndexOfStateSet < 0) {
            iIndexOfStateSet = this.mStateListState.indexOfStateSet(StateSet.WILD_CARD);
        }
        if (selectDrawable(iIndexOfStateSet)) {
            return true;
        }
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.mStateListState.setLayoutDirection(i2);
    }

    public StateListDrawable() {
        this(null, null);
    }

    private StateListDrawable(StateListState stateListState, Resources resources) {
        StateListState stateListState2 = new StateListState(stateListState, this, resources);
        this.mStateListState = stateListState2;
        setConstantState(stateListState2);
        onStateChange(getState());
    }
}
