package android.filterpacks.ui;

import android.accessibilityservice.c;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.FilterSurfaceView;
import android.filterfw.core.Frame;
import android.filterfw.core.GLEnvironment;
import android.filterfw.core.GLFrame;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.GenerateFinalPort;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.util.Log;
import android.view.SurfaceHolder;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceRenderFilter extends Filter implements SurfaceHolder.Callback {
    private static final String TAG = "SurfaceRenderFilter";
    private final int RENDERMODE_FILL_CROP;
    private final int RENDERMODE_FIT;
    private final int RENDERMODE_STRETCH;
    private float mAspectRatio;
    private boolean mIsBound;
    private boolean mLogVerbose;
    private ShaderProgram mProgram;
    private int mRenderMode;

    @GenerateFieldPort(hasDefault = true, name = "renderMode")
    private String mRenderModeString;
    private GLFrame mScreen;
    private int mScreenHeight;
    private int mScreenWidth;

    @GenerateFinalPort(name = "surfaceView")
    private FilterSurfaceView mSurfaceView;

    public SurfaceRenderFilter(String str) {
        super(str);
        this.RENDERMODE_STRETCH = 0;
        this.RENDERMODE_FIT = 1;
        this.RENDERMODE_FILL_CROP = 2;
        this.mIsBound = false;
        this.mRenderMode = 1;
        this.mAspectRatio = 1.0f;
        this.mLogVerbose = Log.isLoggable(TAG, 2);
    }

    private void updateTargetRect() {
        int i2;
        ShaderProgram shaderProgram;
        int i3 = this.mScreenWidth;
        if (i3 <= 0 || (i2 = this.mScreenHeight) <= 0 || (shaderProgram = this.mProgram) == null) {
            return;
        }
        float f2 = (i3 / i2) / this.mAspectRatio;
        int i4 = this.mRenderMode;
        if (i4 == 0) {
            shaderProgram.setTargetRect(0.0f, 0.0f, 1.0f, 1.0f);
            return;
        }
        if (i4 == 1) {
            if (f2 > 1.0f) {
                shaderProgram.setTargetRect(0.5f - (0.5f / f2), 0.0f, 1.0f / f2, 1.0f);
                return;
            } else {
                shaderProgram.setTargetRect(0.0f, 0.5f - (f2 * 0.5f), 1.0f, f2);
                return;
            }
        }
        if (i4 != 2) {
            return;
        }
        if (f2 > 1.0f) {
            shaderProgram.setTargetRect(0.0f, 0.5f - (f2 * 0.5f), 1.0f, f2);
        } else {
            shaderProgram.setTargetRect(0.5f - (0.5f / f2), 0.0f, 1.0f / f2, 1.0f);
        }
    }

    @Override // android.filterfw.core.Filter
    public void close(FilterContext filterContext) {
        this.mSurfaceView.unbind();
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        updateTargetRect();
    }

    @Override // android.filterfw.core.Filter
    public void open(FilterContext filterContext) {
        this.mSurfaceView.unbind();
        this.mSurfaceView.bindToListener(this, filterContext.getGLEnvironment());
    }

    @Override // android.filterfw.core.Filter
    public void prepare(FilterContext filterContext) {
        ShaderProgram shaderProgramCreateIdentity = ShaderProgram.createIdentity(filterContext);
        this.mProgram = shaderProgramCreateIdentity;
        shaderProgramCreateIdentity.setSourceRect(0.0f, 1.0f, 1.0f, -1.0f);
        this.mProgram.setClearsOutput(true);
        this.mProgram.setClearColor(0.0f, 0.0f, 0.0f);
        updateRenderMode();
        this.mScreen = (GLFrame) filterContext.getFrameManager().newBoundFrame(ImageFormat.create(this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight(), 3, 3), 101, 0L);
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        boolean z2;
        if (!this.mIsBound) {
            Log.w(TAG, this + ": Ignoring frame as there is no surface to render to!");
            return;
        }
        if (this.mLogVerbose) {
            Log.v(TAG, "Starting frame processing");
        }
        GLEnvironment gLEnv = this.mSurfaceView.getGLEnv();
        if (gLEnv != filterContext.getGLEnvironment()) {
            throw new RuntimeException("Surface created under different GLEnvironment!");
        }
        Frame framePullInput = pullInput(TypedValues.AttributesType.S_FRAME);
        float width = framePullInput.getFormat().getWidth() / framePullInput.getFormat().getHeight();
        if (width != this.mAspectRatio) {
            if (this.mLogVerbose) {
                Log.v(TAG, "New aspect ratio: " + width + ", previously: " + this.mAspectRatio);
            }
            this.mAspectRatio = width;
            updateTargetRect();
        }
        if (this.mLogVerbose) {
            Log.v(TAG, "Got input format: " + framePullInput.getFormat());
        }
        if (framePullInput.getFormat().getTarget() != 3) {
            framePullInput = filterContext.getFrameManager().duplicateFrameToTarget(framePullInput, 3);
            z2 = true;
        } else {
            z2 = false;
        }
        gLEnv.activateSurfaceWithId(this.mSurfaceView.getSurfaceId());
        this.mProgram.process(framePullInput, this.mScreen);
        gLEnv.swapBuffers();
        if (z2) {
            framePullInput.release();
        }
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        if (this.mSurfaceView == null) {
            throw new RuntimeException("NULL SurfaceView passed to SurfaceRenderFilter");
        }
        addMaskedInputPort(TypedValues.AttributesType.S_FRAME, ImageFormat.create(3));
    }

    @Override // android.view.SurfaceHolder.Callback
    public synchronized void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        GLFrame gLFrame = this.mScreen;
        if (gLFrame != null) {
            this.mScreenWidth = i3;
            this.mScreenHeight = i4;
            gLFrame.setViewport(0, 0, i3, i4);
            updateTargetRect();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public synchronized void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mIsBound = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public synchronized void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mIsBound = false;
    }

    @Override // android.filterfw.core.Filter
    public void tearDown(FilterContext filterContext) {
        GLFrame gLFrame = this.mScreen;
        if (gLFrame != null) {
            gLFrame.release();
        }
    }

    public void updateRenderMode() {
        String str = this.mRenderModeString;
        if (str != null) {
            if (str.equals("stretch")) {
                this.mRenderMode = 0;
            } else if (this.mRenderModeString.equals("fit")) {
                this.mRenderMode = 1;
            } else {
                if (!this.mRenderModeString.equals("fill_crop")) {
                    throw new RuntimeException(c.n(new StringBuilder("Unknown render mode '"), this.mRenderModeString, "'!"));
                }
                this.mRenderMode = 2;
            }
        }
        updateTargetRect();
    }
}
