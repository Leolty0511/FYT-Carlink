package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class ProgramFragment extends Program {

    public static class Builder extends Program.BaseProgramBuilder {
        public Builder(RenderScript renderScript) {
            super(renderScript);
        }

        public ProgramFragment create() {
            this.mRS.validate();
            int i2 = this.mInputCount + this.mOutputCount + this.mConstantCount;
            int i3 = this.mTextureCount;
            int[] iArr = new int[(i2 + i3) * 2];
            String[] strArr = new String[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < this.mInputCount; i5++) {
                int i6 = i4 + 1;
                iArr[i4] = Program.ProgramParam.INPUT.mID;
                i4 = i6 + 1;
                iArr[i6] = this.mInputs[i5].getID(this.mRS);
            }
            for (int i7 = 0; i7 < this.mOutputCount; i7++) {
                int i8 = i4 + 1;
                iArr[i4] = Program.ProgramParam.OUTPUT.mID;
                i4 = i8 + 1;
                iArr[i8] = this.mOutputs[i7].getID(this.mRS);
            }
            for (int i9 = 0; i9 < this.mConstantCount; i9++) {
                int i10 = i4 + 1;
                iArr[i4] = Program.ProgramParam.CONSTANT.mID;
                i4 = i10 + 1;
                iArr[i10] = this.mConstants[i9].getID(this.mRS);
            }
            for (int i11 = 0; i11 < this.mTextureCount; i11++) {
                int i12 = i4 + 1;
                iArr[i4] = Program.ProgramParam.TEXTURE_TYPE.mID;
                i4 = i12 + 1;
                iArr[i12] = this.mTextureTypes[i11].mID;
                strArr[i11] = this.mTextureNames[i11];
            }
            ProgramFragment programFragment = new ProgramFragment(this.mRS.nProgramFragmentCreate(this.mShader, strArr, iArr), this.mRS);
            initProgram(programFragment);
            return programFragment;
        }
    }

    public ProgramFragment(int i2, RenderScript renderScript) {
        super(i2, renderScript);
    }
}
