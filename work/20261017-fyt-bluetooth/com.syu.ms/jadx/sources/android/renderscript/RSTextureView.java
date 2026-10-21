package android.renderscript;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;

/* JADX INFO: loaded from: classes.dex */
public class RSTextureView extends TextureView implements TextureView.SurfaceTextureListener {
    private RenderScriptGL mRS;
    private SurfaceTexture mSurfaceTexture;

    public RSTextureView(Context context) {
        super(context);
        init();
    }

    private void init() {
        setSurfaceTextureListener(this);
    }

    public RenderScriptGL createRenderScriptGL(RenderScriptGL.SurfaceConfig surfaceConfig) {
        RenderScriptGL renderScriptGL = new RenderScriptGL(getContext(), surfaceConfig);
        setRenderScriptGL(renderScriptGL);
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture != null) {
            this.mRS.setSurfaceTexture(surfaceTexture, getWidth(), getHeight());
        }
        return renderScriptGL;
    }

    public void destroyRenderScriptGL() {
        this.mRS.destroy();
        this.mRS = null;
    }

    public RenderScriptGL getRenderScriptGL() {
        return this.mRS;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.mSurfaceTexture = surfaceTexture;
        RenderScriptGL renderScriptGL = this.mRS;
        if (renderScriptGL != null) {
            renderScriptGL.setSurfaceTexture(surfaceTexture, i2, i3);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.mSurfaceTexture = surfaceTexture;
        RenderScriptGL renderScriptGL = this.mRS;
        if (renderScriptGL == null) {
            return true;
        }
        renderScriptGL.setSurfaceTexture(null, 0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.mSurfaceTexture = surfaceTexture;
        RenderScriptGL renderScriptGL = this.mRS;
        if (renderScriptGL != null) {
            renderScriptGL.setSurfaceTexture(surfaceTexture, i2, i3);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.mSurfaceTexture = surfaceTexture;
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
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture != null) {
            renderScriptGL.setSurfaceTexture(surfaceTexture, getWidth(), getHeight());
        }
    }

    public RSTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
