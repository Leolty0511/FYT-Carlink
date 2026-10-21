package com.android.internal.alsa;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Slog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class AlsaCardsParser {
    protected static final boolean DEBUG = false;
    private static final String TAG = "AlsaCardsParser";
    private static final String kCardsFilePath = "/proc/asound/cards";
    private static LineTokenizer mTokenizer = new LineTokenizer(" :[]");
    private ArrayList<AlsaCardRecord> mCardRecords = new ArrayList<>();

    public class AlsaCardRecord {
        private static final String TAG = "AlsaCardRecord";
        private static final String kUsbCardKeyStr = "at usb-";
        public int mCardNum = -1;
        public String mField1 = "";
        public String mCardName = "";
        public String mCardDescription = "";
        public boolean mIsUsb = false;

        public AlsaCardRecord() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean parse(String str, int i2) {
            int iNextToken;
            if (i2 == 0) {
                int iNextToken2 = AlsaCardsParser.mTokenizer.nextToken(str, 0);
                int iNextDelimiter = AlsaCardsParser.mTokenizer.nextDelimiter(str, iNextToken2);
                try {
                    this.mCardNum = Integer.parseInt(str.substring(iNextToken2, iNextDelimiter));
                    int iNextToken3 = AlsaCardsParser.mTokenizer.nextToken(str, iNextDelimiter);
                    int iNextDelimiter2 = AlsaCardsParser.mTokenizer.nextDelimiter(str, iNextToken3);
                    this.mField1 = str.substring(iNextToken3, iNextDelimiter2);
                    this.mCardName = str.substring(AlsaCardsParser.mTokenizer.nextToken(str, iNextDelimiter2));
                } catch (NumberFormatException unused) {
                    StringBuilder sbS = c.s("Failed to parse line ", i2, " of /proc/asound/cards: ");
                    sbS.append(str.substring(iNextToken2, iNextDelimiter));
                    Slog.e(TAG, sbS.toString());
                    return false;
                }
            } else if (i2 == 1 && (iNextToken = AlsaCardsParser.mTokenizer.nextToken(str, 0)) != -1) {
                int iIndexOf = str.indexOf(kUsbCardKeyStr);
                boolean z2 = iIndexOf != -1;
                this.mIsUsb = z2;
                if (z2) {
                    this.mCardDescription = str.substring(iNextToken, iIndexOf - 1);
                }
            }
            return true;
        }

        public void log(int i2) {
            StringBuilder sbS = c.s("", i2, " [");
            sbS.append(this.mCardNum);
            sbS.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbS.append(this.mCardName);
            sbS.append(" : ");
            sbS.append(this.mCardDescription);
            sbS.append(" usb:");
            sbS.append(this.mIsUsb);
            Slog.d(TAG, sbS.toString());
        }

        public String textFormat() {
            return this.mCardName + " : " + this.mCardDescription;
        }
    }

    private void Log(String str) {
    }

    private static void LogDevices(String str, ArrayList<AlsaCardRecord> arrayList) {
        Slog.d(TAG, str + " ----------------");
        Iterator<AlsaCardRecord> it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            it.next().log(i2);
            i2++;
        }
        Slog.d(TAG, "----------------");
    }

    public static boolean hasCardNumber(ArrayList<AlsaCardRecord> arrayList, int i2) {
        Iterator<AlsaCardRecord> it = arrayList.iterator();
        while (it.hasNext()) {
            if (it.next().mCardNum == i2) {
                return true;
            }
        }
        return false;
    }

    public AlsaCardRecord getCardRecordAt(int i2) {
        return this.mCardRecords.get(i2);
    }

    public AlsaCardRecord getCardRecordFor(int i2) {
        for (AlsaCardRecord alsaCardRecord : this.mCardRecords) {
            if (alsaCardRecord.mCardNum == i2) {
                return alsaCardRecord;
            }
        }
        return null;
    }

    public int getDefaultCard() {
        int defaultUsbCard = getDefaultUsbCard();
        return (defaultUsbCard >= 0 || getNumCardRecords() <= 0) ? defaultUsbCard : getCardRecordAt(getNumCardRecords() - 1).mCardNum;
    }

    public int getDefaultUsbCard() {
        ArrayList<AlsaCardRecord> arrayList = this.mCardRecords;
        scan();
        for (AlsaCardRecord alsaCardRecord : getNewCardRecords(arrayList)) {
            if (alsaCardRecord.mIsUsb) {
                return alsaCardRecord.mCardNum;
            }
        }
        for (AlsaCardRecord alsaCardRecord2 : arrayList) {
            if (alsaCardRecord2.mIsUsb) {
                return alsaCardRecord2.mCardNum;
            }
        }
        return -1;
    }

    public ArrayList<AlsaCardRecord> getNewCardRecords(ArrayList<AlsaCardRecord> arrayList) {
        ArrayList<AlsaCardRecord> arrayList2 = new ArrayList<>();
        for (AlsaCardRecord alsaCardRecord : this.mCardRecords) {
            if (!hasCardNumber(arrayList, alsaCardRecord.mCardNum)) {
                arrayList2.add(alsaCardRecord);
            }
        }
        return arrayList2;
    }

    public int getNumCardRecords() {
        return this.mCardRecords.size();
    }

    public ArrayList<AlsaCardRecord> getScanRecords() {
        return this.mCardRecords;
    }

    public boolean isCardUsb(int i2) {
        for (AlsaCardRecord alsaCardRecord : this.mCardRecords) {
            if (alsaCardRecord.mCardNum == i2) {
                return alsaCardRecord.mIsUsb;
            }
        }
        return false;
    }

    public void scan() {
        this.mCardRecords = new ArrayList<>();
        try {
            FileReader fileReader = new FileReader(new File(kCardsFilePath));
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                AlsaCardRecord alsaCardRecord = new AlsaCardRecord();
                alsaCardRecord.parse(line, 0);
                String line2 = bufferedReader.readLine();
                if (line2 == null) {
                    break;
                }
                alsaCardRecord.parse(line2, 1);
                this.mCardRecords.add(alsaCardRecord);
            }
            fileReader.close();
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }
}
