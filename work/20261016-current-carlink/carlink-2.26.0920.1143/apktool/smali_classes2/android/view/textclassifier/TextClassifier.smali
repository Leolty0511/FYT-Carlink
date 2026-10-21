.class public interface abstract Landroid/view/textclassifier/TextClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$EntityType;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOG_TAG:Ljava/lang/String; = "TextClassifierImpl"

.field public static final NO_OP:Landroid/view/textclassifier/TextClassifier;

.field public static final TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final TYPE_URL:Ljava/lang/String; = "url"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifier$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method


# virtual methods
.method public abstract classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
.end method

.method public abstract getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;
.end method

.method public abstract getSettings()Landroid/view/textclassifier/TextClassifierConstants;
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
.end method
