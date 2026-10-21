package android.filterpacks.videosrc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.GLEnvironment;
import android.filterfw.core.GLFrame;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.GenerateFinalPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.filterfw.geometry.Point;
import android.filterfw.geometry.Quad;
import android.graphics.SurfaceTexture;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceTextureTarget extends Filter {
    private static final String TAG = "SurfaceTextureTarget";
    private final int RENDERMODE_CUSTOMIZE;
    private final int RENDERMODE_FILL_CROP;
    private final int RENDERMODE_FIT;
    private final int RENDERMODE_STRETCH;
    private float mAspectRatio;
    private boolean mLogVerbose;
    private ShaderProgram mProgram;
    private int mRenderMode;

    @GenerateFieldPort(hasDefault = true, name = "renderMode")
    private String mRenderModeString;
    private GLFrame mScreen;

    @GenerateFinalPort(name = "height")
    private int mScreenHeight;

    @GenerateFinalPort(name = "width")
    private int mScreenWidth;

    @GenerateFieldPort(hasDefault = true, name = "sourceQuad")
    private Quad mSourceQuad;
    private int mSurfaceId;

    @GenerateFinalPort(name = "surfaceTexture")
    private SurfaceTexture mSurfaceTexture;

    @GenerateFieldPort(hasDefault = true, name = "targetQuad")
    private Quad mTargetQuad;

    public SurfaceTextureTarget(String str) {
        super(str);
        this.RENDERMODE_STRETCH = 0;
        this.RENDERMODE_FIT = 1;
        this.RENDERMODE_FILL_CROP = 2;
        this.RENDERMODE_CUSTOMIZE = 3;
        this.mSourceQuad = new Quad(new Point(0.0f, 1.0f), new Point(1.0f, 1.0f), new Point(0.0f, 0.0f), new Point(1.0f, 0.0f));
        this.mTargetQuad = new Quad(new Point(0.0f, 0.0f), new Point(1.0f, 0.0f), new Point(0.0f, 1.0f), new Point(1.0f, 1.0f));
        this.mRenderMode = 1;
        this.mAspectRatio = 1.0f;
        this.mLogVerbose = Log.isLoggable(TAG, 2);
    }

    private void updateTargetRect() {
        int i2;
        if (this.mLogVerbose) {
            Log.v(TAG, "updateTargetRect. Thread: " + Thread.currentThread());
        }
        int i3 = this.mScreenWidth;
        if (i3 <= 0 || (i2 = this.mScreenHeight) <= 0 || this.mProgram == null) {
            return;
        }
        float f2 = i3 / i2;
        float f3 = f2 / this.mAspectRatio;
        if (this.mLogVerbose) {
            StringBuilder sb = new StringBuilder();
            sb.append("UTR. screen w = ");
            sb.append(this.mScreenWidth);
            sb.append(" x screen h = ");
            sb.append(this.mScreenHeight);
            sb.append(" Screen AR: ");
            sb.append(f2);
            sb.append(", frame AR: ");
            sb.append(this.mAspectRatio);
            sb.append(", relative AR: ");
            sb.append(f3);
            Log.v(TAG, sb.toString());
        }
        if (f3 == 1.0f && this.mRenderMode != 3) {
            this.mProgram.setTargetRect(0.0f, 0.0f, 1.0f, 1.0f);
            this.mProgram.setClearsOutput(false);
            return;
        }
        int i4 = this.mRenderMode;
        if (i4 == 0) {
            this.mTargetQuad.f129p0.set(0.0f, 0.0f);
            this.mTargetQuad.f130p1.set(1.0f, 0.0f);
            this.mTargetQuad.p2.set(0.0f, 1.0f);
            this.mTargetQuad.p3.set(1.0f, 1.0f);
            this.mProgram.setClearsOutput(false);
        } else if (i4 == 1) {
            if (f3 > 1.0f) {
                float f4 = 0.5f / f3;
                float f5 = 0.5f - f4;
                this.mTargetQuad.f129p0.set(f5, 0.0f);
                float f6 = f4 + 0.5f;
                this.mTargetQuad.f130p1.set(f6, 0.0f);
                this.mTargetQuad.p2.set(f5, 1.0f);
                this.mTargetQuad.p3.set(f6, 1.0f);
            } else {
                float f7 = f3 * 0.5f;
                float f8 = 0.5f - f7;
                this.mTargetQuad.f129p0.set(0.0f, f8);
                this.mTargetQuad.f130p1.set(1.0f, f8);
                float f9 = f7 + 0.5f;
                this.mTargetQuad.p2.set(0.0f, f9);
                this.mTargetQuad.p3.set(1.0f, f9);
            }
            this.mProgram.setClearsOutput(true);
        } else if (i4 == 2) {
            if (f3 > 1.0f) {
                float f10 = f3 * 0.5f;
                float f11 = 0.5f - f10;
                this.mTargetQuad.f129p0.set(0.0f, f11);
                this.mTargetQuad.f130p1.set(1.0f, f11);
                float f12 = f10 + 0.5f;
                this.mTargetQuad.p2.set(0.0f, f12);
                this.mTargetQuad.p3.set(1.0f, f12);
            } else {
                float f13 = 0.5f / f3;
                float f14 = 0.5f - f13;
                this.mTargetQuad.f129p0.set(f14, 0.0f);
                float f15 = f13 + 0.5f;
                this.mTargetQuad.f130p1.set(f15, 0.0f);
                this.mTargetQuad.p2.set(f14, 1.0f);
                this.mTargetQuad.p3.set(f15, 1.0f);
            }
            this.mProgram.setClearsOutput(true);
        } else if (i4 == 3) {
            this.mProgram.setSourceRegion(this.mSourceQuad);
        }
        if (this.mLogVerbose) {
            Log.v(TAG, "UTR. quad: " + this.mTargetQuad);
        }
        this.mProgram.setTargetRegion(this.mTargetQuad);
    }

    @Override // android.filterfw.core.Filter
    public synchronized void close(FilterContext filterContext) {
        if (this.mSurfaceId > 0) {
            filterContext.getGLEnvironment().unregisterSurfaceId(this.mSurfaceId);
            this.mSurfaceId = -1;
        }
    }

    public synchronized void disconnect(FilterContext filterContext) {
        if (this.mLogVerbose) {
            Log.v(TAG, "disconnect");
        }
        if (this.mSurfaceTexture == null) {
            Log.d(TAG, "SurfaceTexture is already null. Nothing to disconnect.");
            return;
        }
        this.mSurfaceTexture = null;
        if (this.mSurfaceId > 0) {
            filterContext.getGLEnvironment().unregisterSurfaceId(this.mSurfaceId);
            this.mSurfaceId = -1;
        }
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (this.mLogVerbose) {
            Log.v(TAG, "FPVU. Thread: " + Thread.currentThread());
        }
        updateRenderMode();
    }

    @Override // android.filterfw.core.Filter
    public synchronized void open(FilterContext filterContext) {
        if (this.mSurfaceTexture == null) {
            Log.e(TAG, "SurfaceTexture is null!!");
            throw new RuntimeException("Could not register SurfaceTexture: " + this.mSurfaceTexture);
        }
        int iRegisterSurfaceTexture = filterContext.getGLEnvironment().registerSurfaceTexture(this.mSurfaceTexture, this.mScreenWidth, this.mScreenHeight);
        this.mSurfaceId = iRegisterSurfaceTexture;
        if (iRegisterSurfaceTexture <= 0) {
            throw new RuntimeException("Could not register SurfaceTexture: " + this.mSurfaceTexture);
        }
    }

    @Override // android.filterfw.core.Filter
    public void prepare(FilterContext filterContext) {
        if (this.mLogVerbose) {
            Log.v(TAG, "Prepare. Thread: " + Thread.currentThread());
        }
        ShaderProgram shaderProgramCreateIdentity = ShaderProgram.createIdentity(filterContext);
        this.mProgram = shaderProgramCreateIdentity;
        shaderProgramCreateIdentity.setSourceRect(0.0f, 1.0f, 1.0f, -1.0f);
        this.mProgram.setClearColor(0.0f, 0.0f, 0.0f);
        updateRenderMode();
        MutableFrameFormat mutableFrameFormat = new MutableFrameFormat(2, 3);
        mutableFrameFormat.setBytesPerSample(4);
        mutableFrameFormat.setDimensions(this.mScreenWidth, this.mScreenHeight);
        this.mScreen = (GLFrame) filterContext.getFrameManager().newBoundFrame(mutableFrameFormat, 101, 0L);
    }

    @Override // android.filterfw.core.Filter
    public synchronized void process(FilterContext filterContext) {
        Frame frameDuplicateFrameToTarget;
        if (this.mSurfaceId <= 0) {
            return;
        }
        GLEnvironment gLEnvironment = filterContext.getGLEnvironment();
        Frame framePullInput = pullInput("frame");
        boolean z2 = false;
        float width = framePullInput.getFormat().getWidth() / framePullInput.getFormat().getHeight();
        if (width != this.mAspectRatio) {
            if (this.mLogVerbose) {
                Log.v(TAG, "Process. New aspect ratio: " + width + ", previously: " + this.mAspectRatio + ". Thread: " + Thread.currentThread());
            }
            this.mAspectRatio = width;
            updateTargetRect();
        }
        if (framePullInput.getFormat().getTarget() != 3) {
            frameDuplicateFrameToTarget = filterContext.getFrameManager().duplicateFrameToTarget(framePullInput, 3);
            z2 = true;
        } else {
            frameDuplicateFrameToTarget = framePullInput;
        }
        gLEnvironment.activateSurfaceWithId(this.mSurfaceId);
        this.mProgram.process(frameDuplicateFrameToTarget, this.mScreen);
        gLEnvironment.setSurfaceTimestamp(framePullInput.getTimestamp());
        gLEnvironment.swapBuffers();
        if (z2) {
            frameDuplicateFrameToTarget.release();
        }
    }

    @Override // android.filterfw.core.Filter
    public synchronized void setupPorts() {
        if (this.mSurfaceTexture == null) {
            throw new RuntimeException("Null SurfaceTexture passed to SurfaceTextureTarget");
        }
        addMaskedInputPort("frame", ImageFormat.create(3));
    }

    @Override // android.filterfw.core.Filter
    public void tearDown(FilterContext filterContext) {
        GLFrame gLFrame = this.mScreen;
        if (gLFrame != null) {
            gLFrame.release();
        }
    }

    public void updateRenderMode() {
        if (this.mLogVerbose) {
            Log.v(TAG, "updateRenderMode. Thread: " + Thread.currentThread());
        }
        String str = this.mRenderModeString;
        if (str != null) {
            if (str.equals("stretch")) {
                this.mRenderMode = 0;
            } else if (this.mRenderModeString.equals("fit")) {
                this.mRenderMode = 1;
            } else if (this.mRenderModeString.equals("fill_crop")) {
                this.mRenderMode = 2;
            } else {
                if (!this.mRenderModeString.equals("customize")) {
                    throw new RuntimeException("Unknown render mode '" + this.mRenderModeString + "'!");
                }
                this.mRenderMode = 3;
            }
        }
        updateTargetRect();
    }
}
