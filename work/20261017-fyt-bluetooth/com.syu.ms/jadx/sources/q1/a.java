package q1;

import android.net.ProxyProperties;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public static byte[] b(String str) throws Throwable {
        byte[] bArr;
        File file = new File(str);
        ?? r1 = 0;
        byte[] bArr2 = null;
        FileInputStream fileInputStream = null;
        r1 = 0;
        r1 = 0;
        if (file.exists()) {
            try {
                if (file.isFile()) {
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        try {
                            bArr2 = new byte[(int) file.length()];
                            byte[] bArr3 = new byte[128];
                            int i2 = 0;
                            while (true) {
                                int i3 = fileInputStream2.read(bArr3);
                                if (i3 > 0) {
                                    System.arraycopy(bArr3, 0, bArr2, i2, i3);
                                    i2 += i3;
                                } else {
                                    try {
                                        break;
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        r1 = bArr2;
                                    }
                                }
                            }
                            fileInputStream2.close();
                            r1 = bArr2;
                        } catch (Exception e3) {
                            e = e3;
                            byte[] bArr4 = bArr2;
                            fileInputStream = fileInputStream2;
                            bArr = bArr4;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            r1 = bArr;
                        } catch (Throwable th) {
                            th = th;
                            r1 = fileInputStream2;
                            if (r1 != 0) {
                                try {
                                    r1.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        bArr = null;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return r1;
    }

    public static String c(InputStream inputStream) {
        boolean z2;
        String str;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        String string = ProxyProperties.LOCAL_EXCL_LIST;
        do {
            try {
                String line = bufferedReader.readLine();
                z2 = line == null || line.isEmpty();
                if (!z2) {
                    if (line.contains("#")) {
                        int iIndexOf = line.indexOf("#");
                        line = iIndexOf > 0 ? line.substring(0, iIndexOf).trim() : ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    if (!line.isEmpty()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(string);
                        sb.append(string.isEmpty() ? ProxyProperties.LOCAL_EXCL_LIST : "|");
                        String string2 = sb.toString();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(string2);
                        if (line.startsWith("%")) {
                            str = "(" + line.substring(1, line.length()) + ")";
                        } else {
                            str = "(" + line + ")";
                        }
                        sb2.append(str);
                        string = sb2.toString();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } while (!z2);
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String d(String str, String str2) throws Throwable {
        FileReader fileReader;
        Throwable th;
        Exception e2;
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            try {
                try {
                    fileReader = new FileReader(file);
                    try {
                        try {
                            char[] cArr = new char[32];
                            StringBuffer stringBuffer = new StringBuffer();
                            while (true) {
                                int i2 = fileReader.read(cArr);
                                if (i2 <= 0) {
                                    break;
                                }
                                stringBuffer.append(new String(cArr, 0, i2));
                            }
                            str2 = stringBuffer.toString();
                            fileReader.close();
                        } catch (Exception e3) {
                            e2 = e3;
                            e2.printStackTrace();
                            if (fileReader != null) {
                                fileReader.close();
                            }
                            return str2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            } catch (Exception e6) {
                fileReader = null;
                e2 = e6;
            } catch (Throwable th3) {
                fileReader = null;
                th = th3;
                if (fileReader != null) {
                    fileReader.close();
                }
                throw th;
            }
        }
        return str2;
    }

    public static String e(InputStream inputStream, String str) throws Throwable {
        if (inputStream == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            sb.append(line);
                        } else {
                            try {
                                break;
                            } catch (IOException e2) {
                                Log.e("FileUtils", "Error closing reader: " + e2.getMessage());
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        bufferedReader = bufferedReader2;
                        Log.e("FileUtils", "Error reading raw resource: " + e.getMessage());
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e4) {
                                Log.e("FileUtils", "Error closing reader: " + e4.getMessage());
                            }
                        }
                        return str;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e5) {
                                Log.e("FileUtils", "Error closing reader: " + e5.getMessage());
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
                return sb.toString();
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void f(String str, String str2) throws Throwable {
        FileWriter fileWriter;
        Throwable th;
        Exception e2;
        File file = new File(str);
        if (file.exists()) {
            try {
                try {
                    fileWriter = new FileWriter(file);
                    try {
                        try {
                            fileWriter.write(str2);
                            fileWriter.flush();
                            fileWriter.close();
                        } catch (Exception e3) {
                            e2 = e3;
                            e2.printStackTrace();
                            Log.e("Qin", "------------->>>fix audio writeValueToFile: " + str2 + " error!!");
                            if (fileWriter == null) {
                            } else {
                                fileWriter.close();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileWriter != null) {
                            try {
                                fileWriter.close();
                            } catch (Exception e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            } catch (Exception e6) {
                fileWriter = null;
                e2 = e6;
            } catch (Throwable th3) {
                fileWriter = null;
                th = th3;
                if (fileWriter != null) {
                    fileWriter.close();
                }
                throw th;
            }
        }
    }
}
