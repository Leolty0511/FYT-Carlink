package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.provider.DocumentsContract;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import z.q;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ClassVerificationFailure"})
public final class ImageDecoderKt {
    @RequiresApi(28)
    public static final Bitmap decodeBitmap(ImageDecoder.Source source, q qVar) throws IOException {
        t.b.h(source, "<this>");
        t.b.h(qVar, Camera.Parameters.SCENE_MODE_ACTION);
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new ImageDecoder.OnHeaderDecodedListener(qVar) { // from class: androidx.core.graphics.ImageDecoderKt.decodeBitmap.1
            final /* synthetic */ q $action;

            @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source2) {
                t.b.h(imageDecoder, "decoder");
                t.b.h(imageInfo, DocumentsContract.EXTRA_INFO);
                t.b.h(source2, "source");
                throw null;
            }
        });
        t.b.g(bitmapDecodeBitmap, "crossinline action: Imag…ction(info, source)\n    }");
        return bitmapDecodeBitmap;
    }

    @RequiresApi(28)
    public static final Drawable decodeDrawable(ImageDecoder.Source source, q qVar) throws IOException {
        t.b.h(source, "<this>");
        t.b.h(qVar, Camera.Parameters.SCENE_MODE_ACTION);
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new ImageDecoder.OnHeaderDecodedListener(qVar) { // from class: androidx.core.graphics.ImageDecoderKt.decodeDrawable.1
            final /* synthetic */ q $action;

            @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source2) {
                t.b.h(imageDecoder, "decoder");
                t.b.h(imageInfo, DocumentsContract.EXTRA_INFO);
                t.b.h(source2, "source");
                throw null;
            }
        });
        t.b.g(drawableDecodeDrawable, "crossinline action: Imag…ction(info, source)\n    }");
        return drawableDecodeDrawable;
    }
}
