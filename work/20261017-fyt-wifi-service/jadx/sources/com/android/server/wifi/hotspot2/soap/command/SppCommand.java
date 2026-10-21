package com.android.server.wifi.hotspot2.soap.command;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.ksoap2.serialization.PropertyInfo;
import org.ksoap2.serialization.SoapObject;

/* JADX INFO: loaded from: classes.dex */
public class SppCommand {
    private static final String TAG = "PasspointSppCommand";
    private static final Map<String, Integer> sCommands = new HashMap();
    private static final Map<String, Integer> sExecs;
    private SppCommandData mCommandData;
    private int mExecCommandId;
    private int mSppCommandId;

    public interface SppCommandData {
    }

    public class CommandId {
        public static final int ADD_MO = 1;
        public static final int EXEC = 0;
        public static final int NO_MO_UPDATE = 3;
        public static final int UPDATE_NODE = 2;

        public CommandId() {
        }
    }

    static {
        sCommands.put("exec", 0);
        sCommands.put(PpsMoData.ADD_MO_COMMAND, 1);
        sCommands.put("updateNode", 2);
        sCommands.put("noMOUpdate", 3);
        sExecs = new HashMap();
        sExecs.put("launchBrowserToURI", 0);
        sExecs.put("getCertificate", 1);
        sExecs.put("useClientCertTLS", 2);
        sExecs.put("uploadMO", 3);
    }

    public class ExecCommandId {
        public static final int BROWSER = 0;
        public static final int GET_CERT = 1;
        public static final int UPLOAD_MO = 3;
        public static final int USE_CLIENT_CERT_TLS = 2;

        public ExecCommandId() {
        }
    }

    private SppCommand(PropertyInfo soapResponse) throws IllegalArgumentException {
        this.mExecCommandId = -1;
        if (!sCommands.containsKey(soapResponse.getName())) {
            throw new IllegalArgumentException("can't find the command: " + soapResponse.getName());
        }
        this.mSppCommandId = sCommands.get(soapResponse.getName()).intValue();
        Log.i(TAG, "command name: " + soapResponse.getName());
        int i = this.mSppCommandId;
        if (i != 0) {
            if (i == 1) {
                this.mCommandData = PpsMoData.createInstance(soapResponse);
                return;
            } else {
                if (i != 2 && i != 3) {
                    this.mExecCommandId = -1;
                    this.mCommandData = null;
                    return;
                }
                return;
            }
        }
        SoapObject subCommand = (SoapObject) soapResponse.getValue();
        if (subCommand.getPropertyCount() != 1) {
            throw new IllegalArgumentException("more than one child element found for exec command: " + subCommand.getPropertyCount());
        }
        PropertyInfo commandInfo = new PropertyInfo();
        subCommand.getPropertyInfo(0, commandInfo);
        if (!sExecs.containsKey(commandInfo.getName())) {
            throw new IllegalArgumentException("Unrecognized exec command: " + commandInfo.getName());
        }
        this.mExecCommandId = sExecs.get(commandInfo.getName()).intValue();
        Log.i(TAG, "exec command: " + commandInfo.getName());
        if (this.mExecCommandId == 0) {
            this.mCommandData = BrowserUri.createInstance(commandInfo);
        } else {
            this.mCommandData = null;
        }
    }

    public static SppCommand createInstance(PropertyInfo soapResponse) {
        try {
            SppCommand sppCommand = new SppCommand(soapResponse);
            return sppCommand;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "fails to create an instance: " + e);
            return null;
        }
    }

    public int getSppCommandId() {
        return this.mSppCommandId;
    }

    public int getExecCommandId() {
        return this.mExecCommandId;
    }

    public SppCommandData getCommandData() {
        return this.mCommandData;
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (!(thatObject instanceof SppCommand)) {
            return false;
        }
        SppCommand that = (SppCommand) thatObject;
        return this.mSppCommandId == that.getSppCommandId() && this.mExecCommandId == that.getExecCommandId() && Objects.equals(this.mCommandData, that.getCommandData());
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mSppCommandId), Integer.valueOf(this.mExecCommandId), this.mCommandData);
    }

    public String toString() {
        return "SppCommand{mSppCommandId=" + this.mSppCommandId + ", mExecCommandId=" + this.mExecCommandId + ", mCommandData=" + this.mCommandData + "}";
    }
}
