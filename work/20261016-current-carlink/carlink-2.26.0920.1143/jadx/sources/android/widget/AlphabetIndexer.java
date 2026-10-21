package android.widget;

import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.SparseIntArray;
import java.text.Collator;

/* JADX INFO: loaded from: classes2.dex */
public class AlphabetIndexer extends DataSetObserver implements SectionIndexer {
    private SparseIntArray mAlphaMap;
    protected CharSequence mAlphabet;
    private String[] mAlphabetArray;
    private int mAlphabetLength;
    private Collator mCollator;
    protected int mColumnIndex;
    protected Cursor mDataCursor;

    public AlphabetIndexer(Cursor cursor, int i2, CharSequence charSequence) {
        int i3;
        this.mDataCursor = cursor;
        this.mColumnIndex = i2;
        this.mAlphabet = charSequence;
        int length = charSequence.length();
        this.mAlphabetLength = length;
        this.mAlphabetArray = new String[length];
        int i4 = 0;
        while (true) {
            i3 = this.mAlphabetLength;
            if (i4 >= i3) {
                break;
            }
            this.mAlphabetArray[i4] = Character.toString(this.mAlphabet.charAt(i4));
            i4++;
        }
        this.mAlphaMap = new SparseIntArray(i3);
        if (cursor != null) {
            cursor.registerDataSetObserver(this);
        }
        Collator collator = Collator.getInstance();
        this.mCollator = collator;
        collator.setStrength(0);
    }

    public int compare(String str, String str2) {
        return this.mCollator.compare(str.length() == 0 ? WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER : str.substring(0, 1), str2);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i2) {
        int i3;
        int i4;
        SparseIntArray sparseIntArray = this.mAlphaMap;
        Cursor cursor = this.mDataCursor;
        int iAbs = 0;
        if (cursor == null || this.mAlphabet == null || i2 <= 0) {
            return 0;
        }
        int i5 = this.mAlphabetLength;
        if (i2 >= i5) {
            i2 = i5 - 1;
        }
        int position = cursor.getPosition();
        int count = cursor.getCount();
        char cCharAt = this.mAlphabet.charAt(i2);
        String string = Character.toString(cCharAt);
        int i6 = sparseIntArray.get(cCharAt, Integer.MIN_VALUE);
        if (Integer.MIN_VALUE == i6) {
            i3 = count;
        } else {
            if (i6 >= 0) {
                return i6;
            }
            i3 = -i6;
        }
        if (i2 > 0 && (i4 = sparseIntArray.get(this.mAlphabet.charAt(i2 - 1), Integer.MIN_VALUE)) != Integer.MIN_VALUE) {
            iAbs = Math.abs(i4);
        }
        int i7 = (i3 + iAbs) / 2;
        while (i7 < i3) {
            cursor.moveToPosition(i7);
            String string2 = cursor.getString(this.mColumnIndex);
            if (string2 != null) {
                int iCompare = compare(string2, string);
                if (iCompare == 0) {
                    if (iAbs == i7) {
                        break;
                    }
                } else {
                    if (iCompare < 0) {
                        int i8 = i7 + 1;
                        if (i8 < count) {
                            iAbs = i8;
                        }
                    }
                    i7 = (iAbs + i3) / 2;
                }
                i3 = i7;
                i7 = (iAbs + i3) / 2;
            } else {
                if (i7 == 0) {
                    break;
                }
                i7--;
            }
            sparseIntArray.put(cCharAt, count);
            cursor.moveToPosition(position);
            return count;
        }
        count = i7;
        sparseIntArray.put(cCharAt, count);
        cursor.moveToPosition(position);
        return count;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i2) {
        int position = this.mDataCursor.getPosition();
        this.mDataCursor.moveToPosition(i2);
        String string = this.mDataCursor.getString(this.mColumnIndex);
        this.mDataCursor.moveToPosition(position);
        for (int i3 = 0; i3 < this.mAlphabetLength; i3++) {
            if (compare(string, Character.toString(this.mAlphabet.charAt(i3))) == 0) {
                return i3;
            }
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.mAlphabetArray;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        super.onChanged();
        this.mAlphaMap.clear();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        super.onInvalidated();
        this.mAlphaMap.clear();
    }

    public void setCursor(Cursor cursor) {
        Cursor cursor2 = this.mDataCursor;
        if (cursor2 != null) {
            cursor2.unregisterDataSetObserver(this);
        }
        this.mDataCursor = cursor;
        if (cursor != null) {
            cursor.registerDataSetObserver(this);
        }
        this.mAlphaMap.clear();
    }
}
