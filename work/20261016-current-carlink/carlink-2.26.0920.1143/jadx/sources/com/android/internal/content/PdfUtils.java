package com.android.internal.content;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.pdf.PdfRenderer;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes2.dex */
public final class PdfUtils {
    private PdfUtils() {
    }

    public static AssetFileDescriptor openPdfThumbnail(File file, Point point) throws IOException {
        final ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
        PdfRenderer.Page pageOpenPage = new PdfRenderer(parcelFileDescriptorOpen).openPage(0);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(point.f71x, point.f72y, Bitmap.Config.ARGB_8888);
        pageOpenPage.render(bitmapCreateBitmap, null, null, 1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        final ParcelFileDescriptor[] parcelFileDescriptorArrCreateReliablePipe = ParcelFileDescriptor.createReliablePipe();
        new AsyncTask<Object, Object, Object>() { // from class: com.android.internal.content.PdfUtils.1
            @Override // android.os.AsyncTask
            public Object doInBackground(Object... objArr) {
                try {
                    Streams.copy(byteArrayInputStream, new FileOutputStream(parcelFileDescriptorArrCreateReliablePipe[1].getFileDescriptor()));
                    IoUtils.closeQuietly(parcelFileDescriptorArrCreateReliablePipe[1]);
                    try {
                        parcelFileDescriptorOpen.close();
                        return null;
                    } catch (IOException e2) {
                        throw new RuntimeException(e2);
                    }
                } catch (IOException e3) {
                    throw new RuntimeException(e3);
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        parcelFileDescriptorOpen.close();
        return new AssetFileDescriptor(parcelFileDescriptorArrCreateReliablePipe[0], 0L, -1L);
    }
}
