package android.filterpacks.imageproc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GLFrame;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.filterfw.format.ObjectFormat;
import android.filterfw.geometry.Point;
import android.filterfw.geometry.Quad;
import android.opengl.GLES20;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes.dex */
public class DrawRectFilter extends Filter {

    @GenerateFieldPort(hasDefault = true, name = "colorBlue")
    private float mColorBlue;

    @GenerateFieldPort(hasDefault = true, name = "colorGreen")
    private float mColorGreen;

    @GenerateFieldPort(hasDefault = true, name = "colorRed")
    private float mColorRed;
    private final String mFixedColorFragmentShader;
    private ShaderProgram mProgram;
    private final String mVertexShader;

    public DrawRectFilter(String str) {
        super(str);
        this.mColorRed = 0.8f;
        this.mColorGreen = 0.8f;
        this.mColorBlue = 0.0f;
        this.mVertexShader = "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n";
        this.mFixedColorFragmentShader = "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n";
    }

    private void renderBox(Quad quad) {
        float[] fArr = {this.mColorRed, this.mColorGreen, this.mColorBlue, 1.0f};
        Point point = quad.f129p0;
        Point point2 = quad.f130p1;
        Point point3 = quad.p3;
        Point point4 = quad.p2;
        float[] fArr2 = {point.f127x, point.f128y, point2.f127x, point2.f128y, point3.f127x, point3.f128y, point4.f127x, point4.f128y};
        this.mProgram.setHostValue(CalendarContract.ColorsColumns.COLOR, fArr);
        this.mProgram.setAttributeValues("aPosition", fArr2, 2);
        this.mProgram.setVertexCount(4);
        this.mProgram.beginDrawing();
        GLES20.glLineWidth(1.0f);
        GLES20.glDrawArrays(2, 0, 4);
    }

    @Override // android.filterfw.core.Filter
    public FrameFormat getOutputFormat(String str, FrameFormat frameFormat) {
        return frameFormat;
    }

    @Override // android.filterfw.core.Filter
    public void prepare(FilterContext filterContext) {
        this.mProgram = new ShaderProgram(filterContext, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n", "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n");
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        Frame framePullInput = pullInput("image");
        Quad quadTranslated = ((Quad) pullInput("box").getObjectValue()).scaled(2.0f).translated(-1.0f, -1.0f);
        GLFrame gLFrame = (GLFrame) filterContext.getFrameManager().duplicateFrame(framePullInput);
        gLFrame.focus();
        renderBox(quadTranslated);
        pushOutput("image", gLFrame);
        gLFrame.release();
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addMaskedInputPort("image", ImageFormat.create(3, 3));
        addMaskedInputPort("box", ObjectFormat.fromClass(Quad.class, 1));
        addOutputBasedOnInput("image", "image");
    }
}
