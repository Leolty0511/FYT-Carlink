package android.opengl;

import android.accessibilityservice.c;
import android.app.backup.FullBackup;
import android.app.m;
import android.media.MediaFormat;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.internal.app.DumpHeapActivity;
import java.io.IOException;
import java.io.Writer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
import r.f;

/* JADX INFO: loaded from: classes.dex */
class GLLogWrapper extends GLWrapperBase {
    private static final int FORMAT_FIXED = 2;
    private static final int FORMAT_FLOAT = 1;
    private static final int FORMAT_INT = 0;
    private int mArgCount;
    boolean mColorArrayEnabled;
    private PointerInfo mColorPointer;
    private Writer mLog;
    private boolean mLogArgumentNames;
    boolean mNormalArrayEnabled;
    private PointerInfo mNormalPointer;
    StringBuilder mStringBuilder;
    private PointerInfo mTexCoordPointer;
    boolean mTextureCoordArrayEnabled;
    boolean mVertexArrayEnabled;
    private PointerInfo mVertexPointer;

    public class PointerInfo {
        public Buffer mPointer;
        public int mSize;
        public int mStride;
        public ByteBuffer mTempByteBuffer;
        public int mType;

        public PointerInfo() {
        }

        public void bindByteBuffer() {
            Buffer buffer = this.mPointer;
            this.mTempByteBuffer = buffer == null ? null : GLLogWrapper.this.toByteBuffer(-1, buffer);
        }

        public int getStride() {
            int i2 = this.mStride;
            return i2 > 0 ? i2 : sizeof(this.mType) * this.mSize;
        }

        public int sizeof(int i2) {
            if (i2 == 5126 || i2 == 5132) {
                return 4;
            }
            switch (i2) {
                case 5120:
                case 5121:
                    return 1;
                case 5122:
                    return 2;
                default:
                    return 0;
            }
        }

        public void unbindByteBuffer() {
            this.mTempByteBuffer = null;
        }

        public PointerInfo(int i2, int i3, int i4, Buffer buffer) {
            this.mSize = i2;
            this.mType = i3;
            this.mStride = i4;
            this.mPointer = buffer;
        }
    }

    public GLLogWrapper(f fVar, Writer writer, boolean z2) {
        super(fVar);
        this.mColorPointer = new PointerInfo();
        this.mNormalPointer = new PointerInfo();
        this.mTexCoordPointer = new PointerInfo();
        this.mVertexPointer = new PointerInfo();
        this.mLog = writer;
        this.mLogArgumentNames = z2;
    }

    private void arg(String str, String str2) {
        int i2 = this.mArgCount;
        this.mArgCount = i2 + 1;
        if (i2 > 0) {
            log(", ");
        }
        if (this.mLogArgumentNames) {
            log(c.D(str, "="));
        }
        log(str2);
    }

    private void argPointer(int i2, int i3, int i4, Buffer buffer) {
        arg(DumpHeapActivity.KEY_SIZE, i2);
        arg("type", getPointerTypeName(i3));
        arg(MediaFormat.KEY_STRIDE, i4);
        arg("pointer", buffer.toString());
    }

    private void begin(String str) {
        log(str + '(');
        this.mArgCount = 0;
    }

    private void bindArrays() {
        if (this.mColorArrayEnabled) {
            this.mColorPointer.bindByteBuffer();
        }
        if (this.mNormalArrayEnabled) {
            this.mNormalPointer.bindByteBuffer();
        }
        if (this.mTextureCoordArrayEnabled) {
            this.mTexCoordPointer.bindByteBuffer();
        }
        if (this.mVertexArrayEnabled) {
            this.mVertexPointer.bindByteBuffer();
        }
    }

    private void checkError() {
        int iGlGetError = this.mgl.glGetError();
        if (iGlGetError != 0) {
            logLine("glError: " + Integer.toString(iGlGetError));
        }
    }

    private void doArrayElement(StringBuilder sb, boolean z2, String str, PointerInfo pointerInfo, int i2) {
        if (z2) {
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(str + ":{");
            if (pointerInfo == null || pointerInfo.mTempByteBuffer == null) {
                sb.append("undefined }");
                return;
            }
            if (pointerInfo.mStride < 0) {
                sb.append("invalid stride");
                return;
            }
            int stride = pointerInfo.getStride();
            ByteBuffer byteBuffer = pointerInfo.mTempByteBuffer;
            int i3 = pointerInfo.mSize;
            int i4 = pointerInfo.mType;
            int iSizeof = pointerInfo.sizeof(i4);
            int i5 = stride * i2;
            for (int i6 = 0; i6 < i3; i6++) {
                if (i6 > 0) {
                    sb.append(", ");
                }
                if (i4 == 5126) {
                    sb.append(Float.toString(byteBuffer.asFloatBuffer().get(i5 / 4)));
                } else if (i4 != 5132) {
                    switch (i4) {
                        case 5120:
                            sb.append(Integer.toString(byteBuffer.get(i5)));
                            break;
                        case 5121:
                            sb.append(Integer.toString(byteBuffer.get(i5) & 255));
                            break;
                        case 5122:
                            sb.append(Integer.toString(byteBuffer.asShortBuffer().get(i5 / 2)));
                            break;
                        default:
                            sb.append("?");
                            break;
                    }
                } else {
                    sb.append(Integer.toString(byteBuffer.asIntBuffer().get(i5 / 4)));
                }
                i5 += iSizeof;
            }
            sb.append("}");
        }
    }

    private void doElement(StringBuilder sb, int i2, int i3) {
        sb.append(m.f(" [", i2, " : ", i3, "] ="));
        doArrayElement(sb, this.mVertexArrayEnabled, Telephony.BaseMmsColumns.MMS_VERSION, this.mVertexPointer, i3);
        doArrayElement(sb, this.mNormalArrayEnabled, "n", this.mNormalPointer, i3);
        doArrayElement(sb, this.mColorArrayEnabled, FullBackup.CACHE_TREE_TOKEN, this.mColorPointer, i3);
        doArrayElement(sb, this.mTextureCoordArrayEnabled, "t", this.mTexCoordPointer, i3);
        sb.append("\n");
    }

    private void end() {
        log(");\n");
        flush();
    }

    private void endLogIndices() {
        log(this.mStringBuilder.toString());
        unbindArrays();
    }

    private void flush() {
        try {
            this.mLog.flush();
        } catch (IOException unused) {
            this.mLog = null;
        }
    }

    private void formattedAppend(StringBuilder sb, int i2, int i3) {
        if (i3 == 0) {
            sb.append(i2);
        } else if (i3 == 1) {
            sb.append(Float.intBitsToFloat(i2));
        } else {
            if (i3 != 2) {
                return;
            }
            sb.append(i2 / 65536.0f);
        }
    }

    private String getBeginMode(int i2) {
        switch (i2) {
            case 0:
                return "GL_POINTS";
            case 1:
                return "GL_LINES";
            case 2:
                return "GL_LINE_LOOP";
            case 3:
                return "GL_LINE_STRIP";
            case 4:
                return "GL_TRIANGLES";
            case 5:
                return "GL_TRIANGLE_STRIP";
            case 6:
                return "GL_TRIANGLE_FAN";
            default:
                return getHex(i2);
        }
    }

    private String getCap(int i2) {
        switch (i2) {
            case GLES10.GL_POINT_SMOOTH /* 2832 */:
                return "GL_POINT_SMOOTH";
            case GLES10.GL_LINE_SMOOTH /* 2848 */:
                return "GL_LINE_SMOOTH";
            case 2884:
                return "GL_CULL_FACE";
            case GLES10.GL_LIGHTING /* 2896 */:
                return "GL_LIGHTING";
            case GLES10.GL_COLOR_MATERIAL /* 2903 */:
                return "GL_COLOR_MATERIAL";
            case GLES10.GL_FOG /* 2912 */:
                return "GL_FOG";
            case 2929:
                return "GL_DEPTH_TEST";
            case 2960:
                return "GL_STENCIL_TEST";
            case GLES10.GL_NORMALIZE /* 2977 */:
                return "GL_NORMALIZE";
            case GLES10.GL_ALPHA_TEST /* 3008 */:
                return "GL_ALPHA_TEST";
            case 3024:
                return "GL_DITHER";
            case 3042:
                return "GL_BLEND";
            case GLES10.GL_COLOR_LOGIC_OP /* 3058 */:
                return "GL_COLOR_LOGIC_OP";
            case 3089:
                return "GL_SCISSOR_TEST";
            case 3553:
                return "GL_TEXTURE_2D";
            case GLES10.GL_RESCALE_NORMAL /* 32826 */:
                return "GL_RESCALE_NORMAL";
            case GLES10.GL_TEXTURE_COORD_ARRAY /* 32888 */:
                return "GL_TEXTURE_COORD_ARRAY";
            default:
                switch (i2) {
                    case 16384:
                        return "GL_LIGHT0";
                    case 16385:
                        return "GL_LIGHT1";
                    case 16386:
                        return "GL_LIGHT2";
                    case 16387:
                        return "GL_LIGHT3";
                    case 16388:
                        return "GL_LIGHT4";
                    case 16389:
                        return "GL_LIGHT5";
                    case 16390:
                        return "GL_LIGHT6";
                    case 16391:
                        return "GL_LIGHT7";
                    default:
                        switch (i2) {
                            case 32884:
                                return "GL_VERTEX_ARRAY";
                            case GLES10.GL_NORMAL_ARRAY /* 32885 */:
                                return "GL_NORMAL_ARRAY";
                            case GLES10.GL_COLOR_ARRAY /* 32886 */:
                                return "GL_COLOR_ARRAY";
                            default:
                                switch (i2) {
                                    case GLES10.GL_MULTISAMPLE /* 32925 */:
                                        return "GL_MULTISAMPLE";
                                    case 32926:
                                        return "GL_SAMPLE_ALPHA_TO_COVERAGE";
                                    case GLES10.GL_SAMPLE_ALPHA_TO_ONE /* 32927 */:
                                        return "GL_SAMPLE_ALPHA_TO_ONE";
                                    case 32928:
                                        return "GL_SAMPLE_COVERAGE";
                                    default:
                                        return getHex(i2);
                                }
                        }
                }
        }
    }

    private String getClearBufferMask(int i2) {
        StringBuilder sb = new StringBuilder();
        if ((i2 & 256) != 0) {
            sb.append("GL_DEPTH_BUFFER_BIT");
            i2 &= -257;
        }
        if ((i2 & 1024) != 0) {
            if (sb.length() > 0) {
                sb.append(" | ");
            }
            sb.append("GL_STENCIL_BUFFER_BIT");
            i2 &= -1025;
        }
        if ((i2 & 16384) != 0) {
            if (sb.length() > 0) {
                sb.append(" | ");
            }
            sb.append("GL_COLOR_BUFFER_BIT");
            i2 &= -16385;
        }
        if (i2 != 0) {
            if (sb.length() > 0) {
                sb.append(" | ");
            }
            sb.append(getHex(i2));
        }
        return sb.toString();
    }

    private String getClientState(int i2) {
        switch (i2) {
            case 32884:
                return "GL_VERTEX_ARRAY";
            case GLES10.GL_NORMAL_ARRAY /* 32885 */:
                return "GL_NORMAL_ARRAY";
            case GLES10.GL_COLOR_ARRAY /* 32886 */:
                return "GL_COLOR_ARRAY";
            case 32887:
            default:
                return getHex(i2);
            case GLES10.GL_TEXTURE_COORD_ARRAY /* 32888 */:
                return "GL_TEXTURE_COORD_ARRAY";
        }
    }

    public static String getErrorString(int i2) {
        if (i2 == 0) {
            return "GL_NO_ERROR";
        }
        switch (i2) {
            case 1280:
                return "GL_INVALID_ENUM";
            case 1281:
                return "GL_INVALID_VALUE";
            case 1282:
                return "GL_INVALID_OPERATION";
            case 1283:
                return "GL_STACK_OVERFLOW";
            case 1284:
                return "GL_STACK_UNDERFLOW";
            case 1285:
                return "GL_OUT_OF_MEMORY";
            default:
                return getHex(i2);
        }
    }

    private String getFaceName(int i2) {
        return i2 != 1032 ? getHex(i2) : "GL_FRONT_AND_BACK";
    }

    private String getFactor(int i2) {
        if (i2 == 0) {
            return "GL_ZERO";
        }
        if (i2 == 1) {
            return "GL_ONE";
        }
        switch (i2) {
            case 768:
                return "GL_SRC_COLOR";
            case 769:
                return "GL_ONE_MINUS_SRC_COLOR";
            case 770:
                return "GL_SRC_ALPHA";
            case 771:
                return "GL_ONE_MINUS_SRC_ALPHA";
            case 772:
                return "GL_DST_ALPHA";
            case 773:
                return "GL_ONE_MINUS_DST_ALPHA";
            case 774:
                return "GL_DST_COLOR";
            case 775:
                return "GL_ONE_MINUS_DST_COLOR";
            case 776:
                return "GL_SRC_ALPHA_SATURATE";
            default:
                return getHex(i2);
        }
    }

    private String getFogPName(int i2) {
        switch (i2) {
            case GLES10.GL_FOG_DENSITY /* 2914 */:
                return "GL_FOG_DENSITY";
            case GLES10.GL_FOG_START /* 2915 */:
                return "GL_FOG_START";
            case GLES10.GL_FOG_END /* 2916 */:
                return "GL_FOG_END";
            case GLES10.GL_FOG_MODE /* 2917 */:
                return "GL_FOG_MODE";
            case GLES10.GL_FOG_COLOR /* 2918 */:
                return "GL_FOG_COLOR";
            default:
                return getHex(i2);
        }
    }

    private int getFogParamCount(int i2) {
        switch (i2) {
            case GLES10.GL_FOG_DENSITY /* 2914 */:
            case GLES10.GL_FOG_START /* 2915 */:
            case GLES10.GL_FOG_END /* 2916 */:
            case GLES10.GL_FOG_MODE /* 2917 */:
                return 1;
            case GLES10.GL_FOG_COLOR /* 2918 */:
                return 4;
            default:
                return 0;
        }
    }

    private static String getHex(int i2) {
        return m.d(i2, new StringBuilder("0x"));
    }

    private String getHintMode(int i2) {
        switch (i2) {
            case 4352:
                return "GL_DONT_CARE";
            case 4353:
                return "GL_FASTEST";
            case 4354:
                return "GL_NICEST";
            default:
                return getHex(i2);
        }
    }

    private String getHintTarget(int i2) {
        if (i2 == 33170) {
            return "GL_GENERATE_MIPMAP_HINT";
        }
        switch (i2) {
            case GLES10.GL_PERSPECTIVE_CORRECTION_HINT /* 3152 */:
                return "GL_PERSPECTIVE_CORRECTION_HINT";
            case GLES10.GL_POINT_SMOOTH_HINT /* 3153 */:
                return "GL_POINT_SMOOTH_HINT";
            case GLES10.GL_LINE_SMOOTH_HINT /* 3154 */:
                return "GL_LINE_SMOOTH_HINT";
            case GLES10.GL_POLYGON_SMOOTH_HINT /* 3155 */:
                return "GL_POLYGON_SMOOTH_HINT";
            case GLES10.GL_FOG_HINT /* 3156 */:
                return "GL_FOG_HINT";
            default:
                return getHex(i2);
        }
    }

    private String getIndexType(int i2) {
        if (i2 != 5121) {
            return i2 != 5123 ? getHex(i2) : "GL_UNSIGNED_SHORT";
        }
        return "GL_UNSIGNED_BYTE";
    }

    private int getIntegerStateFormat(int i2) {
        switch (i2) {
            case 35213:
            case 35214:
            case 35215:
                return 1;
            default:
                return 0;
        }
    }

    private String getIntegerStateName(int i2) {
        switch (i2) {
            case GLES10.GL_SMOOTH_POINT_SIZE_RANGE /* 2834 */:
                return "GL_SMOOTH_POINT_SIZE_RANGE";
            case GLES10.GL_SMOOTH_LINE_WIDTH_RANGE /* 2850 */:
                return "GL_SMOOTH_LINE_WIDTH_RANGE";
            case GLES10.GL_MAX_LIGHTS /* 3377 */:
                return "GL_MAX_LIGHTS";
            case 3379:
                return "GL_MAX_TEXTURE_SIZE";
            case GLES10.GL_MAX_MODELVIEW_STACK_DEPTH /* 3382 */:
                return "GL_MAX_MODELVIEW_STACK_DEPTH";
            case GLES10.GL_MAX_PROJECTION_STACK_DEPTH /* 3384 */:
                return "GL_MAX_PROJECTION_STACK_DEPTH";
            case GLES10.GL_MAX_TEXTURE_STACK_DEPTH /* 3385 */:
                return "GL_MAX_TEXTURE_STACK_DEPTH";
            case 3386:
                return "GL_MAX_VIEWPORT_DIMS";
            case 3408:
                return "GL_SUBPIXEL_BITS";
            case 3410:
                return "GL_RED_BITS";
            case 3411:
                return "GL_GREEN_BITS";
            case 3412:
                return "GL_BLUE_BITS";
            case 3413:
                return "GL_ALPHA_BITS";
            case 3414:
                return "GL_DEPTH_BITS";
            case 3415:
                return "GL_STENCIL_BITS";
            case 33000:
                return "GL_MAX_ELEMENTS_VERTICES";
            case 33001:
                return "GL_MAX_ELEMENTS_INDICES";
            case 33901:
                return "GL_ALIASED_POINT_SIZE_RANGE";
            case 33902:
                return "GL_ALIASED_LINE_WIDTH_RANGE";
            case GLES10.GL_MAX_TEXTURE_UNITS /* 34018 */:
                return "GL_MAX_TEXTURE_UNITS";
            case 34466:
                return "GL_NUM_COMPRESSED_TEXTURE_FORMATS";
            case 34467:
                return "GL_COMPRESSED_TEXTURE_FORMATS";
            case 35213:
                return "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES";
            case 35214:
                return "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES";
            case 35215:
                return "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES";
            default:
                return getHex(i2);
        }
    }

    private int getIntegerStateSize(int i2) {
        switch (i2) {
            case GLES10.GL_SMOOTH_POINT_SIZE_RANGE /* 2834 */:
            case GLES10.GL_SMOOTH_LINE_WIDTH_RANGE /* 2850 */:
                return 2;
            case GLES10.GL_MAX_LIGHTS /* 3377 */:
            case 3379:
            case GLES10.GL_MAX_MODELVIEW_STACK_DEPTH /* 3382 */:
            case GLES10.GL_MAX_PROJECTION_STACK_DEPTH /* 3384 */:
            case GLES10.GL_MAX_TEXTURE_STACK_DEPTH /* 3385 */:
                return 1;
            case 3386:
                return 2;
            case 3408:
            case 3410:
            case 3411:
            case 3412:
            case 3413:
            case 3414:
            case 3415:
            case 33000:
            case 33001:
                return 1;
            case 33901:
            case 33902:
                return 2;
            case GLES10.GL_MAX_TEXTURE_UNITS /* 34018 */:
            case 34466:
                return 1;
            case 34467:
                int[] iArr = new int[1];
                this.mgl.glGetIntegerv(34466, iArr, 0);
                return iArr[0];
            case 35213:
            case 35214:
            case 35215:
                return 16;
            default:
                return 0;
        }
    }

    private String getLightModelPName(int i2) {
        if (i2 != 2898) {
            return i2 != 2899 ? getHex(i2) : "GL_LIGHT_MODEL_AMBIENT";
        }
        return "GL_LIGHT_MODEL_TWO_SIDE";
    }

    private int getLightModelParamCount(int i2) {
        if (i2 != 2898) {
            return i2 != 2899 ? 0 : 4;
        }
        return 1;
    }

    private String getLightName(int i2) {
        if (i2 < 16384 || i2 > 16391) {
            return getHex(i2);
        }
        return "GL_LIGHT" + Integer.toString(i2);
    }

    private String getLightPName(int i2) {
        switch (i2) {
            case GLES10.GL_AMBIENT /* 4608 */:
                return "GL_AMBIENT";
            case GLES10.GL_DIFFUSE /* 4609 */:
                return "GL_DIFFUSE";
            case GLES10.GL_SPECULAR /* 4610 */:
                return "GL_SPECULAR";
            case GLES10.GL_POSITION /* 4611 */:
                return "GL_POSITION";
            case GLES10.GL_SPOT_DIRECTION /* 4612 */:
                return "GL_SPOT_DIRECTION";
            case GLES10.GL_SPOT_EXPONENT /* 4613 */:
                return "GL_SPOT_EXPONENT";
            case GLES10.GL_SPOT_CUTOFF /* 4614 */:
                return "GL_SPOT_CUTOFF";
            case GLES10.GL_CONSTANT_ATTENUATION /* 4615 */:
                return "GL_CONSTANT_ATTENUATION";
            case GLES10.GL_LINEAR_ATTENUATION /* 4616 */:
                return "GL_LINEAR_ATTENUATION";
            case GLES10.GL_QUADRATIC_ATTENUATION /* 4617 */:
                return "GL_QUADRATIC_ATTENUATION";
            default:
                return getHex(i2);
        }
    }

    private int getLightParamCount(int i2) {
        switch (i2) {
            case GLES10.GL_AMBIENT /* 4608 */:
            case GLES10.GL_DIFFUSE /* 4609 */:
            case GLES10.GL_SPECULAR /* 4610 */:
            case GLES10.GL_POSITION /* 4611 */:
                return 4;
            case GLES10.GL_SPOT_DIRECTION /* 4612 */:
                return 3;
            case GLES10.GL_SPOT_EXPONENT /* 4613 */:
            case GLES10.GL_SPOT_CUTOFF /* 4614 */:
            case GLES10.GL_CONSTANT_ATTENUATION /* 4615 */:
            case GLES10.GL_LINEAR_ATTENUATION /* 4616 */:
            case GLES10.GL_QUADRATIC_ATTENUATION /* 4617 */:
                return 1;
            default:
                return 0;
        }
    }

    private String getMaterialPName(int i2) {
        switch (i2) {
            case GLES10.GL_AMBIENT /* 4608 */:
                return "GL_AMBIENT";
            case GLES10.GL_DIFFUSE /* 4609 */:
                return "GL_DIFFUSE";
            case GLES10.GL_SPECULAR /* 4610 */:
                return "GL_SPECULAR";
            default:
                switch (i2) {
                    case GLES10.GL_EMISSION /* 5632 */:
                        return "GL_EMISSION";
                    case GLES10.GL_SHININESS /* 5633 */:
                        return "GL_SHININESS";
                    case GLES10.GL_AMBIENT_AND_DIFFUSE /* 5634 */:
                        return "GL_AMBIENT_AND_DIFFUSE";
                    default:
                        return getHex(i2);
                }
        }
    }

    private int getMaterialParamCount(int i2) {
        switch (i2) {
            default:
                switch (i2) {
                    case GLES10.GL_EMISSION /* 5632 */:
                        break;
                    case GLES10.GL_SHININESS /* 5633 */:
                        return 1;
                    case GLES10.GL_AMBIENT_AND_DIFFUSE /* 5634 */:
                        return 4;
                    default:
                        return 0;
                }
            case GLES10.GL_AMBIENT /* 4608 */:
            case GLES10.GL_DIFFUSE /* 4609 */:
            case GLES10.GL_SPECULAR /* 4610 */:
                return 4;
        }
    }

    private String getMatrixMode(int i2) {
        switch (i2) {
            case GLES10.GL_MODELVIEW /* 5888 */:
                return "GL_MODELVIEW";
            case GLES10.GL_PROJECTION /* 5889 */:
                return "GL_PROJECTION";
            case 5890:
                return "GL_TEXTURE";
            default:
                return getHex(i2);
        }
    }

    private String getPointerTypeName(int i2) {
        if (i2 == 5126) {
            return "GL_FLOAT";
        }
        if (i2 == 5132) {
            return "GL_FIXED";
        }
        switch (i2) {
            case 5120:
                return "GL_BYTE";
            case 5121:
                return "GL_UNSIGNED_BYTE";
            case 5122:
                return "GL_SHORT";
            default:
                return getHex(i2);
        }
    }

    private String getShadeModel(int i2) {
        if (i2 != 7424) {
            return i2 != 7425 ? getHex(i2) : "GL_SMOOTH";
        }
        return "GL_FLAT";
    }

    private String getTextureEnvPName(int i2) {
        if (i2 != 8704) {
            return i2 != 8705 ? getHex(i2) : "GL_TEXTURE_ENV_COLOR";
        }
        return "GL_TEXTURE_ENV_MODE";
    }

    private int getTextureEnvParamCount(int i2) {
        if (i2 != 8704) {
            return i2 != 8705 ? 0 : 4;
        }
        return 1;
    }

    private String getTextureEnvParamName(float f2) {
        int i2 = (int) f2;
        if (f2 != i2) {
            return Float.toString(f2);
        }
        if (i2 == 260) {
            return "GL_ADD";
        }
        if (i2 == 3042) {
            return "GL_BLEND";
        }
        if (i2 == 7681) {
            return "GL_REPLACE";
        }
        if (i2 == 34160) {
            return "GL_COMBINE";
        }
        if (i2 != 8448) {
            return i2 != 8449 ? getHex(i2) : "GL_DECAL";
        }
        return "GL_MODULATE";
    }

    private String getTextureEnvTarget(int i2) {
        return i2 != 8960 ? getHex(i2) : "GL_TEXTURE_ENV";
    }

    private String getTexturePName(int i2) {
        if (i2 == 33169) {
            return "GL_GENERATE_MIPMAP";
        }
        if (i2 == 35741) {
            return "GL_TEXTURE_CROP_RECT_OES";
        }
        switch (i2) {
            case 10240:
                return "GL_TEXTURE_MAG_FILTER";
            case 10241:
                return "GL_TEXTURE_MIN_FILTER";
            case 10242:
                return "GL_TEXTURE_WRAP_S";
            case 10243:
                return "GL_TEXTURE_WRAP_T";
            default:
                return getHex(i2);
        }
    }

    private String getTextureParamName(float f2) {
        int i2 = (int) f2;
        if (f2 != i2) {
            return Float.toString(f2);
        }
        if (i2 == 9728) {
            return "GL_NEAREST";
        }
        if (i2 == 9729) {
            return "GL_LINEAR";
        }
        if (i2 == 10497) {
            return "GL_REPEAT";
        }
        if (i2 == 33071) {
            return "GL_CLAMP_TO_EDGE";
        }
        switch (i2) {
            case 9984:
                return "GL_NEAREST_MIPMAP_NEAREST";
            case 9985:
                return "GL_LINEAR_MIPMAP_NEAREST";
            case 9986:
                return "GL_NEAREST_MIPMAP_LINEAR";
            case 9987:
                return "GL_LINEAR_MIPMAP_LINEAR";
            default:
                return getHex(i2);
        }
    }

    private String getTextureTarget(int i2) {
        return i2 != 3553 ? getHex(i2) : "GL_TEXTURE_2D";
    }

    private void log(String str) {
        try {
            this.mLog.write(str);
        } catch (IOException unused) {
        }
    }

    private void logLine(String str) {
        log(str + '\n');
    }

    private void returns(String str) {
        log(c.k(") returns ", str, ";\n"));
        flush();
    }

    private void startLogIndices() {
        StringBuilder sb = new StringBuilder();
        this.mStringBuilder = sb;
        sb.append("\n");
        bindArrays();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ByteBuffer toByteBuffer(int i2, Buffer buffer) {
        ByteBuffer byteBufferOrder;
        int i3 = 0;
        boolean z2 = i2 < 0;
        if (buffer instanceof ByteBuffer) {
            ByteBuffer byteBuffer = (ByteBuffer) buffer;
            int iPosition = byteBuffer.position();
            if (z2) {
                i2 = byteBuffer.limit() - iPosition;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(byteBuffer.order());
            while (i3 < i2) {
                byteBufferOrder.put(byteBuffer.get());
                i3++;
            }
            byteBuffer.position(iPosition);
        } else if (buffer instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) buffer;
            int iPosition2 = charBuffer.position();
            if (z2) {
                i2 = (charBuffer.limit() - iPosition2) * 2;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(charBuffer.order());
            CharBuffer charBufferAsCharBuffer = byteBufferOrder.asCharBuffer();
            while (i3 < i2 / 2) {
                charBufferAsCharBuffer.put(charBuffer.get());
                i3++;
            }
            charBuffer.position(iPosition2);
        } else if (buffer instanceof ShortBuffer) {
            ShortBuffer shortBuffer = (ShortBuffer) buffer;
            int iPosition3 = shortBuffer.position();
            if (z2) {
                i2 = (shortBuffer.limit() - iPosition3) * 2;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(shortBuffer.order());
            ShortBuffer shortBufferAsShortBuffer = byteBufferOrder.asShortBuffer();
            while (i3 < i2 / 2) {
                shortBufferAsShortBuffer.put(shortBuffer.get());
                i3++;
            }
            shortBuffer.position(iPosition3);
        } else if (buffer instanceof IntBuffer) {
            IntBuffer intBuffer = (IntBuffer) buffer;
            int iPosition4 = intBuffer.position();
            if (z2) {
                i2 = (intBuffer.limit() - iPosition4) * 4;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(intBuffer.order());
            IntBuffer intBufferAsIntBuffer = byteBufferOrder.asIntBuffer();
            while (i3 < i2 / 4) {
                intBufferAsIntBuffer.put(intBuffer.get());
                i3++;
            }
            intBuffer.position(iPosition4);
        } else if (buffer instanceof FloatBuffer) {
            FloatBuffer floatBuffer = (FloatBuffer) buffer;
            int iPosition5 = floatBuffer.position();
            if (z2) {
                i2 = (floatBuffer.limit() - iPosition5) * 4;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(floatBuffer.order());
            FloatBuffer floatBufferAsFloatBuffer = byteBufferOrder.asFloatBuffer();
            while (i3 < i2 / 4) {
                floatBufferAsFloatBuffer.put(floatBuffer.get());
                i3++;
            }
            floatBuffer.position(iPosition5);
        } else if (buffer instanceof DoubleBuffer) {
            DoubleBuffer doubleBuffer = (DoubleBuffer) buffer;
            int iPosition6 = doubleBuffer.position();
            if (z2) {
                i2 = (doubleBuffer.limit() - iPosition6) * 8;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(doubleBuffer.order());
            DoubleBuffer doubleBufferAsDoubleBuffer = byteBufferOrder.asDoubleBuffer();
            while (i3 < i2 / 8) {
                doubleBufferAsDoubleBuffer.put(doubleBuffer.get());
                i3++;
            }
            doubleBuffer.position(iPosition6);
        } else {
            if (!(buffer instanceof LongBuffer)) {
                throw new RuntimeException("Unimplemented Buffer subclass.");
            }
            LongBuffer longBuffer = (LongBuffer) buffer;
            int iPosition7 = longBuffer.position();
            if (z2) {
                i2 = (longBuffer.limit() - iPosition7) * 8;
            }
            byteBufferOrder = ByteBuffer.allocate(i2).order(longBuffer.order());
            LongBuffer longBufferAsLongBuffer = byteBufferOrder.asLongBuffer();
            while (i3 < i2 / 8) {
                longBufferAsLongBuffer.put(longBuffer.get());
                i3++;
            }
            longBuffer.position(iPosition7);
        }
        byteBufferOrder.rewind();
        byteBufferOrder.order(ByteOrder.nativeOrder());
        return byteBufferOrder;
    }

    private char[] toCharIndices(int i2, int i3, Buffer buffer) {
        char[] cArr = new char[i2];
        if (i3 == 5121) {
            ByteBuffer byteBuffer = toByteBuffer(i2, buffer);
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset();
            for (int i4 = 0; i4 < i2; i4++) {
                cArr[i4] = (char) (bArrArray[iArrayOffset + i4] & 255);
            }
        } else if (i3 == 5123) {
            CharBuffer charBufferAsCharBuffer = buffer instanceof CharBuffer ? (CharBuffer) buffer : toByteBuffer(i2 * 2, buffer).asCharBuffer();
            int iPosition = charBufferAsCharBuffer.position();
            charBufferAsCharBuffer.position(0);
            charBufferAsCharBuffer.get(cArr);
            charBufferAsCharBuffer.position(iPosition);
        }
        return cArr;
    }

    private String toString(int i2, int i3, IntBuffer intBuffer) {
        StringBuilder sbR = c.r("{\n");
        for (int i4 = 0; i4 < i2; i4++) {
            sbR.append(" [" + i4 + "] = ");
            formattedAppend(sbR, intBuffer.get(i4), i3);
            sbR.append('\n');
        }
        sbR.append("}");
        return sbR.toString();
    }

    private void unbindArrays() {
        if (this.mColorArrayEnabled) {
            this.mColorPointer.unbindByteBuffer();
        }
        if (this.mNormalArrayEnabled) {
            this.mNormalPointer.unbindByteBuffer();
        }
        if (this.mTextureCoordArrayEnabled) {
            this.mTexCoordPointer.unbindByteBuffer();
        }
        if (this.mVertexArrayEnabled) {
            this.mVertexPointer.unbindByteBuffer();
        }
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glActiveTexture(int i2) {
        begin("glActiveTexture");
        arg("texture", i2);
        end();
        this.mgl.glActiveTexture(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glAlphaFunc(int i2, float f2) {
        begin("glAlphaFunc");
        arg("func", i2);
        arg("ref", f2);
        end();
        this.mgl.glAlphaFunc(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glAlphaFuncx(int i2, int i3) {
        begin("glAlphaFuncx");
        arg("func", i2);
        arg("ref", i3);
        end();
        this.mgl.glAlphaFuncx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glBindBuffer(int i2, int i3) {
        begin("glBindBuffer");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("buffer", i3);
        end();
        this.mgl11.glBindBuffer(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBindFramebufferOES(int i2, int i3) {
        begin("glBindFramebufferOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("framebuffer", i3);
        end();
        this.mgl11ExtensionPack.glBindFramebufferOES(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBindRenderbufferOES(int i2, int i3) {
        begin("glBindRenderbufferOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("renderbuffer", i3);
        end();
        this.mgl11ExtensionPack.glBindRenderbufferOES(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glBindTexture(int i2, int i3) {
        begin("glBindTexture");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("texture", i3);
        end();
        this.mgl.glBindTexture(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBlendEquation(int i2) {
        begin("glBlendEquation");
        arg("mode", i2);
        end();
        this.mgl11ExtensionPack.glBlendEquation(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBlendEquationSeparate(int i2, int i3) {
        begin("glBlendEquationSeparate");
        arg("modeRGB", i2);
        arg("modeAlpha", i3);
        end();
        this.mgl11ExtensionPack.glBlendEquationSeparate(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glBlendFunc(int i2, int i3) {
        begin("glBlendFunc");
        arg("sfactor", getFactor(i2));
        arg("dfactor", getFactor(i3));
        end();
        this.mgl.glBlendFunc(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBlendFuncSeparate(int i2, int i3, int i4, int i5) {
        begin("glBlendFuncSeparate");
        arg("srcRGB", i2);
        arg("dstRGB", i3);
        arg("srcAlpha", i4);
        arg("dstAlpha", i5);
        end();
        this.mgl11ExtensionPack.glBlendFuncSeparate(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glBufferData(int i2, int i3, Buffer buffer, int i4) {
        begin("glBufferData");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg(DumpHeapActivity.KEY_SIZE, i3);
        arg("data", buffer.toString());
        arg("usage", i4);
        end();
        this.mgl11.glBufferData(i2, i3, buffer, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glBufferSubData(int i2, int i3, int i4, Buffer buffer) {
        begin("glBufferSubData");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("offset", i3);
        arg(DumpHeapActivity.KEY_SIZE, i4);
        arg("data", buffer.toString());
        end();
        this.mgl11.glBufferSubData(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public int glCheckFramebufferStatusOES(int i2) {
        begin("glCheckFramebufferStatusOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        end();
        int iGlCheckFramebufferStatusOES = this.mgl11ExtensionPack.glCheckFramebufferStatusOES(i2);
        checkError();
        return iGlCheckFramebufferStatusOES;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClear(int i2) {
        begin("glClear");
        arg("mask", getClearBufferMask(i2));
        end();
        this.mgl.glClear(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearColor(float f2, float f3, float f4, float f5) {
        begin("glClearColor");
        arg("red", f2);
        arg("green", f3);
        arg("blue", f4);
        arg("alpha", f5);
        end();
        this.mgl.glClearColor(f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearColorx(int i2, int i3, int i4, int i5) {
        begin("glClearColor");
        arg("red", i2);
        arg("green", i3);
        arg("blue", i4);
        arg("alpha", i5);
        end();
        this.mgl.glClearColorx(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearDepthf(float f2) {
        begin("glClearDepthf");
        arg("depth", f2);
        end();
        this.mgl.glClearDepthf(f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearDepthx(int i2) {
        begin("glClearDepthx");
        arg("depth", i2);
        end();
        this.mgl.glClearDepthx(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearStencil(int i2) {
        begin("glClearStencil");
        arg("s", i2);
        end();
        this.mgl.glClearStencil(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClientActiveTexture(int i2) {
        begin("glClientActiveTexture");
        arg("texture", i2);
        end();
        this.mgl.glClientActiveTexture(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanef(int i2, float[] fArr, int i3) {
        begin("glClipPlanef");
        arg("plane", i2);
        arg("equation", 4, fArr, i3);
        arg("offset", i3);
        end();
        this.mgl11.glClipPlanef(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanex(int i2, int[] iArr, int i3) {
        begin("glClipPlanex");
        arg("plane", i2);
        arg("equation", 4, iArr, i3);
        arg("offset", i3);
        end();
        this.mgl11.glClipPlanex(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColor4f(float f2, float f3, float f4, float f5) {
        begin("glColor4f");
        arg("red", f2);
        arg("green", f3);
        arg("blue", f4);
        arg("alpha", f5);
        end();
        this.mgl.glColor4f(f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glColor4ub(byte b2, byte b3, byte b4, byte b5) {
        begin("glColor4ub");
        arg("red", (int) b2);
        arg("green", (int) b3);
        arg("blue", (int) b4);
        arg("alpha", (int) b5);
        end();
        this.mgl11.glColor4ub(b2, b3, b4, b5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColor4x(int i2, int i3, int i4, int i5) {
        begin("glColor4x");
        arg("red", i2);
        arg("green", i3);
        arg("blue", i4);
        arg("alpha", i5);
        end();
        this.mgl.glColor4x(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColorMask(boolean z2, boolean z3, boolean z4, boolean z5) {
        begin("glColorMask");
        arg("red", z2);
        arg("green", z3);
        arg("blue", z4);
        arg("alpha", z5);
        end();
        this.mgl.glColorMask(z2, z3, z4, z5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColorPointer(int i2, int i3, int i4, Buffer buffer) {
        begin("glColorPointer");
        argPointer(i2, i3, i4, buffer);
        end();
        this.mColorPointer = new PointerInfo(i2, i3, i4, buffer);
        this.mgl.glColorPointer(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCompressedTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        begin("glCompressedTexImage2D");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("level", i3);
        arg("internalformat", i4);
        arg("width", i5);
        arg("height", i6);
        arg("border", i7);
        arg("imageSize", i8);
        arg("data", buffer.toString());
        end();
        this.mgl.glCompressedTexImage2D(i2, i3, i4, i5, i6, i7, i8, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCompressedTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        begin("glCompressedTexSubImage2D");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("level", i3);
        arg("xoffset", i4);
        arg("yoffset", i5);
        arg("width", i6);
        arg("height", i7);
        arg("format", i8);
        arg("imageSize", i9);
        arg("data", buffer.toString());
        end();
        this.mgl.glCompressedTexSubImage2D(i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCopyTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        begin("glCopyTexImage2D");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("level", i3);
        arg("internalformat", i4);
        arg("x", i5);
        arg("y", i6);
        arg("width", i7);
        arg("height", i8);
        arg("border", i9);
        end();
        this.mgl.glCopyTexImage2D(i2, i3, i4, i5, i6, i7, i8, i9);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCopyTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        begin("glCopyTexSubImage2D");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("level", i3);
        arg("xoffset", i4);
        arg("yoffset", i5);
        arg("x", i6);
        arg("y", i7);
        arg("width", i8);
        arg("height", i9);
        end();
        this.mgl.glCopyTexSubImage2D(i2, i3, i4, i5, i6, i7, i8, i9);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCullFace(int i2) {
        begin("glCullFace");
        arg("mode", i2);
        end();
        this.mgl.glCullFace(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glCurrentPaletteMatrixOES(int i2) {
        begin("glCurrentPaletteMatrixOES");
        arg("matrixpaletteindex", i2);
        end();
        this.mgl11Ext.glCurrentPaletteMatrixOES(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glDeleteBuffers(int i2, int[] iArr, int i3) {
        begin("glDeleteBuffers");
        arg("n", i2);
        arg("buffers", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glDeleteBuffers(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteFramebuffersOES(int i2, int[] iArr, int i3) {
        begin("glDeleteFramebuffersOES");
        arg("n", i2);
        arg("framebuffers", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11ExtensionPack.glDeleteFramebuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteRenderbuffersOES(int i2, int[] iArr, int i3) {
        begin("glDeleteRenderbuffersOES");
        arg("n", i2);
        arg("renderbuffers", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11ExtensionPack.glDeleteRenderbuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDeleteTextures(int i2, int[] iArr, int i3) {
        begin("glDeleteTextures");
        arg("n", i2);
        arg("textures", i2, iArr, i3);
        arg("offset", i3);
        end();
        this.mgl.glDeleteTextures(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthFunc(int i2) {
        begin("glDepthFunc");
        arg("func", i2);
        end();
        this.mgl.glDepthFunc(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthMask(boolean z2) {
        begin("glDepthMask");
        arg("flag", z2);
        end();
        this.mgl.glDepthMask(z2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthRangef(float f2, float f3) {
        begin("glDepthRangef");
        arg("near", f2);
        arg("far", f3);
        end();
        this.mgl.glDepthRangef(f2, f3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthRangex(int i2, int i3) {
        begin("glDepthRangex");
        arg("near", i2);
        arg("far", i3);
        end();
        this.mgl.glDepthRangex(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDisable(int i2) {
        begin("glDisable");
        arg("cap", getCap(i2));
        end();
        this.mgl.glDisable(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDisableClientState(int i2) {
        begin("glDisableClientState");
        arg("array", getClientState(i2));
        end();
        switch (i2) {
            case 32884:
                this.mVertexArrayEnabled = false;
                break;
            case GLES10.GL_NORMAL_ARRAY /* 32885 */:
                this.mNormalArrayEnabled = false;
                break;
            case GLES10.GL_COLOR_ARRAY /* 32886 */:
                this.mColorArrayEnabled = false;
                break;
            case GLES10.GL_TEXTURE_COORD_ARRAY /* 32888 */:
                this.mTextureCoordArrayEnabled = false;
                break;
        }
        this.mgl.glDisableClientState(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDrawArrays(int i2, int i3, int i4) {
        begin("glDrawArrays");
        arg("mode", i2);
        arg("first", i3);
        arg("count", i4);
        startLogIndices();
        for (int i5 = 0; i5 < i4; i5++) {
            doElement(this.mStringBuilder, i5, i3 + i5);
        }
        endLogIndices();
        end();
        this.mgl.glDrawArrays(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDrawElements(int i2, int i3, int i4, Buffer buffer) {
        begin("glDrawElements");
        arg("mode", getBeginMode(i2));
        arg("count", i3);
        arg("type", getIndexType(i4));
        char[] charIndices = toCharIndices(i3, i4, buffer);
        int length = charIndices.length;
        startLogIndices();
        for (int i5 = 0; i5 < length; i5++) {
            doElement(this.mStringBuilder, i5, charIndices[i5]);
        }
        endLogIndices();
        end();
        this.mgl.glDrawElements(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexfOES(float f2, float f3, float f4, float f5, float f6) {
        begin("glDrawTexfOES");
        arg("x", f2);
        arg("y", f3);
        arg("z", f4);
        arg("width", f5);
        arg("height", f6);
        end();
        this.mgl11Ext.glDrawTexfOES(f2, f3, f4, f5, f6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexfvOES(float[] fArr, int i2) {
        begin("glDrawTexfvOES");
        arg("coords", 5, fArr, i2);
        arg("offset", i2);
        end();
        this.mgl11Ext.glDrawTexfvOES(fArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexiOES(int i2, int i3, int i4, int i5, int i6) {
        begin("glDrawTexiOES");
        arg("x", i2);
        arg("y", i3);
        arg("z", i4);
        arg("width", i5);
        arg("height", i6);
        end();
        this.mgl11Ext.glDrawTexiOES(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexivOES(int[] iArr, int i2) {
        begin("glDrawTexivOES");
        arg("coords", 5, iArr, i2);
        arg("offset", i2);
        end();
        this.mgl11Ext.glDrawTexivOES(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexsOES(short s2, short s3, short s4, short s5, short s6) {
        begin("glDrawTexsOES");
        arg("x", (int) s2);
        arg("y", (int) s3);
        arg("z", (int) s4);
        arg("width", (int) s5);
        arg("height", (int) s6);
        end();
        this.mgl11Ext.glDrawTexsOES(s2, s3, s4, s5, s6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexsvOES(short[] sArr, int i2) {
        begin("glDrawTexsvOES");
        arg("coords", 5, sArr, i2);
        arg("offset", i2);
        end();
        this.mgl11Ext.glDrawTexsvOES(sArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexxOES(int i2, int i3, int i4, int i5, int i6) {
        begin("glDrawTexxOES");
        arg("x", i2);
        arg("y", i3);
        arg("z", i4);
        arg("width", i5);
        arg("height", i6);
        end();
        this.mgl11Ext.glDrawTexxOES(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexxvOES(int[] iArr, int i2) {
        begin("glDrawTexxvOES");
        arg("coords", 5, iArr, i2);
        arg("offset", i2);
        end();
        this.mgl11Ext.glDrawTexxvOES(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glEnable(int i2) {
        begin("glEnable");
        arg("cap", getCap(i2));
        end();
        this.mgl.glEnable(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glEnableClientState(int i2) {
        begin("glEnableClientState");
        arg("array", getClientState(i2));
        end();
        switch (i2) {
            case 32884:
                this.mVertexArrayEnabled = true;
                break;
            case GLES10.GL_NORMAL_ARRAY /* 32885 */:
                this.mNormalArrayEnabled = true;
                break;
            case GLES10.GL_COLOR_ARRAY /* 32886 */:
                this.mColorArrayEnabled = true;
                break;
            case GLES10.GL_TEXTURE_COORD_ARRAY /* 32888 */:
                this.mTextureCoordArrayEnabled = true;
                break;
        }
        this.mgl.glEnableClientState(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFinish() {
        begin("glFinish");
        end();
        this.mgl.glFinish();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFlush() {
        begin("glFlush");
        end();
        this.mgl.glFlush();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogf(int i2, float f2) {
        begin("glFogf");
        arg("pname", i2);
        arg("param", f2);
        end();
        this.mgl.glFogf(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogfv(int i2, float[] fArr, int i3) {
        begin("glFogfv");
        arg("pname", getFogPName(i2));
        arg("params", getFogParamCount(i2), fArr, i3);
        arg("offset", i3);
        end();
        this.mgl.glFogfv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogx(int i2, int i3) {
        begin("glFogx");
        arg("pname", getFogPName(i2));
        arg("param", i3);
        end();
        this.mgl.glFogx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogxv(int i2, int[] iArr, int i3) {
        begin("glFogxv");
        arg("pname", getFogPName(i2));
        arg("params", getFogParamCount(i2), iArr, i3);
        arg("offset", i3);
        end();
        this.mgl.glFogxv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glFramebufferRenderbufferOES(int i2, int i3, int i4, int i5) {
        begin("glFramebufferRenderbufferOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("attachment", i3);
        arg("renderbuffertarget", i4);
        arg("renderbuffer", i5);
        end();
        this.mgl11ExtensionPack.glFramebufferRenderbufferOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glFramebufferTexture2DOES(int i2, int i3, int i4, int i5, int i6) {
        begin("glFramebufferTexture2DOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("attachment", i3);
        arg("textarget", i4);
        arg("texture", i5);
        arg("level", i6);
        end();
        this.mgl11ExtensionPack.glFramebufferTexture2DOES(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFrontFace(int i2) {
        begin("glFrontFace");
        arg("mode", i2);
        end();
        this.mgl.glFrontFace(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFrustumf(float f2, float f3, float f4, float f5, float f6, float f7) {
        begin("glFrustumf");
        arg("left", f2);
        arg("right", f3);
        arg("bottom", f4);
        arg("top", f5);
        arg("near", f6);
        arg("far", f7);
        end();
        this.mgl.glFrustumf(f2, f3, f4, f5, f6, f7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFrustumx(int i2, int i3, int i4, int i5, int i6, int i7) {
        begin("glFrustumx");
        arg("left", i2);
        arg("right", i3);
        arg("bottom", i4);
        arg("top", i5);
        arg("near", i6);
        arg("far", i7);
        end();
        this.mgl.glFrustumx(i2, i3, i4, i5, i6, i7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGenBuffers(int i2, int[] iArr, int i3) {
        begin("glGenBuffers");
        arg("n", i2);
        arg("buffers", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glGenBuffers(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenFramebuffersOES(int i2, int[] iArr, int i3) {
        begin("glGenFramebuffersOES");
        arg("n", i2);
        arg("framebuffers", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11ExtensionPack.glGenFramebuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenRenderbuffersOES(int i2, int[] iArr, int i3) {
        begin("glGenRenderbuffersOES");
        arg("n", i2);
        arg("renderbuffers", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11ExtensionPack.glGenRenderbuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGenTextures(int i2, int[] iArr, int i3) {
        begin("glGenTextures");
        arg("n", i2);
        arg("textures", Arrays.toString(iArr));
        arg("offset", i3);
        this.mgl.glGenTextures(i2, iArr, i3);
        returns(toString(i2, 0, iArr, i3));
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenerateMipmapOES(int i2) {
        begin("glGenerateMipmapOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        end();
        this.mgl11ExtensionPack.glGenerateMipmapOES(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBooleanv(int i2, boolean[] zArr, int i3) {
        begin("glGetBooleanv");
        arg("pname", i2);
        arg("params", zArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glGetBooleanv(i2, zArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBufferParameteriv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetBufferParameteriv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetBufferParameteriv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanef(int i2, float[] fArr, int i3) {
        begin("glGetClipPlanef");
        arg("pname", i2);
        arg("eqn", fArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glGetClipPlanef(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanex(int i2, int[] iArr, int i3) {
        begin("glGetClipPlanex");
        arg("pname", i2);
        arg("eqn", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glGetClipPlanex(i2, iArr, i3);
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public int glGetError() {
        begin("glGetError");
        int iGlGetError = this.mgl.glGetError();
        returns(iGlGetError);
        return iGlGetError;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFixedv(int i2, int[] iArr, int i3) {
        begin("glGetFixedv");
        arg("pname", i2);
        arg("params", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glGetFixedv(i2, iArr, i3);
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFloatv(int i2, float[] fArr, int i3) {
        begin("glGetFloatv");
        arg("pname", i2);
        arg("params", fArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glGetFloatv(i2, fArr, i3);
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, int[] iArr, int i5) {
        begin("glGetFramebufferAttachmentParameterivOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("attachment", i3);
        arg("pname", i4);
        arg("params", iArr.toString());
        arg("offset", i5);
        end();
        this.mgl11ExtensionPack.glGetFramebufferAttachmentParameterivOES(i2, i3, i4, iArr, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGetIntegerv(int i2, int[] iArr, int i3) {
        begin("glGetIntegerv");
        arg("pname", getIntegerStateName(i2));
        arg("params", Arrays.toString(iArr));
        arg("offset", i3);
        this.mgl.glGetIntegerv(i2, iArr, i3);
        returns(toString(getIntegerStateSize(i2), getIntegerStateFormat(i2), iArr, i3));
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightfv(int i2, int i3, float[] fArr, int i4) {
        begin("glGetLightfv");
        arg("light", i2);
        arg("pname", i3);
        arg("params", fArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetLightfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightxv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetLightxv");
        arg("light", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetLightxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialfv(int i2, int i3, float[] fArr, int i4) {
        begin("glGetMaterialfv");
        arg("face", i2);
        arg("pname", i3);
        arg("params", fArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetMaterialfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialxv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetMaterialxv");
        arg("face", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetMaterialxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetPointerv(int i2, Buffer[] bufferArr) {
        begin("glGetPointerv");
        arg("pname", i2);
        arg("params", bufferArr.toString());
        end();
        this.mgl11.glGetPointerv(i2, bufferArr);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetRenderbufferParameterivOES(int i2, int i3, int[] iArr, int i4) {
        begin("glGetRenderbufferParameterivOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glGetRenderbufferParameterivOES(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public String glGetString(int i2) {
        begin("glGetString");
        arg("name", i2);
        String strGlGetString = this.mgl.glGetString(i2);
        returns(strGlGetString);
        checkError();
        return strGlGetString;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnviv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetTexEnviv");
        arg("env", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetTexEnviv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnvxv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetTexEnviv");
        arg("env", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetTexEnviv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenfv(int i2, int i3, float[] fArr, int i4) {
        begin("glGetTexGenfv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", fArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glGetTexGenfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGeniv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetTexGeniv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glGetTexGeniv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenxv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetTexGenxv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glGetTexGenxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterfv(int i2, int i3, float[] fArr, int i4) {
        begin("glGetTexParameterfv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", fArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetTexParameterfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameteriv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetTexParameteriv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetTexEnviv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterxv(int i2, int i3, int[] iArr, int i4) {
        begin("glGetTexParameterxv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glGetTexParameterxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glHint(int i2, int i3) {
        begin("glHint");
        arg(TypedValues.AttributesType.S_TARGET, getHintTarget(i2));
        arg("mode", getHintMode(i3));
        end();
        this.mgl.glHint(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public boolean glIsBuffer(int i2) {
        begin("glIsBuffer");
        arg("buffer", i2);
        end();
        boolean zGlIsBuffer = this.mgl11.glIsBuffer(i2);
        checkError();
        return zGlIsBuffer;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public boolean glIsEnabled(int i2) {
        begin("glIsEnabled");
        arg("cap", i2);
        end();
        boolean zGlIsEnabled = this.mgl11.glIsEnabled(i2);
        checkError();
        return zGlIsEnabled;
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public boolean glIsFramebufferOES(int i2) {
        begin("glIsFramebufferOES");
        arg("framebuffer", i2);
        end();
        boolean zGlIsFramebufferOES = this.mgl11ExtensionPack.glIsFramebufferOES(i2);
        checkError();
        return zGlIsFramebufferOES;
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public boolean glIsRenderbufferOES(int i2) {
        begin("glIsRenderbufferOES");
        arg("renderbuffer", i2);
        end();
        this.mgl11ExtensionPack.glIsRenderbufferOES(i2);
        checkError();
        return false;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public boolean glIsTexture(int i2) {
        begin("glIsTexture");
        arg("texture", i2);
        end();
        boolean zGlIsTexture = this.mgl11.glIsTexture(i2);
        checkError();
        return zGlIsTexture;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelf(int i2, float f2) {
        begin("glLightModelf");
        arg("pname", getLightModelPName(i2));
        arg("param", f2);
        end();
        this.mgl.glLightModelf(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelfv(int i2, float[] fArr, int i3) {
        begin("glLightModelfv");
        arg("pname", getLightModelPName(i2));
        arg("params", getLightModelParamCount(i2), fArr, i3);
        arg("offset", i3);
        end();
        this.mgl.glLightModelfv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelx(int i2, int i3) {
        begin("glLightModelx");
        arg("pname", getLightModelPName(i2));
        arg("param", i3);
        end();
        this.mgl.glLightModelx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelxv(int i2, int[] iArr, int i3) {
        begin("glLightModelxv");
        arg("pname", getLightModelPName(i2));
        arg("params", getLightModelParamCount(i2), iArr, i3);
        arg("offset", i3);
        end();
        this.mgl.glLightModelxv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightf(int i2, int i3, float f2) {
        begin("glLightf");
        arg("light", getLightName(i2));
        arg("pname", getLightPName(i3));
        arg("param", f2);
        end();
        this.mgl.glLightf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightfv(int i2, int i3, float[] fArr, int i4) {
        begin("glLightfv");
        arg("light", getLightName(i2));
        arg("pname", getLightPName(i3));
        arg("params", getLightParamCount(i3), fArr, i4);
        arg("offset", i4);
        end();
        this.mgl.glLightfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightx(int i2, int i3, int i4) {
        begin("glLightx");
        arg("light", getLightName(i2));
        arg("pname", getLightPName(i3));
        arg("param", i4);
        end();
        this.mgl.glLightx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightxv(int i2, int i3, int[] iArr, int i4) {
        begin("glLightxv");
        arg("light", getLightName(i2));
        arg("pname", getLightPName(i3));
        arg("params", getLightParamCount(i3), iArr, i4);
        arg("offset", i4);
        end();
        this.mgl.glLightxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLineWidth(float f2) {
        begin("glLineWidth");
        arg("width", f2);
        end();
        this.mgl.glLineWidth(f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLineWidthx(int i2) {
        begin("glLineWidthx");
        arg("width", i2);
        end();
        this.mgl.glLineWidthx(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadIdentity() {
        begin("glLoadIdentity");
        end();
        this.mgl.glLoadIdentity();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixf(float[] fArr, int i2) {
        begin("glLoadMatrixf");
        arg("m", 16, fArr, i2);
        arg("offset", i2);
        end();
        this.mgl.glLoadMatrixf(fArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixx(int[] iArr, int i2) {
        begin("glLoadMatrixx");
        arg("m", 16, iArr, i2);
        arg("offset", i2);
        end();
        this.mgl.glLoadMatrixx(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glLoadPaletteFromModelViewMatrixOES() {
        begin("glLoadPaletteFromModelViewMatrixOES");
        end();
        this.mgl11Ext.glLoadPaletteFromModelViewMatrixOES();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLogicOp(int i2) {
        begin("glLogicOp");
        arg("opcode", i2);
        end();
        this.mgl.glLogicOp(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialf(int i2, int i3, float f2) {
        begin("glMaterialf");
        arg("face", getFaceName(i2));
        arg("pname", getMaterialPName(i3));
        arg("param", f2);
        end();
        this.mgl.glMaterialf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialfv(int i2, int i3, float[] fArr, int i4) {
        begin("glMaterialfv");
        arg("face", getFaceName(i2));
        arg("pname", getMaterialPName(i3));
        arg("params", getMaterialParamCount(i3), fArr, i4);
        arg("offset", i4);
        end();
        this.mgl.glMaterialfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialx(int i2, int i3, int i4) {
        begin("glMaterialx");
        arg("face", getFaceName(i2));
        arg("pname", getMaterialPName(i3));
        arg("param", i4);
        end();
        this.mgl.glMaterialx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialxv(int i2, int i3, int[] iArr, int i4) {
        begin("glMaterialxv");
        arg("face", getFaceName(i2));
        arg("pname", getMaterialPName(i3));
        arg("params", getMaterialParamCount(i3), iArr, i4);
        arg("offset", i4);
        end();
        this.mgl.glMaterialxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glMatrixIndexPointerOES(int i2, int i3, int i4, Buffer buffer) {
        begin("glMatrixIndexPointerOES");
        argPointer(i2, i3, i4, buffer);
        end();
        this.mgl11Ext.glMatrixIndexPointerOES(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMatrixMode(int i2) {
        begin("glMatrixMode");
        arg("mode", getMatrixMode(i2));
        end();
        this.mgl.glMatrixMode(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixf(float[] fArr, int i2) {
        begin("glMultMatrixf");
        arg("m", 16, fArr, i2);
        arg("offset", i2);
        end();
        this.mgl.glMultMatrixf(fArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixx(int[] iArr, int i2) {
        begin("glMultMatrixx");
        arg("m", 16, iArr, i2);
        arg("offset", i2);
        end();
        this.mgl.glMultMatrixx(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultiTexCoord4f(int i2, float f2, float f3, float f4, float f5) {
        begin("glMultiTexCoord4f");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("s", f2);
        arg("t", f3);
        arg(FullBackup.ROOT_TREE_TOKEN, f4);
        arg("q", f5);
        end();
        this.mgl.glMultiTexCoord4f(i2, f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultiTexCoord4x(int i2, int i3, int i4, int i5, int i6) {
        begin("glMultiTexCoord4x");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("s", i3);
        arg("t", i4);
        arg(FullBackup.ROOT_TREE_TOKEN, i5);
        arg("q", i6);
        end();
        this.mgl.glMultiTexCoord4x(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glNormal3f(float f2, float f3, float f4) {
        begin("glNormal3f");
        arg("nx", f2);
        arg("ny", f3);
        arg("nz", f4);
        end();
        this.mgl.glNormal3f(f2, f3, f4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glNormal3x(int i2, int i3, int i4) {
        begin("glNormal3x");
        arg("nx", i2);
        arg("ny", i3);
        arg("nz", i4);
        end();
        this.mgl.glNormal3x(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glNormalPointer(int i2, int i3, Buffer buffer) {
        begin("glNormalPointer");
        arg("type", i2);
        arg(MediaFormat.KEY_STRIDE, i3);
        arg("pointer", buffer.toString());
        end();
        this.mNormalPointer = new PointerInfo(3, i2, i3, buffer);
        this.mgl.glNormalPointer(i2, i3, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glOrthof(float f2, float f3, float f4, float f5, float f6, float f7) {
        begin("glOrthof");
        arg("left", f2);
        arg("right", f3);
        arg("bottom", f4);
        arg("top", f5);
        arg("near", f6);
        arg("far", f7);
        end();
        this.mgl.glOrthof(f2, f3, f4, f5, f6, f7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glOrthox(int i2, int i3, int i4, int i5, int i6, int i7) {
        begin("glOrthox");
        arg("left", i2);
        arg("right", i3);
        arg("bottom", i4);
        arg("top", i5);
        arg("near", i6);
        arg("far", i7);
        end();
        this.mgl.glOrthox(i2, i3, i4, i5, i6, i7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPixelStorei(int i2, int i3) {
        begin("glPixelStorei");
        arg("pname", i2);
        arg("param", i3);
        end();
        this.mgl.glPixelStorei(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterf(int i2, float f2) {
        begin("glPointParameterf");
        arg("pname", i2);
        arg("param", f2);
        end();
        this.mgl11.glPointParameterf(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterfv(int i2, float[] fArr, int i3) {
        begin("glPointParameterfv");
        arg("pname", i2);
        arg("params", fArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glPointParameterfv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterx(int i2, int i3) {
        begin("glPointParameterfv");
        arg("pname", i2);
        arg("param", i3);
        end();
        this.mgl11.glPointParameterx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterxv(int i2, int[] iArr, int i3) {
        begin("glPointParameterxv");
        arg("pname", i2);
        arg("params", iArr.toString());
        arg("offset", i3);
        end();
        this.mgl11.glPointParameterxv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPointSize(float f2) {
        begin("glPointSize");
        arg(DumpHeapActivity.KEY_SIZE, f2);
        end();
        this.mgl.glPointSize(f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointSizePointerOES(int i2, int i3, Buffer buffer) {
        begin("glPointSizePointerOES");
        arg("type", i2);
        arg(MediaFormat.KEY_STRIDE, i3);
        arg("params", buffer.toString());
        end();
        this.mgl11.glPointSizePointerOES(i2, i3, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPointSizex(int i2) {
        begin("glPointSizex");
        arg(DumpHeapActivity.KEY_SIZE, i2);
        end();
        this.mgl.glPointSizex(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPolygonOffset(float f2, float f3) {
        begin("glPolygonOffset");
        arg("factor", f2);
        arg("units", f3);
        end();
        this.mgl.glPolygonOffset(f2, f3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPolygonOffsetx(int i2, int i3) {
        begin("glPolygonOffsetx");
        arg("factor", i2);
        arg("units", i3);
        end();
        this.mgl.glPolygonOffsetx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPopMatrix() {
        begin("glPopMatrix");
        end();
        this.mgl.glPopMatrix();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPushMatrix() {
        begin("glPushMatrix");
        end();
        this.mgl.glPushMatrix();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.b
    public int glQueryMatrixxOES(int[] iArr, int i2, int[] iArr2, int i3) {
        begin("glQueryMatrixxOES");
        arg("mantissa", Arrays.toString(iArr));
        arg("exponent", Arrays.toString(iArr2));
        end();
        int iGlQueryMatrixxOES = this.mgl10Ext.glQueryMatrixxOES(iArr, i2, iArr2, i3);
        returns(toString(16, 2, iArr, i2));
        returns(toString(16, 0, iArr2, i3));
        checkError();
        return iGlQueryMatrixxOES;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glReadPixels(int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer) {
        begin("glReadPixels");
        arg("x", i2);
        arg("y", i3);
        arg("width", i4);
        arg("height", i5);
        arg("format", i6);
        arg("type", i7);
        arg("pixels", buffer.toString());
        end();
        this.mgl.glReadPixels(i2, i3, i4, i5, i6, i7, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glRenderbufferStorageOES(int i2, int i3, int i4, int i5) {
        begin("glRenderbufferStorageOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("internalformat", i3);
        arg("width", i4);
        arg("height", i5);
        end();
        this.mgl11ExtensionPack.glRenderbufferStorageOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glRotatef(float f2, float f3, float f4, float f5) {
        begin("glRotatef");
        arg("angle", f2);
        arg("x", f3);
        arg("y", f4);
        arg("z", f5);
        end();
        this.mgl.glRotatef(f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glRotatex(int i2, int i3, int i4, int i5) {
        begin("glRotatex");
        arg("angle", i2);
        arg("x", i3);
        arg("y", i4);
        arg("z", i5);
        end();
        this.mgl.glRotatex(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glSampleCoverage(float f2, boolean z2) {
        begin("glSampleCoveragex");
        arg("value", f2);
        arg("invert", z2);
        end();
        this.mgl.glSampleCoverage(f2, z2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glSampleCoveragex(int i2, boolean z2) {
        begin("glSampleCoveragex");
        arg("value", i2);
        arg("invert", z2);
        end();
        this.mgl.glSampleCoveragex(i2, z2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glScalef(float f2, float f3, float f4) {
        begin("glScalef");
        arg("x", f2);
        arg("y", f3);
        arg("z", f4);
        end();
        this.mgl.glScalef(f2, f3, f4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glScalex(int i2, int i3, int i4) {
        begin("glScalex");
        arg("x", i2);
        arg("y", i3);
        arg("z", i4);
        end();
        this.mgl.glScalex(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glScissor(int i2, int i3, int i4, int i5) {
        begin("glScissor");
        arg("x", i2);
        arg("y", i3);
        arg("width", i4);
        arg("height", i5);
        end();
        this.mgl.glScissor(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glShadeModel(int i2) {
        begin("glShadeModel");
        arg("mode", getShadeModel(i2));
        end();
        this.mgl.glShadeModel(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glStencilFunc(int i2, int i3, int i4) {
        begin("glStencilFunc");
        arg("func", i2);
        arg("ref", i3);
        arg("mask", i4);
        end();
        this.mgl.glStencilFunc(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glStencilMask(int i2) {
        begin("glStencilMask");
        arg("mask", i2);
        end();
        this.mgl.glStencilMask(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glStencilOp(int i2, int i3, int i4) {
        begin("glStencilOp");
        arg("fail", i2);
        arg("zfail", i3);
        arg("zpass", i4);
        end();
        this.mgl.glStencilOp(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexCoordPointer(int i2, int i3, int i4, Buffer buffer) {
        begin("glTexCoordPointer");
        argPointer(i2, i3, i4, buffer);
        end();
        this.mTexCoordPointer = new PointerInfo(i2, i3, i4, buffer);
        this.mgl.glTexCoordPointer(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvf(int i2, int i3, float f2) {
        begin("glTexEnvf");
        arg(TypedValues.AttributesType.S_TARGET, getTextureEnvTarget(i2));
        arg("pname", getTextureEnvPName(i3));
        arg("param", getTextureEnvParamName(f2));
        end();
        this.mgl.glTexEnvf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvfv(int i2, int i3, float[] fArr, int i4) {
        begin("glTexEnvfv");
        arg(TypedValues.AttributesType.S_TARGET, getTextureEnvTarget(i2));
        arg("pname", getTextureEnvPName(i3));
        arg("params", getTextureEnvParamCount(i3), fArr, i4);
        arg("offset", i4);
        end();
        this.mgl.glTexEnvfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexEnvi(int i2, int i3, int i4) {
        begin("glTexEnvi");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("param", i4);
        end();
        this.mgl11.glTexEnvi(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexEnviv(int i2, int i3, int[] iArr, int i4) {
        begin("glTexEnviv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glTexEnviv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvx(int i2, int i3, int i4) {
        begin("glTexEnvx");
        arg(TypedValues.AttributesType.S_TARGET, getTextureEnvTarget(i2));
        arg("pname", getTextureEnvPName(i3));
        arg("param", i4);
        end();
        this.mgl.glTexEnvx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvxv(int i2, int i3, int[] iArr, int i4) {
        begin("glTexEnvxv");
        arg(TypedValues.AttributesType.S_TARGET, getTextureEnvTarget(i2));
        arg("pname", getTextureEnvPName(i3));
        arg("params", getTextureEnvParamCount(i3), iArr, i4);
        arg("offset", i4);
        end();
        this.mgl.glTexEnvxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenf(int i2, int i3, float f2) {
        begin("glTexGenf");
        arg("coord", i2);
        arg("pname", i3);
        arg("param", f2);
        end();
        this.mgl11ExtensionPack.glTexGenf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenfv(int i2, int i3, float[] fArr, int i4) {
        begin("glTexGenfv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", fArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glTexGenfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGeni(int i2, int i3, int i4) {
        begin("glTexGeni");
        arg("coord", i2);
        arg("pname", i3);
        arg("param", i4);
        end();
        this.mgl11ExtensionPack.glTexGeni(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGeniv(int i2, int i3, int[] iArr, int i4) {
        begin("glTexGeniv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glTexGeniv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenx(int i2, int i3, int i4) {
        begin("glTexGenx");
        arg("coord", i2);
        arg("pname", i3);
        arg("param", i4);
        end();
        this.mgl11ExtensionPack.glTexGenx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenxv(int i2, int i3, int[] iArr, int i4) {
        begin("glTexGenxv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11ExtensionPack.glTexGenxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        begin("glTexImage2D");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("level", i3);
        arg("internalformat", i4);
        arg("width", i5);
        arg("height", i6);
        arg("border", i7);
        arg("format", i8);
        arg("type", i9);
        arg("pixels", buffer.toString());
        end();
        this.mgl.glTexImage2D(i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexParameterf(int i2, int i3, float f2) {
        begin("glTexParameterf");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("pname", getTexturePName(i3));
        arg("param", getTextureParamName(f2));
        end();
        this.mgl.glTexParameterf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterfv(int i2, int i3, float[] fArr, int i4) {
        begin("glTexParameterfv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", fArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glTexParameterfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameteri(int i2, int i3, int i4) {
        begin("glTexParameterxv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("param", i4);
        end();
        this.mgl11.glTexParameteri(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameteriv(int i2, int i3, int[] iArr, int i4) {
        begin("glTexParameteriv");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("pname", getTexturePName(i3));
        arg("params", 4, iArr, i4);
        end();
        this.mgl11.glTexParameteriv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexParameterx(int i2, int i3, int i4) {
        begin("glTexParameterx");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("pname", getTexturePName(i3));
        arg("param", i4);
        end();
        this.mgl.glTexParameterx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterxv(int i2, int i3, int[] iArr, int i4) {
        begin("glTexParameterxv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", iArr.toString());
        arg("offset", i4);
        end();
        this.mgl11.glTexParameterxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        begin("glTexSubImage2D");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("level", i3);
        arg("xoffset", i4);
        arg("yoffset", i5);
        arg("width", i6);
        arg("height", i7);
        arg("format", i8);
        arg("type", i9);
        arg("pixels", buffer.toString());
        end();
        this.mgl.glTexSubImage2D(i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTranslatef(float f2, float f3, float f4) {
        begin("glTranslatef");
        arg("x", f2);
        arg("y", f3);
        arg("z", f4);
        end();
        this.mgl.glTranslatef(f2, f3, f4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTranslatex(int i2, int i3, int i4) {
        begin("glTranslatex");
        arg("x", i2);
        arg("y", i3);
        arg("z", i4);
        end();
        this.mgl.glTranslatex(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glVertexPointer(int i2, int i3, int i4, Buffer buffer) {
        begin("glVertexPointer");
        argPointer(i2, i3, i4, buffer);
        end();
        this.mVertexPointer = new PointerInfo(i2, i3, i4, buffer);
        this.mgl.glVertexPointer(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glViewport(int i2, int i3, int i4, int i5) {
        begin("glViewport");
        arg("x", i2);
        arg("y", i3);
        arg("width", i4);
        arg("height", i5);
        end();
        this.mgl.glViewport(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glWeightPointerOES(int i2, int i3, int i4, Buffer buffer) {
        begin("glWeightPointerOES");
        argPointer(i2, i3, i4, buffer);
        end();
        this.mgl11Ext.glWeightPointerOES(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glMatrixIndexPointerOES(int i2, int i3, int i4, int i5) {
        begin("glMatrixIndexPointerOES");
        arg(DumpHeapActivity.KEY_SIZE, i2);
        arg("type", i3);
        arg(MediaFormat.KEY_STRIDE, i4);
        arg("offset", i5);
        end();
        this.mgl11Ext.glMatrixIndexPointerOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glWeightPointerOES(int i2, int i3, int i4, int i5) {
        begin("glWeightPointerOES");
        arg(DumpHeapActivity.KEY_SIZE, i2);
        arg("type", i3);
        arg(MediaFormat.KEY_STRIDE, i4);
        arg("offset", i5);
        end();
        this.mgl11Ext.glWeightPointerOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glColorPointer(int i2, int i3, int i4, int i5) {
        begin("glColorPointer");
        arg(DumpHeapActivity.KEY_SIZE, i2);
        arg("type", i3);
        arg(MediaFormat.KEY_STRIDE, i4);
        arg("offset", i5);
        end();
        this.mgl11.glColorPointer(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexfvOES(FloatBuffer floatBuffer) {
        begin("glDrawTexfvOES");
        arg("coords", 5, floatBuffer);
        end();
        this.mgl11Ext.glDrawTexfvOES(floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexivOES(IntBuffer intBuffer) {
        begin("glDrawTexivOES");
        arg("coords", 5, intBuffer);
        end();
        this.mgl11Ext.glDrawTexivOES(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexsvOES(ShortBuffer shortBuffer) {
        begin("glDrawTexsvOES");
        arg("coords", 5, shortBuffer);
        end();
        this.mgl11Ext.glDrawTexsvOES(shortBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexxvOES(IntBuffer intBuffer) {
        begin("glDrawTexxvOES");
        arg("coords", 5, intBuffer);
        end();
        this.mgl11Ext.glDrawTexxvOES(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanex(int i2, IntBuffer intBuffer) {
        begin("glGetClipPlanex");
        arg("pname", i2);
        arg("eqn", intBuffer.toString());
        end();
        this.mgl11.glGetClipPlanex(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFixedv(int i2, IntBuffer intBuffer) {
        begin("glGetFixedv");
        arg("pname", i2);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetFixedv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFloatv(int i2, FloatBuffer floatBuffer) {
        begin("glGetFloatv");
        arg("pname", i2);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11.glGetFloatv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixf(FloatBuffer floatBuffer) {
        begin("glLoadMatrixf");
        arg("m", 16, floatBuffer);
        end();
        this.mgl.glLoadMatrixf(floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixx(IntBuffer intBuffer) {
        begin("glLoadMatrixx");
        arg("m", 16, intBuffer);
        end();
        this.mgl.glLoadMatrixx(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixf(FloatBuffer floatBuffer) {
        begin("glMultMatrixf");
        arg("m", 16, floatBuffer);
        end();
        this.mgl.glMultMatrixf(floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixx(IntBuffer intBuffer) {
        begin("glMultMatrixx");
        arg("m", 16, intBuffer);
        end();
        this.mgl.glMultMatrixx(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexCoordPointer(int i2, int i3, int i4, int i5) {
        begin("glTexCoordPointer");
        arg(DumpHeapActivity.KEY_SIZE, i2);
        arg("type", i3);
        arg(MediaFormat.KEY_STRIDE, i4);
        arg("offset", i5);
        end();
        this.mgl11.glTexCoordPointer(i2, i3, i4, i5);
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glVertexPointer(int i2, int i3, int i4, int i5) {
        begin("glVertexPointer");
        arg(DumpHeapActivity.KEY_SIZE, i2);
        arg("type", i3);
        arg(MediaFormat.KEY_STRIDE, i4);
        arg("offset", i5);
        end();
        this.mgl11.glVertexPointer(i2, i3, i4, i5);
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanef(int i2, FloatBuffer floatBuffer) {
        begin("glClipPlanef");
        arg("plane", i2);
        arg("equation", 4, floatBuffer);
        end();
        this.mgl11.glClipPlanef(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanex(int i2, IntBuffer intBuffer) {
        begin("glClipPlanef");
        arg("plane", i2);
        arg("equation", 4, intBuffer);
        end();
        this.mgl11.glClipPlanex(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glDeleteBuffers(int i2, IntBuffer intBuffer) {
        begin("glDeleteBuffers");
        arg("n", i2);
        arg("buffers", intBuffer.toString());
        end();
        this.mgl11.glDeleteBuffers(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteFramebuffersOES(int i2, IntBuffer intBuffer) {
        begin("glDeleteFramebuffersOES");
        arg("n", i2);
        arg("framebuffers", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glDeleteFramebuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteRenderbuffersOES(int i2, IntBuffer intBuffer) {
        begin("glDeleteRenderbuffersOES");
        arg("n", i2);
        arg("renderbuffers", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glDeleteRenderbuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDeleteTextures(int i2, IntBuffer intBuffer) {
        begin("glDeleteTextures");
        arg("n", i2);
        arg("textures", i2, intBuffer);
        end();
        this.mgl.glDeleteTextures(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogfv(int i2, FloatBuffer floatBuffer) {
        begin("glFogfv");
        arg("pname", getFogPName(i2));
        arg("params", getFogParamCount(i2), floatBuffer);
        end();
        this.mgl.glFogfv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogxv(int i2, IntBuffer intBuffer) {
        begin("glFogxv");
        arg("pname", getFogPName(i2));
        arg("params", getFogParamCount(i2), intBuffer);
        end();
        this.mgl.glFogxv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGenBuffers(int i2, IntBuffer intBuffer) {
        begin("glGenBuffers");
        arg("n", i2);
        arg("buffers", intBuffer.toString());
        end();
        this.mgl11.glGenBuffers(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenFramebuffersOES(int i2, IntBuffer intBuffer) {
        begin("glGenFramebuffersOES");
        arg("n", i2);
        arg("framebuffers", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGenFramebuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenRenderbuffersOES(int i2, IntBuffer intBuffer) {
        begin("glGenRenderbuffersOES");
        arg("n", i2);
        arg("renderbuffers", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGenRenderbuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGenTextures(int i2, IntBuffer intBuffer) {
        begin("glGenTextures");
        arg("n", i2);
        arg("textures", intBuffer.toString());
        this.mgl.glGenTextures(i2, intBuffer);
        returns(toString(i2, 0, intBuffer));
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBooleanv(int i2, IntBuffer intBuffer) {
        begin("glGetBooleanv");
        arg("pname", i2);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetBooleanv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanef(int i2, FloatBuffer floatBuffer) {
        begin("glGetClipPlanef");
        arg("pname", i2);
        arg("eqn", floatBuffer.toString());
        end();
        this.mgl11.glGetClipPlanef(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelfv(int i2, FloatBuffer floatBuffer) {
        begin("glLightModelfv");
        arg("pname", getLightModelPName(i2));
        arg("params", getLightModelParamCount(i2), floatBuffer);
        end();
        this.mgl.glLightModelfv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelxv(int i2, IntBuffer intBuffer) {
        begin("glLightModelfv");
        arg("pname", getLightModelPName(i2));
        arg("params", getLightModelParamCount(i2), intBuffer);
        end();
        this.mgl.glLightModelxv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterfv(int i2, FloatBuffer floatBuffer) {
        begin("glPointParameterfv");
        arg("pname", i2);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11.glPointParameterfv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterxv(int i2, IntBuffer intBuffer) {
        begin("glPointParameterxv");
        arg("pname", i2);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glPointParameterxv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameteriv(int i2, int i3, IntBuffer intBuffer) {
        begin("glTexParameteriv");
        arg(TypedValues.AttributesType.S_TARGET, getTextureTarget(i2));
        arg("pname", getTexturePName(i3));
        arg("params", 4, intBuffer);
        end();
        this.mgl11.glTexParameteriv(i2, i3, intBuffer);
        checkError();
    }

    private void returns(int i2) {
        returns(Integer.toString(i2));
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBufferParameteriv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetBufferParameteriv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetBufferParameteriv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glGetLightfv");
        arg("light", i2);
        arg("pname", i3);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11.glGetLightfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetLightxv");
        arg("light", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetLightxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glGetMaterialfv");
        arg("face", i2);
        arg("pname", i3);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11.glGetMaterialfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetMaterialxv");
        arg("face", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetMaterialxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetRenderbufferParameterivOES(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetRenderbufferParameterivOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGetRenderbufferParameterivOES(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnviv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetTexEnviv");
        arg("env", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetTexEnviv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnvxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetTexEnviv");
        arg("env", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetTexEnvxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glGetTexGenfv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGetTexGenfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGeniv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetTexGeniv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGetTexGeniv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetTexGenxv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGetTexGenxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glGetTexParameterfv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11.glGetTexParameterfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameteriv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetTexParameteriv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetTexParameteriv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glGetTexParameterxv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glGetTexParameterxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glLightfv");
        arg("light", getLightName(i2));
        arg("pname", getLightPName(i3));
        arg("params", getLightParamCount(i3), floatBuffer);
        end();
        this.mgl.glLightfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glLightxv");
        arg("light", getLightName(i2));
        arg("pname", getLightPName(i3));
        arg("params", getLightParamCount(i3), intBuffer);
        end();
        this.mgl.glLightxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glMaterialfv");
        arg("face", getFaceName(i2));
        arg("pname", getMaterialPName(i3));
        arg("params", getMaterialParamCount(i3), floatBuffer);
        end();
        this.mgl.glMaterialfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glMaterialxv");
        arg("face", getFaceName(i2));
        arg("pname", getMaterialPName(i3));
        arg("params", getMaterialParamCount(i3), intBuffer);
        end();
        this.mgl.glMaterialxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glNormalPointer(int i2, int i3, int i4) {
        begin("glNormalPointer");
        arg("type", i2);
        arg(MediaFormat.KEY_STRIDE, i3);
        arg("offset", i4);
        end();
        this.mgl11.glNormalPointer(i2, i3, i4);
    }

    @Override // android.opengl.GLWrapperBase, r.b
    public int glQueryMatrixxOES(IntBuffer intBuffer, IntBuffer intBuffer2) {
        begin("glQueryMatrixxOES");
        arg("mantissa", intBuffer.toString());
        arg("exponent", intBuffer2.toString());
        end();
        int iGlQueryMatrixxOES = this.mgl10Ext.glQueryMatrixxOES(intBuffer, intBuffer2);
        returns(toString(16, 2, intBuffer));
        returns(toString(16, 0, intBuffer2));
        checkError();
        return iGlQueryMatrixxOES;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glTexEnvfv");
        arg(TypedValues.AttributesType.S_TARGET, getTextureEnvTarget(i2));
        arg("pname", getTextureEnvPName(i3));
        arg("params", getTextureEnvParamCount(i3), floatBuffer);
        end();
        this.mgl.glTexEnvfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexEnviv(int i2, int i3, IntBuffer intBuffer) {
        begin("glTexEnviv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glTexEnviv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glTexEnvxv");
        arg(TypedValues.AttributesType.S_TARGET, getTextureEnvTarget(i2));
        arg("pname", getTextureEnvPName(i3));
        arg("params", getTextureEnvParamCount(i3), intBuffer);
        end();
        this.mgl.glTexEnvxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glTexGenfv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11ExtensionPack.glTexGenfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGeniv(int i2, int i3, IntBuffer intBuffer) {
        begin("glTexGeniv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glTexGeniv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glTexGenxv");
        arg("coord", i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glTexGenxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterfv(int i2, int i3, FloatBuffer floatBuffer) {
        begin("glTexParameterfv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", floatBuffer.toString());
        end();
        this.mgl11.glTexParameterfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterxv(int i2, int i3, IntBuffer intBuffer) {
        begin("glTexParameterxv");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("pname", i3);
        arg("params", intBuffer.toString());
        end();
        this.mgl11.glTexParameterxv(i2, i3, intBuffer);
        checkError();
    }

    private String toString(int i2, int i3, int[] iArr, int i4) {
        StringBuilder sbR = c.r("{\n");
        int length = iArr.length;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i4 + i5;
            sbR.append(" [" + i6 + "] = ");
            if (i6 >= 0 && i6 < length) {
                formattedAppend(sbR, iArr[i6], i3);
            } else {
                sbR.append("out of bounds");
            }
            sbR.append('\n');
        }
        sbR.append("}");
        return sbR.toString();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, IntBuffer intBuffer) {
        begin("glGetFramebufferAttachmentParameterivOES");
        arg(TypedValues.AttributesType.S_TARGET, i2);
        arg("attachment", i3);
        arg("pname", i4);
        arg("params", intBuffer.toString());
        end();
        this.mgl11ExtensionPack.glGetFramebufferAttachmentParameterivOES(i2, i3, i4, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGetIntegerv(int i2, IntBuffer intBuffer) {
        begin("glGetIntegerv");
        arg("pname", getIntegerStateName(i2));
        arg("params", intBuffer.toString());
        this.mgl.glGetIntegerv(i2, intBuffer);
        returns(toString(getIntegerStateSize(i2), getIntegerStateFormat(i2), intBuffer));
        checkError();
    }

    private void arg(String str, boolean z2) {
        arg(str, Boolean.toString(z2));
    }

    private void arg(String str, int i2) {
        arg(str, Integer.toString(i2));
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glDrawElements(int i2, int i3, int i4, int i5) {
        begin("glDrawElements");
        arg("mode", i2);
        arg("count", i3);
        arg("type", i4);
        arg("offset", i5);
        end();
        this.mgl11.glDrawElements(i2, i3, i4, i5);
        checkError();
    }

    private void arg(String str, float f2) {
        arg(str, Float.toString(f2));
    }

    private void arg(String str, int i2, int[] iArr, int i3) {
        arg(str, toString(i2, 0, iArr, i3));
    }

    private void arg(String str, int i2, short[] sArr, int i3) {
        arg(str, toString(i2, sArr, i3));
    }

    private void arg(String str, int i2, float[] fArr, int i3) {
        arg(str, toString(i2, fArr, i3));
    }

    private void arg(String str, int i2, FloatBuffer floatBuffer) {
        arg(str, toString(i2, floatBuffer));
    }

    private void arg(String str, int i2, IntBuffer intBuffer) {
        arg(str, toString(i2, 0, intBuffer));
    }

    private void arg(String str, int i2, ShortBuffer shortBuffer) {
        arg(str, toString(i2, shortBuffer));
    }

    private String toString(int i2, short[] sArr, int i3) {
        StringBuilder sb = new StringBuilder("{\n");
        int length = sArr.length;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 + i4;
            sb.append(" [" + i5 + "] = ");
            if (i5 >= 0 && i5 < length) {
                sb.append((int) sArr[i5]);
            } else {
                sb.append("out of bounds");
            }
            sb.append('\n');
        }
        sb.append("}");
        return sb.toString();
    }

    private String toString(int i2, float[] fArr, int i3) {
        StringBuilder sb = new StringBuilder("{\n");
        int length = fArr.length;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 + i4;
            sb.append("[" + i5 + "] = ");
            if (i5 >= 0 && i5 < length) {
                sb.append(fArr[i5]);
            } else {
                sb.append("out of bounds");
            }
            sb.append('\n');
        }
        sb.append("}");
        return sb.toString();
    }

    private String toString(int i2, FloatBuffer floatBuffer) {
        StringBuilder sb = new StringBuilder("{\n");
        for (int i3 = 0; i3 < i2; i3++) {
            StringBuilder sbS = c.s(" [", i3, "] = ");
            sbS.append(floatBuffer.get(i3));
            sbS.append('\n');
            sb.append(sbS.toString());
        }
        sb.append("}");
        return sb.toString();
    }

    private String toString(int i2, ShortBuffer shortBuffer) {
        StringBuilder sb = new StringBuilder("{\n");
        for (int i3 = 0; i3 < i2; i3++) {
            StringBuilder sbS = c.s(" [", i3, "] = ");
            sbS.append((int) shortBuffer.get(i3));
            sbS.append('\n');
            sb.append(sbS.toString());
        }
        sb.append("}");
        return sb.toString();
    }
}
