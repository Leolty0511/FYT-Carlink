package android.net.wifi;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.app.m;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.util.AsyncChannel;

/* JADX INFO: loaded from: classes.dex */
public class RttManager {
    public static final int BASE = 160256;
    public static final int CMD_OP_ABORTED = 160260;
    public static final int CMD_OP_DISABLE_RESPONDER = 160262;
    public static final int CMD_OP_ENABLE_RESPONDER = 160261;
    public static final int CMD_OP_ENALBE_RESPONDER_FAILED = 160264;
    public static final int CMD_OP_ENALBE_RESPONDER_SUCCEEDED = 160263;
    public static final int CMD_OP_FAILED = 160258;
    public static final int CMD_OP_REG_BINDER = 160265;
    public static final int CMD_OP_START_RANGING = 160256;
    public static final int CMD_OP_STOP_RANGING = 160257;
    public static final int CMD_OP_SUCCEEDED = 160259;
    private static final boolean DBG = false;
    public static final String DESCRIPTION_KEY = "android.net.wifi.RttManager.Description";
    private static final int INVALID_KEY = 0;
    public static final int PREAMBLE_HT = 2;
    public static final int PREAMBLE_LEGACY = 1;
    public static final int PREAMBLE_VHT = 4;
    public static final int REASON_INITIATOR_NOT_ALLOWED_WHEN_RESPONDER_ON = -6;
    public static final int REASON_INVALID_LISTENER = -3;
    public static final int REASON_INVALID_REQUEST = -4;
    public static final int REASON_NOT_AVAILABLE = -2;
    public static final int REASON_PERMISSION_DENIED = -5;
    public static final int REASON_UNSPECIFIED = -1;
    public static final int RTT_BW_10_SUPPORT = 2;
    public static final int RTT_BW_160_SUPPORT = 32;
    public static final int RTT_BW_20_SUPPORT = 4;
    public static final int RTT_BW_40_SUPPORT = 8;
    public static final int RTT_BW_5_SUPPORT = 1;
    public static final int RTT_BW_80_SUPPORT = 16;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_10 = 6;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_160 = 3;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_20 = 0;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_40 = 1;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_5 = 5;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_80 = 2;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_80P80 = 4;

    @Deprecated
    public static final int RTT_CHANNEL_WIDTH_UNSPECIFIED = -1;
    public static final int RTT_PEER_NAN = 5;
    public static final int RTT_PEER_P2P_CLIENT = 4;
    public static final int RTT_PEER_P2P_GO = 3;
    public static final int RTT_PEER_TYPE_AP = 1;
    public static final int RTT_PEER_TYPE_STA = 2;

    @Deprecated
    public static final int RTT_PEER_TYPE_UNSPECIFIED = 0;
    public static final int RTT_STATUS_ABORTED = 8;
    public static final int RTT_STATUS_FAILURE = 1;
    public static final int RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL = 6;
    public static final int RTT_STATUS_FAIL_BUSY_TRY_LATER = 12;
    public static final int RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE = 15;
    public static final int RTT_STATUS_FAIL_INVALID_TS = 9;
    public static final int RTT_STATUS_FAIL_NOT_SCHEDULED_YET = 4;
    public static final int RTT_STATUS_FAIL_NO_CAPABILITY = 7;
    public static final int RTT_STATUS_FAIL_NO_RSP = 2;
    public static final int RTT_STATUS_FAIL_PROTOCOL = 10;
    public static final int RTT_STATUS_FAIL_REJECTED = 3;
    public static final int RTT_STATUS_FAIL_SCHEDULE = 11;
    public static final int RTT_STATUS_FAIL_TM_TIMEOUT = 5;
    public static final int RTT_STATUS_INVALID_REQ = 13;
    public static final int RTT_STATUS_NO_WIFI = 14;
    public static final int RTT_STATUS_SUCCESS = 0;

    @Deprecated
    public static final int RTT_TYPE_11_MC = 4;

    @Deprecated
    public static final int RTT_TYPE_11_V = 2;
    public static final int RTT_TYPE_ONE_SIDED = 1;
    public static final int RTT_TYPE_TWO_SIDED = 2;

    @Deprecated
    public static final int RTT_TYPE_UNSPECIFIED = 0;
    private static final String TAG = "RttManager";
    private AsyncChannel mAsyncChannel;
    private final Context mContext;
    private RttCapabilities mRttCapabilities;
    private final IRttManager mService;
    private final SparseArray mListenerMap = new SparseArray();
    private final Object mListenerMapLock = new Object();
    private final Object mCapabilitiesLock = new Object();
    private int mListenerKey = 1;

    @Deprecated
    public class Capabilities {
        public int supportedPeerType;
        public int supportedType;

        public Capabilities() {
        }
    }

    public static class ParcelableRttParams implements Parcelable {
        public static final Parcelable.Creator<ParcelableRttParams> CREATOR = new Parcelable.Creator<ParcelableRttParams>() { // from class: android.net.wifi.RttManager.ParcelableRttParams.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableRttParams createFromParcel(Parcel parcel) {
                int i2 = parcel.readInt();
                RttParams[] rttParamsArr = new RttParams[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    RttParams rttParams = new RttParams();
                    rttParamsArr[i3] = rttParams;
                    rttParams.deviceType = parcel.readInt();
                    rttParamsArr[i3].requestType = parcel.readInt();
                    boolean z2 = true;
                    rttParamsArr[i3].secure = parcel.readByte() != 0;
                    rttParamsArr[i3].bssid = parcel.readString();
                    rttParamsArr[i3].channelWidth = parcel.readInt();
                    rttParamsArr[i3].frequency = parcel.readInt();
                    rttParamsArr[i3].centerFreq0 = parcel.readInt();
                    rttParamsArr[i3].centerFreq1 = parcel.readInt();
                    rttParamsArr[i3].numberBurst = parcel.readInt();
                    rttParamsArr[i3].interval = parcel.readInt();
                    rttParamsArr[i3].numSamplesPerBurst = parcel.readInt();
                    rttParamsArr[i3].numRetriesPerMeasurementFrame = parcel.readInt();
                    rttParamsArr[i3].numRetriesPerFTMR = parcel.readInt();
                    rttParamsArr[i3].LCIRequest = parcel.readInt() == 1;
                    RttParams rttParams2 = rttParamsArr[i3];
                    if (parcel.readInt() != 1) {
                        z2 = false;
                    }
                    rttParams2.LCRRequest = z2;
                    rttParamsArr[i3].burstTimeout = parcel.readInt();
                    rttParamsArr[i3].preamble = parcel.readInt();
                    rttParamsArr[i3].bandwidth = parcel.readInt();
                }
                return new ParcelableRttParams(rttParamsArr);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableRttParams[] newArray(int i2) {
                return new ParcelableRttParams[i2];
            }
        };
        public RttParams[] mParams;

        public ParcelableRttParams(RttParams[] rttParamsArr) {
            this.mParams = rttParamsArr == null ? new RttParams[0] : rttParamsArr;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mParams.length);
            for (RttParams rttParams : this.mParams) {
                parcel.writeInt(rttParams.deviceType);
                parcel.writeInt(rttParams.requestType);
                parcel.writeByte(rttParams.secure ? (byte) 1 : (byte) 0);
                parcel.writeString(rttParams.bssid);
                parcel.writeInt(rttParams.channelWidth);
                parcel.writeInt(rttParams.frequency);
                parcel.writeInt(rttParams.centerFreq0);
                parcel.writeInt(rttParams.centerFreq1);
                parcel.writeInt(rttParams.numberBurst);
                parcel.writeInt(rttParams.interval);
                parcel.writeInt(rttParams.numSamplesPerBurst);
                parcel.writeInt(rttParams.numRetriesPerMeasurementFrame);
                parcel.writeInt(rttParams.numRetriesPerFTMR);
                parcel.writeInt(rttParams.LCIRequest ? 1 : 0);
                parcel.writeInt(rttParams.LCRRequest ? 1 : 0);
                parcel.writeInt(rttParams.burstTimeout);
                parcel.writeInt(rttParams.preamble);
                parcel.writeInt(rttParams.bandwidth);
            }
        }
    }

    public static class ParcelableRttResults implements Parcelable {
        public static final Parcelable.Creator<ParcelableRttResults> CREATOR = new Parcelable.Creator<ParcelableRttResults>() { // from class: android.net.wifi.RttManager.ParcelableRttResults.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableRttResults createFromParcel(Parcel parcel) {
                int i2 = parcel.readInt();
                if (i2 == 0) {
                    return new ParcelableRttResults(null);
                }
                RttResult[] rttResultArr = new RttResult[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    RttResult rttResult = new RttResult();
                    rttResultArr[i3] = rttResult;
                    rttResult.bssid = parcel.readString();
                    rttResultArr[i3].burstNumber = parcel.readInt();
                    rttResultArr[i3].measurementFrameNumber = parcel.readInt();
                    rttResultArr[i3].successMeasurementFrameNumber = parcel.readInt();
                    rttResultArr[i3].frameNumberPerBurstPeer = parcel.readInt();
                    rttResultArr[i3].status = parcel.readInt();
                    rttResultArr[i3].measurementType = parcel.readInt();
                    rttResultArr[i3].retryAfterDuration = parcel.readInt();
                    rttResultArr[i3].ts = parcel.readLong();
                    rttResultArr[i3].rssi = parcel.readInt();
                    rttResultArr[i3].rssiSpread = parcel.readInt();
                    rttResultArr[i3].txRate = parcel.readInt();
                    rttResultArr[i3].rtt = parcel.readLong();
                    rttResultArr[i3].rttStandardDeviation = parcel.readLong();
                    rttResultArr[i3].rttSpread = parcel.readLong();
                    rttResultArr[i3].distance = parcel.readInt();
                    rttResultArr[i3].distanceStandardDeviation = parcel.readInt();
                    rttResultArr[i3].distanceSpread = parcel.readInt();
                    rttResultArr[i3].burstDuration = parcel.readInt();
                    rttResultArr[i3].negotiatedBurstNum = parcel.readInt();
                    rttResultArr[i3].LCI = new WifiInformationElement();
                    rttResultArr[i3].LCI.id = parcel.readByte();
                    if (rttResultArr[i3].LCI.id != -1) {
                        byte[] bArr = new byte[parcel.readByte()];
                        rttResultArr[i3].LCI.data = bArr;
                        parcel.readByteArray(bArr);
                    }
                    rttResultArr[i3].LCR = new WifiInformationElement();
                    rttResultArr[i3].LCR.id = parcel.readByte();
                    if (rttResultArr[i3].LCR.id != -1) {
                        byte[] bArr2 = new byte[parcel.readByte()];
                        rttResultArr[i3].LCR.data = bArr2;
                        parcel.readByteArray(bArr2);
                    }
                    rttResultArr[i3].secure = parcel.readByte() != 0;
                }
                return new ParcelableRttResults(rttResultArr);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableRttResults[] newArray(int i2) {
                return new ParcelableRttResults[i2];
            }
        };
        public RttResult[] mResults;

        public ParcelableRttResults(RttResult[] rttResultArr) {
            this.mResults = rttResultArr;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < this.mResults.length; i2++) {
                sb.append("[" + i2 + "]: ");
                StringBuilder sb2 = new StringBuilder("bssid=");
                sb2.append(this.mResults[i2].bssid);
                sb.append(sb2.toString());
                StringBuilder sbM = m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(new StringBuilder(", burstNumber="), this.mResults[i2].burstNumber, sb, ", measurementFrameNumber="), this.mResults[i2].measurementFrameNumber, sb, ", successMeasurementFrameNumber="), this.mResults[i2].successMeasurementFrameNumber, sb, ", frameNumberPerBurstPeer="), this.mResults[i2].frameNumberPerBurstPeer, sb, ", status="), this.mResults[i2].status, sb, ", requestType="), this.mResults[i2].requestType, sb, ", measurementType="), this.mResults[i2].measurementType, sb, ", retryAfterDuration="), this.mResults[i2].retryAfterDuration, sb, ", ts=");
                sbM.append(this.mResults[i2].ts);
                sb.append(sbM.toString());
                StringBuilder sbM2 = m.m(m.m(m.m(m.m(m.m(m.m(new StringBuilder(", rssi="), this.mResults[i2].rssi, sb, ", rssi_spread="), this.mResults[i2].rssi_spread, sb, ", rssiSpread="), this.mResults[i2].rssiSpread, sb, ", tx_rate="), this.mResults[i2].tx_rate, sb, ", txRate="), this.mResults[i2].txRate, sb, ", rxRate="), this.mResults[i2].rxRate, sb, ", rtt_ns=");
                sbM2.append(this.mResults[i2].rtt_ns);
                sb.append(sbM2.toString());
                sb.append(", rtt=" + this.mResults[i2].rtt);
                sb.append(", rtt_sd_ns=" + this.mResults[i2].rtt_sd_ns);
                sb.append(", rttStandardDeviation=" + this.mResults[i2].rttStandardDeviation);
                sb.append(", rtt_spread_ns=" + this.mResults[i2].rtt_spread_ns);
                sb.append(", rttSpread=" + this.mResults[i2].rttSpread);
                StringBuilder sbM3 = m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(new StringBuilder(", distance_cm="), this.mResults[i2].distance_cm, sb, ", distance="), this.mResults[i2].distance, sb, ", distance_sd_cm="), this.mResults[i2].distance_sd_cm, sb, ", distanceStandardDeviation="), this.mResults[i2].distanceStandardDeviation, sb, ", distance_spread_cm="), this.mResults[i2].distance_spread_cm, sb, ", distanceSpread="), this.mResults[i2].distanceSpread, sb, ", burstDuration="), this.mResults[i2].burstDuration, sb, ", negotiatedBurstNum="), this.mResults[i2].negotiatedBurstNum, sb, ", LCI=");
                sbM3.append(this.mResults[i2].LCI);
                sb.append(sbM3.toString());
                sb.append(", LCR=" + this.mResults[i2].LCR);
                sb.append(", secure=" + this.mResults[i2].secure);
            }
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            RttResult[] rttResultArr = this.mResults;
            if (rttResultArr == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(rttResultArr.length);
            for (RttResult rttResult : this.mResults) {
                parcel.writeString(rttResult.bssid);
                parcel.writeInt(rttResult.burstNumber);
                parcel.writeInt(rttResult.measurementFrameNumber);
                parcel.writeInt(rttResult.successMeasurementFrameNumber);
                parcel.writeInt(rttResult.frameNumberPerBurstPeer);
                parcel.writeInt(rttResult.status);
                parcel.writeInt(rttResult.measurementType);
                parcel.writeInt(rttResult.retryAfterDuration);
                parcel.writeLong(rttResult.ts);
                parcel.writeInt(rttResult.rssi);
                parcel.writeInt(rttResult.rssiSpread);
                parcel.writeInt(rttResult.txRate);
                parcel.writeLong(rttResult.rtt);
                parcel.writeLong(rttResult.rttStandardDeviation);
                parcel.writeLong(rttResult.rttSpread);
                parcel.writeInt(rttResult.distance);
                parcel.writeInt(rttResult.distanceStandardDeviation);
                parcel.writeInt(rttResult.distanceSpread);
                parcel.writeInt(rttResult.burstDuration);
                parcel.writeInt(rttResult.negotiatedBurstNum);
                parcel.writeByte(rttResult.LCI.id);
                WifiInformationElement wifiInformationElement = rttResult.LCI;
                if (wifiInformationElement.id != -1) {
                    parcel.writeByte((byte) wifiInformationElement.data.length);
                    parcel.writeByteArray(rttResult.LCI.data);
                }
                parcel.writeByte(rttResult.LCR.id);
                WifiInformationElement wifiInformationElement2 = rttResult.LCR;
                if (wifiInformationElement2.id != -1) {
                    parcel.writeByte((byte) wifiInformationElement2.data.length);
                    parcel.writeByteArray(rttResult.LCR.data);
                }
                parcel.writeByte(rttResult.secure ? (byte) 1 : (byte) 0);
            }
        }
    }

    public static abstract class ResponderCallback {
        public abstract void onResponderEnableFailure(int i2);

        public abstract void onResponderEnabled(ResponderConfig responderConfig);
    }

    public static class ResponderConfig implements Parcelable {
        public static final Parcelable.Creator<ResponderConfig> CREATOR = new Parcelable.Creator<ResponderConfig>() { // from class: android.net.wifi.RttManager.ResponderConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResponderConfig createFromParcel(Parcel parcel) {
                ResponderConfig responderConfig = new ResponderConfig();
                responderConfig.macAddress = parcel.readString();
                responderConfig.frequency = parcel.readInt();
                responderConfig.centerFreq0 = parcel.readInt();
                responderConfig.centerFreq1 = parcel.readInt();
                responderConfig.channelWidth = parcel.readInt();
                responderConfig.preamble = parcel.readInt();
                return responderConfig;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResponderConfig[] newArray(int i2) {
                return new ResponderConfig[i2];
            }
        };
        public int centerFreq0;
        public int centerFreq1;
        public int channelWidth;
        public int frequency;
        public String macAddress = "";
        public int preamble;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "macAddress = " + this.macAddress + " frequency = " + this.frequency + " centerFreq0 = " + this.centerFreq0 + " centerFreq1 = " + this.centerFreq1 + " channelWidth = " + this.channelWidth + " preamble = " + this.preamble;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.macAddress);
            parcel.writeInt(this.frequency);
            parcel.writeInt(this.centerFreq0);
            parcel.writeInt(this.centerFreq1);
            parcel.writeInt(this.channelWidth);
            parcel.writeInt(this.preamble);
        }
    }

    public static class RttCapabilities implements Parcelable {
        public static final Parcelable.Creator<RttCapabilities> CREATOR = new Parcelable.Creator<RttCapabilities>() { // from class: android.net.wifi.RttManager.RttCapabilities.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RttCapabilities createFromParcel(Parcel parcel) {
                RttCapabilities rttCapabilities = new RttCapabilities();
                rttCapabilities.oneSidedRttSupported = parcel.readInt() == 1;
                rttCapabilities.twoSided11McRttSupported = parcel.readInt() == 1;
                rttCapabilities.lciSupported = parcel.readInt() == 1;
                rttCapabilities.lcrSupported = parcel.readInt() == 1;
                rttCapabilities.preambleSupported = parcel.readInt();
                rttCapabilities.bwSupported = parcel.readInt();
                rttCapabilities.responderSupported = parcel.readInt() == 1;
                rttCapabilities.secureRttSupported = parcel.readInt() == 1;
                rttCapabilities.mcVersion = parcel.readInt();
                return rttCapabilities;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RttCapabilities[] newArray(int i2) {
                return new RttCapabilities[i2];
            }
        };
        public int bwSupported;
        public boolean lciSupported;
        public boolean lcrSupported;
        public int mcVersion;
        public boolean oneSidedRttSupported;
        public int preambleSupported;
        public boolean responderSupported;
        public boolean secureRttSupported;

        @Deprecated
        public boolean supportedPeerType;

        @Deprecated
        public boolean supportedType;
        public boolean twoSided11McRttSupported;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer("oneSidedRtt ");
            stringBuffer.append(this.oneSidedRttSupported ? "is Supported. " : "is not supported. ");
            stringBuffer.append("twoSided11McRtt ");
            stringBuffer.append(this.twoSided11McRttSupported ? "is Supported. " : "is not supported. ");
            stringBuffer.append("lci ");
            stringBuffer.append(this.lciSupported ? "is Supported. " : "is not supported. ");
            stringBuffer.append("lcr ");
            stringBuffer.append(this.lcrSupported ? "is Supported. " : "is not supported. ");
            if ((this.preambleSupported & 1) != 0) {
                stringBuffer.append("Legacy ");
            }
            if ((this.preambleSupported & 2) != 0) {
                stringBuffer.append("HT ");
            }
            if ((this.preambleSupported & 4) != 0) {
                stringBuffer.append("VHT ");
            }
            stringBuffer.append("is supported. ");
            if ((this.bwSupported & 1) != 0) {
                stringBuffer.append("5 MHz ");
            }
            if ((this.bwSupported & 2) != 0) {
                stringBuffer.append("10 MHz ");
            }
            if ((this.bwSupported & 4) != 0) {
                stringBuffer.append("20 MHz ");
            }
            if ((this.bwSupported & 8) != 0) {
                stringBuffer.append("40 MHz ");
            }
            if ((this.bwSupported & 16) != 0) {
                stringBuffer.append("80 MHz ");
            }
            if ((this.bwSupported & 32) != 0) {
                stringBuffer.append("160 MHz ");
            }
            stringBuffer.append("is supported. STA responder role is ");
            stringBuffer.append(this.responderSupported ? "supported" : "not supported");
            stringBuffer.append(" Secure RTT protocol is ");
            stringBuffer.append(this.secureRttSupported ? "supported" : "not supported");
            stringBuffer.append(" 11mc version is " + this.mcVersion);
            return stringBuffer.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.oneSidedRttSupported ? 1 : 0);
            parcel.writeInt(this.twoSided11McRttSupported ? 1 : 0);
            parcel.writeInt(this.lciSupported ? 1 : 0);
            parcel.writeInt(this.lcrSupported ? 1 : 0);
            parcel.writeInt(this.preambleSupported);
            parcel.writeInt(this.bwSupported);
            parcel.writeInt(this.responderSupported ? 1 : 0);
            parcel.writeInt(this.secureRttSupported ? 1 : 0);
            parcel.writeInt(this.mcVersion);
        }
    }

    public interface RttListener {
        void onAborted();

        void onFailure(int i2, String str);

        void onSuccess(RttResult[] rttResultArr);
    }

    public static class RttParams {
        public boolean LCIRequest;
        public boolean LCRRequest;
        public String bssid;
        public int centerFreq0;
        public int centerFreq1;
        public int channelWidth;
        public int frequency;
        public int interval;

        @Deprecated
        public int num_retries;

        @Deprecated
        public int num_samples;
        public boolean secure;
        public int deviceType = 1;
        public int requestType = 1;
        public int numberBurst = 0;
        public int numSamplesPerBurst = 8;
        public int numRetriesPerMeasurementFrame = 0;
        public int numRetriesPerFTMR = 0;
        public int burstTimeout = 15;
        public int preamble = 2;
        public int bandwidth = 4;

        public String toString() {
            StringBuilder sb = new StringBuilder();
            StringBuilder sbM = m.m(m.m(new StringBuilder("deviceType="), this.deviceType, sb, ", requestType="), this.requestType, sb, ", secure=");
            sbM.append(this.secure);
            sb.append(sbM.toString());
            sb.append(", bssid=" + this.bssid);
            StringBuilder sbM2 = m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(m.m(new StringBuilder(", frequency="), this.frequency, sb, ", channelWidth="), this.channelWidth, sb, ", centerFreq0="), this.centerFreq0, sb, ", centerFreq1="), this.centerFreq1, sb, ", num_samples="), this.num_samples, sb, ", num_retries="), this.num_retries, sb, ", numberBurst="), this.numberBurst, sb, ", interval="), this.interval, sb, ", numSamplesPerBurst="), this.numSamplesPerBurst, sb, ", numRetriesPerMeasurementFrame="), this.numRetriesPerMeasurementFrame, sb, ", numRetriesPerFTMR="), this.numRetriesPerFTMR, sb, ", LCIRequest=");
            sbM2.append(this.LCIRequest);
            sb.append(sbM2.toString());
            sb.append(", LCRRequest=" + this.LCRRequest);
            StringBuilder sbM3 = m.m(m.m(new StringBuilder(", burstTimeout="), this.burstTimeout, sb, ", preamble="), this.preamble, sb, ", bandwidth=");
            sbM3.append(this.bandwidth);
            sb.append(sbM3.toString());
            return sb.toString();
        }
    }

    public static class RttResult {
        public WifiInformationElement LCI;
        public WifiInformationElement LCR;
        public String bssid;
        public int burstDuration;
        public int burstNumber;
        public int distance;
        public int distanceSpread;
        public int distanceStandardDeviation;

        @Deprecated
        public int distance_cm;

        @Deprecated
        public int distance_sd_cm;

        @Deprecated
        public int distance_spread_cm;
        public int frameNumberPerBurstPeer;
        public int measurementFrameNumber;
        public int measurementType;
        public int negotiatedBurstNum;

        @Deprecated
        public int requestType;
        public int retryAfterDuration;
        public int rssi;
        public int rssiSpread;

        @Deprecated
        public int rssi_spread;
        public long rtt;
        public long rttSpread;
        public long rttStandardDeviation;

        @Deprecated
        public long rtt_ns;

        @Deprecated
        public long rtt_sd_ns;

        @Deprecated
        public long rtt_spread_ns;
        public int rxRate;
        public boolean secure;
        public int status;
        public int successMeasurementFrameNumber;
        public long ts;
        public int txRate;

        @Deprecated
        public int tx_rate;
    }

    public class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Log.i(RttManager.TAG, "RTT manager get message: " + message.what);
            int i2 = message.what;
            if (i2 != 69634) {
                if (i2 == 69636) {
                    Log.e(RttManager.TAG, "Channel connection lost");
                    RttManager.this.mAsyncChannel = null;
                    getLooper().quit();
                    return;
                }
                Object listener = RttManager.this.getListener(message.arg2);
                if (listener == null) {
                    m.C(new StringBuilder("invalid listener key = "), message.arg2, RttManager.TAG);
                }
                Log.i(RttManager.TAG, "listener key = " + message.arg2);
                switch (message.what) {
                    case RttManager.CMD_OP_FAILED /* 160258 */:
                        reportFailure(listener, message);
                        RttManager.this.removeListener(message.arg2);
                        break;
                    case RttManager.CMD_OP_SUCCEEDED /* 160259 */:
                        reportSuccess(listener, message);
                        RttManager.this.removeListener(message.arg2);
                        break;
                    case RttManager.CMD_OP_ABORTED /* 160260 */:
                        ((RttListener) listener).onAborted();
                        RttManager.this.removeListener(message.arg2);
                        break;
                    case RttManager.CMD_OP_ENALBE_RESPONDER_SUCCEEDED /* 160263 */:
                        ((ResponderCallback) listener).onResponderEnabled((ResponderConfig) message.obj);
                        break;
                    case RttManager.CMD_OP_ENALBE_RESPONDER_FAILED /* 160264 */:
                        ((ResponderCallback) listener).onResponderEnableFailure(message.arg1);
                        RttManager.this.removeListener(message.arg2);
                        break;
                }
            }
        }

        public void reportFailure(Object obj, Message message) {
            ((RttListener) obj).onFailure(message.arg1, ((Bundle) message.obj).getString(RttManager.DESCRIPTION_KEY));
        }

        public void reportSuccess(Object obj, Message message) {
            ((RttListener) obj).onSuccess(((ParcelableRttResults) message.obj).mResults);
        }
    }

    public static class WifiInformationElement {
        public byte[] data;
        public byte id;
    }

    public RttManager(Context context, IRttManager iRttManager, Looper looper) {
        this.mContext = context;
        this.mService = iRttManager;
        int[] iArr = new int[1];
        try {
            Log.d(TAG, "Get the messenger from " + iRttManager);
            Messenger messenger = iRttManager.getMessenger(new Binder(), iArr);
            if (messenger == null) {
                throw new IllegalStateException("getMessenger() returned null!  This is invalid.");
            }
            this.mAsyncChannel = new AsyncChannel();
            this.mAsyncChannel.connectSync(context, new ServiceHandler(looper), messenger);
            this.mAsyncChannel.sendMessage(AsyncChannel.CMD_CHANNEL_FULL_CONNECTION, new RttClient(context.getPackageName()));
            this.mAsyncChannel.sendMessage(CMD_OP_REG_BINDER, iArr[0]);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.mListenerMapLock) {
            obj = this.mListenerMap.get(i2);
        }
        return obj;
    }

    private int getListenerKey(Object obj) {
        if (obj == null) {
            return 0;
        }
        synchronized (this.mListenerMapLock) {
            int iIndexOfValue = this.mListenerMap.indexOfValue(obj);
            if (iIndexOfValue == -1) {
                return 0;
            }
            return this.mListenerMap.keyAt(iIndexOfValue);
        }
    }

    private int putListener(Object obj) {
        int i2;
        if (obj == null) {
            return 0;
        }
        synchronized (this.mListenerMapLock) {
            do {
                i2 = this.mListenerKey;
                this.mListenerKey = i2 + 1;
            } while (i2 == 0);
            this.mListenerMap.put(i2, obj);
        }
        return i2;
    }

    private int putListenerIfAbsent(Object obj) {
        int i2;
        if (obj == null) {
            return 0;
        }
        synchronized (this.mListenerMapLock) {
            int listenerKey = getListenerKey(obj);
            if (listenerKey != 0) {
                return listenerKey;
            }
            do {
                i2 = this.mListenerKey;
                this.mListenerKey = i2 + 1;
            } while (i2 == 0);
            this.mListenerMap.put(i2, obj);
            return i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeListener(int i2) {
        Object obj;
        if (i2 == 0) {
            return null;
        }
        synchronized (this.mListenerMapLock) {
            obj = this.mListenerMap.get(i2);
            this.mListenerMap.remove(i2);
        }
        return obj;
    }

    private boolean rttParamSanity(RttParams rttParams, int i2) {
        if (this.mRttCapabilities == null && getRttCapabilities() == null) {
            Log.e(TAG, "Can not get RTT capabilities");
            throw new IllegalStateException("RTT chip is not working");
        }
        if (rttParams.deviceType != 1) {
            return false;
        }
        int i3 = rttParams.requestType;
        if (i3 != 1 && i3 != 2) {
            m.C(c.s("Request ", i2, ": Illegal Request Type: "), rttParams.requestType, TAG);
            return false;
        }
        if (i3 == 1 && !this.mRttCapabilities.oneSidedRttSupported) {
            m.q("Request ", i2, ": One side RTT is not supported", TAG);
            return false;
        }
        if (i3 == 2 && !this.mRttCapabilities.twoSided11McRttSupported) {
            m.q("Request ", i2, ": two side RTT is not supported", TAG);
            return false;
        }
        String str = rttParams.bssid;
        if (str == null || str.isEmpty()) {
            Log.e(TAG, "No BSSID in params");
            return false;
        }
        if (rttParams.numberBurst != 0) {
            m.C(c.s("Request ", i2, ": Illegal number of burst: "), rttParams.numberBurst, TAG);
            return false;
        }
        int i4 = rttParams.numSamplesPerBurst;
        if (i4 <= 0 || i4 > 31) {
            m.C(c.s("Request ", i2, ": Illegal sample number per burst: "), rttParams.numSamplesPerBurst, TAG);
            return false;
        }
        int i5 = rttParams.numRetriesPerMeasurementFrame;
        if (i5 < 0 || i5 > 3) {
            m.C(c.s("Request ", i2, ": Illegal measurement frame retry number:"), rttParams.numRetriesPerMeasurementFrame, TAG);
            return false;
        }
        int i6 = rttParams.numRetriesPerFTMR;
        if (i6 < 0 || i6 > 3) {
            m.C(c.s("Request ", i2, ": Illegal FTMR frame retry number:"), rttParams.numRetriesPerFTMR, TAG);
            return false;
        }
        if (rttParams.LCIRequest && !this.mRttCapabilities.lciSupported) {
            m.q("Request ", i2, ": LCI is not supported", TAG);
            return false;
        }
        if (rttParams.LCRRequest && !this.mRttCapabilities.lcrSupported) {
            m.q("Request ", i2, ": LCR is not supported", TAG);
            return false;
        }
        int i7 = rttParams.burstTimeout;
        if (i7 < 1 || (i7 > 11 && i7 != 15)) {
            m.C(c.s("Request ", i2, ": Illegal burst timeout: "), rttParams.burstTimeout, TAG);
            return false;
        }
        int i8 = rttParams.preamble;
        RttCapabilities rttCapabilities = this.mRttCapabilities;
        if ((i8 & rttCapabilities.preambleSupported) == 0) {
            m.C(c.s("Request ", i2, ": Do not support this preamble: "), rttParams.preamble, TAG);
            return false;
        }
        if ((rttParams.bandwidth & rttCapabilities.bwSupported) != 0) {
            return true;
        }
        m.C(c.s("Request ", i2, ": Do not support this bandwidth: "), rttParams.bandwidth, TAG);
        return false;
    }

    private void validateChannel() {
        if (this.mAsyncChannel == null) {
            throw new IllegalStateException("No permission to access and change wifi or a bad initialization");
        }
    }

    public void disableResponder(ResponderCallback responderCallback) {
        if (responderCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        validateChannel();
        int iRemoveListener = removeListener(responderCallback);
        if (iRemoveListener == 0) {
            Log.e(TAG, "responder not enabled yet");
        } else {
            this.mAsyncChannel.sendMessage(CMD_OP_DISABLE_RESPONDER, 0, iRemoveListener);
        }
    }

    public void enableResponder(ResponderCallback responderCallback) {
        if (responderCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_OP_ENABLE_RESPONDER, 0, putListenerIfAbsent(responderCallback));
    }

    @SuppressLint({"Doclava125"})
    @Deprecated
    public Capabilities getCapabilities() {
        return new Capabilities();
    }

    public RttCapabilities getRttCapabilities() {
        RttCapabilities rttCapabilities;
        synchronized (this.mCapabilitiesLock) {
            if (this.mRttCapabilities == null) {
                try {
                    this.mRttCapabilities = this.mService.getRttCapabilities();
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            rttCapabilities = this.mRttCapabilities;
        }
        return rttCapabilities;
    }

    public void startRanging(RttParams[] rttParamsArr, RttListener rttListener) {
        int i2 = 0;
        for (RttParams rttParams : rttParamsArr) {
            if (!rttParamSanity(rttParams, i2)) {
                throw new IllegalArgumentException("RTT Request Parameter Illegal");
            }
            i2++;
        }
        validateChannel();
        ParcelableRttParams parcelableRttParams = new ParcelableRttParams(rttParamsArr);
        Log.i(TAG, "Send RTT request to RTT Service");
        this.mAsyncChannel.sendMessage(160256, 0, putListener(rttListener), parcelableRttParams);
    }

    public void stopRanging(RttListener rttListener) {
        validateChannel();
        this.mAsyncChannel.sendMessage(CMD_OP_STOP_RANGING, 0, removeListener(rttListener));
    }

    public static class RttClient implements Parcelable {
        public static final Parcelable.Creator<RttClient> CREATOR = new Parcelable.Creator<RttClient>() { // from class: android.net.wifi.RttManager.RttClient.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RttClient createFromParcel(Parcel parcel) {
                return new RttClient(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RttClient[] newArray(int i2) {
                return new RttClient[i2];
            }
        };
        private final String mPackageName;

        public RttClient(String str) {
            this.mPackageName = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getPackageName() {
            return this.mPackageName;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.mPackageName);
        }

        public RttClient(Parcel parcel) {
            this.mPackageName = parcel.readString();
        }
    }

    private int removeListener(Object obj) {
        int listenerKey = getListenerKey(obj);
        if (listenerKey == 0) {
            return listenerKey;
        }
        synchronized (this.mListenerMapLock) {
            this.mListenerMap.remove(listenerKey);
        }
        return listenerKey;
    }
}
