package android.media.audiopolicy;

import android.accessibilityservice.c;
import android.app.backup.FullBackup;
import android.media.AudioFormat;
import android.media.TtmlUtils;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioPolicyConfig implements Parcelable {
    public static final Parcelable.Creator<AudioPolicyConfig> CREATOR = new Parcelable.Creator<AudioPolicyConfig>() { // from class: android.media.audiopolicy.AudioPolicyConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioPolicyConfig createFromParcel(Parcel parcel) {
            return new AudioPolicyConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudioPolicyConfig[] newArray(int i2) {
            return new AudioPolicyConfig[i2];
        }
    };
    private static final String TAG = "AudioPolicyConfig";
    protected int mDuckingPolicy;
    protected ArrayList<AudioMix> mMixes;
    private String mRegistrationId;

    private static String mixTypeId(int i2) {
        if (i2 == 0) {
            return TtmlUtils.TAG_P;
        }
        return i2 == 1 ? FullBackup.ROOT_TREE_TOKEN : "i";
    }

    public void addMix(AudioMix audioMix) {
        if (audioMix == null) {
            throw new IllegalArgumentException("Illegal null AudioMix argument");
        }
        this.mMixes.add(audioMix);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ArrayList<AudioMix> getMixes() {
        return this.mMixes;
    }

    public String getRegistration() {
        return this.mRegistrationId;
    }

    public int hashCode() {
        return Objects.hash(this.mMixes);
    }

    public void setRegistration(String str) {
        String str2 = this.mRegistrationId;
        int i2 = 0;
        boolean z2 = str2 == null || str2.isEmpty();
        boolean z3 = str == null || str.isEmpty();
        if (!z2 && !z3 && !this.mRegistrationId.equals(str)) {
            Log.e(TAG, "Invalid registration transition from " + this.mRegistrationId + " to " + str);
            return;
        }
        if (str == null) {
            str = "";
        }
        this.mRegistrationId = str;
        for (AudioMix audioMix : this.mMixes) {
            if (this.mRegistrationId.isEmpty()) {
                audioMix.setRegistration("");
            } else if ((audioMix.getRouteFlags() & 2) == 2) {
                audioMix.setRegistration(this.mRegistrationId + "mix" + mixTypeId(audioMix.getMixType()) + SettingsStringUtil.DELIMITER + i2);
                i2++;
            } else if ((audioMix.getRouteFlags() & 1) == 1) {
                audioMix.setRegistration(audioMix.mDeviceAddress);
            }
        }
    }

    public String toLogFriendlyString() {
        String string;
        StringBuilder sbR = c.r(new String("android.media.audiopolicy.AudioPolicyConfig:\n"));
        sbR.append(this.mMixes.size());
        sbR.append(" AudioMix: ");
        String strN = c.n(sbR, this.mRegistrationId, "\n");
        for (AudioMix audioMix : this.mMixes) {
            StringBuilder sbU = c.u(strN, "* route flags=0x");
            sbU.append(Integer.toHexString(audioMix.getRouteFlags()));
            sbU.append("\n");
            StringBuilder sbU2 = c.u(sbU.toString(), "  rate=");
            sbU2.append(audioMix.getFormat().getSampleRate());
            sbU2.append("Hz\n");
            StringBuilder sbU3 = c.u(sbU2.toString(), "  encoding=");
            sbU3.append(audioMix.getFormat().getEncoding());
            sbU3.append("\n");
            StringBuilder sbR2 = c.r(c.D(sbU3.toString(), "  channels=0x"));
            sbR2.append(Integer.toHexString(audioMix.getFormat().getChannelMask()).toUpperCase());
            sbR2.append("\n");
            strN = sbR2.toString();
            for (AudioMixingRule.AudioMixMatchCriterion audioMixMatchCriterion : audioMix.getRule().getCriteria()) {
                int i2 = audioMixMatchCriterion.mRule;
                if (i2 == 1) {
                    StringBuilder sbR3 = c.r(c.D(strN, "  match usage "));
                    sbR3.append(audioMixMatchCriterion.mAttr.usageToString());
                    string = sbR3.toString();
                } else if (i2 == 2) {
                    StringBuilder sbR4 = c.r(c.D(strN, "  match capture preset "));
                    sbR4.append(audioMixMatchCriterion.mAttr.getCapturePreset());
                    string = sbR4.toString();
                } else if (i2 == 4) {
                    StringBuilder sbR5 = c.r(c.D(strN, "  match UID "));
                    sbR5.append(audioMixMatchCriterion.mIntProp);
                    string = sbR5.toString();
                } else if (i2 != 32772) {
                    switch (i2) {
                        case 32769:
                            StringBuilder sbR6 = c.r(c.D(strN, "  exclude usage "));
                            sbR6.append(audioMixMatchCriterion.mAttr.usageToString());
                            string = sbR6.toString();
                            break;
                        case 32770:
                            StringBuilder sbR7 = c.r(c.D(strN, "  exclude capture preset "));
                            sbR7.append(audioMixMatchCriterion.mAttr.getCapturePreset());
                            string = sbR7.toString();
                            break;
                        default:
                            string = c.D(strN, "invalid rule!");
                            break;
                    }
                } else {
                    StringBuilder sbR8 = c.r(c.D(strN, "  exclude UID "));
                    sbR8.append(audioMixMatchCriterion.mIntProp);
                    string = sbR8.toString();
                }
                strN = c.D(string, "\n");
            }
        }
        return strN;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mMixes.size());
        for (AudioMix audioMix : this.mMixes) {
            parcel.writeInt(audioMix.getRouteFlags());
            parcel.writeInt(audioMix.mCallbackFlags);
            parcel.writeInt(audioMix.mDeviceSystemType);
            parcel.writeString(audioMix.mDeviceAddress);
            parcel.writeInt(audioMix.getFormat().getSampleRate());
            parcel.writeInt(audioMix.getFormat().getEncoding());
            parcel.writeInt(audioMix.getFormat().getChannelMask());
            ArrayList<AudioMixingRule.AudioMixMatchCriterion> criteria = audioMix.getRule().getCriteria();
            parcel.writeInt(criteria.size());
            Iterator<AudioMixingRule.AudioMixMatchCriterion> it = criteria.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel);
            }
        }
    }

    public AudioPolicyConfig(AudioPolicyConfig audioPolicyConfig) {
        this.mDuckingPolicy = 0;
        this.mRegistrationId = null;
        this.mMixes = audioPolicyConfig.mMixes;
    }

    public AudioPolicyConfig(ArrayList<AudioMix> arrayList) {
        this.mDuckingPolicy = 0;
        this.mRegistrationId = null;
        this.mMixes = arrayList;
    }

    private AudioPolicyConfig(Parcel parcel) {
        this.mDuckingPolicy = 0;
        this.mRegistrationId = null;
        this.mMixes = new ArrayList<>();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            AudioMix.Builder builder = new AudioMix.Builder();
            builder.setRouteFlags(parcel.readInt());
            builder.setCallbackFlags(parcel.readInt());
            builder.setDevice(parcel.readInt(), parcel.readString());
            builder.setFormat(new AudioFormat.Builder().setSampleRate(parcel.readInt()).setChannelMask(parcel.readInt()).setEncoding(parcel.readInt()).build());
            int i4 = parcel.readInt();
            AudioMixingRule.Builder builder2 = new AudioMixingRule.Builder();
            for (int i5 = 0; i5 < i4; i5++) {
                builder2.addRuleFromParcel(parcel);
            }
            builder.setMixingRule(builder2.build());
            this.mMixes.add(builder.build());
        }
    }
}
