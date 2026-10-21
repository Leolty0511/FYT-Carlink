package android.view.textservice;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.util.Locale;
import java.util.Objects;
import s.d;

/* JADX INFO: loaded from: classes.dex */
public final class TextServicesManager {
    private static final boolean DBG = false;
    private static final String TAG = "TextServicesManager";
    private static TextServicesManager sInstance;
    private static d sService;

    private TextServicesManager() {
        if (sService == null) {
            sService = d.a.J2(ServiceManager.getService(Context.TEXT_SERVICES_MANAGER_SERVICE));
        }
    }

    public static TextServicesManager getInstance() {
        synchronized (TextServicesManager.class) {
            TextServicesManager textServicesManager = sInstance;
            if (textServicesManager != null) {
                return textServicesManager;
            }
            TextServicesManager textServicesManager2 = new TextServicesManager();
            sInstance = textServicesManager2;
            return textServicesManager2;
        }
    }

    public SpellCheckerInfo getCurrentSpellChecker() {
        try {
            return sService.f0(null);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public SpellCheckerSubtype getCurrentSpellCheckerSubtype(boolean z2) {
        try {
            d dVar = sService;
            if (dVar != null) {
                return dVar.z2(null, z2);
            }
            Log.e(TAG, "sService is null.");
            return null;
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in getCurrentSpellCheckerSubtype: " + e2);
            return null;
        }
    }

    public SpellCheckerInfo[] getEnabledSpellCheckers() {
        try {
            return sService.n0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in getEnabledSpellCheckers: " + e2);
            return null;
        }
    }

    public boolean isSpellCheckerEnabled() {
        try {
            return sService.Q0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in isSpellCheckerEnabled:" + e2);
            return false;
        }
    }

    public SpellCheckerSession newSpellCheckerSession(Bundle bundle, Locale locale, SpellCheckerSession.SpellCheckerSessionListener spellCheckerSessionListener, boolean z2) {
        SpellCheckerSubtype currentSpellCheckerSubtype;
        Objects.requireNonNull(spellCheckerSessionListener);
        if (!z2 && locale == null) {
            throw new IllegalArgumentException("Locale should not be null if you don't refer settings.");
        }
        if (z2 && !isSpellCheckerEnabled()) {
            return null;
        }
        try {
            SpellCheckerInfo spellCheckerInfoF0 = sService.f0(null);
            if (spellCheckerInfoF0 == null) {
                return null;
            }
            if (z2) {
                currentSpellCheckerSubtype = getCurrentSpellCheckerSubtype(true);
                if (currentSpellCheckerSubtype == null) {
                    return null;
                }
                if (locale != null) {
                    String locale2 = currentSpellCheckerSubtype.getLocale();
                    String string = locale.toString();
                    if (locale2.length() < 2 || string.length() < 2 || !locale2.substring(0, 2).equals(string.substring(0, 2))) {
                        return null;
                    }
                }
            } else {
                String string2 = locale.toString();
                currentSpellCheckerSubtype = null;
                for (int i2 = 0; i2 < spellCheckerInfoF0.getSubtypeCount(); i2++) {
                    SpellCheckerSubtype subtypeAt = spellCheckerInfoF0.getSubtypeAt(i2);
                    String locale3 = subtypeAt.getLocale();
                    if (locale3.equals(string2)) {
                        currentSpellCheckerSubtype = subtypeAt;
                        break;
                    }
                    if (string2.length() >= 2 && locale3.length() >= 2 && string2.startsWith(locale3)) {
                        currentSpellCheckerSubtype = subtypeAt;
                    }
                }
            }
            if (currentSpellCheckerSubtype == null) {
                return null;
            }
            SpellCheckerSession spellCheckerSession = new SpellCheckerSession(spellCheckerInfoF0, sService, spellCheckerSessionListener, currentSpellCheckerSubtype);
            sService.H1(spellCheckerInfoF0.getId(), currentSpellCheckerSubtype.getLocale(), spellCheckerSession.getTextServicesSessionListener(), spellCheckerSession.getSpellCheckerSessionListener(), bundle);
            return spellCheckerSession;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public void setCurrentSpellChecker(SpellCheckerInfo spellCheckerInfo) {
        try {
            if (spellCheckerInfo == null) {
                throw new NullPointerException("SpellCheckerInfo is null.");
            }
            sService.o1(null, spellCheckerInfo.getId());
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in setCurrentSpellChecker: " + e2);
        }
    }

    public void setSpellCheckerEnabled(boolean z2) {
        try {
            sService.w2(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error in setSpellCheckerEnabled:" + e2);
        }
    }

    public void setSpellCheckerSubtype(SpellCheckerSubtype spellCheckerSubtype) {
        int iHashCode;
        if (spellCheckerSubtype == null) {
            iHashCode = 0;
        } else {
            try {
                iHashCode = spellCheckerSubtype.hashCode();
            } catch (RemoteException e2) {
                Log.e(TAG, "Error in setSpellCheckerSubtype:" + e2);
                return;
            }
        }
        sService.h1(null, iHashCode);
    }
}
