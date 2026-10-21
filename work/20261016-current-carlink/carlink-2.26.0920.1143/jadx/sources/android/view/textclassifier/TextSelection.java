package android.view.textclassifier;

import com.android.internal.util.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TextSelection {
    private final int mEndIndex;
    private final List<String> mEntities;
    private final EntityConfidence<String> mEntityConfidence;
    private final String mLogSource;
    private final int mStartIndex;
    private final String mVersionInfo;

    public static final class Builder {
        private final int mEndIndex;
        private final int mStartIndex;
        private final EntityConfidence<String> mEntityConfidence = new EntityConfidence<>();
        private String mLogSource = "";
        private String mVersionInfo = "";

        public Builder(int i2, int i3) {
            Preconditions.checkArgument(i2 >= 0);
            Preconditions.checkArgument(i3 > i2);
            this.mStartIndex = i2;
            this.mEndIndex = i3;
        }

        public TextSelection build() {
            return new TextSelection(this.mStartIndex, this.mEndIndex, this.mEntityConfidence, this.mLogSource, this.mVersionInfo);
        }

        public Builder setEntityType(String str, float f2) {
            this.mEntityConfidence.setEntityType(str, f2);
            return this;
        }

        public Builder setLogSource(String str) {
            this.mLogSource = (String) Preconditions.checkNotNull(str);
            return this;
        }

        public Builder setVersionInfo(String str) {
            this.mVersionInfo = (String) Preconditions.checkNotNull(str);
            return this;
        }
    }

    public float getConfidenceScore(String str) {
        return this.mEntityConfidence.getConfidenceScore(str);
    }

    public String getEntity(int i2) {
        return this.mEntities.get(i2);
    }

    public int getEntityCount() {
        return this.mEntities.size();
    }

    public int getSelectionEndIndex() {
        return this.mEndIndex;
    }

    public int getSelectionStartIndex() {
        return this.mStartIndex;
    }

    public String getSourceClassifier() {
        return this.mLogSource;
    }

    public String getVersionInfo() {
        return this.mVersionInfo;
    }

    public String toString() {
        return String.format("TextSelection {%d, %d, %s}", Integer.valueOf(this.mStartIndex), Integer.valueOf(this.mEndIndex), this.mEntityConfidence);
    }

    private TextSelection(int i2, int i3, EntityConfidence<String> entityConfidence, String str, String str2) {
        this.mStartIndex = i2;
        this.mEndIndex = i3;
        EntityConfidence<String> entityConfidence2 = new EntityConfidence<>(entityConfidence);
        this.mEntityConfidence = entityConfidence2;
        this.mEntities = entityConfidence2.getEntities();
        this.mLogSource = str;
        this.mVersionInfo = str2;
    }
}
