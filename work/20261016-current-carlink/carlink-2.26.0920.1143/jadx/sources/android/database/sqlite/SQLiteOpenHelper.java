package android.database.sqlite;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.os.FileUtils;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class SQLiteOpenHelper {
    private static final String TAG = "SQLiteOpenHelper";
    private final Context mContext;
    private SQLiteDatabase mDatabase;
    private boolean mIsInitializing;
    private final int mMinimumSupportedVersion;
    private final String mName;
    private final int mNewVersion;
    private final SQLiteDatabase.OpenParams.Builder mOpenParamsBuilder;

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        this(context, str, cursorFactory, i2, null);
    }

    private SQLiteDatabase getDatabaseLocked(boolean z2) {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        SQLiteDatabase sQLiteDatabase = this.mDatabase;
        if (sQLiteDatabase != null) {
            if (!sQLiteDatabase.isOpen()) {
                this.mDatabase = null;
            } else if (!z2 || !this.mDatabase.isReadOnly()) {
                return this.mDatabase;
            }
        }
        if (this.mIsInitializing) {
            throw new IllegalStateException("getDatabase called recursively");
        }
        SQLiteDatabase sQLiteDatabaseOpenDatabase2 = this.mDatabase;
        try {
            this.mIsInitializing = true;
            if (sQLiteDatabaseOpenDatabase2 == null) {
                String str = this.mName;
                if (str == null) {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.createInMemory(this.mOpenParamsBuilder.build());
                } else {
                    File databasePath = this.mContext.getDatabasePath(str);
                    SQLiteDatabase.OpenParams openParamsBuild = this.mOpenParamsBuilder.build();
                    try {
                        sQLiteDatabaseOpenDatabase2 = SQLiteDatabase.openDatabase(databasePath, openParamsBuild);
                        setFilePermissionsForDb(databasePath.getPath());
                    } catch (SQLException e2) {
                        if (z2) {
                            throw e2;
                        }
                        Log.e(TAG, "Couldn't open " + this.mName + " for writing (will try read-only):", e2);
                        sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(databasePath, openParamsBuild.toBuilder().addOpenFlags(1).build());
                        sQLiteDatabaseOpenDatabase2 = sQLiteDatabaseOpenDatabase;
                    }
                }
                sQLiteDatabaseOpenDatabase2 = sQLiteDatabaseOpenDatabase;
            } else if (z2 && sQLiteDatabaseOpenDatabase2.isReadOnly()) {
                sQLiteDatabaseOpenDatabase2.reopenReadWrite();
            }
            onConfigure(sQLiteDatabaseOpenDatabase2);
            int version = sQLiteDatabaseOpenDatabase2.getVersion();
            if (version != this.mNewVersion) {
                if (sQLiteDatabaseOpenDatabase2.isReadOnly()) {
                    throw new SQLiteException("Can't upgrade read-only database from version " + sQLiteDatabaseOpenDatabase2.getVersion() + " to " + this.mNewVersion + ": " + this.mName);
                }
                if (version > 0 && version < this.mMinimumSupportedVersion) {
                    File file = new File(sQLiteDatabaseOpenDatabase2.getPath());
                    onBeforeDelete(sQLiteDatabaseOpenDatabase2);
                    sQLiteDatabaseOpenDatabase2.close();
                    if (!SQLiteDatabase.deleteDatabase(file)) {
                        throw new IllegalStateException("Unable to delete obsolete database " + this.mName + " with version " + version);
                    }
                    this.mIsInitializing = false;
                    SQLiteDatabase databaseLocked = getDatabaseLocked(z2);
                    this.mIsInitializing = false;
                    if (sQLiteDatabaseOpenDatabase2 != this.mDatabase) {
                        sQLiteDatabaseOpenDatabase2.close();
                    }
                    return databaseLocked;
                }
                sQLiteDatabaseOpenDatabase2.beginTransaction();
                try {
                    if (version == 0) {
                        onCreate(sQLiteDatabaseOpenDatabase2);
                    } else {
                        int i2 = this.mNewVersion;
                        if (version > i2) {
                            onDowngrade(sQLiteDatabaseOpenDatabase2, version, i2);
                        } else {
                            onUpgrade(sQLiteDatabaseOpenDatabase2, version, i2);
                        }
                    }
                    sQLiteDatabaseOpenDatabase2.setVersion(this.mNewVersion);
                    sQLiteDatabaseOpenDatabase2.setTransactionSuccessful();
                    sQLiteDatabaseOpenDatabase2.endTransaction();
                } catch (Throwable th) {
                    sQLiteDatabaseOpenDatabase2.endTransaction();
                    throw th;
                }
            }
            onOpen(sQLiteDatabaseOpenDatabase2);
            if (sQLiteDatabaseOpenDatabase2.isReadOnly()) {
                Log.w(TAG, "Opened " + this.mName + " in read-only mode");
            }
            this.mDatabase = sQLiteDatabaseOpenDatabase2;
            this.mIsInitializing = false;
            return sQLiteDatabaseOpenDatabase2;
        } catch (Throwable th2) {
            this.mIsInitializing = false;
            if (sQLiteDatabaseOpenDatabase2 != null && sQLiteDatabaseOpenDatabase2 != this.mDatabase) {
                sQLiteDatabaseOpenDatabase2.close();
            }
            throw th2;
        }
    }

    private static void setFilePermissionsForDb(String str) {
        FileUtils.setPermissions(str, 432, -1, -1);
    }

    public synchronized void close() {
        if (this.mIsInitializing) {
            throw new IllegalStateException("Closed during initialization");
        }
        SQLiteDatabase sQLiteDatabase = this.mDatabase;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            this.mDatabase.close();
            this.mDatabase = null;
        }
    }

    public String getDatabaseName() {
        return this.mName;
    }

    public SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked(false);
        }
        return databaseLocked;
    }

    public SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked(true);
        }
        return databaseLocked;
    }

    public void onBeforeDelete(SQLiteDatabase sQLiteDatabase) {
    }

    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase);

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        throw new SQLiteException(m.e("Can't downgrade database from version ", i2, " to ", i3));
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3);

    public void setIdleConnectionTimeout(long j2) {
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                throw new IllegalStateException("Connection timeout setting cannot be changed after opening the database");
            }
            this.mOpenParamsBuilder.setIdleConnectionTimeout(j2);
        }
    }

    public void setLookasideConfig(int i2, int i3) {
        synchronized (this) {
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                throw new IllegalStateException("Lookaside memory config cannot be changed after opening the database");
            }
            this.mOpenParamsBuilder.setLookasideConfig(i2, i3);
        }
    }

    public void setWriteAheadLoggingEnabled(boolean z2) {
        synchronized (this) {
            if (this.mOpenParamsBuilder.isWriteAheadLoggingEnabled() != z2) {
                SQLiteDatabase sQLiteDatabase = this.mDatabase;
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen() && !this.mDatabase.isReadOnly()) {
                    if (z2) {
                        this.mDatabase.enableWriteAheadLogging();
                    } else {
                        this.mDatabase.disableWriteAheadLogging();
                    }
                }
                this.mOpenParamsBuilder.setWriteAheadLoggingEnabled(z2);
            }
        }
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2, DatabaseErrorHandler databaseErrorHandler) {
        this(context, str, cursorFactory, i2, 0, databaseErrorHandler);
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2, int i3, DatabaseErrorHandler databaseErrorHandler) {
        if (i2 >= 1) {
            this.mContext = context;
            this.mName = str;
            this.mNewVersion = i2;
            this.mMinimumSupportedVersion = Math.max(0, i3);
            SQLiteDatabase.OpenParams.Builder builder = new SQLiteDatabase.OpenParams.Builder();
            this.mOpenParamsBuilder = builder;
            builder.setCursorFactory(cursorFactory);
            builder.setErrorHandler(databaseErrorHandler);
            builder.addOpenFlags(268435456);
            return;
        }
        throw new IllegalArgumentException(c.d("Version must be >= 1, was ", i2));
    }
}
