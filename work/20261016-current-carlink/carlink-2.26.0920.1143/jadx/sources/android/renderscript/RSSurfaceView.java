package android.renderscript;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* JADX INFO: loaded from: classes.dex */
public class RSSurfaceView extends SurfaceView implements SurfaceHolder.Callback {
    private RenderScriptGL mRS;
    private SurfaceHolder mSurfaceHolder;

    public RSSurfaceView(Context context) {
        super(context);
        init();
    }

    private void init() {
        getHolder().addCallback(this);
    }

    public RenderScriptGL createRenderScriptGL(RenderScriptGL.SurfaceConfig surfaceConfig) {
        RenderScriptGL renderScriptGL = new RenderScriptGL(getContext(), surfaceConfig);
        setRenderScriptGL(renderScriptGL);
        return renderScriptGL;
    }

    public void destroyRenderScriptGL() {
        synchronized (this) {
            this.mRS.destroy();
            this.mRS = null;
        }
    }

    public RenderScriptGL getRenderScriptGL() {
        return this.mRS;
    }

    public void pause() {
        RenderScriptGL renderScriptGL = this.mRS;
        if (renderScriptGL != null) {
            renderScriptGL.pause();
        }
    }

    public void resume() {
        RenderScriptGL renderScriptGL = this.mRS;
        if (renderScriptGL != null) {
            renderScriptGL.resume();
        }
    }

    public void setRenderScriptGL(RenderScriptGL renderScriptGL) {
        this.mRS = renderScriptGL;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        synchronized (this) {
            RenderScriptGL renderScriptGL = this.mRS;
            if (renderScriptGL != null) {
                renderScriptGL.setSurface(surfaceHolder, i3, i4);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        synchronized (this) {
            RenderScriptGL renderScriptGL = this.mRS;
            if (renderScriptGL != null) {
                renderScriptGL.setSurface(null, 0, 0);
            }
        }
    }

    public RSSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
