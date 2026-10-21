package com.android.server.wifi;

import android.app.AlarmManager;
import android.content.Context;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.AtomicFile;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.Preconditions;
import com.android.server.wifi.rtt.RttServiceImpl;
import com.android.server.wifi.util.DataIntegrityChecker;
import com.android.server.wifi.util.EncryptedData;
import com.android.server.wifi.util.XmlUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class WifiConfigStore {
    private static final int BUFFERED_WRITE_ALARM_INTERVAL_MS = 10000;

    @VisibleForTesting
    public static final String BUFFERED_WRITE_ALARM_TAG = "WriteBufferAlarm";
    private static final int CURRENT_CONFIG_STORE_DATA_VERSION = 2;
    private static final int INITIAL_CONFIG_STORE_DATA_VERSION = 1;
    private static final int INTEGRITY_CONFIG_STORE_DATA_VERSION = 2;
    private static final String STORE_DIRECTORY_NAME = "wifi";
    private static final String STORE_FILE_NAME_SHARED_GENERAL = "WifiConfigStore.xml";
    private static final String STORE_FILE_NAME_USER_GENERAL = "WifiConfigStore.xml";
    private static final String STORE_FILE_NAME_USER_NETWORK_SUGGESTIONS = "WifiConfigStoreNetworkSuggestions.xml";
    public static final int STORE_FILE_SHARED_GENERAL = 0;
    public static final int STORE_FILE_USER_GENERAL = 1;
    public static final int STORE_FILE_USER_NETWORK_SUGGESTIONS = 2;
    private static final String TAG = "WifiConfigStore";
    private static final String XML_TAG_DOCUMENT_HEADER = "WifiConfigStoreData";
    private static final String XML_TAG_HEADER_INTEGRITY = "Integrity";
    private static final String XML_TAG_INTEGRITY_ENCRYPTED_DATA = "EncryptedData";
    private static final String XML_TAG_INTEGRITY_IV = "IV";
    private static final String XML_TAG_VERSION = "Version";
    private final AlarmManager mAlarmManager;
    private final Clock mClock;
    private final Handler mEventHandler;
    private StoreFile mSharedStore;
    private final WifiMetrics mWifiMetrics;
    private static final SparseArray<String> STORE_ID_TO_FILE_NAME = new SparseArray<String>() { // from class: com.android.server.wifi.WifiConfigStore.1
        {
            put(0, "WifiConfigStore.xml");
            put(1, "WifiConfigStore.xml");
            put(2, WifiConfigStore.STORE_FILE_NAME_USER_NETWORK_SUGGESTIONS);
        }
    };

    @VisibleForTesting
    public static final EncryptedData ZEROED_ENCRYPTED_DATA = new EncryptedData(new byte[48], new byte[12]);
    private boolean mVerboseLoggingEnabled = false;
    private boolean mBufferedWritePending = false;
    private final AlarmManager.OnAlarmListener mBufferedWriteListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.wifi.WifiConfigStore.2
        @Override // android.app.AlarmManager.OnAlarmListener
        public void onAlarm() {
            try {
                WifiConfigStore.this.writeBufferedData();
            } catch (IOException e) {
                Log.wtf(WifiConfigStore.TAG, "Buffered write failed", e);
            }
        }
    };
    private final List<StoreData> mStoreDataList = new ArrayList();
    private List<StoreFile> mUserStores = null;

    public interface StoreData {
        void deserializeData(XmlPullParser xmlPullParser, int i) throws XmlPullParserException, IOException;

        String getName();

        int getStoreFileId();

        boolean hasNewDataToSerialize();

        void resetData();

        void serializeData(XmlSerializer xmlSerializer) throws XmlPullParserException, IOException;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StoreFileId {
    }

    public WifiConfigStore(Context context, Looper looper, Clock clock, WifiMetrics wifiMetrics, StoreFile sharedStore) {
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mEventHandler = new Handler(looper);
        this.mClock = clock;
        this.mWifiMetrics = wifiMetrics;
        this.mSharedStore = sharedStore;
    }

    public void setUserStores(List<StoreFile> userStores) {
        Preconditions.checkNotNull(userStores);
        this.mUserStores = userStores;
    }

    public boolean registerStoreData(StoreData storeData) {
        if (storeData == null) {
            Log.e(TAG, "Unable to register null store data");
            return false;
        }
        int storeFileId = storeData.getStoreFileId();
        if (STORE_ID_TO_FILE_NAME.get(storeFileId) == null) {
            Log.e(TAG, "Invalid shared store file specified" + storeFileId);
            return false;
        }
        this.mStoreDataList.add(storeData);
        return true;
    }

    private static StoreFile createFile(File storeBaseDir, int fileId) {
        File storeDir = new File(storeBaseDir, STORE_DIRECTORY_NAME);
        if (!storeDir.exists() && !storeDir.mkdir()) {
            Log.w(TAG, "Could not create store directory " + storeDir);
            return null;
        }
        File file = new File(storeDir, STORE_ID_TO_FILE_NAME.get(fileId));
        DataIntegrityChecker dataIntegrityChecker = new DataIntegrityChecker(file.getName());
        return new StoreFile(file, fileId, dataIntegrityChecker);
    }

    public static StoreFile createSharedFile() {
        return createFile(Environment.getDataMiscDirectory(), 0);
    }

    public static List<StoreFile> createUserFiles(int userId) {
        List<StoreFile> storeFiles = new ArrayList<>();
        Iterator it = Arrays.asList(1, 2).iterator();
        while (it.hasNext()) {
            int fileId = ((Integer) it.next()).intValue();
            StoreFile storeFile = createFile(Environment.getDataMiscCeDirectory(userId), fileId);
            if (storeFile == null) {
                return null;
            }
            storeFiles.add(storeFile);
        }
        return storeFiles;
    }

    public void enableVerboseLogging(boolean verbose) {
        this.mVerboseLoggingEnabled = verbose;
    }

    public boolean areStoresPresent() {
        return this.mSharedStore.exists();
    }

    private List<StoreData> retrieveStoreDataListForStoreFile(final StoreFile storeFile) {
        return (List) this.mStoreDataList.stream().filter(new Predicate() { // from class: com.android.server.wifi.-$$Lambda$WifiConfigStore$Vf3hpICqGHc8cqcggYv9pHhYS2Y
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WifiConfigStore.lambda$retrieveStoreDataListForStoreFile$0(storeFile, (WifiConfigStore.StoreData) obj);
            }
        }).collect(Collectors.toList());
    }

    static /* synthetic */ boolean lambda$retrieveStoreDataListForStoreFile$0(StoreFile storeFile, StoreData s) {
        return s.getStoreFileId() == storeFile.mFileId;
    }

    private boolean hasNewDataToSerialize(StoreFile storeFile) {
        List<StoreData> storeDataList = retrieveStoreDataListForStoreFile(storeFile);
        return storeDataList.stream().anyMatch(new Predicate() { // from class: com.android.server.wifi.-$$Lambda$WifiConfigStore$E5gj7z5ed5kRI6vVgdfi0Qq87ak
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((WifiConfigStore.StoreData) obj).hasNewDataToSerialize();
            }
        });
    }

    public void write(boolean forceSync) throws XmlPullParserException, IOException {
        boolean hasAnyNewData = false;
        if (hasNewDataToSerialize(this.mSharedStore)) {
            byte[] sharedDataBytes = serializeData(this.mSharedStore);
            this.mSharedStore.storeRawDataToWrite(sharedDataBytes);
            hasAnyNewData = true;
        }
        List<StoreFile> list = this.mUserStores;
        if (list != null) {
            for (StoreFile userStoreFile : list) {
                if (hasNewDataToSerialize(userStoreFile)) {
                    byte[] userDataBytes = serializeData(userStoreFile);
                    userStoreFile.storeRawDataToWrite(userDataBytes);
                    hasAnyNewData = true;
                }
            }
        }
        if (hasAnyNewData) {
            if (forceSync) {
                writeBufferedData();
                return;
            } else {
                startBufferedWriteAlarm();
                return;
            }
        }
        if (forceSync && this.mBufferedWritePending) {
            writeBufferedData();
        }
    }

    private byte[] serializeData(StoreFile storeFile) throws XmlPullParserException, IOException {
        List<StoreData> storeDataList = retrieveStoreDataListForStoreFile(storeFile);
        XmlSerializer out = new FastXmlSerializer();
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        out.setOutput(outputStream, StandardCharsets.UTF_8.name());
        writeDocumentMetadata(out, ZEROED_ENCRYPTED_DATA);
        for (StoreData storeData : storeDataList) {
            String tag = storeData.getName();
            XmlUtil.writeNextSectionStart(out, tag);
            storeData.serializeData(out);
            XmlUtil.writeNextSectionEnd(out, tag);
        }
        XmlUtil.writeDocumentEnd(out, XML_TAG_DOCUMENT_HEADER);
        byte[] outBytes = outputStream.toByteArray();
        EncryptedData encryptedData = storeFile.computeIntegrity(outBytes);
        if (encryptedData == null) {
            Log.wtf(TAG, "Failed to compute integrity, failing write");
            return null;
        }
        return rewriteDocumentMetadataRawBytes(outBytes, encryptedData);
    }

    private void writeDocumentMetadata(XmlSerializer out, EncryptedData encryptedData) throws XmlPullParserException, IOException {
        XmlUtil.writeDocumentStart(out, XML_TAG_DOCUMENT_HEADER);
        XmlUtil.writeNextValue(out, XML_TAG_VERSION, 2);
        XmlUtil.writeNextSectionStart(out, XML_TAG_HEADER_INTEGRITY);
        XmlUtil.writeNextValue(out, XML_TAG_INTEGRITY_ENCRYPTED_DATA, encryptedData.getEncryptedData());
        XmlUtil.writeNextValue(out, XML_TAG_INTEGRITY_IV, encryptedData.getIv());
        XmlUtil.writeNextSectionEnd(out, XML_TAG_HEADER_INTEGRITY);
    }

    private byte[] generateDocumentMetadataRawBytes(EncryptedData encryptedData) throws XmlPullParserException, IOException {
        XmlSerializer outXml = new FastXmlSerializer();
        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        outXml.setOutput(outStream, StandardCharsets.UTF_8.name());
        writeDocumentMetadata(outXml, encryptedData);
        outXml.endDocument();
        return outStream.toByteArray();
    }

    private byte[] rewriteDocumentMetadataRawBytes(byte[] inBytes, EncryptedData encryptedData) throws XmlPullParserException, IOException {
        byte[] replaceMetadataBytes = generateDocumentMetadataRawBytes(encryptedData);
        ByteBuffer outByteBuffer = ByteBuffer.wrap(inBytes);
        outByteBuffer.put(replaceMetadataBytes);
        return outByteBuffer.array();
    }

    private void startBufferedWriteAlarm() {
        if (!this.mBufferedWritePending) {
            this.mAlarmManager.set(2, this.mClock.getElapsedSinceBootMillis() + RttServiceImpl.HAL_AWARE_RANGING_TIMEOUT_MS, BUFFERED_WRITE_ALARM_TAG, this.mBufferedWriteListener, this.mEventHandler);
            this.mBufferedWritePending = true;
        }
    }

    private void stopBufferedWriteAlarm() {
        if (this.mBufferedWritePending) {
            this.mAlarmManager.cancel(this.mBufferedWriteListener);
            this.mBufferedWritePending = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeBufferedData() throws IOException {
        stopBufferedWriteAlarm();
        long writeStartTime = this.mClock.getElapsedSinceBootMillis();
        this.mSharedStore.writeBufferedRawData();
        List<StoreFile> list = this.mUserStores;
        if (list != null) {
            for (StoreFile userStoreFile : list) {
                userStoreFile.writeBufferedRawData();
            }
        }
        long writeTime = this.mClock.getElapsedSinceBootMillis() - writeStartTime;
        try {
            this.mWifiMetrics.noteWifiConfigStoreWriteDuration(Math.toIntExact(writeTime));
        } catch (ArithmeticException e) {
        }
        Log.d(TAG, "Writing to stores completed in " + writeTime + " ms.");
    }

    public void read() throws XmlPullParserException, IOException {
        resetStoreData(this.mSharedStore);
        List<StoreFile> list = this.mUserStores;
        if (list != null) {
            Iterator<StoreFile> it = list.iterator();
            while (it.hasNext()) {
                resetStoreData(it.next());
            }
        }
        long readStartTime = this.mClock.getElapsedSinceBootMillis();
        byte[] sharedDataBytes = this.mSharedStore.readRawData();
        deserializeData(sharedDataBytes, this.mSharedStore);
        List<StoreFile> list2 = this.mUserStores;
        if (list2 != null) {
            for (StoreFile userStoreFile : list2) {
                byte[] userDataBytes = userStoreFile.readRawData();
                deserializeData(userDataBytes, userStoreFile);
            }
        }
        long readTime = this.mClock.getElapsedSinceBootMillis() - readStartTime;
        try {
            this.mWifiMetrics.noteWifiConfigStoreReadDuration(Math.toIntExact(readTime));
        } catch (ArithmeticException e) {
        }
        Log.d(TAG, "Reading from all stores completed in " + readTime + " ms.");
    }

    public void switchUserStoresAndRead(List<StoreFile> userStores) throws XmlPullParserException, IOException {
        Preconditions.checkNotNull(userStores);
        List<StoreFile> list = this.mUserStores;
        if (list != null) {
            Iterator<StoreFile> it = list.iterator();
            while (it.hasNext()) {
                resetStoreData(it.next());
            }
        }
        stopBufferedWriteAlarm();
        this.mUserStores = userStores;
        long readStartTime = this.mClock.getElapsedSinceBootMillis();
        for (StoreFile userStoreFile : this.mUserStores) {
            byte[] userDataBytes = userStoreFile.readRawData();
            deserializeData(userDataBytes, userStoreFile);
        }
        long readTime = this.mClock.getElapsedSinceBootMillis() - readStartTime;
        this.mWifiMetrics.noteWifiConfigStoreReadDuration(Math.toIntExact(readTime));
        Log.d(TAG, "Reading from user stores completed in " + readTime + " ms.");
    }

    private void resetStoreData(StoreFile storeFile) {
        for (StoreData storeData : retrieveStoreDataListForStoreFile(storeFile)) {
            storeData.resetData();
        }
    }

    private void indicateNoDataForStoreDatas(Collection<StoreData> storeDataSet) throws XmlPullParserException, IOException {
        for (StoreData storeData : storeDataSet) {
            storeData.deserializeData(null, 0);
        }
    }

    private void deserializeData(byte[] dataBytes, StoreFile storeFile) throws XmlPullParserException, IOException {
        List<StoreData> storeDataList = retrieveStoreDataListForStoreFile(storeFile);
        if (dataBytes == null) {
            indicateNoDataForStoreDatas(storeDataList);
            return;
        }
        XmlPullParser in = Xml.newPullParser();
        ByteArrayInputStream inputStream = new ByteArrayInputStream(dataBytes);
        in.setInput(inputStream, StandardCharsets.UTF_8.name());
        int rootTagDepth = in.getDepth() + 1;
        XmlUtil.gotoDocumentStart(in, XML_TAG_DOCUMENT_HEADER);
        int version = parseVersionFromXml(in);
        if (version >= 2) {
            EncryptedData integrityData = parseIntegrityDataFromXml(in, rootTagDepth);
            if (!storeFile.checkIntegrity(rewriteDocumentMetadataRawBytes(dataBytes, ZEROED_ENCRYPTED_DATA), integrityData)) {
                Log.wtf(TAG, "Integrity mismatch, discarding data from " + storeFile.mFileName);
                return;
            }
        } else {
            Log.d(TAG, "No integrity data to check; thus vacously true");
        }
        final String[] headerName = new String[1];
        Set<StoreData> storeDatasInvoked = new HashSet<>();
        while (XmlUtil.gotoNextSectionOrEnd(in, headerName, rootTagDepth)) {
            StoreData storeData = storeDataList.stream().filter(new Predicate() { // from class: com.android.server.wifi.-$$Lambda$WifiConfigStore$az8-WaXTZV3Kp3BFgTqqEllqrK4
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((WifiConfigStore.StoreData) obj).getName().equals(headerName[0]);
                }
            }).findAny().orElse(null);
            if (storeData == null) {
                throw new XmlPullParserException("Unknown store data: " + headerName[0] + ". List of store data: " + storeDataList);
            }
            storeData.deserializeData(in, rootTagDepth + 1);
            storeDatasInvoked.add(storeData);
        }
        Set<StoreData> storeDatasNotInvoked = new HashSet<>(storeDataList);
        storeDatasNotInvoked.removeAll(storeDatasInvoked);
        indicateNoDataForStoreDatas(storeDatasNotInvoked);
    }

    private static int parseVersionFromXml(XmlPullParser in) throws XmlPullParserException, IOException {
        int version = ((Integer) XmlUtil.readNextValueWithName(in, XML_TAG_VERSION)).intValue();
        if (version < 1 || version > 2) {
            throw new XmlPullParserException("Invalid version of data: " + version);
        }
        return version;
    }

    private static EncryptedData parseIntegrityDataFromXml(XmlPullParser in, int outerTagDepth) throws XmlPullParserException, IOException {
        XmlUtil.gotoNextSectionWithName(in, XML_TAG_HEADER_INTEGRITY, outerTagDepth);
        byte[] encryptedData = (byte[]) XmlUtil.readNextValueWithName(in, XML_TAG_INTEGRITY_ENCRYPTED_DATA);
        byte[] iv = (byte[]) XmlUtil.readNextValueWithName(in, XML_TAG_INTEGRITY_IV);
        return new EncryptedData(encryptedData, iv);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("Dump of WifiConfigStore");
        pw.println("WifiConfigStore - Store Data Begin ----");
        for (StoreData storeData : this.mStoreDataList) {
            pw.print("StoreData =>");
            pw.print(" ");
            pw.print("Name: " + storeData.getName());
            pw.print(", ");
            pw.print("File Id: " + storeData.getStoreFileId());
            pw.print(", ");
            pw.println("File Name: " + STORE_ID_TO_FILE_NAME.get(storeData.getStoreFileId()));
        }
        pw.println("WifiConfigStore - Store Data End ----");
    }

    public static class StoreFile {
        private static final int FILE_MODE = 384;
        private final AtomicFile mAtomicFile;
        private final DataIntegrityChecker mDataIntegrityChecker;
        private final int mFileId;
        private final String mFileName;
        private byte[] mWriteData;

        public StoreFile(File file, int fileId, DataIntegrityChecker dataIntegrityChecker) {
            this.mAtomicFile = new AtomicFile(file);
            this.mFileName = file.getAbsolutePath();
            this.mFileId = fileId;
            this.mDataIntegrityChecker = dataIntegrityChecker;
        }

        public boolean exists() {
            return this.mAtomicFile.exists();
        }

        public byte[] readRawData() throws IOException {
            try {
                byte[] bytes = this.mAtomicFile.readFully();
                return bytes;
            } catch (FileNotFoundException e) {
                return null;
            }
        }

        public void storeRawDataToWrite(byte[] data) {
            this.mWriteData = data;
        }

        public void writeBufferedRawData() throws IOException {
            if (this.mWriteData == null) {
                return;
            }
            FileOutputStream out = null;
            try {
                out = this.mAtomicFile.startWrite();
                FileUtils.setPermissions(this.mFileName, FILE_MODE, -1, -1);
                out.write(this.mWriteData);
                this.mAtomicFile.finishWrite(out);
                this.mWriteData = null;
            } catch (IOException e) {
                if (out != null) {
                    this.mAtomicFile.failWrite(out);
                }
                throw e;
            }
        }

        public EncryptedData computeIntegrity(byte[] dataWithZeroedIntegrityFields) {
            return this.mDataIntegrityChecker.compute(dataWithZeroedIntegrityFields);
        }

        public boolean checkIntegrity(byte[] dataWithZeroedIntegrityFields, EncryptedData parsedEncryptedData) {
            return this.mDataIntegrityChecker.isOk(dataWithZeroedIntegrityFields, parsedEncryptedData);
        }
    }
}
