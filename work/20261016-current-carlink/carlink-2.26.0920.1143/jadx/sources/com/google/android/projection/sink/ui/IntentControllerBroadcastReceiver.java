package com.google.android.projection.sink.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Camera;
import android.os.Bundle;
import android.util.Log;
import com.google.android.projection.sink.GalIntegration;
import com.google.android.projection.sink.debug.DebugContext;
import com.google.android.projection.sink.settings.Settings;

/* JADX INFO: loaded from: classes3.dex */
public class IntentControllerBroadcastReceiver extends BroadcastReceiver {
    public static final String ARG_KEY = "arg";
    public static final String GPS_ACTION = "com.google.android.projection.sink.GPS";
    public static final String LOCKOUT_ACTION = "com.google.android.projection.sink.LOCKOUT";
    public static final String NIGHT_MODE_ACTION = "com.google.android.projection.sink.NIGHT_MODE";
    private static final String TAG = "AHU.ICR";
    private final DebugContext mDebugContext;
    private final GalIntegration mGal;

    public IntentControllerBroadcastReceiver(DebugContext debugContext, GalIntegration galIntegration) {
        this.mDebugContext = debugContext;
        this.mGal = galIntegration;
    }

    public static IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(GPS_ACTION);
        intentFilter.addAction(NIGHT_MODE_ACTION);
        intentFilter.addAction(LOCKOUT_ACTION);
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        Settings settings = new Settings(context);
        if (extras == null) {
            Log.w(TAG, "no extras. discarding.");
        }
        String action = intent.getAction();
        action.getClass();
        switch (action) {
            case "com.google.android.projection.sink.NIGHT_MODE":
                if (extras.containsKey(ARG_KEY)) {
                    String string = extras.getString(ARG_KEY);
                    string.getClass();
                    if (string.equals("day")) {
                        this.mGal.galVerificationVendorExtension.overrideNightMode(Boolean.FALSE);
                    } else if (!string.equals(Camera.Parameters.SCENE_MODE_NIGHT)) {
                        this.mGal.galVerificationVendorExtension.overrideNightMode(null);
                    } else {
                        this.mGal.galVerificationVendorExtension.overrideNightMode(Boolean.TRUE);
                    }
                    break;
                }
                break;
            case "com.google.android.projection.sink.LOCKOUT":
                if (extras.containsKey(ARG_KEY)) {
                    String string2 = extras.getString(ARG_KEY);
                    string2.getClass();
                    switch (string2) {
                        case "auto":
                            this.mDebugContext.setKeyboardLockoutMode(0);
                            break;
                        case "force":
                            this.mDebugContext.setKeyboardLockoutMode(1);
                            break;
                        case "override":
                            this.mDebugContext.setKeyboardLockoutMode(2);
                            break;
                    }
                }
                break;
            case "com.google.android.projection.sink.GPS":
                if (settings.isGpsSimulationEnabled() && extras.containsKey(ARG_KEY)) {
                    String string3 = extras.getString(ARG_KEY);
                    string3.getClass();
                    switch (string3.hashCode()) {
                        case -820630747:
                            if (string3.equals("increaseSpeed")) {
                            }
                            break;
                        case -515360183:
                            if (string3.equals("decreaseSpeed")) {
                            }
                            break;
                        case 108404047:
                            if (string3.equals("reset")) {
                            }
                            break;
                    }
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Switch insn not found in header
                        	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        */
                    /*
                        Method dump skipped, instruction units count: 380
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.projection.sink.ui.IntentControllerBroadcastReceiver.onReceive(android.content.Context, android.content.Intent):void");
                }
            }
