package android.media.audiopolicy;

import android.accessibilityservice.c;
import android.media.AudioAttributes;
import android.os.Parcel;
import android.util.Log;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioMixingRule {
    public static final int RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET = 32770;
    public static final int RULE_EXCLUDE_ATTRIBUTE_USAGE = 32769;
    public static final int RULE_EXCLUDE_UID = 32772;
    private static final int RULE_EXCLUSION_MASK = 32768;
    public static final int RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET = 2;
    public static final int RULE_MATCH_ATTRIBUTE_USAGE = 1;
    public static final int RULE_MATCH_UID = 4;
    private final ArrayList<AudioMixMatchCriterion> mCriteria;
    private final int mTargetMixType;

    public static class Builder {
        private int mTargetMixType = -1;
        private ArrayList<AudioMixMatchCriterion> mCriteria = new ArrayList<>();

        private Builder addRuleInternal(AudioAttributes audioAttributes, Integer num, int i2) {
            int i3 = this.mTargetMixType;
            if (i3 == -1) {
                if (AudioMixingRule.isPlayerRule(i2)) {
                    this.mTargetMixType = 0;
                } else {
                    this.mTargetMixType = 1;
                }
            } else if ((i3 == 0 && !AudioMixingRule.isPlayerRule(i2)) || (this.mTargetMixType == 1 && AudioMixingRule.isPlayerRule(i2))) {
                throw new IllegalArgumentException("Incompatible rule for mix");
            }
            synchronized (this.mCriteria) {
                int i4 = (-32769) & i2;
                for (AudioMixMatchCriterion audioMixMatchCriterion : this.mCriteria) {
                    if (i4 == 1) {
                        if (audioMixMatchCriterion.mAttr.getUsage() == audioAttributes.getUsage()) {
                            if (audioMixMatchCriterion.mRule == i2) {
                                return this;
                            }
                            throw new IllegalArgumentException("Contradictory rule exists for " + audioAttributes);
                        }
                    } else if (i4 == 2) {
                        if (audioMixMatchCriterion.mAttr.getCapturePreset() == audioAttributes.getCapturePreset()) {
                            if (audioMixMatchCriterion.mRule == i2) {
                                return this;
                            }
                            throw new IllegalArgumentException("Contradictory rule exists for " + audioAttributes);
                        }
                    } else if (i4 == 4 && audioMixMatchCriterion.mIntProp == num.intValue()) {
                        if (audioMixMatchCriterion.mRule == i2) {
                            return this;
                        }
                        throw new IllegalArgumentException("Contradictory rule exists for UID " + num);
                    }
                }
                if (i4 == 1 || i4 == 2) {
                    this.mCriteria.add(new AudioMixMatchCriterion(audioAttributes, i2));
                } else {
                    if (i4 != 4) {
                        throw new IllegalStateException("Unreachable code in addRuleInternal()");
                    }
                    this.mCriteria.add(new AudioMixMatchCriterion(num, i2));
                }
                return this;
            }
        }

        private Builder checkAddRuleObjInternal(int i2, Object obj) {
            if (obj == null) {
                throw new IllegalArgumentException("Illegal null argument for mixing rule");
            }
            if (!AudioMixingRule.isValidRule(i2)) {
                throw new IllegalArgumentException(c.d("Illegal rule value ", i2));
            }
            if (AudioMixingRule.isAudioAttributeRule((-32769) & i2)) {
                if (obj instanceof AudioAttributes) {
                    return addRuleInternal((AudioAttributes) obj, null, i2);
                }
                throw new IllegalArgumentException("Invalid AudioAttributes argument");
            }
            if (obj instanceof Integer) {
                return addRuleInternal(null, (Integer) obj, i2);
            }
            throw new IllegalArgumentException("Invalid Integer argument");
        }

        public Builder addMixRule(int i2, Object obj) {
            if (AudioMixingRule.isValidSystemApiRule(i2)) {
                return checkAddRuleObjInternal(i2, obj);
            }
            throw new IllegalArgumentException(c.d("Illegal rule value ", i2));
        }

        public Builder addRule(AudioAttributes audioAttributes, int i2) {
            if (AudioMixingRule.isValidAttributesSystemApiRule(i2)) {
                return checkAddRuleObjInternal(i2, audioAttributes);
            }
            throw new IllegalArgumentException(c.d("Illegal rule value ", i2));
        }

        public Builder addRuleFromParcel(Parcel parcel) {
            AudioAttributes audioAttributesBuild;
            Integer num;
            int i2 = parcel.readInt();
            int i3 = (-32769) & i2;
            AudioAttributes audioAttributes = null;
            if (i3 != 1) {
                if (i3 == 2) {
                    audioAttributesBuild = new AudioAttributes.Builder().setInternalCapturePreset(parcel.readInt()).build();
                } else {
                    if (i3 != 4) {
                        parcel.readInt();
                        throw new IllegalArgumentException(c.e("Illegal rule value ", i2, " in parcel"));
                    }
                    num = new Integer(parcel.readInt());
                }
                return addRuleInternal(audioAttributes, num, i2);
            }
            audioAttributesBuild = new AudioAttributes.Builder().setUsage(parcel.readInt()).build();
            num = null;
            audioAttributes = audioAttributesBuild;
            return addRuleInternal(audioAttributes, num, i2);
        }

        public AudioMixingRule build() {
            return new AudioMixingRule(this.mTargetMixType, this.mCriteria);
        }

        public Builder excludeMixRule(int i2, Object obj) {
            if (AudioMixingRule.isValidSystemApiRule(i2)) {
                return checkAddRuleObjInternal(i2 | 32768, obj);
            }
            throw new IllegalArgumentException(c.d("Illegal rule value ", i2));
        }

        public Builder excludeRule(AudioAttributes audioAttributes, int i2) {
            if (AudioMixingRule.isValidAttributesSystemApiRule(i2)) {
                return checkAddRuleObjInternal(i2 | 32768, audioAttributes);
            }
            throw new IllegalArgumentException(c.d("Illegal rule value ", i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isAudioAttributeRule(int i2) {
        return i2 == 1 || i2 == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPlayerRule(int i2) {
        int i3 = i2 & (-32769);
        return i3 == 1 || i3 == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidAttributesSystemApiRule(int i2) {
        return i2 == 1 || i2 == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidRule(int i2) {
        int i3 = i2 & (-32769);
        return i3 == 1 || i3 == 2 || i3 == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidSystemApiRule(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 4;
    }

    public ArrayList<AudioMixMatchCriterion> getCriteria() {
        return this.mCriteria;
    }

    public int getTargetMixType() {
        return this.mTargetMixType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mTargetMixType), this.mCriteria);
    }

    private AudioMixingRule(int i2, ArrayList<AudioMixMatchCriterion> arrayList) {
        this.mCriteria = arrayList;
        this.mTargetMixType = i2;
    }

    public static final class AudioMixMatchCriterion {
        final AudioAttributes mAttr;
        final int mIntProp;
        final int mRule;

        public AudioMixMatchCriterion(AudioAttributes audioAttributes, int i2) {
            this.mAttr = audioAttributes;
            this.mIntProp = Integer.MIN_VALUE;
            this.mRule = i2;
        }

        public int hashCode() {
            return Objects.hash(this.mAttr, Integer.valueOf(this.mIntProp), Integer.valueOf(this.mRule));
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mRule);
            int i2 = this.mRule & (-32769);
            if (i2 == 1) {
                parcel.writeInt(this.mAttr.getUsage());
                return;
            }
            if (i2 == 2) {
                parcel.writeInt(this.mAttr.getCapturePreset());
                return;
            }
            if (i2 == 4) {
                parcel.writeInt(this.mIntProp);
                return;
            }
            Log.e("AudioMixMatchCriterion", "Unknown match rule" + i2 + " when writing to Parcel");
            parcel.writeInt(-1);
        }

        public AudioMixMatchCriterion(Integer num, int i2) {
            this.mAttr = null;
            this.mIntProp = num.intValue();
            this.mRule = i2;
        }
    }
}
