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
import android.filterfw.geometry.Point;
import android.filterfw.geometry.Quad;

/* JADX INFO: loaded from: classes.dex */
public class RotateFilter extends Filter {

    @GenerateFieldPort(name = "angle")
    private int mAngle;
    private int mHeight;
    private int mOutputHeight;
    private int mOutputWidth;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;
    private int mWidth;

    public RotateFilter(String str) {
        super(str);
        this.mTileSize = 640;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mTarget = 0;
    }

    private void updateParameters() {
        float f2;
        int i2 = this.mAngle;
        if (i2 % 90 != 0) {
            throw new RuntimeException("degree has to be multiply of 90.");
        }
        float f3 = 0.0f;
        if (i2 % 180 == 0) {
            f3 = i2 % 360 == 0 ? 1.0f : -1.0f;
            f2 = 0.0f;
        } else {
            f2 = (i2 + 90) % 360 != 0 ? 1.0f : -1.0f;
            this.mOutputWidth = this.mHeight;
            this.mOutputHeight = this.mWidth;
        }
        float f4 = -f3;
        float f5 = -f2;
        float f6 = (f3 + f2 + 1.0f) * 0.5f;
        ((ShaderProgram) this.mProgram).setTargetRegion(new Quad(new Point((f4 + f2 + 1.0f) * 0.5f, ((f5 - f3) + 1.0f) * 0.5f), new Point(f6, ((f2 - f3) + 1.0f) * 0.5f), new Point(((f4 - f2) + 1.0f) * 0.5f, (f5 + f3 + 1.0f) * 0.5f), new Point(((f3 - f2) + 1.0f) * 0.5f, f6)));
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (this.mProgram != null) {
            updateParameters();
        }
    }

    public void initProgram(FilterContext filterContext, int i2) {
        if (i2 != 3) {
            throw new RuntimeException(c.e("Filter Sharpen does not support frames of target ", i2, "!"));
        }
        ShaderProgram shaderProgramCreateIdentity = ShaderProgram.createIdentity(filterContext);
        shaderProgramCreateIdentity.setMaximumTileSize(this.mTileSize);
        shaderProgramCreateIdentity.setClearsOutput(true);
        this.mProgram = shaderProgramCreateIdentity;
        this.mTarget = i2;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("image");
        FrameFormat format = framePullInput.getFormat();
        if (this.mProgram == null || format.getTarget() != this.mTarget) {
            initProgram(filterContext, format.getTarget());
        }
        if (format.getWidth() != this.mWidth || format.getHeight() != this.mHeight) {
            this.mWidth = format.getWidth();
            int height = format.getHeight();
            this.mHeight = height;
            this.mOutputWidth = this.mWidth;
            this.mOutputHeight = height;
            updateParameters();
        }
        Frame frameNewFrame = filterContext.getFrameManager().newFrame(ImageFormat.create(this.mOutputWidth, this.mOutputHeight, 3, 3));
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
