package android.renderscript;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes.dex */
public class RenderScriptGL extends RenderScript {
    int mHeight;
    SurfaceConfig mSurfaceConfig;
    int mWidth;

    public RenderScriptGL(Context context, SurfaceConfig surfaceConfig) {
        super(context);
        this.mSurfaceConfig = new SurfaceConfig(surfaceConfig);
        int i2 = context.getApplicationInfo().targetSdkVersion;
        this.mWidth = 0;
        this.mHeight = 0;
        long jNDeviceCreate = nDeviceCreate();
        int i3 = context.getResources().getDisplayMetrics().densityDpi;
        SurfaceConfig surfaceConfig2 = this.mSurfaceConfig;
        long jNContextCreateGL = nContextCreateGL(jNDeviceCreate, 0, i2, surfaceConfig2.mColorMin, surfaceConfig2.mColorPref, surfaceConfig2.mAlphaMin, surfaceConfig2.mAlphaPref, surfaceConfig2.mDepthMin, surfaceConfig2.mDepthPref, surfaceConfig2.mStencilMin, surfaceConfig2.mStencilPref, surfaceConfig2.mSamplesMin, surfaceConfig2.mSamplesPref, surfaceConfig2.mSamplesQ, i3);
        this.mContext = jNContextCreateGL;
        if (jNContextCreateGL == 0) {
            throw new RSDriverException("Failed to create RS context.");
        }
        RenderScript.MessageThread messageThread = new RenderScript.MessageThread(this);
        this.mMessageThread = messageThread;
        messageThread.start();
    }

    public void bindProgramFragment(ProgramFragment programFragment) {
        validate();
        nContextBindProgramFragment((int) safeID(programFragment));
    }

    public void bindProgramRaster(ProgramRaster programRaster) {
        validate();
        nContextBindProgramRaster((int) safeID(programRaster));
    }

    public void bindProgramStore(ProgramStore programStore) {
        validate();
        nContextBindProgramStore((int) safeID(programStore));
    }

    public void bindProgramVertex(ProgramVertex programVertex) {
        validate();
        nContextBindProgramVertex((int) safeID(programVertex));
    }

    public void bindRootScript(Script script) {
        validate();
        nContextBindRootScript((int) safeID(script));
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
        Surface surface = surfaceTexture != null ? new Surface(surfaceTexture) : null;
        this.mWidth = i2;
        this.mHeight = i3;
        nContextSetSurface(i2, i3, surface);
    }

    public static class SurfaceConfig {
        int mAlphaMin;
        int mAlphaPref;
        int mColorMin;
        int mColorPref;
        int mDepthMin;
        int mDepthPref;
        int mSamplesMin;
        int mSamplesPref;
        float mSamplesQ;
        int mStencilMin;
        int mStencilPref;

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
