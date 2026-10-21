package com.google.android.projection.sink.settings;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.SprdCamera;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.widget.Toast;
import com.google.android.projection.sink.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class SettingsActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    BluetoothAdapter mBluetoothAdapter;

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCarWifiSecurityChange(PreferenceScreen preferenceScreen, Object obj) {
        int i2 = Integer.parseInt(obj.toString());
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(preferenceScreen.getContext()).edit();
        editorEdit.putInt(Settings.CAR_WIFI_SECURITY, i2);
        editorEdit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGpsSourceChange(Object obj) {
        if (obj.toString().equals(Settings.GPS_SIMULATION)) {
            startActivity(new Intent(this, (Class<?>) SimulationSettingsActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePresetChange(PreferenceScreen preferenceScreen, Object obj) {
        int i2 = Integer.parseInt(obj.toString());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(preferenceScreen.getContext());
        preferenceScreen.findPreference(Settings.SCREEN_WIDTH).setEnabled(i2 == 1);
        preferenceScreen.findPreference(Settings.SCREEN_HEIGHT).setEnabled(i2 == 1);
        preferenceScreen.findPreference(Settings.SCREEN_DPI).setEnabled(i2 == 1);
        preferenceScreen.findPreference(Settings.SCREEN_SCALE).setEnabled(i2 != 0);
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        if (i2 == 0) {
            editorEdit.putString(Settings.SCREEN_WIDTH, WifiEnterpriseConfig.ENGINE_DISABLE);
            editorEdit.putString(Settings.SCREEN_HEIGHT, WifiEnterpriseConfig.ENGINE_DISABLE);
            editorEdit.putString(Settings.SCREEN_DPI, WifiEnterpriseConfig.ENGINE_DISABLE);
        } else if (i2 == 1) {
            if (Integer.parseInt(defaultSharedPreferences.getString(Settings.SCREEN_WIDTH, WifiEnterpriseConfig.ENGINE_DISABLE)) == 0) {
                editorEdit.putString(Settings.SCREEN_WIDTH, SprdCamera.SprdParameters.ISO_800);
            }
            if (Integer.parseInt(defaultSharedPreferences.getString(Settings.SCREEN_HEIGHT, WifiEnterpriseConfig.ENGINE_DISABLE)) == 0) {
                editorEdit.putString(Settings.SCREEN_HEIGHT, "480");
            }
            if (Integer.parseInt(defaultSharedPreferences.getString(Settings.SCREEN_DPI, WifiEnterpriseConfig.ENGINE_DISABLE)) == 0) {
                editorEdit.putString(Settings.SCREEN_DPI, "160");
            }
        } else if (i2 == 2) {
            editorEdit.putString(Settings.SCREEN_WIDTH, SprdCamera.SprdParameters.ISO_800);
            editorEdit.putString(Settings.SCREEN_HEIGHT, "480");
            editorEdit.putString(Settings.SCREEN_DPI, "133");
        } else if (i2 == 3) {
            editorEdit.putString(Settings.SCREEN_WIDTH, SprdCamera.SprdParameters.ISO_800);
            editorEdit.putString(Settings.SCREEN_HEIGHT, "480");
            editorEdit.putString(Settings.SCREEN_DPI, "155");
        } else if (i2 == 4) {
            editorEdit.putString(Settings.SCREEN_WIDTH, SprdCamera.SprdParameters.ISO_800);
            editorEdit.putString(Settings.SCREEN_HEIGHT, "480");
            editorEdit.putString(Settings.SCREEN_DPI, "160");
        } else {
            if (i2 != 5) {
                throw new RuntimeException("Unknown preset");
            }
            editorEdit.putString(Settings.SCREEN_WIDTH, "1280");
            editorEdit.putString(Settings.SCREEN_HEIGHT, "720");
            editorEdit.putString(Settings.SCREEN_DPI, "215");
        }
        editorEdit.commit();
        onPreferenceChange(preferenceScreen.findPreference(Settings.SCREEN_WIDTH), defaultSharedPreferences.getString(Settings.SCREEN_WIDTH, WifiEnterpriseConfig.ENGINE_DISABLE));
        onPreferenceChange(preferenceScreen.findPreference(Settings.SCREEN_HEIGHT), defaultSharedPreferences.getString(Settings.SCREEN_HEIGHT, WifiEnterpriseConfig.ENGINE_DISABLE));
        onPreferenceChange(preferenceScreen.findPreference(Settings.SCREEN_DPI), defaultSharedPreferences.getString(Settings.SCREEN_DPI, WifiEnterpriseConfig.ENGINE_DISABLE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBluetoothWorking() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        if (bluetoothAdapter != null && bluetoothAdapter.isEnabled()) {
            return true;
        }
        Toast.makeText(this, getString(R.string.no_bluetooth), 0).show();
        return false;
    }

    private void setupSimplePreferencesScreen() {
        addPreferencesFromResource(R.xml.pref_general);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference("preset_list"), new Preference.OnPreferenceChangeListener() { // from class: com.google.android.projection.sink.settings.SettingsActivity.1
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                SettingsActivity settingsActivity = SettingsActivity.this;
                settingsActivity.handlePresetChange(settingsActivity.getPreferenceScreen(), obj);
                return SettingsActivity.this.onPreferenceChange(preference, obj);
            }
        });
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.SCREEN_WIDTH), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.SCREEN_HEIGHT), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.SCREEN_DPI), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.LISTEN_TCP_PORT), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.CAR_WIFI_SSID), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.CAR_WIFI_PASSWORD), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.CAR_BLUETOOTH_ADDRESS), this);
        SettingsUtils.bindPreferenceSummaryToValue(findPreference(Settings.LOCATION_SOURCE), new Preference.OnPreferenceChangeListener() { // from class: com.google.android.projection.sink.settings.SettingsActivity.2
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                SettingsActivity.this.handleGpsSourceChange(obj);
                return SettingsActivity.this.onPreferenceChange(preference, obj);
            }
        });
        SettingsUtils.bindPreferenceSummaryToValue(findPreference("wifi_security_list"), new Preference.OnPreferenceChangeListener() { // from class: com.google.android.projection.sink.settings.SettingsActivity.3
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                SettingsActivity settingsActivity = SettingsActivity.this;
                settingsActivity.handleCarWifiSecurityChange(settingsActivity.getPreferenceScreen(), obj);
                return SettingsActivity.this.onPreferenceChange(preference, obj);
            }
        });
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        ListPreference listPreference = (ListPreference) findPreference(Settings.OBD2_DEVICE);
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference(Settings.OBD2_ENABLED);
        SettingsUtils.syncSummaryToValue(listPreference);
        listPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.google.android.projection.sink.settings.SettingsActivity.4
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                return SettingsActivity.this.isBluetoothWorking();
            }
        });
        if (isBluetoothWorking()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (BluetoothDevice bluetoothDevice : this.mBluetoothAdapter.getBondedDevices()) {
                arrayList.add(bluetoothDevice.getName());
                arrayList2.add(bluetoothDevice.getAddress());
            }
            listPreference.setEntries((CharSequence[]) arrayList.toArray(new CharSequence[0]));
            listPreference.setEntryValues((CharSequence[]) arrayList2.toArray(new CharSequence[0]));
        } else {
            checkBoxPreference.setChecked(false);
            checkBoxPreference.setEnabled(false);
        }
        SettingsUtils.bindPreferenceSummaryToValue(listPreference, this);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (ActivityManager.isUserAMonkey()) {
            finish();
        }
        setupSimplePreferencesScreen();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        return SettingsUtils.updatePreferenceSummary(preference, obj);
    }
}
