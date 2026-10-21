package android.print;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class PrintFileDocumentAdapter extends PrintDocumentAdapter {
    private static final String LOG_TAG = "PrintedFileDocumentAdapter";
    private final Context mContext;
    private final PrintDocumentInfo mDocumentInfo;
    private final File mFile;
    private WriteFileAsyncTask mWriteFileAsyncTask;

    public final class WriteFileAsyncTask extends AsyncTask<Void, Void, Void> {
        private final CancellationSignal mCancellationSignal;
        private final ParcelFileDescriptor mDestination;
        private final PrintDocumentAdapter.WriteResultCallback mResultCallback;

        public WriteFileAsyncTask(ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            this.mDestination = parcelFileDescriptor;
            this.mResultCallback = writeResultCallback;
            this.mCancellationSignal = cancellationSignal;
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: android.print.PrintFileDocumentAdapter.WriteFileAsyncTask.1
                @Override // android.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    WriteFileAsyncTask.this.cancel(true);
                }
            });
        }

        /* JADX WARN: Not initialized variable reg: 2, insn: 0x0056: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:23:0x0056 */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) throws Throwable {
            FileInputStream fileInputStream;
            AutoCloseable autoCloseable;
            int i2;
            FileOutputStream fileOutputStream = new FileOutputStream(this.mDestination.getFileDescriptor());
            byte[] bArr = new byte[8192];
            AutoCloseable autoCloseable2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(PrintFileDocumentAdapter.this.mFile);
                    while (!isCancelled() && (i2 = fileInputStream.read(bArr)) >= 0) {
                        try {
                            fileOutputStream.write(bArr, 0, i2);
                        } catch (IOException e2) {
                            e = e2;
                            Log.e(PrintFileDocumentAdapter.LOG_TAG, "Error writing data!", e);
                            this.mResultCallback.onWriteFailed(PrintFileDocumentAdapter.this.mContext.getString(17040864));
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    autoCloseable2 = autoCloseable;
                    IoUtils.closeQuietly(autoCloseable2);
                    IoUtils.closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                IoUtils.closeQuietly(autoCloseable2);
                IoUtils.closeQuietly(fileOutputStream);
                throw th;
            }
            IoUtils.closeQuietly(fileInputStream);
            IoUtils.closeQuietly(fileOutputStream);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onCancelled(Void r3) {
            this.mResultCallback.onWriteFailed(PrintFileDocumentAdapter.this.mContext.getString(17040863));
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            this.mResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
        }
    }

    public PrintFileDocumentAdapter(Context context, File file, PrintDocumentInfo printDocumentInfo) {
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null!");
        }
        if (printDocumentInfo == null) {
            throw new IllegalArgumentException("documentInfo cannot be null!");
        }
        this.mContext = context;
        this.mFile = file;
        this.mDocumentInfo = printDocumentInfo;
    }

    @Override // android.print.PrintDocumentAdapter
    public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
        layoutResultCallback.onLayoutFinished(this.mDocumentInfo, false);
    }

    @Override // android.print.PrintDocumentAdapter
    public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        WriteFileAsyncTask writeFileAsyncTask = new WriteFileAsyncTask(parcelFileDescriptor, cancellationSignal, writeResultCallback);
        this.mWriteFileAsyncTask = writeFileAsyncTask;
        writeFileAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
}
