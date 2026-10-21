package com.google.android.projection.sink.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class SettingsBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "AHU.SETTINGS";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str : extras.keySet()) {
                Object obj = extras.get(str);
                if (obj instanceof String) {
                    Log.i("AHU.SETTINGS", "Setting " + str + " to [String]: " + obj);
                    editorEdit.putString(str, (String) obj);
                } else if (obj instanceof Integer) {
                    Log.i("AHU.SETTINGS", "Setting " + str + " to [Integer]: " + obj);
                    editorEdit.putInt(str, ((Integer) obj).intValue());
                } else if (obj instanceof Boolean) {
                    Log.i("AHU.SETTINGS", "Setting " + str + " to [Boolean]: " + obj);
                    editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
                }
            }
            editorEdit.commit();
        }
    }
}
