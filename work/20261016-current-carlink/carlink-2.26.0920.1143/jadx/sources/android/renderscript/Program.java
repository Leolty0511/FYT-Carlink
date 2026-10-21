package android.renderscript;

import android.content.res.Resources;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class Program extends BaseObj {
    static final int MAX_CONSTANT = 8;
    static final int MAX_INPUT = 8;
    static final int MAX_OUTPUT = 8;
    static final int MAX_TEXTURE = 8;
    Type[] mConstants;
    Element[] mInputs;
    Element[] mOutputs;
    String mShader;
    int mTextureCount;
    String[] mTextureNames;
    TextureType[] mTextures;

    public static class BaseProgramBuilder {
        RenderScript mRS;
        String mShader;
        Type[] mTextures;
        Element[] mInputs = new Element[8];
        Element[] mOutputs = new Element[8];
        Type[] mConstants = new Type[8];
        int mInputCount = 0;
        int mOutputCount = 0;
        int mConstantCount = 0;
        int mTextureCount = 0;
        TextureType[] mTextureTypes = new TextureType[8];
        String[] mTextureNames = new String[8];

        public BaseProgramBuilder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        public BaseProgramBuilder addConstant(Type type) {
            if (this.mConstantCount >= 8) {
                throw new RSIllegalArgumentException("Max input count exceeded.");
            }
            if (type.getElement().isComplex()) {
                throw new RSIllegalArgumentException("Complex elements not allowed.");
            }
            Type[] typeArr = this.mConstants;
            int i2 = this.mConstantCount;
            typeArr[i2] = type;
            this.mConstantCount = i2 + 1;
            return this;
        }

        public BaseProgramBuilder addTexture(TextureType textureType) {
            addTexture(textureType, "Tex" + this.mTextureCount);
            return this;
        }

        public int getCurrentConstantIndex() {
            return this.mConstantCount - 1;
        }

        public int getCurrentTextureIndex() {
            return this.mTextureCount - 1;
        }

        public void initProgram(Program program) {
            int i2 = this.mInputCount;
            Element[] elementArr = new Element[i2];
            program.mInputs = elementArr;
            System.arraycopy(this.mInputs, 0, elementArr, 0, i2);
            int i3 = this.mOutputCount;
            Element[] elementArr2 = new Element[i3];
            program.mOutputs = elementArr2;
            System.arraycopy(this.mOutputs, 0, elementArr2, 0, i3);
            int i4 = this.mConstantCount;
            Type[] typeArr = new Type[i4];
            program.mConstants = typeArr;
            System.arraycopy(this.mConstants, 0, typeArr, 0, i4);
            int i5 = this.mTextureCount;
            program.mTextureCount = i5;
            TextureType[] textureTypeArr = new TextureType[i5];
            program.mTextures = textureTypeArr;
            System.arraycopy(this.mTextureTypes, 0, textureTypeArr, 0, i5);
            int i6 = this.mTextureCount;
            String[] strArr = new String[i6];
            program.mTextureNames = strArr;
            System.arraycopy(this.mTextureNames, 0, strArr, 0, i6);
        }

        public BaseProgramBuilder setShader(String str) {
            this.mShader = str;
            return this;
        }

        public BaseProgramBuilder addTexture(TextureType textureType, String str) {
            int i2 = this.mTextureCount;
            if (i2 >= 8) {
                throw new IllegalArgumentException("Max texture count exceeded.");
            }
            this.mTextureTypes[i2] = textureType;
            this.mTextureNames[i2] = str;
            this.mTextureCount = i2 + 1;
            return this;
        }

        public BaseProgramBuilder setShader(Resources resources, int i2) {
            InputStream inputStreamOpenRawResource = resources.openRawResource(i2);
            try {
                try {
                    byte[] bArr = new byte[1024];
                    int i3 = 0;
                    while (true) {
                        int length = bArr.length - i3;
                        if (length == 0) {
                            int length2 = bArr.length * 2;
                            byte[] bArr2 = new byte[length2];
                            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                            length = length2 - i3;
                            bArr = bArr2;
                        }
                        int i4 = inputStreamOpenRawResource.read(bArr, i3, length);
                        if (i4 <= 0) {
                            break;
                        }
                        i3 += i4;
                    }
                    inputStreamOpenRawResource.close();
                    try {
                        this.mShader = new String(bArr, 0, i3, "UTF-8");
                    } catch (UnsupportedEncodingException unused) {
                        Log.e("RenderScript shader creation", "Could not decode shader string");
                    }
                    return this;
                } catch (Throwable th) {
                    inputStreamOpenRawResource.close();
                    throw th;
                }
            } catch (IOException unused2) {
                throw new Resources.NotFoundException();
            }
        }
    }

    public enum ProgramParam {
        INPUT(0),
        OUTPUT(1),
        CONSTANT(2),
        TEXTURE_TYPE(3);

        int mID;

        ProgramParam(int i2) {
            this.mID = i2;
        }
    }

    public enum TextureType {
        TEXTURE_2D(0),
        TEXTURE_CUBE(1);

        int mID;

        TextureType(int i2) {
            this.mID = i2;
        }
    }

    public Program(long j2, RenderScript renderScript) {
        super(j2, renderScript);
        this.guard.open("destroy");
    }

    public void bindConstants(Allocation allocation, int i2) {
        if (i2 < 0 || i2 >= this.mConstants.length) {
            throw new IllegalArgumentException("Slot ID out of range.");
        }
        if (allocation != null && allocation.getType().getID(this.mRS) != this.mConstants[i2].getID(this.mRS)) {
            throw new IllegalArgumentException("Allocation type does not match slot type.");
        }
        long id = allocation != null ? allocation.getID(this.mRS) : 0L;
        RenderScript renderScript = this.mRS;
        renderScript.nProgramBindConstants(getID(renderScript), i2, id);
    }

    public void bindSampler(Sampler sampler, int i2) {
        this.mRS.validate();
        if (i2 < 0 || i2 >= this.mTextureCount) {
            throw new IllegalArgumentException("Slot ID out of range.");
        }
        long id = sampler != null ? sampler.getID(this.mRS) : 0L;
        RenderScript renderScript = this.mRS;
        renderScript.nProgramBindSampler(getID(renderScript), i2, id);
    }

    public void bindTexture(Allocation allocation, int i2) {
        this.mRS.validate();
        if (i2 < 0 || i2 >= this.mTextureCount) {
            throw new IllegalArgumentException("Slot ID out of range.");
        }
        if (allocation != null && allocation.getType().hasFaces() && this.mTextures[i2] != TextureType.TEXTURE_CUBE) {
            throw new IllegalArgumentException("Cannot bind cubemap to 2d texture slot");
        }
        long id = allocation != null ? allocation.getID(this.mRS) : 0L;
        RenderScript renderScript = this.mRS;
        renderScript.nProgramBindTexture(getID(renderScript), i2, id);
    }

    public Type getConstant(int i2) {
        if (i2 >= 0) {
            Type[] typeArr = this.mConstants;
            if (i2 < typeArr.length) {
                return typeArr[i2];
            }
        }
        throw new IllegalArgumentException("Slot ID out of range.");
    }

    public int getConstantCount() {
        Type[] typeArr = this.mConstants;
        if (typeArr != null) {
            return typeArr.length;
        }
        return 0;
    }

    public int getTextureCount() {
        return this.mTextureCount;
    }

    public String getTextureName(int i2) {
        if (i2 < 0 || i2 >= this.mTextureCount) {
            throw new IllegalArgumentException("Slot ID out of range.");
        }
        return this.mTextureNames[i2];
    }

    public TextureType getTextureType(int i2) {
        if (i2 < 0 || i2 >= this.mTextureCount) {
            throw new IllegalArgumentException("Slot ID out of range.");
        }
        return this.mTextures[i2];
    }
}
