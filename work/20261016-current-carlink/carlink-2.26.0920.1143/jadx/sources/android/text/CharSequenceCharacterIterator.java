package android.text;

import java.text.CharacterIterator;

/* JADX INFO: loaded from: classes2.dex */
public class CharSequenceCharacterIterator implements CharacterIterator {
    private final int mBeginIndex;
    private final CharSequence mCharSeq;
    private final int mEndIndex;
    private int mIndex;

    public CharSequenceCharacterIterator(CharSequence charSequence, int i2, int i3) {
        this.mCharSeq = charSequence;
        this.mIndex = i2;
        this.mBeginIndex = i2;
        this.mEndIndex = i3;
    }

    @Override // java.text.CharacterIterator
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.text.CharacterIterator
    public char current() {
        int i2 = this.mIndex;
        if (i2 == this.mEndIndex) {
            return (char) 65535;
        }
        return this.mCharSeq.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public char first() {
        this.mIndex = this.mBeginIndex;
        return current();
    }

    @Override // java.text.CharacterIterator
    public int getBeginIndex() {
        return this.mBeginIndex;
    }

    @Override // java.text.CharacterIterator
    public int getEndIndex() {
        return this.mEndIndex;
    }

    @Override // java.text.CharacterIterator
    public int getIndex() {
        return this.mIndex;
    }

    @Override // java.text.CharacterIterator
    public char last() {
        int i2 = this.mBeginIndex;
        int i3 = this.mEndIndex;
        if (i2 == i3) {
            this.mIndex = i3;
            return (char) 65535;
        }
        int i4 = i3 - 1;
        this.mIndex = i4;
        return this.mCharSeq.charAt(i4);
    }

    @Override // java.text.CharacterIterator
    public char next() {
        int i2 = this.mIndex + 1;
        this.mIndex = i2;
        int i3 = this.mEndIndex;
        if (i2 < i3) {
            return this.mCharSeq.charAt(i2);
        }
        this.mIndex = i3;
        return (char) 65535;
    }

    @Override // java.text.CharacterIterator
    public char previous() {
        int i2 = this.mIndex;
        if (i2 <= this.mBeginIndex) {
            return (char) 65535;
        }
        int i3 = i2 - 1;
        this.mIndex = i3;
        return this.mCharSeq.charAt(i3);
    }

    @Override // java.text.CharacterIterator
    public char setIndex(int i2) {
        if (this.mBeginIndex > i2 || i2 > this.mEndIndex) {
            throw new IllegalArgumentException("invalid position");
        }
        this.mIndex = i2;
        return current();
    }
}
