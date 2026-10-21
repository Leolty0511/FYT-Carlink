package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class ProgramVertex extends Program {

    public static class Builder extends Program.BaseProgramBuilder {
        public Builder(RenderScript renderScript) {
            super(renderScript);
        }

        public Builder addInput(Element element) {
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

        public ProgramVertex create() {
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
            ProgramVertex programVertex = new ProgramVertex(this.mRS.nProgramVertexCreate(this.mShader, strArr, jArr), this.mRS);
            initProgram(programVertex);
            return programVertex;
        }
    }

    public ProgramVertex(long j2, RenderScript renderScript) {
        super(j2, renderScript);
    }

    public Element getInput(int i2) {
        if (i2 >= 0) {
            Element[] elementArr = this.mInputs;
            if (i2 < elementArr.length) {
                return elementArr[i2];
            }
        }
        throw new IllegalArgumentException("Slot ID out of range.");
    }

    public int getInputCount() {
        Element[] elementArr = this.mInputs;
        if (elementArr != null) {
            return elementArr.length;
        }
        return 0;
    }
}
