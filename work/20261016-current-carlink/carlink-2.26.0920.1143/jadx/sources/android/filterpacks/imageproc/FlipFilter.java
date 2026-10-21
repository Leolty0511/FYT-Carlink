package android.filterpacks.imageproc;

import android.accessibilityservice.c;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;

/* JADX INFO: loaded from: classes.dex */
public class FlipFilter extends Filter {

    @GenerateFieldPort(hasDefault = true, name = "horizontal")
    private boolean mHorizontal;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;

    @GenerateFieldPort(hasDefault = true, name = "vertical")
    private boolean mVertical;

    public FlipFilter(String str) {
        super(str);
        this.mVertical = false;
        this.mHorizontal = false;
        this.mTileSize = 640;
        this.mTarget = 0;
    }

    private void updateParameters() {
        boolean z2 = this.mHorizontal;
        float f2 = z2 ? 1.0f : 0.0f;
        boolean z3 = this.mVertical;
        ((ShaderProgram) this.mProgram).setSourceRect(f2, z3 ? 1.0f : 0.0f, z2 ? -1.0f : 1.0f, z3 ? -1.0f : 1.0f);
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
            throw new RuntimeException(c.e("Filter Sharpen does not support frames of target ", i2, "!"));
        }
        ShaderProgram shaderProgramCreateIdentity = ShaderProgram.createIdentity(filterContext);
        shaderProgramCreateIdentity.setMaximumTileSize(this.mTileSize);
        this.mProgram = shaderProgramCreateIdentity;
        this.mTarget = i2;
        updateParameters();
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("image");
        FrameFormat format = framePullInput.getFormat();
        if (this.mProgram == null || format.getTarget() != this.mTarget) {
            initProgram(filterContext, format.getTarget());
        }
        Frame frameNewFrame = filterContext.getFrameManager().newFrame(format);
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
