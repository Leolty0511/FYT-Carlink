package android.view.textservice;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.textservice.ITextServicesManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class TextServicesManager {
    private static final boolean DBG = false;
    private static final String TAG = "TextServicesManager";
    private static TextServicesManager sInstance;
    private final ITextServicesManager mService = ITextServicesManager.Stub.asInterface(ServiceManager.getServiceOrThrow(Context.TEXT_SERVICES_MANAGER_SERVICE));

    private TextServicesManager() {
    }

    public static TextServicesManager getInstance() {
        TextServicesManager textServicesManager;
        synchronized (TextServicesManager.class) {
            if (sInstance == null) {
                try {
                    sInstance = new TextServicesManager();
                } catch (ServiceManager.ServiceNotFoundException e2) {
                    throw new IllegalStateException(e2);
                }
            }
            textServicesManager = sInstance;
        }
        return textServicesManager;
    }

    private static String parseLanguageFromLocaleString(String str) {
        int iIndexOf = str.indexOf(95);
        return iIndexOf < 0 ? str : str.substring(0, iIndexOf);
    }

    public SpellCheckerInfo getCurrentSpellChecker() {
        try {
            return this.mService.getCurrentSpellChecker(null);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public SpellCheckerSubtype getCurrentSpellCheckerSubtype(boolean z2) {
        try {
            return this.mService.getCurrentSpellCheckerSubtype(null, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public SpellCheckerInfo[] getEnabledSpellCheckers() {
        try {
            return this.mService.getEnabledSpellCheckers();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isSpellCheckerEnabled() {
        try {
            return this.mService.isSpellCheckerEnabled();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public SpellCheckerSession newSpellCheckerSession(Bundle bundle, Locale locale, SpellCheckerSession.SpellCheckerSessionListener spellCheckerSessionListener, boolean z2) {
        SpellCheckerSubtype currentSpellCheckerSubtype;
        spellCheckerSessionListener.getClass();
        if (!z2 && locale == null) {
            throw new IllegalArgumentException("Locale should not be null if you don't refer settings.");
        }
        if (z2 && !isSpellCheckerEnabled()) {
            return null;
        }
        try {
            SpellCheckerInfo currentSpellChecker = this.mService.getCurrentSpellChecker(null);
            if (currentSpellChecker == null) {
                return null;
            }
            if (!z2) {
                String string = locale.toString();
                int i2 = 0;
                SpellCheckerSubtype spellCheckerSubtype = null;
                while (true) {
                    if (i2 >= currentSpellChecker.getSubtypeCount()) {
                        currentSpellCheckerSubtype = spellCheckerSubtype;
                        break;
                    }
                    SpellCheckerSubtype subtypeAt = currentSpellChecker.getSubtypeAt(i2);
                    String locale2 = subtypeAt.getLocale();
                    String languageFromLocaleString = parseLanguageFromLocaleString(locale2);
                    if (locale2.equals(string)) {
                        currentSpellCheckerSubtype = subtypeAt;
                        break;
                    }
                    if (languageFromLocaleString.length() >= 2 && locale.getLanguage().equals(languageFromLocaleString)) {
                        spellCheckerSubtype = subtypeAt;
                    }
                    i2++;
                }
            } else {
                currentSpellCheckerSubtype = getCurrentSpellCheckerSubtype(true);
                if (currentSpellCheckerSubtype == null) {
                    return null;
                }
                if (locale != null) {
                    String languageFromLocaleString2 = parseLanguageFromLocaleString(currentSpellCheckerSubtype.getLocale());
                    if (languageFromLocaleString2.length() < 2 || !locale.getLanguage().equals(languageFromLocaleString2)) {
                        return null;
                    }
                }
            }
            if (currentSpellCheckerSubtype == null) {
                return null;
            }
            SpellCheckerSession spellCheckerSession = new SpellCheckerSession(currentSpellChecker, this.mService, spellCheckerSessionListener);
            try {
                this.mService.getSpellCheckerService(currentSpellChecker.getId(), currentSpellCheckerSubtype.getLocale(), spellCheckerSession.getTextServicesSessionListener(), spellCheckerSession.getSpellCheckerSessionListener(), bundle);
                return spellCheckerSession;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        } catch (RemoteException unused) {
            return null;
        }
    }
}
