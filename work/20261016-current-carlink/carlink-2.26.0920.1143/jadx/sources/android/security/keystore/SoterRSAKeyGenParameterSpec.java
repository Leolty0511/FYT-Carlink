package android.security.keystore;

import java.math.BigInteger;
import java.security.spec.RSAKeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class SoterRSAKeyGenParameterSpec extends RSAKeyGenParameterSpec {
    private boolean isAutoAddCounterWhenGetPublicKey;
    private boolean isAutoSignedWithAttkWhenGetPublicKey;
    private boolean isAutoSignedWithCommonkWhenGetPublicKey;
    private boolean isForSoter;
    private boolean isNeedUseNextAttk;
    private boolean isSecmsgFidCounterSignedWhenSign;
    private String mAutoSignedKeyNameWhenGetPublicKey;

    public SoterRSAKeyGenParameterSpec(int i2, BigInteger bigInteger, boolean z2, boolean z3, boolean z4, String str, boolean z5, boolean z6, boolean z7) {
        super(i2, bigInteger);
        this.isForSoter = z2;
        this.isAutoSignedWithAttkWhenGetPublicKey = z3;
        this.isAutoSignedWithCommonkWhenGetPublicKey = z4;
        this.mAutoSignedKeyNameWhenGetPublicKey = str;
        this.isSecmsgFidCounterSignedWhenSign = z5;
        this.isAutoAddCounterWhenGetPublicKey = z6;
        this.isNeedUseNextAttk = z7;
    }

    public String getAutoSignedKeyNameWhenGetPublicKey() {
        return this.mAutoSignedKeyNameWhenGetPublicKey;
    }

    public boolean isAutoAddCounterWhenGetPublicKey() {
        return this.isAutoAddCounterWhenGetPublicKey;
    }

    public boolean isAutoSignedWithAttkWhenGetPublicKey() {
        return this.isAutoSignedWithAttkWhenGetPublicKey;
    }

    public boolean isAutoSignedWithCommonkWhenGetPublicKey() {
        return this.isAutoSignedWithCommonkWhenGetPublicKey;
    }

    public boolean isForSoter() {
        return this.isForSoter;
    }

    public boolean isNeedUseNextAttk() {
        return this.isNeedUseNextAttk;
    }

    public boolean isSecmsgFidCounterSignedWhenSign() {
        return this.isSecmsgFidCounterSignedWhenSign;
    }

    public void setAutoSignedKeyNameWhenGetPublicKey(String str) {
        this.mAutoSignedKeyNameWhenGetPublicKey = str;
    }

    public void setIsAutoAddCounterWhenGetPublicKey(boolean z2) {
        this.isAutoAddCounterWhenGetPublicKey = z2;
    }

    public void setIsAutoSignedWithAttkWhenGetPublicKey(boolean z2) {
        this.isAutoSignedWithAttkWhenGetPublicKey = z2;
    }

    public void setIsAutoSignedWithCommonkWhenGetPublicKey(boolean z2) {
        this.isAutoSignedWithCommonkWhenGetPublicKey = z2;
    }

    public void setIsForSoter(boolean z2) {
        this.isForSoter = z2;
    }

    public void setIsNeedUseNextAttk(boolean z2) {
        this.isNeedUseNextAttk = z2;
    }

    public void setIsSecmsgFidCounterSignedWhenSign(boolean z2) {
        this.isSecmsgFidCounterSignedWhenSign = z2;
    }

    public String toString() {
        return "SoterRSAKeyGenParameterSpec{isForSoter=" + this.isForSoter + ", isAutoSignedWithAttkWhenGetPublicKey=" + this.isAutoSignedWithAttkWhenGetPublicKey + ", isAutoSignedWithCommonkWhenGetPublicKey=" + this.isAutoSignedWithCommonkWhenGetPublicKey + ", mAutoSignedKeyNameWhenGetPublicKey='" + this.mAutoSignedKeyNameWhenGetPublicKey + "', isSecmsgFidCounterSignedWhenSign=" + this.isSecmsgFidCounterSignedWhenSign + ", isAutoAddCounterWhenGetPublicKey=" + this.isAutoAddCounterWhenGetPublicKey + ", isNeedUseNextAttk=" + this.isNeedUseNextAttk + '}';
    }

    public SoterRSAKeyGenParameterSpec(boolean z2, boolean z3, boolean z4, String str, boolean z5, boolean z6, boolean z7) {
        this(2048, RSAKeyGenParameterSpec.F4, z2, z3, z4, str, z5, z6, z7);
    }
}
