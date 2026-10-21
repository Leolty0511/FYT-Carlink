package com.google.android.projection.sink.settings;

import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.Toast;
import com.google.android.projection.sink.R;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SimulationSettingsActivity extends PreferenceActivity implements Preference.OnPreferenceChangeListener {
    private static final String FINISH = "simulation_end";
    private static final String PREDEFINED_FINISH_ADDRESS = "604 Coronado Avenue, Stanford, CA 94305, USA";
    private static final String PREDEFINED_START_ADDRESS = "1600 Amphitheatre Parkway, Mountain View, CA 94043, USA";
    private static final String START = "simulation_start";
    private static final String TAG = "AHU.SETTINGS";

    public class QueryAddressTask extends AsyncTask<String, Void, String> {
        private ProgressDialog dialog;
        private final Location location;
        private final Preference preference;

        public QueryAddressTask(Preference preference, Location location) {
            this.preference = preference;
            this.location = location;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            SimulationSettingsActivity simulationSettingsActivity = SimulationSettingsActivity.this;
            this.dialog = ProgressDialog.show(simulationSettingsActivity, simulationSettingsActivity.getText(R.string.checking_address), SimulationSettingsActivity.this.getText(R.string.please_wait));
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            List listQueryRefinedAddress = SimulationSettingsActivity.queryRefinedAddress(strArr[0], this.location);
            if (listQueryRefinedAddress == null || listQueryRefinedAddress.isEmpty()) {
                return null;
            }
            return (String) listQueryRefinedAddress.get(0);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            this.dialog.dismiss();
            if (str != null) {
                this.preference.getEditor().putString(this.preference.getKey(), str).commit();
                this.preference.setSummary(str);
            } else {
                SimulationSettingsActivity simulationSettingsActivity = SimulationSettingsActivity.this;
                Toast.makeText(simulationSettingsActivity, simulationSettingsActivity.getText(R.string.invalid_address), 1).show();
            }
        }
    }

    private static String getBounds(Location location) {
        return String.format("%.02f,%.02f|%.02f,%.02f", Double.valueOf(location.getLatitude() - 2.0d), Double.valueOf(location.getLongitude() - 2.0d), Double.valueOf(location.getLatitude() + 2.0d), Double.valueOf(location.getLongitude() + 2.0d));
    }

    private static URL getGeocodeUrl(String str, Location location) {
        String str2;
        try {
            StringBuilder sb = new StringBuilder("http://maps.googleapis.com/maps/api/geocode/json?address=");
            sb.append(URLEncoder.encode(str, "UTF-8"));
            if (location == null) {
                str2 = "";
            } else {
                str2 = "&bounds=" + URLEncoder.encode(getBounds(location), "UTF-8");
            }
            sb.append(str2);
            sb.append("&sensor=false");
            return new URL(sb.toString());
        } catch (UnsupportedEncodingException e2) {
            Log.e("AHU.SETTINGS", "Exception", e2);
            return null;
        } catch (MalformedURLException e3) {
            Log.e("AHU.SETTINGS", "Exception", e3);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> queryRefinedAddress(String str, Location location) {
        URL geocodeUrl = getGeocodeUrl(str, location);
        if (geocodeUrl == null) {
            return null;
        }
        try {
            URLConnection uRLConnectionOpenConnection = geocodeUrl.openConnection();
            uRLConnectionOpenConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Google Map Navigation Beta Demo Launcher");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnectionOpenConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            JSONArray jSONArray = new JSONObject(sb.toString()).getJSONArray("results");
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(jSONArray.getJSONObject(i2).getString("formatted_address"));
            }
            return arrayList;
        } catch (IOException e2) {
            Log.e("AHU.SETTINGS", "Exception", e2);
            return null;
        } catch (JSONException e3) {
            Log.e("AHU.SETTINGS", "Exception", e3);
            return null;
        }
    }

    private void setupSimplePreferencesScreen() {
        addPreferencesFromResource(R.xml.pref_simulation);
        Preference preferenceFindPreference = findPreference("simulation_start");
        Preference preferenceFindPreference2 = findPreference("simulation_end");
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(preferenceFindPreference.getContext());
        String string = defaultSharedPreferences.getString("simulation_start", "");
        String string2 = defaultSharedPreferences.getString("simulation_end", "");
        if (string.isEmpty()) {
            preferenceFindPreference.getEditor().putString("simulation_start", PREDEFINED_START_ADDRESS).commit();
        }
        if (string2.isEmpty()) {
            preferenceFindPreference2.getEditor().putString("simulation_end", PREDEFINED_FINISH_ADDRESS).commit();
        }
        SettingsUtils.bindPreferenceSummaryToValue(preferenceFindPreference, this);
        SettingsUtils.bindPreferenceSummaryToValue(preferenceFindPreference2, this);
    }

    private void validateAddress(Preference preference, String str) {
        Log.d("AHU.SETTINGS", "validateAddress(" + str + ")");
        LocationManager locationManager = (LocationManager) getSystemService("location");
        Location lastKnownLocation = locationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);
        if (lastKnownLocation == null) {
            lastKnownLocation = locationManager.getLastKnownLocation("gps");
        }
        new QueryAddressTask(preference, lastKnownLocation).execute(str);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        setupSimplePreferencesScreen();
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        validateAddress(preference, obj.toString());
        return SettingsUtils.updatePreferenceSummary(preference, obj);
    }
}
