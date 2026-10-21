package com.android.internal.alsa;

import android.provider.Downloads;
import android.provider.SettingsStringUtil;
import android.util.Slog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AlsaDevicesParser {
    protected static final boolean DEBUG = false;
    private static final String TAG = "AlsaDevicesParser";
    private static final String kDevicesFilePath = "/proc/asound/devices";
    private static final int kEndIndex_CardNum = 8;
    private static final int kEndIndex_DeviceNum = 11;
    private static final int kIndex_CardDeviceField = 5;
    private static final int kStartIndex_CardNum = 6;
    private static final int kStartIndex_DeviceNum = 9;
    private static final int kStartIndex_Type = 14;
    private static LineTokenizer mTokenizer = new LineTokenizer(" :[]-");
    private boolean mHasCaptureDevices = false;
    private boolean mHasPlaybackDevices = false;
    private boolean mHasMIDIDevices = false;
    private final ArrayList<AlsaDeviceRecord> mDeviceRecords = new ArrayList<>();

    public class AlsaDeviceRecord {
        public static final int kDeviceDir_Capture = 0;
        public static final int kDeviceDir_Playback = 1;
        public static final int kDeviceDir_Unknown = -1;
        public static final int kDeviceType_Audio = 0;
        public static final int kDeviceType_Control = 1;
        public static final int kDeviceType_MIDI = 2;
        public static final int kDeviceType_Unknown = -1;
        int mCardNum = -1;
        int mDeviceNum = -1;
        int mDeviceType = -1;
        int mDeviceDir = -1;

        public AlsaDeviceRecord() {
        }

        public boolean parse(String str) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int iNextToken = AlsaDevicesParser.mTokenizer.nextToken(str, i2);
                if (iNextToken == -1) {
                    return true;
                }
                int iNextDelimiter = AlsaDevicesParser.mTokenizer.nextDelimiter(str, iNextToken);
                int length = iNextDelimiter == -1 ? str.length() : iNextDelimiter;
                String strSubstring = str.substring(iNextToken, length);
                if (i3 == 1) {
                    this.mCardNum = Integer.parseInt(strSubstring);
                    if (str.charAt(length) != '-') {
                        i3++;
                    }
                } else if (i3 == 2) {
                    this.mDeviceNum = Integer.parseInt(strSubstring);
                } else if (i3 != 3) {
                    if (i3 != 4) {
                        if (i3 != 5) {
                            continue;
                        } else {
                            try {
                                if (strSubstring.equals("capture")) {
                                    this.mDeviceDir = 0;
                                    AlsaDevicesParser.this.mHasCaptureDevices = true;
                                } else if (strSubstring.equals("playback")) {
                                    this.mDeviceDir = 1;
                                    AlsaDevicesParser.this.mHasPlaybackDevices = true;
                                }
                            } catch (NumberFormatException unused) {
                                Slog.e(AlsaDevicesParser.TAG, "Failed to parse token " + i3 + " of /proc/asound/devices token: " + strSubstring);
                                return false;
                            }
                        }
                    } else if (strSubstring.equals("audio")) {
                        this.mDeviceType = 0;
                    } else if (strSubstring.equals("midi")) {
                        this.mDeviceType = 2;
                        AlsaDevicesParser.this.mHasMIDIDevices = true;
                    }
                } else if (!strSubstring.equals("digital")) {
                    if (strSubstring.equals(Downloads.Impl.COLUMN_CONTROL)) {
                        this.mDeviceType = 1;
                    } else {
                        strSubstring.equals("raw");
                    }
                }
                i3++;
                i2 = length;
            }
        }

        public String textFormat() {
            StringBuilder sb = new StringBuilder();
            sb.append("[" + this.mCardNum + SettingsStringUtil.DELIMITER + this.mDeviceNum + "]");
            int i2 = this.mDeviceType;
            if (i2 == 0) {
                sb.append(" Audio");
            } else if (i2 == 1) {
                sb.append(" Control");
            } else if (i2 != 2) {
                sb.append(" N/A");
            } else {
                sb.append(" MIDI");
            }
            int i3 = this.mDeviceDir;
            if (i3 == 0) {
                sb.append(" Capture");
            } else if (i3 != 1) {
                sb.append(" N/A");
            } else {
                sb.append(" Playback");
            }
            return sb.toString();
        }
    }

    private void Log(String str) {
    }

    private boolean isLineDeviceRecord(String str) {
        return str.charAt(5) == '[';
    }

    public int getDefaultDeviceNum(int i2) {
        return 0;
    }

    public boolean hasCaptureDevices(int i2) {
        for (AlsaDeviceRecord alsaDeviceRecord : this.mDeviceRecords) {
            if (alsaDeviceRecord.mCardNum == i2 && alsaDeviceRecord.mDeviceType == 0 && alsaDeviceRecord.mDeviceDir == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean hasMIDIDevices(int i2) {
        for (AlsaDeviceRecord alsaDeviceRecord : this.mDeviceRecords) {
            if (alsaDeviceRecord.mCardNum == i2 && alsaDeviceRecord.mDeviceType == 2) {
                return true;
            }
        }
        return false;
    }

    public boolean hasPlaybackDevices(int i2) {
        for (AlsaDeviceRecord alsaDeviceRecord : this.mDeviceRecords) {
            if (alsaDeviceRecord.mCardNum == i2 && alsaDeviceRecord.mDeviceType == 0 && alsaDeviceRecord.mDeviceDir == 1) {
                return true;
            }
        }
        return false;
    }

    public void scan() {
        this.mDeviceRecords.clear();
        try {
            FileReader fileReader = new FileReader(new File(kDevicesFilePath));
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    fileReader.close();
                    return;
                } else if (isLineDeviceRecord(line)) {
                    AlsaDeviceRecord alsaDeviceRecord = new AlsaDeviceRecord();
                    alsaDeviceRecord.parse(line);
                    this.mDeviceRecords.add(alsaDeviceRecord);
                }
            }
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }
}
