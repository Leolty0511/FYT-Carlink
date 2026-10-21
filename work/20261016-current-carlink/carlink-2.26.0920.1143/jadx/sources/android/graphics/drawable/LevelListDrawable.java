package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.ims.ImsConfig;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class LevelListDrawable extends DrawableContainer {
    private LevelListState mLevelListState;
    private boolean mMutated;

    public static final class LevelListState extends DrawableContainer.DrawableContainerState {
        private int[] mHighs;
        private int[] mLows;

        public LevelListState(LevelListState levelListState, LevelListDrawable levelListDrawable, Resources resources) {
            super(levelListState, levelListDrawable, resources);
            if (levelListState != null) {
                this.mLows = levelListState.mLows;
                this.mHighs = levelListState.mHighs;
            } else {
                this.mLows = new int[getCapacity()];
                this.mHighs = new int[getCapacity()];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mutate() {
            this.mLows = (int[]) this.mLows.clone();
            this.mHighs = (int[]) this.mHighs.clone();
        }

        public void addLevel(int i2, int i3, Drawable drawable) {
            int iAddChild = addChild(drawable);
            this.mLows[iAddChild] = i2;
            this.mHighs[iAddChild] = i3;
        }

        @Override // android.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int i2, int i3) {
            super.growArray(i2, i3);
            int[] iArr = new int[i3];
            System.arraycopy(this.mLows, 0, iArr, 0, i2);
            this.mLows = iArr;
            int[] iArr2 = new int[i3];
            System.arraycopy(this.mHighs, 0, iArr2, 0, i2);
            this.mHighs = iArr2;
        }

        public int indexOfLevel(int i2) {
            int[] iArr = this.mLows;
            int[] iArr2 = this.mHighs;
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                if (i2 >= iArr[i3] && i2 <= iArr2[i3]) {
                    return i3;
                }
            }
            return -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new LevelListDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new LevelListDrawable(this, resources);
        }
    }

    private void inflateChildElements(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int next;
        Drawable drawableCreateFromXmlInner;
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlPullParser.getName().equals(ImsConfig.EXTRA_CHANGED_ITEM)) {
                TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.LevelListDrawableItem);
                int i2 = typedArrayObtainAttributes.getInt(1, 0);
                int i3 = typedArrayObtainAttributes.getInt(2, 0);
                int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                typedArrayObtainAttributes.recycle();
                if (i3 < 0) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'maxLevel' attribute");
                }
                if (resourceId != 0) {
                    drawableCreateFromXmlInner = resources.getDrawable(resourceId, theme);
                } else {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    drawableCreateFromXmlInner = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                }
                this.mLevelListState.addLevel(i2, i3, drawableCreateFromXmlInner);
            }
        }
        onLevelChange(getLevel());
    }

    public void addLevel(int i2, int i3, Drawable drawable) {
        if (drawable != null) {
            this.mLevelListState.addLevel(i2, i3, drawable);
            onLevelChange(getLevel());
        }
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        updateDensity(resources);
        inflateChildElements(resources, xmlPullParser, attributeSet, theme);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mLevelListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        if (selectDrawable(this.mLevelListState.indexOfLevel(i2))) {
            return true;
        }
        return super.onLevelChange(i2);
    }

    @Override // android.graphics.drawable.DrawableContainer
    public void setConstantState(DrawableContainer.DrawableContainerState drawableContainerState) {
        super.setConstantState(drawableContainerState);
        if (drawableContainerState instanceof LevelListState) {
            this.mLevelListState = (LevelListState) drawableContainerState;
        }
    }

    public LevelListDrawable() {
        this(null, null);
    }

    @Override // android.graphics.drawable.DrawableContainer
    public LevelListState cloneConstantState() {
        return new LevelListState(this.mLevelListState, this, null);
    }

    private LevelListDrawable(LevelListState levelListState, Resources resources) {
        setConstantState(new LevelListState(levelListState, this, resources));
        onLevelChange(getLevel());
    }
}
