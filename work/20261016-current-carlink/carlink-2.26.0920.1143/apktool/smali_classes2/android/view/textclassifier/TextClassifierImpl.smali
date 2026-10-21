.class final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;,
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierImpl"

.field private static final MODEL_DIR:Ljava/lang/String; = "/etc/textclassifier/"

.field private static final MODEL_FILE_REGEX:Ljava/lang/String; = "textclassifier\\.smartselection\\.(.*)\\.model"

.field private static final UPDATED_MODEL_FILE_PATH:Ljava/lang/String; = "/data/misc/textclassifier/textclassifier.smartselection.model"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLocale:Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mModelFilePaths:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/view/textclassifier/TextClassifierConstants;

.field private mSmartSelection:Landroid/view/textclassifier/SmartSelection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field

.field private final mSmartSelectionLock:Ljava/lang/Object;

.field private mVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/content/Context;

    .line 23
    .line 24
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/CharSequence;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string v0, "TextClassifierImpl"

    .line 7
    .line 8
    const-string v1, "Error closing file."

    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method private createClassificationResult([Landroid/view/textclassifier/SmartSelection$ClassificationResult;Ljava/lang/CharSequence;)Landroid/view/textclassifier/TextClassification;
    .locals 6

    .line 1
    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, p1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    aget-object v4, p1, v3

    .line 20
    .line 21
    iget-object v5, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 22
    .line 23
    iget v4, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 24
    .line 25
    invoke-virtual {v0, v5, v4}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImpl;->getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->getLogType(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setLogType(I)Landroid/view/textclassifier/TextClassification$Builder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {v1, p1, p2}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v2, v1

    .line 67
    move-object v3, v2

    .line 68
    :goto_1
    if-eqz v2, :cond_6

    .line 69
    .line 70
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v5, p2}, Landroid/view/textclassifier/TextClassification;->createStartActivityOnClickListener(Landroid/content/Context;Landroid/content/Intent;)Landroid/view/View$OnClickListener;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 85
    .line 86
    .line 87
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 88
    .line 89
    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    const-string v5, "android"

    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    iget-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {p2, p1}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->getLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    new-instance p1, Landroid/content/ComponentName;

    .line 110
    .line 111
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 112
    .line 113
    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {p1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 122
    .line 123
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 134
    .line 135
    .line 136
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :cond_4
    if-eqz p1, :cond_5

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_2
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getVersionInfo()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassification$Builder;->setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1
.end method

.method private destroySmartSelectionIfExistsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/textclassifier/SmartSelection;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private findBestSupportedLocaleLocked(Landroid/os/LocaleList;)Ljava/util/Locale;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ","

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-static {p1}, Landroid/util/a;->t(Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getFactoryModelFilePathsLocked()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getUpdatedModelLocale()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-static {p1, v0}, Landroid/util/a;->u(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/Locale;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method private getFactoryModelFilePathsLocked()Ljava/util/Map;
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/io/File;

    .line 11
    .line 12
    const-string v2, "/etc/textclassifier/"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string/jumbo v2, "textclassifier\\.smartselection\\.(.*)\\.model"

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    array-length v3, v1

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-ge v4, v3, :cond_1

    .line 43
    .line 44
    aget-object v5, v1, v4

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mModelFilePaths:Ljava/util/Map;

    .line 88
    .line 89
    return-object v0
.end method

.method private getFdLocked(Ljava/util/Locale;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSmartSelectionLock"
    .end annotation

    .line 1
    const/high16 v0, 0x10000000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    const-string v3, "/data/misc/textclassifier/textclassifier.smartselection.model"

    .line 7
    .line 8
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-object v2, v1

    .line 17
    :goto_0
    :try_start_1
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getFactoryModelFilePathsLocked()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v4, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    move-object v1, v0

    .line 39
    :catch_1
    :cond_0
    const/4 v0, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    const-string v4, "No model file found for %s"

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 49
    .line 50
    new-array v2, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, v2, v0

    .line 53
    .line 54
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v5}, Landroid/view/textclassifier/SmartSelection;->getLanguage(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_3
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 103
    .line 104
    new-array v2, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    aput-object p1, v2, v0

    .line 107
    .line 108
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_4
    if-nez v6, :cond_5

    .line 117
    .line 118
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_5
    invoke-static {v5}, Landroid/view/textclassifier/SmartSelection;->getVersion(I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-static {v0}, Landroid/view/textclassifier/SmartSelection;->getVersion(I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-le p1, v0, :cond_6

    .line 135
    .line 136
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 137
    .line 138
    .line 139
    iput p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    .line 140
    .line 141
    return-object v2

    .line 142
    :cond_6
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 143
    .line 144
    .line 145
    iput v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    .line 146
    .line 147
    return-object v1
.end method

.method private static getHighestScoringType([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    aget-object v0, p0, v0

    .line 10
    .line 11
    iget-object v2, v0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 12
    .line 13
    iget v0, v0, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 14
    .line 15
    array-length v3, p0

    .line 16
    :goto_0
    if-ge v1, v3, :cond_2

    .line 17
    .line 18
    aget-object v4, p0, v1

    .line 19
    .line 20
    iget v5, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 21
    .line 22
    cmpl-float v6, v5, v0

    .line 23
    .line 24
    if-lez v6, :cond_1

    .line 25
    .line 26
    iget-object v0, v4, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    move v0, v5

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-object v2
.end method

.method private static getHintFlags(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 33
    .line 34
    invoke-interface {v0, p0, p1, p2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    or-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    :cond_1
    return v1
.end method

.method private getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->findBestSupportedLocaleLocked(Landroid/os/LocaleList;)Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    :cond_1
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->destroySmartSelectionIfExistsLocked()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->getFdLocked(Ljava/util/Locale;)Landroid/os/ParcelFileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Landroid/view/textclassifier/SmartSelection;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-direct {v2, v3}, Landroid/view/textclassifier/SmartSelection;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelection:Landroid/view/textclassifier/SmartSelection;

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object p1

    .line 58
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 59
    .line 60
    const-string v1, "No file for null locale"

    .line 61
    .line 62
    invoke-direct {p1, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method private getUpdatedModelLocale()Ljava/util/Locale;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/misc/textclassifier/textclassifier.smartselection.model"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000000

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Landroid/view/textclassifier/SmartSelection;->getLanguage(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl;->closeAndLogError(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :catch_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method private getVersionInfo()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSmartSelectionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLocale:Ljava/util/Locale;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v2, "%s_v%d"

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v1, v3, v4

    .line 19
    .line 20
    iget v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mVersion:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v4, 0x1

    .line 27
    aput-object v1, v3, v4

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :cond_0
    const-string v1, ""

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method

.method private static validateInput(Ljava/lang/CharSequence;II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    if-ltz p1, :cond_1

    .line 12
    .line 13
    move v2, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v2, v1

    .line 16
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-gt p2, p0, :cond_2

    .line 24
    .line 25
    move p0, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move p0, v1

    .line 28
    :goto_2
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 29
    .line 30
    .line 31
    if-le p2, p1, :cond_3

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move v0, v1

    .line 35
    :goto_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .locals 3

    .line 1
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->validateInput(Ljava/lang/CharSequence;II)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, p4}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v0, p2, p3, v2}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v2, v1

    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v1, v0}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Landroid/view/textclassifier/SmartSelection$ClassificationResult;Ljava/lang/CharSequence;)Landroid/view/textclassifier/TextClassification;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    const-string v1, "TextClassifierImpl"

    .line 40
    .line 41
    const-string v2, "Error getting assist info."

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    .line 47
    .line 48
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0, p3}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2, p2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->create(Landroid/content/Context;Landroid/view/textclassifier/SmartSelection;Ljava/lang/String;I)Landroid/view/textclassifier/LinksInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    const-string v1, "TextClassifierImpl"

    .line 26
    .line 27
    const-string v2, "Error getting links info."

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassifier;->getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public getSettings()Landroid/view/textclassifier/TextClassifierConstants;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "text_classifier_constants"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierConstants;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassifierConstants;

    .line 25
    .line 26
    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TextClassifierImpl"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .locals 8

    .line 1
    const-string v0, "TextClassifierImpl"

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifierImpl;->validateInput(Ljava/lang/CharSequence;II)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_2

    .line 11
    .line 12
    invoke-direct {p0, p4}, Landroid/view/textclassifier/TextClassifierImpl;->getSmartSelection(Landroid/os/LocaleList;)Landroid/view/textclassifier/SmartSelection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2, p2, p3}, Landroid/view/textclassifier/SmartSelection;->suggest(Ljava/lang/String;II)[I

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    aget v5, v3, v4

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    aget v3, v3, v6

    .line 29
    .line 30
    if-gt v5, v3, :cond_1

    .line 31
    .line 32
    if-ltz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-gt v3, v6, :cond_1

    .line 39
    .line 40
    if-gt v5, p2, :cond_1

    .line 41
    .line 42
    if-lt v3, p3, :cond_1

    .line 43
    .line 44
    new-instance v6, Landroid/view/textclassifier/TextSelection$Builder;

    .line 45
    .line 46
    invoke-direct {v6, v5, v3}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v5, v3}, Landroid/view/textclassifier/TextClassifierImpl;->getHintFlags(Ljava/lang/CharSequence;II)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {v1, v2, v5, v3, v7}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    array-length v2, v1

    .line 58
    :goto_0
    if-ge v4, v2, :cond_0

    .line 59
    .line 60
    aget-object v3, v1, v4

    .line 61
    .line 62
    iget-object v5, v3, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mCollection:Ljava/lang/String;

    .line 63
    .line 64
    iget v3, v3, Landroid/view/textclassifier/SmartSelection$ClassificationResult;->mScore:F

    .line 65
    .line 66
    invoke-virtual {v6, v5, v3}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v6, v0}, Landroid/view/textclassifier/TextSelection$Builder;->setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getVersionInfo()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextSelection$Builder;->setVersionInfo(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_1
    const-string v1, "Got bad indices for input text. Ignoring result."

    .line 90
    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    const-string v2, "Error suggesting selection for text. No changes to selection suggested."

    .line 97
    .line 98
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_1
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    .line 102
    .line 103
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method
