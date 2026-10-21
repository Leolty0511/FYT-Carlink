package android.filterpacks.imageproc;

import android.accessibilityservice.c;
import android.app.m;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;

/* JADX INFO: loaded from: classes.dex */
public class FillLightFilter extends Filter {

    @GenerateFieldPort(hasDefault = true, name = "strength")
    private float mBacklight;
    private final String mFillLightShader;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;

    public FillLightFilter(String str) {
        super(str);
        this.mTileSize = 640;
        this.mBacklight = 0.0f;
        this.mTarget = 0;
        this.mFillLightShader = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n";
    }

    private void updateParameters() {
        float f2 = 1.0f / (((1.0f - this.mBacklight) * 0.7f) + 0.3f);
        this.mProgram.setHostValue("mult", Float.valueOf(f2));
        this.mProgram.setHostValue("igamma", Float.valueOf(1.0f / ((0.7f * f2) + 0.3f)));
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (this.mProgram != null) {
            updateParameters();
        }
    }

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    public void initProgram(FilterContext filterContext, int i2) {
        if (i2 != 3) {
            throw new RuntimeException(c.e("Filter FillLight does not support frames of target ", i2, "!"));
        }
        ShaderProgram shaderProgram = new ShaderProgram(filterContext, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n");
        m.C(new StringBuilder("tile size: "), this.mTileSize, "FillLight");
        shaderProgram.setMaximumTileSize(this.mTileSize);
        this.mProgram = shaderProgram;
        this.mTarget = i2;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("image");
        FrameFormat format = framePullInput.getFormat();
        Frame frameNewFrame = filterContext.getFrameManager().newFrame(format);
        if (this.mProgram == null || format.getTarget() != this.mTarget) {
            initProgram(filterContext, format.getTarget());
            updateParameters();
        }
        this.mProgram.process(framePullInput, frameNewFrame);
        pushOutput("image", frameNewFrame);
        frameNewFrame.release();
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort("image", ImageFormat.create(3));
        addOutputBasedOnInput("image", "image");
    }
}
