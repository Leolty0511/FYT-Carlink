package com.android.server.backup;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.backup.BackupDataInputStream;
import android.app.backup.BackupDataOutput;
import android.app.backup.BackupHelper;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncAdapterType;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.security.keystore.KeyProperties;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AccountSyncSettingsBackupHelper implements BackupHelper {
    private static final boolean DEBUG = false;
    private static final String JSON_FORMAT_ENCODING = "UTF-8";
    private static final String JSON_FORMAT_HEADER_KEY = "account_data";
    private static final int JSON_FORMAT_VERSION = 1;
    private static final String KEY_ACCOUNTS = "accounts";
    private static final String KEY_ACCOUNT_AUTHORITIES = "authorities";
    private static final String KEY_ACCOUNT_NAME = "name";
    private static final String KEY_ACCOUNT_TYPE = "type";
    private static final String KEY_AUTHORITY_NAME = "name";
    private static final String KEY_AUTHORITY_SYNC_ENABLED = "syncEnabled";
    private static final String KEY_AUTHORITY_SYNC_STATE = "syncState";
    private static final String KEY_MASTER_SYNC_ENABLED = "masterSyncEnabled";
    private static final String KEY_VERSION = "version";
    private static final int MD5_BYTE_SIZE = 16;
    private static final String STASH_FILE = Environment.getDataDirectory() + "/backup/unadded_account_syncsettings.json";
    private static final int STATE_VERSION = 1;
    private static final int SYNC_REQUEST_LATCH_TIMEOUT_SECONDS = 1;
    private static final String TAG = "AccountSyncSettingsBackupHelper";
    private AccountManager mAccountManager;
    private Context mContext;

    public AccountSyncSettingsBackupHelper(Context context) {
        this.mContext = context;
        this.mAccountManager = AccountManager.get(context);
    }

    public static void accountAdded(Context context) {
        new AccountSyncSettingsBackupHelper(context).accountAddedInternal();
    }

    private void accountAddedInternal() {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(STASH_FILE));
            try {
                String utf = new DataInputStream(fileInputStream).readUTF();
                fileInputStream.close();
                try {
                    restoreFromJsonArray(new JSONArray(utf));
                } catch (JSONException e2) {
                    Log.e(TAG, "there was an error with the stashed sync settings", e2);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (FileNotFoundException | IOException unused) {
        }
    }

    private byte[] generateMd5Checksum(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return MessageDigest.getInstance(KeyProperties.DIGEST_MD5).digest(bArr);
    }

    private HashSet<Account> getAccounts() {
        Account[] accounts = this.mAccountManager.getAccounts();
        HashSet<Account> hashSet = new HashSet<>();
        for (Account account : accounts) {
            hashSet.add(account);
        }
        return hashSet;
    }

    private byte[] readOldMd5Checksum(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(parcelFileDescriptor.getFileDescriptor()));
        byte[] bArr = new byte[16];
        try {
            int i2 = dataInputStream.readInt();
            if (i2 <= 1) {
                for (int i3 = 0; i3 < 16; i3++) {
                    bArr[i3] = dataInputStream.readByte();
                }
            } else {
                Log.i(TAG, "Backup state version is: " + i2 + " (support only up to version 1)");
            }
        } catch (EOFException unused) {
        }
        return bArr;
    }

    private void restoreExistingAccountSyncSettingsFromJSON(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("authorities");
        Account account = new Account(jSONObject.getString("name"), jSONObject.getString("type"));
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject2 = (JSONObject) jSONArray.get(i2);
            String string = jSONObject2.getString("name");
            boolean z2 = jSONObject2.getBoolean(KEY_AUTHORITY_SYNC_ENABLED);
            int i3 = jSONObject2.getInt(KEY_AUTHORITY_SYNC_STATE);
            ContentResolver.setSyncAutomaticallyAsUser(account, string, z2, 0);
            if (!z2) {
                ContentResolver.setIsSyncable(account, string, i3 == 0 ? 0 : 2);
            }
        }
    }

    private void restoreFromJsonArray(JSONArray jSONArray) throws JSONException {
        HashSet<Account> accounts = getAccounts();
        JSONArray jSONArray2 = new JSONArray();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject = (JSONObject) jSONArray.get(i2);
            try {
                if (accounts.contains(new Account(jSONObject.getString("name"), jSONObject.getString("type")))) {
                    restoreExistingAccountSyncSettingsFromJSON(jSONObject);
                } else {
                    jSONArray2.put(jSONObject);
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        if (jSONArray2.length() <= 0) {
            File file = new File(STASH_FILE);
            if (file.exists()) {
                file.delete();
                return;
            }
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(STASH_FILE);
            try {
                new DataOutputStream(fileOutputStream).writeUTF(jSONArray2.toString());
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e2) {
            Log.e(TAG, "unable to write the sync settings to the stash file", e2);
        }
    }

    private JSONObject serializeAccountSyncSettingsToJSON() throws JSONException {
        Account[] accounts = this.mAccountManager.getAccounts();
        SyncAdapterType[] syncAdapterTypesAsUser = ContentResolver.getSyncAdapterTypesAsUser(this.mContext.getUserId());
        HashMap map = new HashMap();
        for (SyncAdapterType syncAdapterType : syncAdapterTypesAsUser) {
            if (syncAdapterType.isUserVisible()) {
                if (!map.containsKey(syncAdapterType.accountType)) {
                    map.put(syncAdapterType.accountType, new ArrayList());
                }
                ((List) map.get(syncAdapterType.accountType)).add(syncAdapterType.authority);
            }
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put(KEY_MASTER_SYNC_ENABLED, ContentResolver.getMasterSyncAutomatically());
        JSONArray jSONArray = new JSONArray();
        for (Account account : accounts) {
            List<String> list = (List) map.get(account.type);
            if (list != null && !list.isEmpty()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("name", account.name);
                jSONObject2.put("type", account.type);
                JSONArray jSONArray2 = new JSONArray();
                for (String str : list) {
                    int isSyncable = ContentResolver.getIsSyncable(account, str);
                    boolean syncAutomatically = ContentResolver.getSyncAutomatically(account, str);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("name", str);
                    jSONObject3.put(KEY_AUTHORITY_SYNC_STATE, isSyncable);
                    jSONObject3.put(KEY_AUTHORITY_SYNC_ENABLED, syncAutomatically);
                    jSONArray2.put(jSONObject3);
                }
                jSONObject2.put("authorities", jSONArray2);
                jSONArray.put(jSONObject2);
            }
        }
        jSONObject.put("accounts", jSONArray);
        return jSONObject;
    }

    private void writeNewMd5Checksum(ParcelFileDescriptor parcelFileDescriptor, byte[] bArr) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(parcelFileDescriptor.getFileDescriptor())));
        dataOutputStream.writeInt(1);
        dataOutputStream.write(bArr);
    }

    @Override // android.app.backup.BackupHelper
    public void performBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) {
        try {
            byte[] bytes = serializeAccountSyncSettingsToJSON().toString().getBytes(JSON_FORMAT_ENCODING);
            byte[] oldMd5Checksum = readOldMd5Checksum(parcelFileDescriptor);
            byte[] bArrGenerateMd5Checksum = generateMd5Checksum(bytes);
            if (Arrays.equals(oldMd5Checksum, bArrGenerateMd5Checksum)) {
                Log.i(TAG, "Old and new MD5 checksums match. Skipping backup.");
            } else {
                int length = bytes.length;
                backupDataOutput.writeEntityHeader(JSON_FORMAT_HEADER_KEY, length);
                backupDataOutput.writeEntityData(bytes, length);
                Log.i(TAG, "Backup successful.");
            }
            writeNewMd5Checksum(parcelFileDescriptor2, bArrGenerateMd5Checksum);
        } catch (IOException | NoSuchAlgorithmException | JSONException e2) {
            Log.e(TAG, "Couldn't backup account sync settings\n" + e2);
        }
    }

    @Override // android.app.backup.BackupHelper
    public void restoreEntity(BackupDataInputStream backupDataInputStream) {
        byte[] bArr = new byte[backupDataInputStream.size()];
        try {
            backupDataInputStream.read(bArr);
            JSONObject jSONObject = new JSONObject(new String(bArr, JSON_FORMAT_ENCODING));
            boolean z2 = jSONObject.getBoolean(KEY_MASTER_SYNC_ENABLED);
            JSONArray jSONArray = jSONObject.getJSONArray("accounts");
            if (ContentResolver.getMasterSyncAutomatically()) {
                ContentResolver.setMasterSyncAutomatically(false);
            }
            try {
                restoreFromJsonArray(jSONArray);
                ContentResolver.setMasterSyncAutomatically(z2);
                Log.i(TAG, "Restore successful.");
            } catch (Throwable th) {
                ContentResolver.setMasterSyncAutomatically(z2);
                throw th;
            }
        } catch (IOException | JSONException e2) {
            Log.e(TAG, "Couldn't restore account sync settings\n" + e2);
        }
    }

    @Override // android.app.backup.BackupHelper
    public void writeNewStateDescription(ParcelFileDescriptor parcelFileDescriptor) {
    }
}
