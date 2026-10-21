package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class ProgramStore extends BaseObj {
    public BlendDstFunc mBlendDst;
    public BlendSrcFunc mBlendSrc;
    public boolean mColorMaskA;
    public boolean mColorMaskB;
    public boolean mColorMaskG;
    public boolean mColorMaskR;
    public DepthFunc mDepthFunc;
    public boolean mDepthMask;
    public boolean mDither;

    public enum BlendDstFunc {
        ZERO(0),
        ONE(1),
        SRC_COLOR(2),
        ONE_MINUS_SRC_COLOR(3),
        SRC_ALPHA(4),
        ONE_MINUS_SRC_ALPHA(5),
        DST_ALPHA(6),
        ONE_MINUS_DST_ALPHA(7);

        public int mID;

        BlendDstFunc(int i2) {
            this.mID = i2;
        }
    }

    public enum BlendSrcFunc {
        ZERO(0),
        ONE(1),
        DST_COLOR(2),
        ONE_MINUS_DST_COLOR(3),
        SRC_ALPHA(4),
        ONE_MINUS_SRC_ALPHA(5),
        DST_ALPHA(6),
        ONE_MINUS_DST_ALPHA(7),
        SRC_ALPHA_SATURATE(8);

        public int mID;

        BlendSrcFunc(int i2) {
            this.mID = i2;
        }
    }

    public static class Builder {
        public boolean mDither;
        public RenderScript mRS;
        public DepthFunc mDepthFunc = DepthFunc.ALWAYS;
        public boolean mDepthMask = false;
        public boolean mColorMaskR = true;
        public boolean mColorMaskG = true;
        public boolean mColorMaskB = true;
        public boolean mColorMaskA = true;
        public BlendSrcFunc mBlendSrc = BlendSrcFunc.ONE;
        public BlendDstFunc mBlendDst = BlendDstFunc.ZERO;

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        public ProgramStore create() {
            this.mRS.validate();
            ProgramStore programStore = new ProgramStore(this.mRS.nProgramStoreCreate(this.mColorMaskR, this.mColorMaskG, this.mColorMaskB, this.mColorMaskA, this.mDepthMask, this.mDither, this.mBlendSrc.mID, this.mBlendDst.mID, this.mDepthFunc.mID), this.mRS);
            programStore.mDepthFunc = this.mDepthFunc;
            programStore.mDepthMask = this.mDepthMask;
            programStore.mColorMaskR = this.mColorMaskR;
            programStore.mColorMaskG = this.mColorMaskG;
            programStore.mColorMaskB = this.mColorMaskB;
            programStore.mColorMaskA = this.mColorMaskA;
            programStore.mBlendSrc = this.mBlendSrc;
            programStore.mBlendDst = this.mBlendDst;
            programStore.mDither = this.mDither;
            return programStore;
        }

        public Builder setBlendFunc(BlendSrcFunc blendSrcFunc, BlendDstFunc blendDstFunc) {
            this.mBlendSrc = blendSrcFunc;
            this.mBlendDst = blendDstFunc;
            return this;
        }

        public Builder setColorMaskEnabled(boolean z2, boolean z3, boolean z4, boolean z5) {
            this.mColorMaskR = z2;
            this.mColorMaskG = z3;
            this.mColorMaskB = z4;
            this.mColorMaskA = z5;
            return this;
        }

        public Builder setDepthFunc(DepthFunc depthFunc) {
            this.mDepthFunc = depthFunc;
            return this;
        }

        public Builder setDepthMaskEnabled(boolean z2) {
            this.mDepthMask = z2;
            return this;
        }

        public Builder setDitherEnabled(boolean z2) {
            this.mDither = z2;
            return this;
        }
    }

    public enum DepthFunc {
        ALWAYS(0),
        LESS(1),
        LESS_OR_EQUAL(2),
        GREATER(3),
        GREATER_OR_EQUAL(4),
        EQUAL(5),
        NOT_EQUAL(6);

        public int mID;

        DepthFunc(int i2) {
            this.mID = i2;
        }
    }

    public ProgramStore(int i2, RenderScript renderScript) {
        super(i2, renderScript);
    }

    public static ProgramStore BLEND_ALPHA_DEPTH_NONE(RenderScript renderScript) {
        if (renderScript.mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH == null) {
            Builder builder = new Builder(renderScript);
            builder.setDepthFunc(DepthFunc.ALWAYS);
            builder.setBlendFunc(BlendSrcFunc.SRC_ALPHA, BlendDstFunc.ONE_MINUS_SRC_ALPHA);
            builder.setDitherEnabled(false);
            builder.setDepthMaskEnabled(false);
            renderScript.mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH = builder.create();
        }
        return renderScript.mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH;
    }

    public static ProgramStore BLEND_ALPHA_DEPTH_TEST(RenderScript renderScript) {
        if (renderScript.mProgramStore_BLEND_ALPHA_DEPTH_TEST == null) {
            Builder builder = new Builder(renderScript);
            builder.setDepthFunc(DepthFunc.LESS);
            builder.setBlendFunc(BlendSrcFunc.SRC_ALPHA, BlendDstFunc.ONE_MINUS_SRC_ALPHA);
            builder.setDitherEnabled(false);
            builder.setDepthMaskEnabled(true);
            renderScript.mProgramStore_BLEND_ALPHA_DEPTH_TEST = builder.create();
        }
        return renderScript.mProgramStore_BLEND_ALPHA_DEPTH_TEST;
    }

    public static ProgramStore BLEND_NONE_DEPTH_NONE(RenderScript renderScript) {
        if (renderScript.mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH == null) {
            Builder builder = new Builder(renderScript);
            builder.setDepthFunc(DepthFunc.ALWAYS);
            builder.setBlendFunc(BlendSrcFunc.ONE, BlendDstFunc.ZERO);
            builder.setDitherEnabled(false);
            builder.setDepthMaskEnabled(false);
            renderScript.mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH = builder.create();
        }
        return renderScript.mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH;
    }

    public static ProgramStore BLEND_NONE_DEPTH_TEST(RenderScript renderScript) {
        if (renderScript.mProgramStore_BLEND_NONE_DEPTH_TEST == null) {
            Builder builder = new Builder(renderScript);
            builder.setDepthFunc(DepthFunc.LESS);
            builder.setBlendFunc(BlendSrcFunc.ONE, BlendDstFunc.ZERO);
            builder.setDitherEnabled(false);
            builder.setDepthMaskEnabled(true);
            renderScript.mProgramStore_BLEND_NONE_DEPTH_TEST = builder.create();
        }
        return renderScript.mProgramStore_BLEND_NONE_DEPTH_TEST;
    }

    public BlendDstFunc getBlendDstFunc() {
        return this.mBlendDst;
    }

    public BlendSrcFunc getBlendSrcFunc() {
        return this.mBlendSrc;
    }

    public DepthFunc getDepthFunc() {
        return this.mDepthFunc;
    }

    public boolean isColorMaskAlphaEnabled() {
        return this.mColorMaskA;
    }

    public boolean isColorMaskBlueEnabled() {
        return this.mColorMaskB;
    }

    public boolean isColorMaskGreenEnabled() {
        return this.mColorMaskG;
    }

    public boolean isColorMaskRedEnabled() {
        return this.mColorMaskR;
    }

    public boolean isDepthMaskEnabled() {
        return this.mDepthMask;
    }

    public boolean isDitherEnabled() {
        return this.mDither;
    }
}
