package android.filterpacks.base;

import android.app.Instrumentation;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.FrameFormat;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.GenerateFinalPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.format.PrimitiveFormat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class InputStreamSource extends Filter {

    @GenerateFieldPort(name = Instrumentation.REPORT_KEY_STREAMRESULT)
    private InputStream mInputStream;

    @GenerateFinalPort(hasDefault = true, name = "format")
    private MutableFrameFormat mOutputFormat;

    @GenerateFinalPort(name = TypedValues.AttributesType.S_TARGET)
    private String mTarget;

    public InputStreamSource(String str) {
        super(str);
        this.mOutputFormat = null;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            int i2 = 0;
            while (true) {
                int i3 = this.mInputStream.read(bArr);
                if (i3 <= 0) {
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
                    this.mOutputFormat.setDimensions(i2);
                    Frame frameNewFrame = filterContext.getFrameManager().newFrame(this.mOutputFormat);
                    frameNewFrame.setData(byteBufferWrap);
                    pushOutput("data", frameNewFrame);
                    frameNewFrame.release();
                    closeOutputPort("data");
                    return;
                }
                byteArrayOutputStream.write(bArr, 0, i3);
                i2 += i3;
            }
        } catch (IOException e2) {
            throw new RuntimeException("InputStreamSource: Could not read stream: " + e2.getMessage() + "!");
        }
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        int targetString = FrameFormat.readTargetString(this.mTarget);
        if (this.mOutputFormat == null) {
            this.mOutputFormat = PrimitiveFormat.createByteFormat(targetString);
        }
        addOutputPort("data", this.mOutputFormat);
    }
}
