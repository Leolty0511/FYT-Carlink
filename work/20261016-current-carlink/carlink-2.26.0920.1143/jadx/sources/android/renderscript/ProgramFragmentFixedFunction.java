package android.renderscript;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class ProgramFragmentFixedFunction extends ProgramFragment {

    /* JADX INFO: renamed from: android.renderscript.ProgramFragmentFixedFunction$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode;
        static final /* synthetic */ int[] $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format;

        static {
            int[] iArr = new int[Builder.EnvMode.values().length];
            $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode = iArr;
            try {
                iArr[Builder.EnvMode.REPLACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode[Builder.EnvMode.MODULATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode[Builder.EnvMode.DECAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Builder.Format.values().length];
            $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format = iArr2;
            try {
                iArr2[Builder.Format.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format[Builder.Format.LUMINANCE_ALPHA.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format[Builder.Format.RGB.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format[Builder.Format.RGBA.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static class Builder {
        public static final int MAX_TEXTURE = 2;
        int mNumTextures;
        RenderScript mRS;
        String mShader;
        boolean mVaryingColorEnable;
        Slot[] mSlots = new Slot[2];
        boolean mPointSpriteEnable = false;

        public enum EnvMode {
            REPLACE(1),
            MODULATE(2),
            DECAL(3);

            int mID;

            EnvMode(int i2) {
                this.mID = i2;
            }
        }

        public enum Format {
            ALPHA(1),
            LUMINANCE_ALPHA(2),
            RGB(3),
            RGBA(4);

            int mID;

            Format(int i2) {
                this.mID = i2;
            }
        }

        public class Slot {
            EnvMode env;
            Format format;

            public Slot(EnvMode envMode, Format format) {
                this.env = envMode;
                this.format = format;
            }
        }

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private void buildShaderString() {
            this.mShader = "//rs_shader_internal\n";
            this.mShader = c.n(new StringBuilder(), this.mShader, "varying lowp vec4 varColor;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "varying vec2 varTex0;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "void main() {\n");
            if (this.mVaryingColorEnable) {
                this.mShader = c.n(new StringBuilder(), this.mShader, "  lowp vec4 col = varColor;\n");
            } else {
                this.mShader = c.n(new StringBuilder(), this.mShader, "  lowp vec4 col = UNI_Color;\n");
            }
            if (this.mNumTextures != 0) {
                if (this.mPointSpriteEnable) {
                    this.mShader = c.n(new StringBuilder(), this.mShader, "  vec2 t0 = gl_PointCoord;\n");
                } else {
                    this.mShader = c.n(new StringBuilder(), this.mShader, "  vec2 t0 = varTex0.xy;\n");
                }
            }
            for (int i2 = 0; i2 < this.mNumTextures; i2++) {
                int i3 = AnonymousClass1.$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode[this.mSlots[i2].env.ordinal()];
                if (i3 == 1) {
                    int i4 = AnonymousClass1.$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format[this.mSlots[i2].format.ordinal()];
                    if (i4 == 1) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.a = texture2D(UNI_Tex0, t0).a;\n");
                    } else if (i4 == 2) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n");
                    } else if (i4 == 3) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.rgb = texture2D(UNI_Tex0, t0).rgb;\n");
                    } else if (i4 == 4) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n");
                    }
                } else if (i3 == 2) {
                    int i5 = AnonymousClass1.$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format[this.mSlots[i2].format.ordinal()];
                    if (i5 == 1) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.a *= texture2D(UNI_Tex0, t0).a;\n");
                    } else if (i5 == 2) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n");
                    } else if (i5 == 3) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.rgb *= texture2D(UNI_Tex0, t0).rgb;\n");
                    } else if (i5 == 4) {
                        this.mShader = c.n(new StringBuilder(), this.mShader, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n");
                    }
                } else if (i3 == 3) {
                    this.mShader = c.n(new StringBuilder(), this.mShader, "  col = texture2D(UNI_Tex0, t0);\n");
                }
            }
            this.mShader = c.n(new StringBuilder(), this.mShader, "  gl_FragColor = col;\n");
            this.mShader = c.n(new StringBuilder(), this.mShader, "}\n");
        }

        public ProgramFragmentFixedFunction create() {
            Type typeCreate;
            InternalBuilder internalBuilder = new InternalBuilder(this.mRS);
            this.mNumTextures = 0;
            for (int i2 = 0; i2 < 2; i2++) {
                if (this.mSlots[i2] != null) {
                    this.mNumTextures++;
                }
            }
            buildShaderString();
            internalBuilder.setShader(this.mShader);
            if (this.mVaryingColorEnable) {
                typeCreate = null;
            } else {
                Element.Builder builder = new Element.Builder(this.mRS);
                builder.add(Element.F32_4(this.mRS), "Color");
                Type.Builder builder2 = new Type.Builder(this.mRS, builder.create());
                builder2.setX(1);
                typeCreate = builder2.create();
                internalBuilder.addConstant(typeCreate);
            }
            for (int i3 = 0; i3 < this.mNumTextures; i3++) {
                internalBuilder.addTexture(Program.TextureType.TEXTURE_2D);
            }
            ProgramFragmentFixedFunction programFragmentFixedFunctionCreate = internalBuilder.create();
            programFragmentFixedFunctionCreate.mTextureCount = 2;
            if (!this.mVaryingColorEnable) {
                Allocation allocationCreateTyped = Allocation.createTyped(this.mRS, typeCreate);
                FieldPacker fieldPacker = new FieldPacker(16);
                fieldPacker.addF32(new Float4(1.0f, 1.0f, 1.0f, 1.0f));
                allocationCreateTyped.setFromFieldPacker(0, fieldPacker);
                programFragmentFixedFunctionCreate.bindConstants(allocationCreateTyped, 0);
            }
            return programFragmentFixedFunctionCreate;
        }

        public Builder setPointSpriteTexCoordinateReplacement(boolean z2) {
            this.mPointSpriteEnable = z2;
            return this;
        }

        public Builder setTexture(EnvMode envMode, Format format, int i2) {
            if (i2 < 0 || i2 >= 2) {
                throw new IllegalArgumentException("MAX_TEXTURE exceeded.");
            }
            this.mSlots[i2] = new Slot(envMode, format);
            return this;
        }

        public Builder setVaryingColor(boolean z2) {
            this.mVaryingColorEnable = z2;
            return this;
        }
    }

    public static class InternalBuilder extends Program.BaseProgramBuilder {
        public InternalBuilder(RenderScript renderScript) {
            super(renderScript);
        }

        public ProgramFragmentFixedFunction create() {
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
            ProgramFragmentFixedFunction programFragmentFixedFunction = new ProgramFragmentFixedFunction(this.mRS.nProgramFragmentCreate(this.mShader, strArr, jArr), this.mRS);
            initProgram(programFragmentFixedFunction);
            return programFragmentFixedFunction;
        }
    }

    public ProgramFragmentFixedFunction(long j2, RenderScript renderScript) {
        super(j2, renderScript);
    }
}
