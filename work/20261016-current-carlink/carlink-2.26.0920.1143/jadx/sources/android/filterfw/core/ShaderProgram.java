package android.filterfw.core;

import android.accessibilityservice.c;
import android.app.m;
import android.filterfw.geometry.Point;
import android.filterfw.geometry.Quad;
import android.opengl.GLES20;

/* JADX INFO: loaded from: classes.dex */
public class ShaderProgram extends Program {
    private GLEnvironment mGLEnvironment;
    private int mMaxTileSize = 0;
    private StopWatchMap mTimer = null;
    private int shaderProgramId;

    static {
        System.loadLibrary("filterfw");
    }

    private ShaderProgram() {
    }

    private native boolean allocate(GLEnvironment gLEnvironment, String str, String str2);

    private native boolean beginShaderDrawing();

    private native boolean compileAndLink();

    public static ShaderProgram createIdentity(FilterContext filterContext) {
        ShaderProgram shaderProgramNativeCreateIdentity = nativeCreateIdentity(getGLEnvironment(filterContext));
        shaderProgramNativeCreateIdentity.setTimer();
        return shaderProgramNativeCreateIdentity;
    }

    private native boolean deallocate();

    private native Object getUniformValue(String str);

    private static native ShaderProgram nativeCreateIdentity(GLEnvironment gLEnvironment);

    private native boolean setShaderAttributeValues(String str, float[] fArr, int i2);

    private native boolean setShaderAttributeVertexFrame(String str, VertexFrame vertexFrame, int i2, int i3, int i4, int i5, boolean z2);

    private native boolean setShaderBlendEnabled(boolean z2);

    private native boolean setShaderBlendFunc(int i2, int i3);

    private native boolean setShaderClearColor(float f2, float f3, float f4);

    private native boolean setShaderClearsOutput(boolean z2);

    private native boolean setShaderDrawMode(int i2);

    private native boolean setShaderTileCounts(int i2, int i3);

    private native boolean setShaderVertexCount(int i2);

    private native boolean setTargetRegion(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9);

    private void setTimer() {
        this.mTimer = new StopWatchMap();
    }

    private native boolean setUniformValue(String str, Object obj);

    private native boolean shaderProcess(GLFrame[] gLFrameArr, GLFrame gLFrame);

    public void beginDrawing() {
        if (!beginShaderDrawing()) {
            throw new RuntimeException("Could not prepare shader-program for drawing!");
        }
    }

    public void finalize() {
        deallocate();
    }

    public GLEnvironment getGLEnvironment() {
        return this.mGLEnvironment;
    }

    @Override // android.filterfw.core.Program
    public Object getHostValue(String str) {
        return getUniformValue(str);
    }

    @Override // android.filterfw.core.Program
    public void process(Frame[] frameArr, Frame frame) {
        StopWatchMap stopWatchMap = this.mTimer;
        if (stopWatchMap.LOG_MFF_RUNNING_TIMES) {
            stopWatchMap.start("glFinish");
            GLES20.glFinish();
            this.mTimer.stop("glFinish");
        }
        GLFrame[] gLFrameArr = new GLFrame[frameArr.length];
        for (int i2 = 0; i2 < frameArr.length; i2++) {
            Frame frame2 = frameArr[i2];
            if (!(frame2 instanceof GLFrame)) {
                throw new RuntimeException(c.e("ShaderProgram got non-GL frame as input ", i2, "!"));
            }
            gLFrameArr[i2] = (GLFrame) frame2;
        }
        if (!(frame instanceof GLFrame)) {
            throw new RuntimeException("ShaderProgram got non-GL output frame!");
        }
        GLFrame gLFrame = (GLFrame) frame;
        if (this.mMaxTileSize > 0) {
            int width = frame.getFormat().getWidth();
            int i3 = this.mMaxTileSize;
            int i4 = ((width + i3) - 1) / i3;
            int height = frame.getFormat().getHeight();
            int i5 = this.mMaxTileSize;
            setShaderTileCounts(i4, ((height + i5) - 1) / i5);
        }
        if (!shaderProcess(gLFrameArr, gLFrame)) {
            throw new RuntimeException("Error executing ShaderProgram!");
        }
        if (this.mTimer.LOG_MFF_RUNNING_TIMES) {
            GLES20.glFinish();
        }
    }

    public void setAttributeValues(String str, float[] fArr, int i2) {
        if (!setShaderAttributeValues(str, fArr, i2)) {
            throw new RuntimeException(c.k("Error setting attribute value for attribute '", str, "'!"));
        }
    }

    public void setBlendEnabled(boolean z2) {
        if (setShaderBlendEnabled(z2)) {
            return;
        }
        throw new RuntimeException("Could not set Blending " + z2 + "!");
    }

    public void setBlendFunc(int i2, int i3) {
        if (!setShaderBlendFunc(i2, i3)) {
            throw new RuntimeException(m.f("Could not set BlendFunc ", i2, ",", i3, "!"));
        }
    }

    public void setClearColor(float f2, float f3, float f4) {
        if (setShaderClearColor(f2, f3, f4)) {
            return;
        }
        StringBuilder sb = new StringBuilder("Could not set clear color to ");
        sb.append(f2);
        sb.append(",");
        sb.append(f3);
        sb.append(",");
        throw new RuntimeException(m.i(sb, f4, "!"));
    }

    public void setClearsOutput(boolean z2) {
        if (setShaderClearsOutput(z2)) {
            return;
        }
        throw new RuntimeException("Could not set clears-output flag to " + z2 + "!");
    }

    public void setDrawMode(int i2) {
        if (!setShaderDrawMode(i2)) {
            throw new RuntimeException(c.e("Could not set GL draw-mode to ", i2, "!"));
        }
    }

    @Override // android.filterfw.core.Program
    public void setHostValue(String str, Object obj) {
        if (!setUniformValue(str, obj)) {
            throw new RuntimeException(c.k("Error setting uniform value for variable '", str, "'!"));
        }
    }

    public void setMaximumTileSize(int i2) {
        this.mMaxTileSize = i2;
    }

    public void setSourceRect(float f2, float f3, float f4, float f5) {
        float f6 = f2 + f4;
        float f7 = f3 + f5;
        setSourceRegion(f2, f3, f6, f3, f2, f7, f6, f7);
    }

    public void setSourceRegion(Quad quad) {
        Point point = quad.p0;
        float f2 = point.f60x;
        float f3 = point.f61y;
        Point point2 = quad.p1;
        float f4 = point2.f60x;
        float f5 = point2.f61y;
        Point point3 = quad.p2;
        float f6 = point3.f60x;
        float f7 = point3.f61y;
        Point point4 = quad.p3;
        setSourceRegion(f2, f3, f4, f5, f6, f7, point4.f60x, point4.f61y);
    }

    public native boolean setSourceRegion(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9);

    public void setTargetRect(float f2, float f3, float f4, float f5) {
        float f6 = f2 + f4;
        float f7 = f3 + f5;
        setTargetRegion(f2, f3, f6, f3, f2, f7, f6, f7);
    }

    public void setTargetRegion(Quad quad) {
        Point point = quad.p0;
        float f2 = point.f60x;
        float f3 = point.f61y;
        Point point2 = quad.p1;
        float f4 = point2.f60x;
        float f5 = point2.f61y;
        Point point3 = quad.p2;
        float f6 = point3.f60x;
        float f7 = point3.f61y;
        Point point4 = quad.p3;
        setTargetRegion(f2, f3, f4, f5, f6, f7, point4.f60x, point4.f61y);
    }

    public void setVertexCount(int i2) {
        if (!setShaderVertexCount(i2)) {
            throw new RuntimeException(c.e("Could not set GL vertex count to ", i2, "!"));
        }
    }

    private static GLEnvironment getGLEnvironment(FilterContext filterContext) {
        GLEnvironment gLEnvironment = filterContext != null ? filterContext.getGLEnvironment() : null;
        if (gLEnvironment != null) {
            return gLEnvironment;
        }
        throw new NullPointerException("Attempting to create ShaderProgram with no GL environment in place!");
    }

    private ShaderProgram(NativeAllocatorTag nativeAllocatorTag) {
    }

    public ShaderProgram(FilterContext filterContext, String str) {
        GLEnvironment gLEnvironment = getGLEnvironment(filterContext);
        this.mGLEnvironment = gLEnvironment;
        allocate(gLEnvironment, null, str);
        if (compileAndLink()) {
            setTimer();
            return;
        }
        throw new RuntimeException("Could not compile and link shader!");
    }

    public void setAttributeValues(String str, VertexFrame vertexFrame, int i2, int i3, int i4, int i5, boolean z2) {
        if (!setShaderAttributeVertexFrame(str, vertexFrame, i2, i3, i4, i5, z2)) {
            throw new RuntimeException(c.k("Error setting attribute value for attribute '", str, "'!"));
        }
    }

    public ShaderProgram(FilterContext filterContext, String str, String str2) {
        GLEnvironment gLEnvironment = getGLEnvironment(filterContext);
        this.mGLEnvironment = gLEnvironment;
        allocate(gLEnvironment, str, str2);
        if (compileAndLink()) {
            setTimer();
            return;
        }
        throw new RuntimeException("Could not compile and link shader!");
    }
}
