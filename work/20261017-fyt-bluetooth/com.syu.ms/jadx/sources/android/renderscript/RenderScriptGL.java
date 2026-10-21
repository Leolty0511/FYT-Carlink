package android.renderscript;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes.dex */
public class RenderScriptGL extends RenderScript {
    public int mHeight;
    public SurfaceConfig mSurfaceConfig;
    public int mWidth;

    public RenderScriptGL(Context context, SurfaceConfig surfaceConfig) {
        super(context);
        this.mSurfaceConfig = new SurfaceConfig(surfaceConfig);
        int i2 = context.getApplicationInfo().targetSdkVersion;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDev = nDeviceCreate();
        int i3 = context.getResources().getDisplayMetrics().densityDpi;
        int i4 = this.mDev;
        SurfaceConfig surfaceConfig2 = this.mSurfaceConfig;
        int iNContextCreateGL = nContextCreateGL(i4, 0, i2, surfaceConfig2.mColorMin, surfaceConfig2.mColorPref, surfaceConfig2.mAlphaMin, surfaceConfig2.mAlphaPref, surfaceConfig2.mDepthMin, surfaceConfig2.mDepthPref, surfaceConfig2.mStencilMin, surfaceConfig2.mStencilPref, surfaceConfig2.mSamplesMin, surfaceConfig2.mSamplesPref, surfaceConfig2.mSamplesQ, i3);
        this.mContext = iNContextCreateGL;
        if (iNContextCreateGL == 0) {
            throw new RSDriverException("Failed to create RS context.");
        }
        RenderScript.MessageThread messageThread = new RenderScript.MessageThread(this);
        this.mMessageThread = messageThread;
        messageThread.start();
    }

    public void bindProgramFragment(ProgramFragment programFragment) {
        validate();
        nContextBindProgramFragment(safeID(programFragment));
    }

    public void bindProgramRaster(ProgramRaster programRaster) {
        validate();
        nContextBindProgramRaster(safeID(programRaster));
    }

    public void bindProgramStore(ProgramStore programStore) {
        validate();
        nContextBindProgramStore(safeID(programStore));
    }

    public void bindProgramVertex(ProgramVertex programVertex) {
        validate();
        nContextBindProgramVertex(safeID(programVertex));
    }

    public void bindRootScript(Script script) {
        validate();
        nContextBindRootScript(safeID(script));
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void pause() {
        validate();
        nContextPause();
    }

    public void resume() {
        validate();
        nContextResume();
    }

    public void setSurface(SurfaceHolder surfaceHolder, int i2, int i3) {
        validate();
        Surface surface = surfaceHolder != null ? surfaceHolder.getSurface() : null;
        this.mWidth = i2;
        this.mHeight = i3;
        nContextSetSurface(i2, i3, surface);
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture, int i2, int i3) {
        validate();
        this.mWidth = i2;
        this.mHeight = i3;
        nContextSetSurfaceTexture(i2, i3, surfaceTexture);
    }

    public static class SurfaceConfig {
        public int mAlphaMin;
        public int mAlphaPref;
        public int mColorMin;
        public int mColorPref;
        public int mDepthMin;
        public int mDepthPref;
        public int mSamplesMin;
        public int mSamplesPref;
        public float mSamplesQ;
        public int mStencilMin;
        public int mStencilPref;

        public SurfaceConfig() {
            this.mDepthMin = 0;
            this.mDepthPref = 0;
            this.mStencilMin = 0;
            this.mStencilPref = 0;
            this.mColorMin = 8;
            this.mColorPref = 8;
            this.mAlphaMin = 0;
            this.mAlphaPref = 0;
            this.mSamplesMin = 1;
            this.mSamplesPref = 1;
            this.mSamplesQ = 1.0f;
        }

        private void validateRange(int i2, int i3, int i4, int i5) {
            if (i2 < i4 || i2 > i5) {
                throw new RSIllegalArgumentException("Minimum value provided out of range.");
            }
            if (i3 < i2) {
                throw new RSIllegalArgumentException("preferred must be >= Minimum.");
            }
        }

        public void setAlpha(int i2, int i3) {
            validateRange(i2, i3, 0, 8);
            this.mAlphaMin = i2;
            this.mAlphaPref = i3;
        }

        public void setColor(int i2, int i3) {
            validateRange(i2, i3, 5, 8);
            this.mColorMin = i2;
            this.mColorPref = i3;
        }

        public void setDepth(int i2, int i3) {
            validateRange(i2, i3, 0, 24);
            this.mDepthMin = i2;
            this.mDepthPref = i3;
        }

        public void setSamples(int i2, int i3, float f2) {
            validateRange(i2, i3, 1, 32);
            if (f2 < 0.0f || f2 > 1.0f) {
                throw new RSIllegalArgumentException("Quality out of 0-1 range.");
            }
            this.mSamplesMin = i2;
            this.mSamplesPref = i3;
            this.mSamplesQ = f2;
        }

        public SurfaceConfig(SurfaceConfig surfaceConfig) {
            this.mDepthMin = 0;
            this.mDepthPref = 0;
            this.mStencilMin = 0;
            this.mStencilPref = 0;
            this.mColorMin = 8;
            this.mColorPref = 8;
            this.mAlphaMin = 0;
            this.mAlphaPref = 0;
            this.mSamplesMin = 1;
            this.mSamplesPref = 1;
            this.mSamplesQ = 1.0f;
            this.mDepthMin = surfaceConfig.mDepthMin;
            this.mDepthPref = surfaceConfig.mDepthPref;
            this.mStencilMin = surfaceConfig.mStencilMin;
            this.mStencilPref = surfaceConfig.mStencilPref;
            this.mColorMin = surfaceConfig.mColorMin;
            this.mColorPref = surfaceConfig.mColorPref;
            this.mAlphaMin = surfaceConfig.mAlphaMin;
            this.mAlphaPref = surfaceConfig.mAlphaPref;
            this.mSamplesMin = surfaceConfig.mSamplesMin;
            this.mSamplesPref = surfaceConfig.mSamplesPref;
            this.mSamplesQ = surfaceConfig.mSamplesQ;
        }
    }
}
