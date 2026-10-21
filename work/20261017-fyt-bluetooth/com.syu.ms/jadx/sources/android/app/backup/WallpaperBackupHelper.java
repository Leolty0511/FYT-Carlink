package android.app.backup;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperBackupHelper extends FileBackupHelperBase implements BackupHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "WallpaperBackupHelper";
    public static final String WALLPAPER_IMAGE_KEY = "/data/data/com.android.settings/files/wallpaper";
    public static final String WALLPAPER_INFO_KEY = "/data/system/wallpaper_info.xml";
    public Context mContext;
    public double mDesiredMinHeight;
    public double mDesiredMinWidth;
    public String[] mFiles;
    public String[] mKeys;
    public static final String WALLPAPER_IMAGE = new File(Environment.getUserSystemDirectory(0), Context.WALLPAPER_SERVICE).getAbsolutePath();
    public static final String WALLPAPER_INFO = new File(Environment.getUserSystemDirectory(0), "wallpaper_info.xml").getAbsolutePath();
    private static final String STAGE_FILE = new File(Environment.getUserSystemDirectory(0), "wallpaper-tmp").getAbsolutePath();

    public WallpaperBackupHelper(Context context, String[] strArr, String[] strArr2) {
        super(context);
        this.mContext = context;
        this.mFiles = strArr;
        this.mKeys = strArr2;
        WallpaperManager wallpaperManager = (WallpaperManager) context.getSystemService(Context.WALLPAPER_SERVICE);
        this.mDesiredMinWidth = wallpaperManager.getDesiredMinimumWidth();
        double desiredMinimumHeight = wallpaperManager.getDesiredMinimumHeight();
        this.mDesiredMinHeight = desiredMinimumHeight;
        if (this.mDesiredMinWidth <= 0.0d || desiredMinimumHeight <= 0.0d) {
            Display defaultDisplay = ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            this.mDesiredMinWidth = point.f137x;
            this.mDesiredMinHeight = point.f138y;
        }
    }

    @Override // android.app.backup.BackupHelper
    public void performBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
        FileBackupHelperBase.performBackup_checked(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor2, this.mFiles, this.mKeys);
    }

    @Override // android.app.backup.BackupHelper
    public void restoreEntity(BackupDataInputStream backupDataInputStream) {
        String key = backupDataInputStream.getKey();
        if (isKeyInList(key, this.mKeys)) {
            if (!key.equals(WALLPAPER_IMAGE_KEY)) {
                if (key.equals(WALLPAPER_INFO_KEY)) {
                    writeFile(new File(WALLPAPER_INFO), backupDataInputStream);
                    return;
                }
                return;
            }
            String str = STAGE_FILE;
            File file = new File(str);
            if (writeFile(file, backupDataInputStream)) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(str, options);
                double d2 = this.mDesiredMinWidth / ((double) options.outWidth);
                double d3 = this.mDesiredMinHeight / ((double) options.outHeight);
                if (d2 <= 0.0d || d2 >= 1.33d || d3 <= 0.0d || d3 >= 1.33d) {
                    file.delete();
                } else {
                    file.renameTo(new File(WALLPAPER_IMAGE));
                }
            }
        }
    }

    @Override // android.app.backup.FileBackupHelperBase, android.app.backup.BackupHelper
    public /* bridge */ /* synthetic */ void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
        super.writeNewStateDescription(parcelFileDescriptor);
    }
}
