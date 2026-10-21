.class final Landroid/view/textclassifier/TextClassifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    sget-object p1, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-object p1
.end method

.method public final synthetic getLinks(Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/textclassifier/e;->a(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;ILandroid/os/LocaleList;)Landroid/view/textclassifier/LinksInfo;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getSettings()Landroid/view/textclassifier/TextClassifierConstants;
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/e;->b(Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/textclassifier/e;->c(Landroid/view/textclassifier/TextClassifier;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .locals 0

    new-instance p1, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object p1

    return-object p1
.end method
