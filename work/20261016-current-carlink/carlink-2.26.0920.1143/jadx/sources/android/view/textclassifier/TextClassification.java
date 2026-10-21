package android.view.textclassifier;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.internal.util.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TextClassification {
    static final TextClassification EMPTY = new Builder().build();
    private final List<String> mEntities;
    private final EntityConfidence<String> mEntityConfidence;
    private final Drawable mIcon;
    private final Intent mIntent;
    private final String mLabel;
    private int mLogType;
    private final View.OnClickListener mOnClickListener;
    private final String mText;
    private final String mVersionInfo;

    public static final class Builder {
        private Drawable mIcon;
        private Intent mIntent;
        private String mLabel;
        private int mLogType;
        private View.OnClickListener mOnClickListener;
        private String mText;
        private final EntityConfidence<String> mEntityConfidence = new EntityConfidence<>();
        private String mVersionInfo = "";

        public TextClassification build() {
            return new TextClassification(this.mText, this.mIcon, this.mLabel, this.mIntent, this.mOnClickListener, this.mEntityConfidence, this.mLogType, this.mVersionInfo);
        }

        public Builder setEntityType(String str, float f2) {
            this.mEntityConfidence.setEntityType(str, f2);
            return this;
        }

        public Builder setIcon(Drawable drawable) {
            this.mIcon = drawable;
            return this;
        }

        public Builder setIntent(Intent intent) {
            this.mIntent = intent;
            return this;
        }

        public Builder setLabel(String str) {
            this.mLabel = str;
            return this;
        }

        public Builder setLogType(int i2) {
            this.mLogType = i2;
            return this;
        }

        public Builder setOnClickListener(View.OnClickListener onClickListener) {
            this.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setText(String str) {
            this.mText = str;
            return this;
        }

        public Builder setVersionInfo(String str) {
            this.mVersionInfo = (String) Preconditions.checkNotNull(str);
            return this;
        }
    }

    public static View.OnClickListener createStartActivityOnClickListener(Context context, Intent intent) {
        int i2 = 0;
        Preconditions.checkArgument(context != null);
        Preconditions.checkArgument(intent != null);
        return new d(context, intent, i2);
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

    public Drawable getIcon() {
        return this.mIcon;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public int getLogType() {
        return this.mLogType;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public String getText() {
        return this.mText;
    }

    public String getVersionInfo() {
        return this.mVersionInfo;
    }

    public String toString() {
        return String.format("TextClassification {text=%s, entities=%s, label=%s, intent=%s}", this.mText, this.mEntityConfidence, this.mLabel, this.mIntent);
    }

    private TextClassification(String str, Drawable drawable, String str2, Intent intent, View.OnClickListener onClickListener, EntityConfidence<String> entityConfidence, int i2, String str3) {
        this.mText = str;
        this.mIcon = drawable;
        this.mLabel = str2;
        this.mIntent = intent;
        this.mOnClickListener = onClickListener;
        EntityConfidence<String> entityConfidence2 = new EntityConfidence<>(entityConfidence);
        this.mEntityConfidence = entityConfidence2;
        this.mEntities = entityConfidence2.getEntities();
        this.mLogType = i2;
        this.mVersionInfo = str3;
    }
}
