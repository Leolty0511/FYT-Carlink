package android.filterpacks.imageproc;

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
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public class StraightenFilter extends Filter {
    private static final float DEGREE_TO_RADIAN = 0.017453292f;

    @GenerateFieldPort(hasDefault = true, name = "angle")
    private float mAngle;
    private int mHeight;

    @GenerateFieldPort(hasDefault = true, name = "maxAngle")
    private float mMaxAngle;
    private Program mProgram;
    private int mTarget;

    @GenerateFieldPort(hasDefault = true, name = "tile_size")
    private int mTileSize;
    private int mWidth;

    public StraightenFilter(String str) {
        super(str);
        this.mAngle = 0.0f;
        this.mMaxAngle = 45.0f;
        this.mTileSize = DisplayMetrics.DENSITY_XXXHIGH;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mTarget = 0;
    }

    private void updateParameters() {
        float fCos = (float) Math.cos(this.mAngle * DEGREE_TO_RADIAN);
        float fSin = (float) Math.sin(this.mAngle * DEGREE_TO_RADIAN);
        float f2 = this.mMaxAngle;
        if (f2 <= 0.0f) {
            throw new RuntimeException("Max angle is out of range (0-180).");
        }
        if (f2 > 90.0f) {
            f2 = 90.0f;
        }
        this.mMaxAngle = f2;
        float f3 = -fCos;
        int i2 = this.mWidth;
        int i3 = this.mHeight;
        float f4 = -fSin;
        Point point = new Point((i2 * f3) + (i3 * fSin), (i2 * f4) - (i3 * fCos));
        int i4 = this.mWidth;
        int i5 = this.mHeight;
        Point point2 = new Point((i4 * fCos) + (i5 * fSin), (i4 * fSin) - (i5 * fCos));
        int i6 = this.mWidth;
        int i7 = this.mHeight;
        Point point3 = new Point((f3 * i6) - (i7 * fSin), (f4 * i6) + (i7 * fCos));
        int i8 = this.mWidth;
        int i9 = this.mHeight;
        Point point4 = new Point((i8 * fCos) - (i9 * fSin), (fSin * i8) + (fCos * i9));
        float fMin = Math.min(this.mWidth / Math.max(Math.abs(point.f127x), Math.abs(point2.f127x)), this.mHeight / Math.max(Math.abs(point.f128y), Math.abs(point2.f128y))) * 0.5f;
        point.set(((point.f127x * fMin) / this.mWidth) + 0.5f, ((point.f128y * fMin) / this.mHeight) + 0.5f);
        point2.set(((point2.f127x * fMin) / this.mWidth) + 0.5f, ((point2.f128y * fMin) / this.mHeight) + 0.5f);
        point3.set(((point3.f127x * fMin) / this.mWidth) + 0.5f, ((point3.f128y * fMin) / this.mHeight) + 0.5f);
        point4.set(((point4.f127x * fMin) / this.mWidth) + 0.5f, ((fMin * point4.f128y) / this.mHeight) + 0.5f);
        ((ShaderProgram) this.mProgram).setSourceRegion(new Quad(point, point2, point3, point4));
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (this.mProgram != null) {
            updateParameters();
        }
    }

    public void initProgram(FilterContext filterContext, int i2) {
        if (i2 == 3) {
            ShaderProgram shaderProgramCreateIdentity = ShaderProgram.createIdentity(filterContext);
            shaderProgramCreateIdentity.setMaximumTileSize(this.mTileSize);
            this.mProgram = shaderProgramCreateIdentity;
            this.mTarget = i2;
            return;
        }
        throw new RuntimeException("Filter Sharpen does not support frames of target " + i2 + "!");
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
            this.mHeight = format.getHeight();
            updateParameters();
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
