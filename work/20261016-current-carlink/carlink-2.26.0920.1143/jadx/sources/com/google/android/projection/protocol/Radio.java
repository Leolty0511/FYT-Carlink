package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Radio {
    public static final int AM_HD_RADIO_TYPE = 2;
    public static final int AM_RADIO_TYPE = 0;
    public static final int FM_HD_RADIO_TYPE = 3;
    public static final int FM_RADIO_TYPE = 1;
    public static final int MAX_HD_SUBCHANNEL = 4;
    public static final int MIN_HD_SUBCHANNEL = 1;

    public interface RadioEndpoint {
        int sendActiveRadioResponse(int i2, int i3, RadioStationInfo radioStationInfo);

        int sendCancelResponse(int i2, int i3);

        int sendChannelSpacingResponse(int i2, int i3, int i4);

        int sendMuteResponse(int i2, int i3, boolean z2);

        int sendProgramListResponse(int i2, int i3, boolean z2, List<RadioStationInfo> list);

        int sendRadioSourceResponse(int i2, boolean z2);

        int sendRadioStationInfoNotification(int i2, RadioStationInfo radioStationInfo);

        int sendScanResponse(int i2, int i3, boolean z2);

        int sendSeekResponse(int i2, int i3);

        int sendStationPresetsResponse(List<StationPresetList> list);

        int sendStepResponse(int i2, int i3);

        int sendTrafficUpdateResponse(int i2, int i3, List<TrafficIncident> list);

        int sendTuneResponse(int i2, int i3);
    }

    public static class RadioProperties {

        @UsedByNative
        public boolean afSwitch;

        @UsedByNative
        public boolean audioLoopback;

        @UsedByNative
        public boolean backgroundTuner;

        @UsedByNative
        public List<Range> channelRange;

        @UsedByNative
        public int channelSpacing;

        @UsedByNative
        public List<Integer> channelSpacings;

        @UsedByNative
        public boolean muteCapability;

        @UsedByNative
        public int radioId;

        @UsedByNative
        public int rds;

        @UsedByNative
        public int region;

        @UsedByNative
        public int stationPresetsAccess;

        @UsedByNative
        public boolean ta;

        @UsedByNative
        public int trafficService;

        @UsedByNative
        public int type;

        public RadioProperties(int i2, int i3, List<Range> list, List<Integer> list2, int i4, boolean z2, int i5, int i6, boolean z3, boolean z4, int i7, boolean z5, boolean z6, int i8) {
            this.radioId = i2;
            this.type = i3;
            this.channelRange = list;
            this.channelSpacings = list2;
            this.channelSpacing = i4;
            this.backgroundTuner = z2;
            this.region = i5;
            this.rds = i6;
            this.afSwitch = z3;
            this.ta = z4;
            this.trafficService = i7;
            this.audioLoopback = z5;
            this.muteCapability = z6;
            this.stationPresetsAccess = i8;
        }

        public List<Range> getChannelRange() {
            return this.channelRange;
        }
    }

    public static class RadioState {

        @UsedByNative
        public int activeRadioId;

        @UsedByNative
        public List<RadioStationInfo> programList;

        @UsedByNative
        public boolean radioMuted;

        @UsedByNative
        public boolean radioSourceEnabled;

        @UsedByNative
        public RadioStationInfo stationInfo;

        @UsedByNative
        public List<StationPresetList> stationPresetLists;

        public RadioState(boolean z2, boolean z3, int i2, RadioStationInfo radioStationInfo, List<RadioStationInfo> list, List<StationPresetList> list2) {
            this.radioSourceEnabled = z2;
            this.radioMuted = z3;
            this.activeRadioId = i2;
            this.stationInfo = radioStationInfo;
            this.programList = list;
            this.stationPresetLists = list2;
        }
    }

    public static class Range {

        @UsedByNative
        public int max;

        @UsedByNative
        public int min;

        public Range(int i2, int i3) {
            this.min = i2;
            this.max = i3;
        }
    }

    public static class StationPreset {

        @UsedByNative
        public int channel;

        @UsedByNative
        public int subChannel;

        @UsedByNative
        public int type;

        public StationPreset(int i2, int i3, int i4) {
            this.type = i2;
            this.channel = i3;
            this.subChannel = i4;
        }
    }

    public static class StationPresetList {

        @UsedByNative
        public String name;

        @UsedByNative
        public List<StationPreset> presets;

        @UsedByNative
        public List<Integer> restrictedStationTypes;

        public StationPresetList(String str, List<Integer> list, List<StationPreset> list2) {
            this.name = str;
            this.restrictedStationTypes = list;
            this.presets = list2;
        }
    }

    public static class TrafficIncident {

        @UsedByNative
        public int eventCode;

        @UsedByNative
        public int expectedIncidentDuration;

        @UsedByNative
        public double latitude;

        @UsedByNative
        public double longitude;

        public TrafficIncident(int i2, int i3, double d2, double d3) {
            this.eventCode = i2;
            this.expectedIncidentDuration = i3;
            this.longitude = d3;
            this.latitude = d2;
        }
    }

    public abstract int cancel(int i2);

    public abstract int configureChannelSpacing(int i2, int i3);

    public abstract int enableRadioSource();

    public abstract RadioState getCurrentRadioState();

    public abstract int getProgramList(int i2);

    public abstract List<RadioProperties> getRadioProperties();

    public abstract int getTrafficUpdate(int i2);

    public abstract int mute(int i2, boolean z2);

    public abstract int scan(int i2, boolean z2, boolean z3, boolean z4);

    public abstract int seek(int i2, boolean z2, boolean z3);

    public abstract int selectRadio(int i2);

    public abstract void setRadioEndpoint(RadioEndpoint radioEndpoint);

    public abstract int step(int i2, boolean z2, boolean z3);

    public abstract int tune(int i2, int i3, int i4);

    public static class RadioStationInfo {

        @UsedByNative
        public int channel;

        @UsedByNative
        public MetaData metaData;

        @UsedByNative
        public int radioType;

        @UsedByNative
        public int subChannel;

        public static class HdData {
        }

        public static class MetaData {

            @UsedByNative
            public int audioChannels;
            public HdData hdData;

            @UsedByNative
            public RdsData rdsData;

            @UsedByNative
            public int signalQuality;

            public static class Builder {
                private HdData mHdData;
                private RdsData mRdsData;
                private int mAudioChannels = -1;
                private int mSignalQuality = -1;

                public MetaData build() {
                    return new MetaData(this.mAudioChannels, this.mSignalQuality, this.mRdsData, this.mHdData);
                }

                @CanIgnoreReturnValue
                public Builder setAudioChannels(int i2) {
                    this.mAudioChannels = i2;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setHdData(HdData hdData) {
                    this.mHdData = hdData;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setRdsData(RdsData rdsData) {
                    this.mRdsData = rdsData;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setSignalQuality(int i2) {
                    this.mSignalQuality = i2;
                    return this;
                }
            }

            private MetaData(int i2, int i3, RdsData rdsData, HdData hdData) {
                this.audioChannels = i2;
                this.signalQuality = i3;
                this.rdsData = rdsData;
                this.hdData = hdData;
            }
        }

        public static class RdsData {

            @UsedByNative
            public List<Integer> alternativeFrequencies;

            @UsedByNative
            public int musicSpeechSwitch;

            @UsedByNative
            public int programId;

            @UsedByNative
            public String programServiceName;

            @UsedByNative
            public int programType;

            @UsedByNative
            public String programTypeName;

            @UsedByNative
            public String radioText;

            @UsedByNative
            public boolean trafficAnnouncementFlag;

            @UsedByNative
            public boolean trafficProgramFlag;

            public static class Builder {
                private boolean mTrafficAnnouncmentFlag;
                private boolean mTrafficProgramFlag;
                private List<Integer> mAlternativeFrequencies = new ArrayList();
                private int mProgramId = -1;
                private int mMusicSpeechSwitch = -1;
                private String mProgramServiceName = "";
                private int mProgramType = -1;
                private String mProgramTypeName = "";
                private String mRadioText = "";

                public RdsData build() {
                    return new RdsData(this.mAlternativeFrequencies, this.mProgramId, this.mMusicSpeechSwitch, this.mProgramServiceName, this.mProgramType, this.mProgramTypeName, this.mRadioText, this.mTrafficProgramFlag, this.mTrafficAnnouncmentFlag);
                }

                @CanIgnoreReturnValue
                public Builder setAlternativeFrequencies(List<Integer> list) {
                    this.mAlternativeFrequencies.clear();
                    this.mAlternativeFrequencies.addAll(list);
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setMusicSpeechSwitch(int i2) {
                    this.mMusicSpeechSwitch = i2;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setProgramId(int i2) {
                    this.mProgramId = i2;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setProgramServiceName(String str) {
                    this.mProgramServiceName = str;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setProgramType(int i2) {
                    this.mProgramType = i2;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setProgramTypeName(String str) {
                    this.mProgramTypeName = str;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setRadioText(String str) {
                    this.mRadioText = str;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setTrafficAnnoucementFlag(boolean z2) {
                    this.mTrafficAnnouncmentFlag = z2;
                    return this;
                }

                @CanIgnoreReturnValue
                public Builder setTrafficProgramFlag(boolean z2) {
                    this.mTrafficProgramFlag = z2;
                    return this;
                }
            }

            private RdsData(List<Integer> list, int i2, int i3, String str, int i4, String str2, String str3, boolean z2, boolean z3) {
                this.alternativeFrequencies = list;
                this.programId = i2;
                this.musicSpeechSwitch = i3;
                this.programServiceName = str;
                this.programType = i4;
                this.programTypeName = str2;
                this.radioText = str3;
                this.trafficProgramFlag = z2;
                this.trafficAnnouncementFlag = z3;
            }
        }

        public RadioStationInfo(int i2, int i3, int i4) {
            this.radioType = i2;
            this.channel = i3;
            this.subChannel = i4;
        }

        public RadioStationInfo(int i2, int i3, int i4, MetaData metaData) {
            this(i2, i3, i4);
            this.metaData = metaData;
        }
    }
}
