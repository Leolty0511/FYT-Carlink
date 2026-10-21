package com.syu.bt.util;

import android.os.Handler;
import com.lsec.core.util.data.FinalChip;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class BtLinkTestUtil {
    private static BtLinkTestUtil mInstance;
    private String TAG = "bttest";
    private String TESTFILE = "BTAddr.txt";
    private String[] TEST_PATH = {"/mnt/external_sd0/", "/mnt/external_sd1/", "/mnt/usb_storage1/", "/mnt/usb_storage1/", "/mnt/usb_storage2/", "/mnt/usb_storage3/", "/mnt/usb_storage4/"};
    private String fileData = FinalChip.BSP_PLATFORM_Null;

    public static BtLinkTestUtil getInstance() {
        if (mInstance == null) {
            mInstance = new BtLinkTestUtil();
        }
        return mInstance;
    }

    private boolean checkTestFileExist() throws Throwable {
        boolean z = false;
        File f = null;
        boolean bFound = false;
        BufferedReader bufReader = null;
        for (String str : this.TEST_PATH) {
            f = new File(String.valueOf(str) + this.TESTFILE);
            if (f.isFile() && f.exists()) {
                bFound = true;
                break;
            }
        }
        try {
            if (bFound) {
                try {
                    BufferedReader bufReader2 = new BufferedReader(new FileReader(f));
                    try {
                        this.fileData = bufReader2.readLine();
                        bufReader2.close();
                        if (bufReader2 != null) {
                            try {
                                bufReader2.close();
                                bufReader = bufReader2;
                            } catch (IOException e) {
                                e.printStackTrace();
                                bufReader = bufReader2;
                            }
                        } else {
                            bufReader = bufReader2;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        bufReader = bufReader2;
                        e.printStackTrace();
                        if (bufReader != null) {
                            try {
                                bufReader.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufReader = bufReader2;
                        if (bufReader != null) {
                            try {
                                bufReader.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                }
                z = true;
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void testLink() {
        if (checkTestFileExist() && !this.fileData.isEmpty()) {
            new Handler().postDelayed(new Runnable() { // from class: com.syu.bt.util.BtLinkTestUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    if (App_Bt.getInstance().isAppTop() && (Bt_IpcObj.isInCall() || !Bt_IpcObj.isDisConnect())) {
                        ToastUtil.getInstance().showMessage("蓝牙已连接或在通话中");
                    }
                    Bt_IpcObj.connectDevice(BtLinkTestUtil.this.fileData.toUpperCase());
                }
            }, 200L);
        }
    }
}
