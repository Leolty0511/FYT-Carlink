.class public final Landroid/view/textclassifier/TextClassifierConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:Landroid/view/textclassifier/TextClassifierConstants;

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierConstants"

.field private static final SMART_SELECTION_DARK_LAUNCH:Ljava/lang/String; = "smart_selection_dark_launch"

.field private static final SMART_SELECTION_DARK_LAUNCH_DEFAULT:Z = false

.field private static final SMART_SELECTION_ENABLED_FOR_EDIT_TEXT:Ljava/lang/String; = "smart_selection_enabled_for_edit_text"

.field private static final SMART_SELECTION_ENABLED_FOR_EDIT_TEXT_DEFAULT:Z = true


# instance fields
.field private final mDarkLaunch:Z

.field private final mSuggestSelectionEnabledForEditableText:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierConstants;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierConstants;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierConstants;->DEFAULT:Landroid/view/textclassifier/TextClassifierConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad TextClassifier settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TextClassifierConstants"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p1, "smart_selection_dark_launch"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    const-string/jumbo p1, "smart_selection_enabled_for_edit_text"

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierConstants;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierConstants;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassifierConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isDarkLaunch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mDarkLaunch:Z

    return v0
.end method

.method public isSuggestSelectionEnabledForEditableText()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierConstants;->mSuggestSelectionEnabledForEditableText:Z

    return v0
.end method
