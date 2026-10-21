package com.syu.bt.util;

import android.util.SparseArray;
import com.syu.bt.data.FinalBtCtrl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FileHandler {
    public static final int ProgressType_Copy = 1;
    public static final int ProgressType_Delete = 2;
    public static final int SIZE_PERTIME = 32768;
    private static FileHandler mInstance;
    public String mPathParentLast;
    public String mPathSrc;
    public String mStyleLast;
    public int mProgressType = 1;
    public boolean mIsAction = true;
    public boolean bNoSpace = false;
    public long mSizeCurrent = 0;
    public long mSizeTotal = 0;
    public long mNumStyle = 0;
    public long mNumPathParent = 0;
    public long mNumFolder = 0;
    public long mNumFile = 0;
    public long mNumChildFolder = 0;
    public long mNumChildFile = 0;
    public long mStartTimeMillis = 0;
    public long mStartTimeMillisReal = 0;
    public int mIndexCopy = 0;
    public int mNumPopExistDlg = 0;
    public ArrayList<File> mListDelFailFile = new ArrayList<>();
    public ArrayList<File> mListDelFailFolder = new ArrayList<>();
    public HashMap<String, String> mListCopyFailMap = new HashMap<>();

    public static FileHandler getInstance() {
        if (mInstance == null) {
            mInstance = new FileHandler();
        }
        return mInstance;
    }

    public void scanFile(String path, List<SparseArray<String>> listFile) {
        File[] childFile;
        if (this.mIsAction) {
            listFile.clear();
            File file = new File(path);
            boolean bIsFolder = file.isDirectory();
            if (bIsFolder && (childFile = file.listFiles()) != null && childFile.length > 0) {
                for (File f : childFile) {
                    SparseArray<String> dev = new SparseArray<>();
                    String filePath = f.getPath();
                    int iPosName = filePath.lastIndexOf("/");
                    if (iPosName >= 0) {
                        String ringName = filePath.substring(iPosName + 1);
                        dev.put(FinalBtCtrl.PopBtRingItem_Txt_Name, ringName);
                    }
                    dev.put(FinalBtCtrl.PopBtRingItem_Txt_PathName, filePath);
                    listFile.add(dev);
                }
            }
        }
    }

    public void delete(String path, boolean bInDelHandler, boolean bSetSrc) {
        if (this.mIsAction) {
            if (bInDelHandler && bSetSrc) {
                this.mPathSrc = path;
            }
            RecursionDeleteFile(new File(path), bInDelHandler, true);
        }
    }

    public void RecursionDeleteFile(File file, boolean bInDelHandler, boolean bSaveFailList) {
        if (this.mIsAction) {
            boolean bIsFolder = file.isDirectory();
            if (bIsFolder) {
                File[] childFile = file.listFiles();
                if (childFile != null && childFile.length > 0) {
                    for (File f : childFile) {
                        RecursionDeleteFile(f, bInDelHandler, bSaveFailList);
                    }
                }
            } else if (bInDelHandler) {
                this.mSizeCurrent += file.length();
            }
            if (!file.delete() && bSaveFailList) {
                if (bIsFolder) {
                    this.mListDelFailFolder.add(file);
                } else {
                    this.mListDelFailFile.add(file);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00da A[Catch: Exception -> 0x00df, TRY_LEAVE, TryCatch #1 {Exception -> 0x00df, blocks: (B:41:0x00d5, B:43:0x00da), top: B:87:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0124 A[Catch: Exception -> 0x012b, TRY_LEAVE, TryCatch #6 {Exception -> 0x012b, blocks: (B:57:0x011f, B:59:0x0124), top: B:96:0x011f }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0137 A[Catch: Exception -> 0x013c, TRY_LEAVE, TryCatch #5 {Exception -> 0x013c, blocks: (B:64:0x0132, B:66:0x0137), top: B:94:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0148 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x014a A[Catch: Exception -> 0x014e, TRY_LEAVE, TryCatch #2 {Exception -> 0x014e, blocks: (B:72:0x0145, B:74:0x014a), top: B:89:0x0145 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public int copy(String strFileSrc, String strFileDst, boolean bSetSrc, boolean bSaveFailList) throws Throwable {
        if (bSetSrc) {
            this.mPathSrc = strFileSrc;
        }
        if (!this.mIsAction) {
            return 0;
        }
        File fileSrc = new File(strFileSrc);
        if (!fileSrc.exists()) {
            return 2;
        }
        File fileDst = new File(strFileDst);
        if (fileSrc.isDirectory()) {
            if (!fileDst.exists()) {
                fileDst.mkdirs();
            }
            File[] listFiles = fileSrc.listFiles();
            if (listFiles != null) {
                for (int i = 0; i < listFiles.length; i++) {
                    if (copy(listFiles[i].getPath(), String.valueOf(strFileDst) + "/" + listFiles[i].getName(), true, bSaveFailList) == 0) {
                        return 0;
                    }
                }
            }
        } else {
            int iPos = strFileDst.lastIndexOf("/");
            if (iPos > 0) {
                String pathParent = strFileDst.substring(0, iPos);
                File fileParent = new File(pathParent);
                if (!fileParent.exists()) {
                    fileParent.mkdirs();
                }
            }
            FileInputStream fosFrom = null;
            FileOutputStream fosTo = null;
            try {
                try {
                    FileInputStream fosFrom2 = new FileInputStream(fileSrc);
                    try {
                        FileOutputStream fosTo2 = new FileOutputStream(fileDst);
                        try {
                            byte[] bt = new byte[32768];
                            while (true) {
                                int c = fosFrom2.read(bt);
                                if (c <= 0 || !this.mIsAction) {
                                    break;
                                }
                                fosTo2.write(bt, 0, c);
                                this.mSizeCurrent += (long) c;
                            }
                            if (fosFrom2 != null) {
                                try {
                                    fosFrom2.close();
                                    if (fosTo2 != null) {
                                        fosTo2.close();
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            } else if (fosTo2 != null) {
                                fosTo2.close();
                            }
                        } catch (Exception e2) {
                            e = e2;
                            fosTo = fosTo2;
                            fosFrom = fosFrom2;
                            e.printStackTrace();
                            if (bSaveFailList) {
                                this.mListCopyFailMap.put(strFileSrc, strFileDst);
                                if (fosFrom != null) {
                                    try {
                                        fosFrom.close();
                                        if (fosTo != null) {
                                            fosTo.close();
                                        }
                                    } catch (Exception e3) {
                                        e3.printStackTrace();
                                        return 2;
                                    }
                                } else if (fosTo != null) {
                                    fosTo.close();
                                }
                                return 2;
                            }
                            if (fosFrom != null) {
                                try {
                                    fosFrom.close();
                                    if (fosTo != null) {
                                        fosTo.close();
                                    }
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                }
                            } else if (fosTo != null) {
                                fosTo.close();
                            }
                            if (fosFrom != null) {
                                try {
                                    fosFrom.close();
                                    if (fosTo != null) {
                                        fosTo.close();
                                    }
                                } catch (Exception e5) {
                                    e5.printStackTrace();
                                    throw th;
                                }
                            } else if (fosTo != null) {
                                fosTo.close();
                            }
                            throw th;
                        } catch (Throwable th) {
                            th = th;
                            fosTo = fosTo2;
                            fosFrom = fosFrom2;
                            if (fosFrom != null) {
                                fosFrom.close();
                                if (fosTo != null) {
                                    fosTo.close();
                                }
                            } else if (fosTo != null) {
                                fosTo.close();
                            }
                            throw th;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        fosFrom = fosFrom2;
                    } catch (Throwable th2) {
                        th = th2;
                        fosFrom = fosFrom2;
                    }
                } catch (Exception e7) {
                    e = e7;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return !this.mIsAction ? 0 : 1;
    }
}
