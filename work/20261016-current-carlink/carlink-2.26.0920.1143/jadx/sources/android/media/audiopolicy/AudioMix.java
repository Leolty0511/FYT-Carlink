package android.media.audiopolicy;

import android.app.m;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioSystem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioMix {
    private static final int CALLBACK_FLAGS_ALL = 1;
    public static final int CALLBACK_FLAG_NOTIFY_ACTIVITY = 1;
    public static final int MIX_STATE_DISABLED = -1;
    public static final int MIX_STATE_IDLE = 0;
    public static final int MIX_STATE_MIXING = 1;
    public static final int MIX_TYPE_INVALID = -1;
    public static final int MIX_TYPE_PLAYERS = 0;
    public static final int MIX_TYPE_RECORDERS = 1;
    public static final int ROUTE_FLAG_LOOP_BACK = 2;
    public static final int ROUTE_FLAG_RENDER = 1;
    private static final int ROUTE_FLAG_SUPPORTED = 3;
    int mCallbackFlags;
    String mDeviceAddress;
    final int mDeviceSystemType;
    private AudioFormat mFormat;
    int mMixState;
    private int mMixType;
    private int mRouteFlags;
    private AudioMixingRule mRule;

    @Retention(RetentionPolicy.SOURCE)
    public @interface RouteFlags {
    }

    public AudioFormat getFormat() {
        return this.mFormat;
    }

    public int getMixState() {
        return this.mMixState;
    }

    public int getMixType() {
        return this.mMixType;
    }

    public String getRegistration() {
        return this.mDeviceAddress;
    }

    public int getRouteFlags() {
        return this.mRouteFlags;
    }

    public AudioMixingRule getRule() {
        return this.mRule;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mRouteFlags), this.mRule, Integer.valueOf(this.mMixType), this.mFormat);
    }

    public void setRegistration(String str) {
        this.mDeviceAddress = str;
    }

    public static class Builder {
        private int mCallbackFlags;
        private String mDeviceAddress;
        private int mDeviceSystemType;
        private AudioFormat mFormat;
        private int mRouteFlags;
        private AudioMixingRule mRule;

        public Builder() {
            this.mRule = null;
            this.mFormat = null;
            this.mRouteFlags = 0;
            this.mCallbackFlags = 0;
            this.mDeviceSystemType = 0;
            this.mDeviceAddress = null;
        }

        public AudioMix build() {
            if (this.mRule == null) {
                throw new IllegalArgumentException("Illegal null AudioMixingRule");
            }
            if (this.mRouteFlags == 0) {
                this.mRouteFlags = 2;
            }
            if (this.mRouteFlags == 3) {
                throw new IllegalArgumentException(m.d(this.mRouteFlags, new StringBuilder("Unsupported route behavior combination 0x")));
            }
            if (this.mFormat == null) {
                int primaryOutputSamplingRate = AudioSystem.getPrimaryOutputSamplingRate();
                if (primaryOutputSamplingRate <= 0) {
                    primaryOutputSamplingRate = 44100;
                }
                this.mFormat = new AudioFormat.Builder().setSampleRate(primaryOutputSamplingRate).build();
            }
            int i2 = this.mDeviceSystemType;
            if (i2 == 0 || i2 == 32768 || i2 == -2147483392) {
                int i3 = this.mRouteFlags;
                if ((i3 & 1) == 1) {
                    throw new IllegalArgumentException("Can't have flag ROUTE_FLAG_RENDER without an audio device");
                }
                if ((i3 & 3) == 2) {
                    if (this.mRule.getTargetMixType() == 0) {
                        this.mDeviceSystemType = 32768;
                    } else {
                        if (this.mRule.getTargetMixType() != 1) {
                            throw new IllegalArgumentException("Unknown mixing rule type");
                        }
                        this.mDeviceSystemType = AudioSystem.DEVICE_IN_REMOTE_SUBMIX;
                    }
                }
            } else {
                if ((this.mRouteFlags & 1) == 0) {
                    throw new IllegalArgumentException("Can't have audio device without flag ROUTE_FLAG_RENDER");
                }
                if (this.mRule.getTargetMixType() != 0) {
                    throw new IllegalArgumentException("Unsupported device on non-playback mix");
                }
            }
            return new AudioMix(this.mRule, this.mFormat, this.mRouteFlags, this.mCallbackFlags, this.mDeviceSystemType, this.mDeviceAddress);
        }

        public Builder setCallbackFlags(int i2) {
            if (i2 == 0 || (i2 & 1) != 0) {
                this.mCallbackFlags = i2;
                return this;
            }
            throw new IllegalArgumentException("Illegal callback flags 0x" + Integer.toHexString(i2).toUpperCase());
        }

        public Builder setDevice(int i2, String str) {
            this.mDeviceSystemType = i2;
            this.mDeviceAddress = str;
            return this;
        }

        public Builder setFormat(AudioFormat audioFormat) {
            if (audioFormat == null) {
                throw new IllegalArgumentException("Illegal null AudioFormat argument");
            }
            this.mFormat = audioFormat;
            return this;
        }

        public Builder setMixingRule(AudioMixingRule audioMixingRule) {
            if (audioMixingRule == null) {
                throw new IllegalArgumentException("Illegal null AudioMixingRule argument");
            }
            this.mRule = audioMixingRule;
            return this;
        }

        public Builder setRouteFlags(int i2) {
            if (i2 == 0) {
                throw new IllegalArgumentException("Illegal empty route flags");
            }
            if ((i2 & 3) == 0) {
                throw new IllegalArgumentException("Invalid route flags 0x" + Integer.toHexString(i2) + "when configuring an AudioMix");
            }
            if ((i2 & (-4)) == 0) {
                this.mRouteFlags = i2;
                return this;
            }
            throw new IllegalArgumentException("Unknown route flags 0x" + Integer.toHexString(i2) + "when configuring an AudioMix");
        }

        public Builder setDevice(AudioDeviceInfo audioDeviceInfo) {
            if (audioDeviceInfo != null) {
                if (audioDeviceInfo.isSink()) {
                    this.mDeviceSystemType = AudioDeviceInfo.convertDeviceTypeToInternalDevice(audioDeviceInfo.getType());
                    this.mDeviceAddress = audioDeviceInfo.getAddress();
                    return this;
                }
                throw new IllegalArgumentException("Unsupported device type on mix, not a sink");
            }
            throw new IllegalArgumentException("Illegal null AudioDeviceInfo argument");
        }

        public Builder(AudioMixingRule audioMixingRule) {
            this.mRule = null;
            this.mFormat = null;
            this.mRouteFlags = 0;
            this.mCallbackFlags = 0;
            this.mDeviceSystemType = 0;
            this.mDeviceAddress = null;
            if (audioMixingRule != null) {
                this.mRule = audioMixingRule;
                return;
            }
            throw new IllegalArgumentException("Illegal null AudioMixingRule argument");
        }
    }

    private AudioMix(AudioMixingRule audioMixingRule, AudioFormat audioFormat, int i2, int i3, int i4, String str) {
        this.mMixType = -1;
        this.mMixState = -1;
        this.mRule = audioMixingRule;
        this.mFormat = audioFormat;
        this.mRouteFlags = i2;
        this.mMixType = audioMixingRule.getTargetMixType();
        this.mCallbackFlags = i3;
        this.mDeviceSystemType = i4;
        this.mDeviceAddress = str == null ? new String("") : str;
    }
}
