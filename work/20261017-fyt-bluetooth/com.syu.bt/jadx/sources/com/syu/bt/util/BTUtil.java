package com.syu.bt.util;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.CursorLoader;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.SystemProperties;
import android.os.storage.StorageManager;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.WindowManager;
import com.lsec.core.frame.app.MyActivity;
import com.lsec.core.frame.app.MyApplication;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class BTUtil {
    private static long lastClickTime;
    private static BTUtil mInstance;
    static SoundPool soundPool;
    private static Typeface typeFace_Bold;
    private static Typeface typeFace_Light;
    private static Typeface typeFace_Regular;
    public int[] windowSize;
    public static List<String> usb_list = new ArrayList();
    public static final String[] COLUMNS_PHONE_ONLY = {"data1", "display_name", "starred", "contact_id", "lookup"};
    static int playId = -1000000;
    private String mFileName = "BT.bin";
    private String mFilePath = FinalChip.BSP_PLATFORM_Null;
    private String[] File_Path = {"/mnt/sdcard/", "/storage/USB1/", "/storage/USB2/", "/storage/USB3/", "/storage/USB4/", "/storage/USB5/", "/storage/USB6/", "/storage/USB7/", "/storage/USB8/", "/storage/USB9/", "/storage/USB10/", "/storage/USB11/", "/storage/USB12/", "/storage/USB13/", "/storage/USB3-1/", "/storage/USB3-2/", "/storage/USB3-3/", "/storage/sd1/", "/storage/sd2/"};
    private String fileFlag = "num";
    public String ii = "TZY";
    final long TIME = 86400000;

    public static BTUtil getInstance() {
        if (mInstance == null) {
            mInstance = new BTUtil();
        }
        return mInstance;
    }

    public void setFileName(String mFileName) {
        this.mFileName = mFileName;
    }

    public static List<String> getExternalStoragePath(Context context) {
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        ArrayList<String> list = new ArrayList<>();
        try {
            Method getVolumeListMethod = StorageManager.class.getMethod("getVolumeList", new Class[0]);
            getVolumeListMethod.setAccessible(true);
            Object invokes = getVolumeListMethod.invoke(storageManager, new Object[0]);
            int length = Array.getLength(invokes);
            for (int i = 0; i < length; i++) {
                Object storageVolumeElement = Array.get(invokes, i);
                String path = (String) storageVolumeElement.getClass().getMethod("getPath", new Class[0]).invoke(storageVolumeElement, new Object[0]);
                if (!path.equals("/storage/emulated/0") && path.startsWith("/storage")) {
                    list.add(path);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean isExistFile() {
        boolean flag = false;
        usb_list = getExternalStoragePath(MyApplication.myApp);
        for (String path : usb_list) {
            this.mFilePath = String.valueOf(path) + "/" + this.mFileName;
            Log.d("file", " 33 isExistFile mFilePath = " + this.mFilePath);
            File fr = new File(this.mFilePath);
            if (fr.exists()) {
                flag = true;
                break;
            }
        }
        Log.d("file", " 11 isExistFile flag = " + flag);
        return flag;
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    public void setFilePath(String mFilePath) {
        this.mFilePath = mFilePath;
    }

    public static boolean autoBond(BluetoothDevice device, String strPin) throws Exception {
        Method autoBondMethod = device.getClass().getMethod("setPin", byte[].class);
        Boolean result = (Boolean) autoBondMethod.invoke(device, strPin.getBytes());
        return result.booleanValue();
    }

    public static boolean createBond(BluetoothDevice device) throws Exception {
        Method createBondMethod = device.getClass().getMethod("createBond", new Class[0]);
        Boolean returnValue = (Boolean) createBondMethod.invoke(device, new Object[0]);
        return returnValue.booleanValue();
    }

    public void deleteFile(String name) {
        Log.d("gdy13", " 33 DEL_CONTACT_ALL   ");
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
        if (dir.exists()) {
            String path = String.valueOf(dir.getPath()) + "/" + name;
            File f = new File(path);
            if (f.exists()) {
                f.delete();
            }
        }
    }

    public void deleteFloderFileByData() {
        File[] fileArray;
        File file = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/crash");
        if (file.exists() && (fileArray = file.listFiles()) != null && fileArray.length > 0) {
            for (File f : fileArray) {
                if (f.exists() && f.isFile()) {
                    long data = System.currentTimeMillis() - f.lastModified();
                    if (data >= 86400000) {
                        f.delete();
                    }
                }
            }
        }
    }

    public List<SparseArray<String>> readFile(String filename) {
        List<SparseArray<String>> list = null;
        Log.d("BOOK1", "------------------Start Read Contacts 00 readFile -----------------------  ");
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
        if (dir.exists()) {
            String path = String.valueOf(dir.getPath()) + "/" + filename;
            Log.d("BOOK1", "------------------Start Read Contacts 11 path-----------------------" + path);
            File f = new File(path);
            if (f.exists()) {
                list = new ArrayList<>();
                try {
                    Log.d("BOOK", "------------------Start Read Contacts From File-----------------------" + list.size());
                    InputStream is = new FileInputStream(f);
                    BufferedReader reader = new BufferedReader(new InputStreamReader(is));
                    while (true) {
                        String str = reader.readLine();
                        if (str == null) {
                            break;
                        }
                        if (str.contains(this.fileFlag)) {
                            String name = str.substring(0, str.lastIndexOf(this.fileFlag));
                            String numeber = str.replace(String.valueOf(name) + this.fileFlag, FinalChip.BSP_PLATFORM_Null);
                            SparseArray<String> map = App_Bt.getNewMapContact(name, numeber);
                            list.add(map);
                        }
                    }
                    Log.d("BOOK", "------------------Read Contacts From File-----------------------" + list.size());
                    is.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public void writeFile(List<SparseArray<String>> list, String filename) {
        if (!App_Bt.bSaveContactsToUrl || App_Bt.bAutoSavePhoneBook) {
            File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
            if (!dir.exists()) {
                dir.mkdirs();
            }
            String path = String.valueOf(dir.getPath()) + "/" + filename;
            File f = new File(path);
            if (f.exists()) {
                f.delete();
            }
            try {
                Log.d("BOOK", "------------------Start  writeFile-----------------------");
                FileOutputStream fos = new FileOutputStream(f);
                for (SparseArray<String> map : list) {
                    fos.write((String.valueOf(map.get(FinalBtCtrl.ContactItem_Txt_Name)) + "num").getBytes("utf-8"));
                    fos.write(map.get(FinalBtCtrl.ContactItem_Txt_Number).getBytes("utf-8"));
                    fos.write("\r\n".getBytes());
                }
                fos.flush();
                FileDescriptor fd = fos.getFD();
                fd.sync();
                fos.close();
                Log.d("BOOK", "------------------Save Contacts In File-----------------------");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public List<SparseArray<String>> readFavContactFromFile(String filename) {
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
        if (!dir.exists()) {
            return null;
        }
        String path = String.valueOf(dir.getPath()) + "/" + filename;
        File f = new File(path);
        if (!f.exists()) {
            return null;
        }
        List<SparseArray<String>> list = new ArrayList<>();
        try {
            InputStream is = new FileInputStream(f);
            BufferedReader reader = new BufferedReader(new InputStreamReader(is));
            while (true) {
                String str = reader.readLine();
                if (str == null) {
                    break;
                }
                int pos1 = str.lastIndexOf("first");
                int pos2 = str.lastIndexOf("second");
                int pos3 = str.lastIndexOf("third");
                int pos4 = str.lastIndexOf("four");
                if (pos1 > 0 && pos2 > 0) {
                    SparseArray<String> map = new SparseArray<>();
                    if (pos1 > 0) {
                        map.put(FinalBtCtrl.ContactItem_Txt_Name, str.substring(0, pos1));
                    }
                    if (pos2 > 0) {
                        map.put(FinalBtCtrl.ContactItem_Txt_Number, str.substring(pos1 + 5, pos2));
                    }
                    if (pos3 > 0) {
                        map.put(FinalBtCtrl.ContactItem_Txt_NameCompare, str.substring(pos2 + 6, pos3));
                    }
                    if (pos4 > 0) {
                        map.put(FinalBtCtrl.ContactItem_Txt_Favorite, str.substring(pos3 + 5, pos4));
                    } else {
                        map.put(FinalBtCtrl.ContactItem_Txt_Favorite, str.substring(pos3 + 5));
                    }
                    list.add(map);
                }
            }
            is.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        copyFile(path, String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/favmyinfo/info");
        return list;
    }

    public void writeFavContactToFile(List<SparseArray<String>> list, String filename) {
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        if (!TextUtils.isEmpty(filename)) {
            String path = String.valueOf(dir.getPath()) + "/" + filename;
            File f = new File(path);
            try {
                FileOutputStream fos = new FileOutputStream(f);
                for (SparseArray<String> map : list) {
                    if (!TextUtils.isEmpty(map.get(FinalBtCtrl.ContactItem_HeadIcon))) {
                        fos.write((String.valueOf(map.get(FinalBtCtrl.ContactItem_Txt_Name)) + "first" + map.get(FinalBtCtrl.ContactItem_Txt_Number) + "second" + map.get(FinalBtCtrl.ContactItem_Txt_NameCompare) + "third" + map.get(FinalBtCtrl.ContactItem_Txt_Favorite) + "four" + map.get(FinalBtCtrl.ContactItem_HeadIcon)).getBytes("utf-8"));
                    } else {
                        fos.write((String.valueOf(map.get(FinalBtCtrl.ContactItem_Txt_Name)) + "first" + map.get(FinalBtCtrl.ContactItem_Txt_Number) + "second" + map.get(FinalBtCtrl.ContactItem_Txt_NameCompare) + "third" + map.get(FinalBtCtrl.ContactItem_Txt_Favorite)).getBytes("utf-8"));
                    }
                    fos.write("\r\n".getBytes());
                }
                fos.flush();
                FileDescriptor fd = fos.getFD();
                fd.sync();
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            copyFile(path, String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/favmyinfo/info");
        }
    }

    public List<SparseArray<String>> readHeadContactFromFile(String filename) {
        List<SparseArray<String>> list = null;
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
        if (dir.exists()) {
            String path = String.valueOf(dir.getPath()) + "/" + filename;
            File f = new File(path);
            if (f.exists()) {
                list = new ArrayList<>();
                try {
                    InputStream is = new FileInputStream(f);
                    BufferedReader reader = new BufferedReader(new InputStreamReader(is));
                    while (true) {
                        String str = reader.readLine();
                        if (str == null) {
                            break;
                        }
                        String[] strSub = str.split("first");
                        if (strSub != null && strSub.length == 2) {
                            SparseArray<String> map = new SparseArray<>();
                            map.put(FinalBtCtrl.ContactItem_Txt_Number, strSub[0]);
                            map.put(FinalBtCtrl.ContactItem_HeadIcon, strSub[1]);
                            list.add(map);
                        }
                    }
                    is.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return list;
    }

    public void writeHeadContactToFile(List<SparseArray<String>> list, String filename) {
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/mybtinfo");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        if (!TextUtils.isEmpty(filename)) {
            String path = String.valueOf(dir.getPath()) + "/" + filename;
            File f = new File(path);
            try {
                FileOutputStream fos = new FileOutputStream(f);
                for (SparseArray<String> map : list) {
                    fos.write((String.valueOf(map.get(FinalBtCtrl.ContactItem_Txt_Number)) + "first" + map.get(FinalBtCtrl.ContactItem_HeadIcon)).getBytes("utf-8"));
                    fos.write("\r\n".getBytes());
                }
                fos.flush();
                FileDescriptor fd = fos.getFD();
                fd.sync();
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean checkApkExist(String packageName) {
        if (packageName == null || FinalChip.BSP_PLATFORM_Null.equals(packageName)) {
            return false;
        }
        try {
            MyApplication.myApp.getPackageManager().getApplicationInfo(packageName, 8192);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public boolean IsConnectCarplay() {
        return false;
    }

    public boolean isFastSendCMD(int delay) {
        boolean flag = false;
        long curClickTime = System.currentTimeMillis();
        if (curClickTime - lastClickTime >= delay) {
            flag = true;
        }
        lastClickTime = curClickTime;
        return flag;
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String getTimeFromMillisecond(Long millisecond) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        Date date = new Date(millisecond.longValue());
        String timeStr = simpleDateFormat.format(date);
        return timeStr;
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String getDateTimeFromMillisecond(Long millisecond) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date(millisecond.longValue());
        String dateStr = simpleDateFormat.format(date);
        return dateStr;
    }

    @SuppressLint({"SimpleDateFormat"})
    public long replaceFormatTime(String ss) {
        long time = System.currentTimeMillis();
        try {
            Calendar c = Calendar.getInstance();
            String dst = ss.replaceAll("/", FinalChip.BSP_PLATFORM_Null).replace(HanziToPinyin.Token.SEPARATOR, FinalChip.BSP_PLATFORM_Null).replace(":", FinalChip.BSP_PLATFORM_Null);
            c.setTime(new SimpleDateFormat("yyyyMMddHHmmss").parse(dst));
            long time2 = c.getTimeInMillis();
            return time2;
        } catch (ParseException e) {
            e.printStackTrace();
            return time;
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    public String getFormatTime(long time) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return simpleDateFormat.format(new Date(time));
    }

    public void killProgress() {
        ActivityManager am = (ActivityManager) MyApplication.myApp.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> infos = am.getRunningAppProcesses();
        for (ActivityManager.RunningAppProcessInfo info : infos) {
            if (info.processName.equals("com.syu.music")) {
                Process.killProcess(info.pid);
            }
        }
    }

    public String needSplice(String number) {
        if (App_Bt.needSplice && !TextUtils.isEmpty(number) && !number.startsWith("+")) {
            return "+" + number;
        }
        return number;
    }

    public void connect7731OBD(byte[] arg) {
        try {
            BluetoothManager man = (BluetoothManager) MyApplication.myApp.getSystemService("bluetooth");
            BluetoothAdapter adp = man.getAdapter();
            removeBond(adp);
            String formatAddr = FinalChip.BSP_PLATFORM_Null;
            String addr = Bt_IpcObj.getChoiceAddr();
            if (!addr.contains(":")) {
                for (int i = 0; i < addr.length() - 2; i += 2) {
                    formatAddr = String.valueOf(formatAddr) + addr.substring(i, i + 2);
                    if (i < addr.length() - 2) {
                        formatAddr = String.valueOf(formatAddr) + ":";
                    }
                }
            } else {
                formatAddr = addr;
            }
            BluetoothDevice dev = adp.getRemoteDevice(formatAddr);
            if (arg != null) {
                dev.setPin(arg);
            }
            dev.createBond();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void removeBond(BluetoothAdapter adp) {
        if (adp != null) {
            Set<BluetoothDevice> bondedDevices = adp.getBondedDevices();
            for (BluetoothDevice device : bondedDevices) {
                device.removeBond();
            }
        }
    }

    public String getSystemPro(String flah, String def) {
        return SystemProperties.get(flah, def);
    }

    public int getSystemInt(String flah, int def) {
        return SystemProperties.getInt(flah, def);
    }

    public CursorLoader createStrequentPhoneOnlyLoader(Context context) {
        Uri uri = ContactsContract.Contacts.CONTENT_STREQUENT_URI.buildUpon().appendQueryParameter("strequent_phone_only", "true").build();
        return new CursorLoader(context, uri, COLUMNS_PHONE_ONLY, null, null, null);
    }

    public boolean copyFile(String oldPath, String newPath) {
        boolean z = false;
        try {
            File oldFile = new File(oldPath);
            if (!oldFile.exists() || !oldFile.isFile() || !oldFile.canRead()) {
                return false;
            }
            File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/favmyinfo");
            if (!dir.exists()) {
                dir.mkdirs();
            }
            File f = new File(newPath);
            if (f.exists()) {
                f.delete();
            }
            FileInputStream fileInputStream = new FileInputStream(oldPath);
            FileOutputStream fileOutputStream = new FileOutputStream(f, false);
            byte[] buffer = new byte[1024];
            while (true) {
                int byteRead = fileInputStream.read(buffer);
                if (-1 != byteRead) {
                    fileOutputStream.write(buffer, 0, byteRead);
                } else {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    z = true;
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return z;
        }
    }

    public boolean isRightDevices() {
        return true;
    }

    public int[] getWindowManeger() {
        if (this.windowSize == null) {
            int[] array = new int[2];
            WindowManager w = (WindowManager) MyApplication.myApp.getSystemService("window");
            DisplayMetrics metrics = new DisplayMetrics();
            if (w != null) {
                w.getDefaultDisplay().getMetrics(metrics);
                array[0] = metrics.widthPixels;
                array[1] = metrics.heightPixels;
            }
            this.windowSize = array;
        }
        return this.windowSize;
    }

    public static Typeface getTypeFace_Regular(Context context) {
        if (typeFace_Regular == null) {
            typeFace_Regular = Typeface.createFromAsset(context.getAssets(), "fonts/ystextregular.otf");
        }
        return typeFace_Regular;
    }

    public static Typeface getTypeFace_Light(Context context) {
        if (typeFace_Light == null) {
            typeFace_Light = Typeface.createFromAsset(context.getAssets(), "fonts/ystextlight.otf");
        }
        return typeFace_Light;
    }

    public static Typeface getTypeFace_Bold(Context context) {
        if (typeFace_Bold == null) {
            typeFace_Bold = Typeface.createFromAsset(context.getAssets(), "fonts/ysextbold.otf");
        }
        return typeFace_Bold;
    }

    public static void releaseTone() {
        if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && soundPool != null) {
            soundPool.stop(playId);
            soundPool.release();
        }
    }

    public static void pauseTone() {
        if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && soundPool != null) {
            soundPool.pause(playId);
        }
    }

    public static void resumeTone() {
        if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && soundPool != null) {
            soundPool.resume(playId);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    public static void getBtTone(Context context, int state, int recycle) {
        int type;
        if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") && App_Bt.getInstance().isAppTop() && (type = App_Bt.getInstance().mySharePreference2.getIntValue("ringtype", 2)) != 3) {
            releaseTone();
            if (Build.VERSION.SDK_INT >= 21) {
                SoundPool.Builder builder = new SoundPool.Builder();
                builder.setMaxStreams(1);
                AudioAttributes.Builder attrBuilder = new AudioAttributes.Builder();
                attrBuilder.setLegacyStreamType(1);
                builder.setAudioAttributes(attrBuilder.build());
                soundPool = builder.build();
            } else {
                soundPool = new SoundPool(1, 1, 0);
            }
            AssetManager assetManager = context.getAssets();
            AssetFileDescriptor afd = null;
            try {
                if (type == 1) {
                    if (state == 2) {
                        afd = assetManager.openFd("ring_connect.mp3");
                    } else {
                        if (state == 100) {
                            afd = assetManager.openFd("ring_search.mp3");
                        }
                        if (afd != null) {
                            final int voiceId = soundPool.load(afd, 1);
                            final int num = recycle;
                            soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.syu.bt.util.BTUtil.1
                                @Override // android.media.SoundPool.OnLoadCompleteListener
                                public void onLoadComplete(SoundPool soundPool2, int sampleId, int status) {
                                    if (status == 0) {
                                        BTUtil.playId = soundPool2.play(voiceId, 1.0f, 1.0f, 1, num, 1.0f);
                                    }
                                }
                            });
                        }
                    }
                } else if (Locale.getDefault().getLanguage().contains("ru")) {
                    recycle = 0;
                    if (state == 2) {
                        afd = assetManager.openFd("ru_connect_tone.wav");
                    } else if (state == 100) {
                        afd = assetManager.openFd("ru_search_tone.wav");
                    }
                } else if (state == 2) {
                    afd = assetManager.openFd("connect_tone.mp3");
                } else {
                    afd = assetManager.openFd("search_tone.mp3");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (afd != null) {
                final int voiceId2 = soundPool.load(afd, 1);
                final int num2 = recycle;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.syu.bt.util.BTUtil.1
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public void onLoadComplete(SoundPool soundPool2, int sampleId, int status) {
                        if (status == 0) {
                            BTUtil.playId = soundPool2.play(voiceId2, 1.0f, 1.0f, 1, num2, 1.0f);
                        }
                    }
                });
            }
        }
    }

    public static void getBtTone(Context context, String resouce) {
        if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) && !App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            releaseTone();
            if (Build.VERSION.SDK_INT >= 21) {
                SoundPool.Builder builder = new SoundPool.Builder();
                builder.setMaxStreams(1);
                AudioAttributes.Builder attrBuilder = new AudioAttributes.Builder();
                attrBuilder.setLegacyStreamType(1);
                builder.setAudioAttributes(attrBuilder.build());
                soundPool = builder.build();
            } else {
                soundPool = new SoundPool(1, 1, 0);
            }
            AssetManager assetManager = context.getAssets();
            AssetFileDescriptor afd = null;
            try {
                afd = assetManager.openFd(resouce);
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (afd != null) {
                final int voiceId = soundPool.load(afd, 1);
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.syu.bt.util.BTUtil.2
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public void onLoadComplete(SoundPool soundPool2, int sampleId, int status) {
                        if (status == 0) {
                            BTUtil.playId = soundPool2.play(voiceId, 1.0f, 1.0f, 1, 0, 1.0f);
                        }
                    }
                });
            }
        }
    }

    public static Bitmap getXfermodeBitmap(Bitmap source, Bitmap dest) {
        int min;
        if (source == null || dest == null) {
            return null;
        }
        if (source.getWidth() < source.getHeight()) {
            min = source.getWidth();
        } else {
            min = source.getHeight();
        }
        if (source.getWidth() > min) {
            int x = -(source.getWidth() - min);
        } else {
            int x2 = min - source.getWidth();
        }
        if (source.getHeight() > min) {
            int y = -(source.getHeight() - min);
        } else {
            int y2 = min - source.getHeight();
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        dest.getWidth();
        dest.getHeight();
        Bitmap bitmap = Bitmap.createBitmap(1280, 800, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawBitmap(source, 0.0f, 0.0f, (Paint) null);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        canvas.drawBitmap(dest, 0.0f, 0.0f, paint);
        return bitmap;
    }

    public static String getDevice_Imei() {
        try {
            if (App_Bt.mTelephonyManager == null) {
                App_Bt.mTelephonyManager = (TelephonyManager) MyApplication.myApp.getSystemService("phone");
            }
            if (App_Bt.mTelephonyManager != null) {
                String imei1 = App_Bt.mTelephonyManager.getImei(0);
                String imei2 = App_Bt.mTelephonyManager.getImei(1);
                App_Bt.mTelephonyManager.getSimSerialNumber(0);
                String iccid2 = App_Bt.mTelephonyManager.getSimSerialNumber(1);
                return (TextUtils.isEmpty(imei2) || TextUtils.isEmpty(iccid2)) ? imei1 : imei2;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static boolean isNumeric(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public int getZHTDScroll_AODI(View v, int direction) {
        boolean doScroll = false;
        if (App_Bt.mStrCustomer.equalsIgnoreCase("zhtd_aodi") && !CustomerUtil.is8541()) {
            doScroll = true;
        }
        if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset) && !CustomerUtil.is8541() && MyApplication.mStrFolderAsset.equalsIgnoreCase("ui1") && App_Bt.mStrCustomer.equals("bba")) {
            doScroll = true;
        }
        if (doScroll) {
            switch (v.getId()) {
                case FinalBtCtrl.Menu_Contact /* 10053 */:
                case FinalBtCtrl.Menu_History /* 10054 */:
                case FinalBtCtrl.Menu_Av /* 10060 */:
                    return direction == 1 ? 33 : 130;
                case FinalBtCtrl.Menu_Pair /* 10062 */:
                    if (direction == 1) {
                        return 33;
                    }
                    return direction;
                default:
                    return direction;
            }
        }
        return direction;
    }

    public View getZHTDGridViewScroll_AODI_8541(int direction, MyActivity myActivity, JPage pageMenu) {
        boolean doScroll = false;
        if (App_Bt.mStrCustomer.equalsIgnoreCase("zhtd_aodi")) {
            doScroll = true;
        }
        if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset) && MyApplication.mStrFolderAsset.equalsIgnoreCase("ui1") && App_Bt.mStrCustomer.equals("bba")) {
            doScroll = true;
        }
        if (!doScroll || !CustomerUtil.is8541()) {
            return null;
        }
        if (1 == direction) {
            if (pageMenu == null) {
                return null;
            }
            if (myActivity.mPageCurrent.getId() == 10012) {
                View vFocus = pageMenu.findViewById(FinalBtCtrl.Menu_Dial);
                return vFocus;
            }
            if (myActivity.mPageCurrent.getId() == 10005) {
                View vFocus2 = pageMenu.findViewById(FinalBtCtrl.Menu_Av);
                return vFocus2;
            }
            if (myActivity.mPageCurrent.getId() != 10008) {
                return null;
            }
            View vFocus3 = pageMenu.findViewById(FinalBtCtrl.Menu_Dial);
            return vFocus3;
        }
        if (myActivity.mPageCurrent.getId() != 10005) {
            return null;
        }
        View vFocus4 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Contact_Btn_Download);
        return vFocus4;
    }

    public View getZHTDScroll_AODI_8541(View v, int direction, MyActivity myActivity, JPage pageMenu) {
        boolean doScroll = false;
        if (App_Bt.mStrCustomer.equalsIgnoreCase("zhtd_aodi")) {
            doScroll = true;
        }
        if (!TextUtils.isEmpty(MyApplication.mStrFolderAsset) && MyApplication.mStrFolderAsset.equalsIgnoreCase("ui1") && App_Bt.mStrCustomer.equals("bba")) {
            doScroll = true;
        }
        if (!doScroll || !CustomerUtil.is8541() || App_Bt.mStrCustomer.equalsIgnoreCase("changecolor")) {
            return null;
        }
        switch (v.getId()) {
            case FinalBtCtrl.Menu_Dial /* 10052 */:
                if (direction != 2) {
                    return null;
                }
                View vFocus = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Contact_Btn_Backspace);
                return vFocus;
            case FinalBtCtrl.Contact_Btn_Backspace /* 10239 */:
                if (direction != 1 || pageMenu == null) {
                    return null;
                }
                View vFocus2 = pageMenu.findViewById(FinalBtCtrl.Menu_Dial);
                return vFocus2;
            default:
                return null;
        }
    }

    public View getZHTDScroll(View v, int direction, MyActivity myActivity, JPage pageMenu) {
        if (!CustomerUtil.isZHTDConfig()) {
            return null;
        }
        switch (v.getId()) {
            case FinalBtCtrl.Dial_Btn_0 /* 10146 */:
                if (direction == 2) {
                    View vFocus = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_1);
                    return vFocus;
                }
                if (direction != 1 || pageMenu == null) {
                    return null;
                }
                View vFocus2 = pageMenu.findViewById(FinalBtCtrl.Menu_Set);
                return vFocus2;
            case FinalBtCtrl.Dial_Btn_1 /* 10147 */:
                if (direction == 2) {
                    View vFocus3 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_2);
                    return vFocus3;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus4 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_0);
                return vFocus4;
            case FinalBtCtrl.Dial_Btn_2 /* 10148 */:
                if (direction == 2) {
                    View vFocus5 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_3);
                    return vFocus5;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus6 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_1);
                return vFocus6;
            case FinalBtCtrl.Dial_Btn_3 /* 10149 */:
                if (direction == 2) {
                    View vFocus7 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_4);
                    return vFocus7;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus8 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_2);
                return vFocus8;
            case FinalBtCtrl.Dial_Btn_4 /* 10150 */:
                if (direction == 2) {
                    View vFocus9 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_5);
                    return vFocus9;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus10 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_3);
                return vFocus10;
            case FinalBtCtrl.Dial_Btn_5 /* 10151 */:
                if (direction == 2) {
                    View vFocus11 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_6);
                    return vFocus11;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus12 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_4);
                return vFocus12;
            case FinalBtCtrl.Dial_Btn_6 /* 10152 */:
                if (direction == 2) {
                    View vFocus13 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_7);
                    return vFocus13;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus14 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_5);
                return vFocus14;
            case FinalBtCtrl.Dial_Btn_7 /* 10153 */:
                if (direction == 2) {
                    View vFocus15 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_8);
                    return vFocus15;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus16 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_6);
                return vFocus16;
            case FinalBtCtrl.Dial_Btn_8 /* 10154 */:
                if (direction == 2) {
                    View vFocus17 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_9);
                    return vFocus17;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus18 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_7);
                return vFocus18;
            case FinalBtCtrl.Dial_Btn_9 /* 10155 */:
                if (direction == 2) {
                    View vFocus19 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_X);
                    return vFocus19;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus20 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_8);
                return vFocus20;
            case FinalBtCtrl.Dial_Btn_X /* 10156 */:
                if (direction == 2) {
                    View vFocus21 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_J);
                    return vFocus21;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus22 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_9);
                return vFocus22;
            case FinalBtCtrl.Dial_Btn_J /* 10157 */:
                if (direction == 2) {
                    View vFocus23 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_View_ShowCall_Btn_Dial);
                    return vFocus23;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus24 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_X);
                return vFocus24;
            case FinalBtCtrl.Dial_Btn_LinkCut /* 10158 */:
            case FinalBtCtrl.Dial_Btn_Link /* 10159 */:
            case FinalBtCtrl.Dial_Btn_Disconnect /* 10160 */:
            case FinalBtCtrl.Dial_Btn_VoiceSwitch /* 10161 */:
            case FinalBtCtrl.Dial_Btn_MicSwitch /* 10162 */:
            case FinalBtCtrl.Dial_Btn_HideKeyboard /* 10164 */:
            case FinalBtCtrl.Dial_Btn_ShowKeyboard /* 10165 */:
            case FinalBtCtrl.Dial_Btn_HideNumber /* 10166 */:
            case FinalBtCtrl.Dial_Btn_Search /* 10167 */:
            case FinalBtCtrl.Dial3rdPhone_Btn_Accept /* 10168 */:
            case FinalBtCtrl.Dial3rdPhone_Btn_Hang /* 10169 */:
            case FinalBtCtrl.Dial3rdPhone_Btn_Switch /* 10170 */:
            case FinalBtCtrl.Dial_History /* 10171 */:
            case FinalBtCtrl.Dial_Favorite /* 10172 */:
            case FinalBtCtrl.Dial_Contact /* 10173 */:
            case FinalBtCtrl.Dial_View_NoSim /* 10174 */:
            case FinalBtCtrl.Dial_View_WithSim /* 10175 */:
            case FinalBtCtrl.Dial_View_ShowDial /* 10176 */:
            case FinalBtCtrl.Dial_View_ShowCall /* 10177 */:
            case FinalBtCtrl.Dial_View_ShowHang /* 10178 */:
            default:
                return null;
            case FinalBtCtrl.Dial_Btn_Backspace /* 10163 */:
                if (direction == 1) {
                    View vFocus25 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_View_ShowCall_Btn_Dial);
                    return vFocus25;
                }
                if (direction != 2) {
                    return null;
                }
                View vFocus26 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_LinkCut);
                return vFocus26;
            case FinalBtCtrl.Dial_View_ShowCall_Btn_Dial /* 10179 */:
                if (direction == 2) {
                    View vFocus27 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_Backspace);
                    return vFocus27;
                }
                if (direction != 1) {
                    return null;
                }
                View vFocus28 = myActivity.mPageCurrent.findViewById(FinalBtCtrl.Dial_Btn_J);
                return vFocus28;
        }
    }

    public Bitmap getHeadIco(String fileName) {
        Bitmap bmp;
        Log.d("gdy66", "  getHeadIco  -" + fileName + "-");
        String path = "/data/blink/" + fileName.trim() + ".JPEG";
        if (App_Bt.bLinkTwoPhone) {
            if (App_Bt.getInstance().mIpcObj.isCalling()) {
                path = "/data/blink/" + App_Bt.sPhone_callin_mac.trim() + fileName.trim() + ".JPEG";
            } else {
                path = "/data/blink/" + App_Bt.sPhone2_MAC[App_Bt.sPhone2_id].trim() + fileName.trim() + ".JPEG";
            }
        }
        File file = new File(path);
        if (file.exists() && (bmp = BitmapFactory.decodeFile(path)) != null) {
            return bmp;
        }
        return null;
    }

    public Bitmap getP2HeadIco(String mac_id, String fileName) {
        Bitmap bmp;
        Log.d("gdy66", "  getHeadIco  -" + fileName + "-");
        String path = "/data/blink/" + mac_id.trim() + fileName.trim() + ".JPEG";
        File file = new File(path);
        if (file.exists() && (bmp = BitmapFactory.decodeFile(path)) != null) {
            return bmp;
        }
        return null;
    }

    public static Bitmap outputCircleLittle(Bitmap bitmap, int data) {
        if (bitmap == null) {
            return null;
        }
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
        Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
        Canvas localCanvas = new Canvas(localBitmap);
        localCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        localCanvas.drawRoundRect(rectF, data, data, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        localCanvas.drawBitmap(bitmap, rect, rect, paint);
        return localBitmap;
    }

    public static Bitmap getCircleBitmap(Bitmap source) {
        int min;
        int x;
        int y;
        if (source == null) {
            return null;
        }
        if (source.getWidth() < source.getHeight()) {
            min = source.getWidth();
        } else {
            min = source.getHeight();
        }
        if (source.getWidth() > min) {
            x = -(source.getWidth() - min);
        } else {
            x = min - source.getWidth();
        }
        if (source.getHeight() > min) {
            y = -(source.getHeight() - min);
        } else {
            y = min - source.getHeight();
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap bitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawCircle(min / 2, min / 2, min / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(source, x / 2, y / 2, paint);
        return bitmap;
    }

    public static Bitmap getCircleBitmap(Bitmap source, int width, int height) {
        int min;
        int x;
        int y;
        if (source == null) {
            return null;
        }
        if (source.getWidth() < source.getHeight()) {
            min = source.getWidth();
        } else {
            min = source.getHeight();
        }
        if (source.getWidth() > min) {
            x = -(source.getWidth() - min);
        } else {
            x = min - source.getWidth();
        }
        if (source.getHeight() > min) {
            y = -(source.getHeight() - min);
        } else {
            y = min - source.getHeight();
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap bitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawCircle(min / 2, min / 2, min / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(source, x / 2, y / 2, paint);
        return bitmap;
    }

    public static void writeLogToFile(String info) {
        File dir = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/btLog");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        String path = String.valueOf(dir.getPath()) + "/bt.txt";
        File f = new File(path);
        if (!TextUtils.isEmpty(info)) {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String info2 = String.valueOf(info) + ":" + formatter.format(new Date(System.currentTimeMillis()));
            try {
                FileOutputStream fos = new FileOutputStream(f, true);
                fos.write(info2.getBytes("utf-8"));
                fos.write("\r\n".getBytes());
                fos.flush();
                FileDescriptor fd = fos.getFD();
                fd.sync();
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean chechTopActivity() {
        ActivityManager am = (ActivityManager) MyApplication.myApp.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runnings = am.getRunningAppProcesses();
        if (runnings == null || runnings.size() < 1) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo running : runnings) {
            Log.d("gdy666", " chechTopActivity running.processName = " + running.processName);
            if (running.processName.equals("com.syu.fourcamera2")) {
                if (running.importance == 100 || running.importance == 200) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }
}
