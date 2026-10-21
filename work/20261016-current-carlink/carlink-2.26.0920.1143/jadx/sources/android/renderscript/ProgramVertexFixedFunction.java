package android.renderscript;

import android.accessibilityservice.c;
import android.provider.BrowserContract;

/* JADX INFO: loaded from: classes.dex */
public class ProgramVertexFixedFunction extends ProgramVertex {

    public static class Builder {
        RenderScript mRS;
        String mShader;
        boolean mTextureMatrixEnable;

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private void buildShaderString() {
            this.mShader = "//rs_shader_internal\n";
            this.mShader = c.n(new StringBuilder(), this.mShader, "varying vec4 varColor;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "varying vec2 varTex0;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "void main() {\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "  gl_Position = UNI_MVP * ATTRIB_position;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "  gl_PointSize = 1.0;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "  varColor = ATTRIB_color;\n");
            if (this.mTextureMatrixEnable) {
                this.mShader = c.n(new StringBuilder(), this.mShader, "  varTex0 = (UNI_TexMatrix * vec4(ATTRIB_texture0, 0.0, 1.0)).xy;\n");
            } else {
                this.mShader = c.n(new StringBuilder(), this.mShader, "  varTex0 = ATTRIB_texture0;\n");
            }
            this.mShader = c.n(new StringBuilder(), this.mShader, "}\n");
        }

        public static Type getConstantInputType(RenderScript renderScript) {
            Element.Builder builder = new Element.Builder(renderScript);
            builder.add(Element.MATRIX4X4(renderScript), "MV");
            builder.add(Element.MATRIX4X4(renderScript), "P");
            builder.add(Element.MATRIX4X4(renderScript), "TexMatrix");
            builder.add(Element.MATRIX4X4(renderScript), "MVP");
            Type.Builder builder2 = new Type.Builder(renderScript, builder.create());
            builder2.setX(1);
            return builder2.create();
        }

        public ProgramVertexFixedFunction create() {
            buildShaderString();
            InternalBuilder internalBuilder = new InternalBuilder(this.mRS);
            internalBuilder.setShader(this.mShader);
            internalBuilder.addConstant(getConstantInputType(this.mRS));
            Element.Builder builder = new Element.Builder(this.mRS);
            builder.add(Element.F32_4(this.mRS), BrowserContract.Bookmarks.POSITION);
            builder.add(Element.F32_4(this.mRS), "color");
            builder.add(Element.F32_3(this.mRS), "normal");
            builder.add(Element.F32_2(this.mRS), "texture0");
            internalBuilder.addInput(builder.create());
            return internalBuilder.create();
        }

        public Builder setTextureMatrixEnable(boolean z2) {
            this.mTextureMatrixEnable = z2;
            return this;
        }
    }

    public static class Constants {
        static final int MODELVIEW_OFFSET = 0;
        static final int PROJECTION_OFFSET = 16;
        static final int TEXTURE_OFFSET = 32;
        Allocation mAlloc;
        private FieldPacker mIOBuffer;
        Matrix4f mModel;
        Matrix4f mProjection;
        Matrix4f mTexture;

        public Constants(RenderScript renderScript) {
            Type constantInputType = Builder.getConstantInputType(renderScript);
            this.mAlloc = Allocation.createTyped(renderScript, constantInputType);
            this.mIOBuffer = new FieldPacker(constantInputType.getCount() * constantInputType.getElement().getBytesSize());
            this.mModel = new Matrix4f();
            this.mProjection = new Matrix4f();
            this.mTexture = new Matrix4f();
            setModelview(new Matrix4f());
            setProjection(new Matrix4f());
            setTexture(new Matrix4f());
        }

        private void addToBuffer(int i2, Matrix4f matrix4f) {
            this.mIOBuffer.reset(i2);
            for (int i3 = 0; i3 < 16; i3++) {
                this.mIOBuffer.addF32(matrix4f.mMat[i3]);
            }
            FieldPacker fieldPacker = this.mIOBuffer;
            fieldPacker.reset(fieldPacker.getData().length);
            this.mAlloc.setFromFieldPacker(0, this.mIOBuffer);
        }

        public void destroy() {
            this.mAlloc.destroy();
            this.mAlloc = null;
        }

        public Allocation getAllocation() {
            return this.mAlloc;
        }

        public void setModelview(Matrix4f matrix4f) {
            this.mModel.load(matrix4f);
            addToBuffer(0, matrix4f);
        }

        public void setProjection(Matrix4f matrix4f) {
            this.mProjection.load(matrix4f);
            addToBuffer(64, matrix4f);
        }

        public void setTexture(Matrix4f matrix4f) {
            this.mTexture.load(matrix4f);
            addToBuffer(128, matrix4f);
        }
    }

    public static class InternalBuilder extends Program.BaseProgramBuilder {
        public InternalBuilder(RenderScript renderScript) {
            super(renderScript);
        }

        public InternalBuilder addInput(Element element) {
            if (this.mInputCount >= 8) {
                throw new RSIllegalArgumentException("Max input count exceeded.");
            }
            if (element.isComplex()) {
                throw new RSIllegalArgumentException("Complex elements not allowed.");
            }
            Element[] elementArr = this.mInputs;
            int i2 = this.mInputCount;
            this.mInputCount = i2 + 1;
            elementArr[i2] = element;
            return this;
        }

        public ProgramVertexFixedFunction create() {
            this.mRS.validate();
            int i2 = this.mInputCount + this.mOutputCount + this.mConstantCount;
            int i3 = this.mTextureCount;
            long[] jArr = new long[(i2 + i3) * 2];
            String[] strArr = new String[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < this.mInputCount; i5++) {
                int i6 = i4 + 1;
                jArr[i4] = Program.ProgramParam.INPUT.mID;
                i4 = i6 + 1;
                jArr[i6] = this.mInputs[i5].getID(this.mRS);
            }
            for (int i7 = 0; i7 < this.mOutputCount; i7++) {
                int i8 = i4 + 1;
                jArr[i4] = Program.ProgramParam.OUTPUT.mID;
                i4 = i8 + 1;
                jArr[i8] = this.mOutputs[i7].getID(this.mRS);
            }
            for (int i9 = 0; i9 < this.mConstantCount; i9++) {
                int i10 = i4 + 1;
                jArr[i4] = Program.ProgramParam.CONSTANT.mID;
                i4 = i10 + 1;
                jArr[i10] = this.mConstants[i9].getID(this.mRS);
            }
            for (int i11 = 0; i11 < this.mTextureCount; i11++) {
                int i12 = i4 + 1;
                jArr[i4] = Program.ProgramParam.TEXTURE_TYPE.mID;
                i4 = i12 + 1;
                jArr[i12] = this.mTextureTypes[i11].mID;
                strArr[i11] = this.mTextureNames[i11];
            }
            ProgramVertexFixedFunction programVertexFixedFunction = new ProgramVertexFixedFunction(this.mRS.nProgramVertexCreate(this.mShader, strArr, jArr), this.mRS);
            initProgram(programVertexFixedFunction);
            return programVertexFixedFunction;
        }
    }

    public ProgramVertexFixedFunction(long j2, RenderScript renderScript) {
        super(j2, renderScript);
    }

    public void bindConstants(Constants constants) {
        this.mRS.validate();
        bindConstants(constants.getAllocation(), 0);
    }
}
