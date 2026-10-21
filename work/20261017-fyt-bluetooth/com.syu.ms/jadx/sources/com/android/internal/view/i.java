package com.android.internal.view;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;

/* JADX INFO: loaded from: classes.dex */
public class i implements InputConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f1248a;

    public static class a extends c.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static a f1249h = new a();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static int f1250i = 1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1251a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1252b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f1253c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public CharSequence f1254d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CharSequence f1255e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ExtractedText f1256f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1257g;

        public static a N2() {
            a aVar;
            synchronized (a.class) {
                aVar = f1249h;
                if (aVar != null) {
                    f1249h = null;
                    aVar.f1252b = false;
                } else {
                    aVar = new a();
                }
                int i2 = f1250i;
                f1250i = i2 + 1;
                aVar.f1251a = i2;
            }
            return aVar;
        }

        @Override // com.android.internal.view.c
        public void B0(ExtractedText extractedText, int i2) {
            synchronized (this) {
                if (i2 == this.f1251a) {
                    this.f1256f = extractedText;
                    this.f1252b = true;
                    notifyAll();
                } else {
                    Log.i("InputConnectionWrapper.ICC", "Got out-of-sequence callback " + i2 + " (expected " + this.f1251a + ") in setExtractedText, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.c
        public void E(CharSequence charSequence, int i2) {
            synchronized (this) {
                if (i2 == this.f1251a) {
                    this.f1254d = charSequence;
                    this.f1252b = true;
                    notifyAll();
                } else {
                    Log.i("InputConnectionWrapper.ICC", "Got out-of-sequence callback " + i2 + " (expected " + this.f1251a + ") in setTextAfterCursor, ignoring.");
                }
            }
        }

        public final void M2() {
            synchronized (a.class) {
                if (f1249h == null) {
                    this.f1254d = null;
                    this.f1253c = null;
                    this.f1256f = null;
                    f1249h = this;
                }
            }
        }

        public void O2() {
            long jUptimeMillis = SystemClock.uptimeMillis() + 2000;
            while (!this.f1252b) {
                long jUptimeMillis2 = jUptimeMillis - SystemClock.uptimeMillis();
                if (jUptimeMillis2 <= 0) {
                    Log.w("InputConnectionWrapper.ICC", "Timed out waiting on IInputContextCallback");
                    return;
                }
                try {
                    wait(jUptimeMillis2);
                } catch (InterruptedException unused) {
                }
            }
        }

        @Override // com.android.internal.view.c
        public void f1(CharSequence charSequence, int i2) {
            synchronized (this) {
                if (i2 == this.f1251a) {
                    this.f1253c = charSequence;
                    this.f1252b = true;
                    notifyAll();
                } else {
                    Log.i("InputConnectionWrapper.ICC", "Got out-of-sequence callback " + i2 + " (expected " + this.f1251a + ") in setTextBeforeCursor, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.c
        public void p1(CharSequence charSequence, int i2) {
            synchronized (this) {
                if (i2 == this.f1251a) {
                    this.f1255e = charSequence;
                    this.f1252b = true;
                    notifyAll();
                } else {
                    Log.i("InputConnectionWrapper.ICC", "Got out-of-sequence callback " + i2 + " (expected " + this.f1251a + ") in setSelectedText, ignoring.");
                }
            }
        }

        @Override // com.android.internal.view.c
        public void x1(int i2, int i3) {
            synchronized (this) {
                if (i3 == this.f1251a) {
                    this.f1257g = i2;
                    this.f1252b = true;
                    notifyAll();
                } else {
                    Log.i("InputConnectionWrapper.ICC", "Got out-of-sequence callback " + i3 + " (expected " + this.f1251a + ") in setCursorCapsMode, ignoring.");
                }
            }
        }
    }

    public i(b bVar) {
        this.f1248a = bVar;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        try {
            this.f1248a.beginBatchEdit();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        try {
            this.f1248a.clearMetaKeyStates(i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        try {
            this.f1248a.commitCompletion(completionInfo);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        try {
            this.f1248a.commitCorrection(correctionInfo);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        try {
            this.f1248a.commitText(charSequence, i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i3) {
        try {
            this.f1248a.deleteSurroundingText(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        try {
            this.f1248a.endBatchEdit();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        try {
            this.f1248a.finishComposingText();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i2) {
        int i3;
        try {
            a aVarN2 = a.N2();
            this.f1248a.getCursorCapsMode(i2, aVarN2.f1251a, aVarN2);
            synchronized (aVarN2) {
                aVarN2.O2();
                i3 = aVarN2.f1252b ? aVarN2.f1257g : 0;
            }
            aVarN2.M2();
            return i3;
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        ExtractedText extractedText;
        try {
            a aVarN2 = a.N2();
            this.f1248a.getExtractedText(extractedTextRequest, i2, aVarN2.f1251a, aVarN2);
            synchronized (aVarN2) {
                aVarN2.O2();
                extractedText = aVarN2.f1252b ? aVarN2.f1256f : null;
            }
            aVarN2.M2();
            return extractedText;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i2) {
        CharSequence charSequence;
        try {
            a aVarN2 = a.N2();
            this.f1248a.getSelectedText(i2, aVarN2.f1251a, aVarN2);
            synchronized (aVarN2) {
                aVarN2.O2();
                charSequence = aVarN2.f1252b ? aVarN2.f1255e : null;
            }
            aVarN2.M2();
            return charSequence;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i2, int i3) {
        CharSequence charSequence;
        try {
            a aVarN2 = a.N2();
            this.f1248a.getTextAfterCursor(i2, i3, aVarN2.f1251a, aVarN2);
            synchronized (aVarN2) {
                aVarN2.O2();
                charSequence = aVarN2.f1252b ? aVarN2.f1254d : null;
            }
            aVarN2.M2();
            return charSequence;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i2, int i3) {
        CharSequence charSequence;
        try {
            a aVarN2 = a.N2();
            this.f1248a.getTextBeforeCursor(i2, i3, aVarN2.f1251a, aVarN2);
            synchronized (aVarN2) {
                aVarN2.O2();
                charSequence = aVarN2.f1252b ? aVarN2.f1253c : null;
            }
            aVarN2.M2();
            return charSequence;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        try {
            this.f1248a.performContextMenuAction(i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        try {
            this.f1248a.performEditorAction(i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        try {
            this.f1248a.performPrivateCommand(str, bundle);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z2) {
        try {
            this.f1248a.reportFullscreenMode(z2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        try {
            this.f1248a.sendKeyEvent(keyEvent);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i2, int i3) {
        try {
            this.f1248a.setComposingRegion(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i2) {
        try {
            this.f1248a.setComposingText(charSequence, i2);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i2, int i3) {
        try {
            this.f1248a.setSelection(i2, i3);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }
}
