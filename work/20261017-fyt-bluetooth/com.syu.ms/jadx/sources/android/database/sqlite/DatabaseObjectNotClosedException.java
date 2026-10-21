package android.database.sqlite;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseObjectNotClosedException extends RuntimeException {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f126s = "Application did not close the cursor or database object that was opened here";

    public DatabaseObjectNotClosedException() {
        super(f126s);
    }
}
