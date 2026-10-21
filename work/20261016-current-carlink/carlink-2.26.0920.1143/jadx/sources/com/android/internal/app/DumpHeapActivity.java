package com.android.internal.app;

import android.accessibilityservice.c;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.DebugUtils;
import android.util.Slog;
import com.android.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class DumpHeapActivity extends Activity {
    public static final String ACTION_DELETE_DUMPHEAP = "com.android.server.am.DELETE_DUMPHEAP";
    public static final String EXTRA_DELAY_DELETE = "delay_delete";
    public static final Uri JAVA_URI = Uri.parse("content://com.android.server.heapdump/java");
    public static final String KEY_DIRECT_LAUNCH = "direct_launch";
    public static final String KEY_PROCESS = "process";
    public static final String KEY_SIZE = "size";
    AlertDialog mDialog;
    boolean mHandled = false;
    String mProcess;
    long mSize;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mProcess = getIntent().getStringExtra(KEY_PROCESS);
        this.mSize = getIntent().getLongExtra(KEY_SIZE, 0L);
        String stringExtra = getIntent().getStringExtra(KEY_DIRECT_LAUNCH);
        if (stringExtra != null) {
            Intent intent = new Intent(ActivityManager.ACTION_REPORT_HEAP_LIMIT);
            intent.setPackage(stringExtra);
            ContentResolver contentResolver = getContentResolver();
            Uri uri = JAVA_URI;
            ClipData clipDataNewUri = ClipData.newUri(contentResolver, "Heap Dump", uri);
            intent.setClipData(clipDataNewUri);
            intent.addFlags(1);
            intent.setType(clipDataNewUri.getDescription().getMimeType(0));
            intent.putExtra(Intent.EXTRA_STREAM, uri);
            try {
                startActivity(intent);
                scheduleDelete();
                this.mHandled = true;
                finish();
                return;
            } catch (ActivityNotFoundException e2) {
                StringBuilder sbV = c.v("Unable to direct launch to ", stringExtra, ": ");
                sbV.append(e2.getMessage());
                Slog.i("DumpHeapActivity", sbV.toString());
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 16974394);
        builder.setTitle(R.string.dump_heap_title);
        builder.setMessage(getString(R.string.dump_heap_text, this.mProcess, DebugUtils.sizeValueToString(this.mSize, null)));
        builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.internal.app.DumpHeapActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                DumpHeapActivity dumpHeapActivity = DumpHeapActivity.this;
                dumpHeapActivity.mHandled = true;
                dumpHeapActivity.sendBroadcast(new Intent(DumpHeapActivity.ACTION_DELETE_DUMPHEAP));
                DumpHeapActivity.this.finish();
            }
        });
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.internal.app.DumpHeapActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                DumpHeapActivity dumpHeapActivity = DumpHeapActivity.this;
                dumpHeapActivity.mHandled = true;
                dumpHeapActivity.scheduleDelete();
                Intent intent2 = new Intent(Intent.ACTION_SEND);
                ContentResolver contentResolver2 = DumpHeapActivity.this.getContentResolver();
                Uri uri2 = DumpHeapActivity.JAVA_URI;
                ClipData clipDataNewUri2 = ClipData.newUri(contentResolver2, "Heap Dump", uri2);
                intent2.setClipData(clipDataNewUri2);
                intent2.addFlags(1);
                intent2.setType(clipDataNewUri2.getDescription().getMimeType(0));
                intent2.putExtra(Intent.EXTRA_STREAM, uri2);
                DumpHeapActivity dumpHeapActivity2 = DumpHeapActivity.this;
                dumpHeapActivity2.startActivity(Intent.createChooser(intent2, dumpHeapActivity2.getText(R.string.dump_heap_title)));
                DumpHeapActivity.this.finish();
            }
        });
        this.mDialog = builder.show();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mDialog.dismiss();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (isChangingConfigurations() || this.mHandled) {
            return;
        }
        sendBroadcast(new Intent(ACTION_DELETE_DUMPHEAP));
    }

    public void scheduleDelete() {
        Intent intent = new Intent(ACTION_DELETE_DUMPHEAP);
        intent.putExtra(EXTRA_DELAY_DELETE, true);
        sendBroadcast(intent);
    }
}
