package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Path extends BaseObj {
    public boolean mCoverageToAlpha;
    public Allocation mLoopBuffer;
    public Primitive mPrimitive;
    public float mQuality;
    public Allocation mVertexBuffer;

    public enum Primitive {
        QUADRATIC_BEZIER(0),
        CUBIC_BEZIER(1);

        public int mID;

        Primitive(int i2) {
            this.mID = i2;
        }
    }

    public Path(int i2, RenderScript renderScript, Primitive primitive, Allocation allocation, Allocation allocation2, float f2) {
        super(i2, renderScript);
        this.mVertexBuffer = allocation;
        this.mLoopBuffer = allocation2;
        this.mPrimitive = primitive;
        this.mQuality = f2;
    }

    public static Path createDynamicPath(RenderScript renderScript, Primitive primitive, float f2, Allocation allocation) {
        return null;
    }

    public static Path createDynamicPath(RenderScript renderScript, Primitive primitive, float f2, Allocation allocation, Allocation allocation2) {
        return null;
    }

    public static Path createStaticPath(RenderScript renderScript, Primitive primitive, float f2, Allocation allocation) {
        return new Path(renderScript.nPathCreate(primitive.mID, false, allocation.getID(renderScript), 0, f2), renderScript, primitive, null, null, f2);
    }

    public static Path createStaticPath(RenderScript renderScript, Primitive primitive, float f2, Allocation allocation, Allocation allocation2) {
        return null;
    }

    public Allocation getLoopAllocation() {
        return this.mLoopBuffer;
    }

    public Primitive getPrimitive() {
        return this.mPrimitive;
    }

    public Allocation getVertexAllocation() {
        return this.mVertexBuffer;
    }

    @Override // android.renderscript.BaseObj
    public void updateFromNative() {
    }
}
