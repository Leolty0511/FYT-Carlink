package android.filterpacks.imageproc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.core.Program;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;

/* JADX INFO: loaded from: classes.dex */
public class ImageStitcher extends Filter {
    private int mImageHeight;
    private int mImageWidth;
    private int mInputHeight;
    private int mInputWidth;
    private Frame mOutputFrame;

    @GenerateFieldPort(name = "padSize")
    private int mPadSize;
    private Program mProgram;
    private int mSliceHeight;
    private int mSliceIndex;
    private int mSliceWidth;

    @GenerateFieldPort(name = "xSlices")
    private int mXSlices;

    @GenerateFieldPort(name = "ySlices")
    private int mYSlices;

    public ImageStitcher(String str) {
        super(str);
        this.mSliceIndex = 0;
    }

    private FrameFormat calcOutputFormatForInput(FrameFormat frameFormat) {
        MutableFrameFormat mutableFrameFormatMutableCopy = frameFormat.mutableCopy();
        this.mInputWidth = frameFormat.getWidth();
        int height = frameFormat.getHeight();
        this.mInputHeight = height;
        int i2 = this.mInputWidth;
        int i3 = this.mPadSize;
        int i4 = i2 - (i3 * 2);
        this.mSliceWidth = i4;
        int i5 = height - (i3 * 2);
        this.mSliceHeight = i5;
        int i6 = i4 * this.mXSlices;
        this.mImageWidth = i6;
        int i7 = i5 * this.mYSlices;
        this.mImageHeight = i7;
        mutableFrameFormatMutableCopy.setDimensions(i6, i7);
        return mutableFrameFormatMutableCopy;
    }

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("image");
        FrameFormat format = framePullInput.getFormat();
        if (this.mSliceIndex == 0) {
            this.mOutputFrame = filterContext.getFrameManager().newFrame(calcOutputFormatForInput(format));
        } else if (format.getWidth() != this.mInputWidth || format.getHeight() != this.mInputHeight) {
            throw new RuntimeException("Image size should not change.");
        }
        if (this.mProgram == null) {
            this.mProgram = ShaderProgram.createIdentity(filterContext);
        }
        int i2 = this.mPadSize;
        float f2 = i2 / this.mInputWidth;
        float f3 = i2 / this.mInputHeight;
        int i3 = this.mSliceIndex;
        int i4 = this.mXSlices;
        int i5 = this.mSliceWidth;
        int i6 = (i3 % i4) * i5;
        int i7 = (i3 / i4) * this.mSliceHeight;
        float fMin = Math.min(i5, this.mImageWidth - i6);
        float fMin2 = Math.min(this.mSliceHeight, this.mImageHeight - i7);
        ((ShaderProgram) this.mProgram).setSourceRect(f2, f3, fMin / this.mInputWidth, fMin2 / this.mInputHeight);
        ShaderProgram shaderProgram = (ShaderProgram) this.mProgram;
        float f4 = i6;
        int i8 = this.mImageWidth;
        int i9 = this.mImageHeight;
        shaderProgram.setTargetRect(f4 / i8, i7 / i9, fMin / i8, fMin2 / i9);
        this.mProgram.process(framePullInput, this.mOutputFrame);
        int i10 = this.mSliceIndex + 1;
        this.mSliceIndex = i10;
        if (i10 == this.mXSlices * this.mYSlices) {
            pushOutput("image", this.mOutputFrame);
            this.mOutputFrame.release();
            this.mSliceIndex = 0;
        }
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort("image", ImageFormat.create(3, 3));
        addOutputBasedOnInput("image", "image");
    }
}
