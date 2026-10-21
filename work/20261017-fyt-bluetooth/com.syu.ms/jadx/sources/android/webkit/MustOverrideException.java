package android.webkit;

/* JADX INFO: loaded from: classes.dex */
class MustOverrideException extends RuntimeException {
    public MustOverrideException() {
        super("abstract function called: must be overriden!");
    }
}
